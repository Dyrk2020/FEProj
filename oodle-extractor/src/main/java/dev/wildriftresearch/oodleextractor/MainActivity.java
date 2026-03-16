package dev.wildriftresearch.oodleextractor;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import android.widget.TextView;

import com.tencent.utils.RowFileUtils;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public final class MainActivity extends Activity {
    private static final String TAG = "OfflineOodleExtractor";
    private static final int ELFCLASS64 = 2;
    private static final int ELFDATA2LSB = 1;
    private static final int ET_DYN = 3;
    private static final int EM_AARCH64 = 183;
    private static final long PT_LOAD = 1;
    private static final long PT_DYNAMIC = 2;
    private static final long DT_NULL = 0;
    private static final long DT_STRTAB = 5;
    private static final long DT_STRSZ = 10;
    private static final long DT_SONAME = 14;

    private static final Map<String, String> INPUT_SHA256 = new HashMap<>();
    private static final Map<String, String> OUTPUT_SHA256 = new HashMap<>();
    static {
        INPUT_SHA256.put("libtdr_cp.so", "541AD8A5BD621DCC92F43502746AB59B4264177D5A78C0482807F47387D8967A");
        INPUT_SHA256.put("libLNet_cp.so", "65FD6F39BD94B344CC2CD2C87AED8375156E95098912FFCA1ADA00836EE79278");
        INPUT_SHA256.put("libFEProj_cp.so", "11F0632EF9D8A45D544343605DF12BA3B982B817FD996CBD9C52D0F60492D67F");
        INPUT_SHA256.put("libil2cpp_cp.so", "8DEDD827E92D74B654387CB9621678425581764F19865BF1BF270210815D859E");
        INPUT_SHA256.put("libunity_cp.so", "7FF7721973D159169D5956147EFA8845AAE918D9B4FB95FB341B79B23F02F323");
        OUTPUT_SHA256.put("libtdr.so", "94C3B45384D810C9136084EEFABE6AB6EF5E1808017AF67FFC9C53FC3876495D");
        OUTPUT_SHA256.put("libLNet.so", "55C2879F7ACDD0C64FB308CE3A0A1007D308417E475B431DABD9C5E0F8AB5A86");
        OUTPUT_SHA256.put("libFEProj.so", "5E608F2DA59371A583929AED90E4EC4985BC8EE12FC0D44124000B94D1B8A02A");
        OUTPUT_SHA256.put("libil2cpp.so", "6E8E7002169BC658FBE64BE4C6E216E22C4BF719A620940E77890B9E57211DC6");
        OUTPUT_SHA256.put("libunity.so", "6DFBEC920DDD0539DE4AB2F1D5AEF783F203399AB46939DAA46B51F1B8C215AC");
    }

    private final ExecutorService executor = Executors.newSingleThreadExecutor();
    private TextView statusView;

    @Override protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        statusView = new TextView(this);
        statusView.setPadding(32, 32, 32, 32);
        statusView.setText("Preparing offline extraction");
        setContentView(statusView);
        executor.execute(this::extractAll);
    }

    @Override protected void onDestroy() { executor.shutdownNow(); super.onDestroy(); }

    private void extractAll() {
        JSONArray results = new JSONArray();
        try {
            File inputDirectory = new File(getFilesDir(), "input");
            File outputDirectory = new File(getFilesDir(), "output");
            requireDirectory(inputDirectory); requireDirectory(outputDirectory);
            JSONArray libraries = new JSONObject(readAsset("oodle_compress_config.json"))
                    .getJSONObject("NativeAssets").getJSONObject("library").getJSONArray("arm64-v8a");
            for (int i = 0; i < libraries.length(); i++) {
                JSONObject library = libraries.getJSONObject(i);
                String sourceName = library.getString("name");
                String outputName = outputName(sourceName);
                long expectedBytes = library.getLong("size");
                File inputFile = new File(inputDirectory, sourceName);
                File outputFile = new File(outputDirectory, outputName);
                JSONObject result = new JSONObject();
                result.put("source", sourceName).put("output", outputName)
                        .put("expected_size", expectedBytes)
                        .put("crc", new JSONObject().put("status", "unsupported")
                                .put("reason", "Config CRC is present, but its algorithm/coverage is not established by available evidence; no guess is made."));
                try {
                    copyAsset("input/" + sourceName, inputFile);
                    validateInput(sourceName, inputFile, expectedBytes, result);
                    deleteIfPresent(outputFile);
                    publish("Extracting " + sourceName);
                    int rc = RowFileUtils.OodleDecompressFile(inputFile.getAbsolutePath(), outputFile.getAbsolutePath());
                    result.put("oodle_return", rc);
                    validateOutput(sourceName, outputName, outputFile, expectedBytes, rc, result);
                    result.put("status", "PASS");
                } catch (Exception failure) {
                    result.put("status", "FAIL").put("error", failure.getMessage());
                    deleteIfPresent(outputFile);
                    results.put(result);
                    writeValidationReport(results);
                    throw failure;
                }
                results.put(result);
                writeValidationReport(results);
                Log.i(TAG, result.toString());
            }
            publish("Complete: " + libraries.length() + " verified ELF files");
        } catch (Exception error) {
            Log.e(TAG, "Extraction failed", error);
            publish("Failed: " + error.getMessage());
            try { writeValidationReport(results); } catch (Exception ignored) { Log.e(TAG, "Cannot write validation report", ignored); }
        }
    }

    private static String outputName(String source) throws IOException {
        if (!source.endsWith("_cp.so") || source.contains("/") || source.contains("\\"))
            throw new IOException("invalid source filename: " + source);
        return source.substring(0, source.length() - 6) + ".so";
    }

    private static void validateInput(String name, File file, long expectedSize, JSONObject r) throws Exception {
        HashAndSize actual = hash(file);
        long declaredOutputSize = firstU32(file);
        r.put("input_size", actual.size).put("input_sha256", actual.sha256)
                .put("input_first_u32_le", declaredOutputSize)
                .put("expected_output_size", expectedSize);
        if (declaredOutputSize != expectedSize) throw new IOException(name + " declared output size mismatch");
        String expected = INPUT_SHA256.get(name);
        if (expected == null || !expected.equalsIgnoreCase(actual.sha256)) throw new IOException(name + " input SHA-256 mismatch");
    }

    private static void validateOutput(String source, String outputName, File file, long expectedSize, int rc, JSONObject r) throws Exception {
        if (rc != 0) throw new IOException(source + " returned " + rc);
        if (!file.isFile()) throw new IOException(source + " did not create output");
        HashAndSize actual = hash(file);
        r.put("output_size", actual.size).put("output_sha256", actual.sha256)
                .put("output_first_u32_le", firstU32(file));
        if (actual.size != expectedSize) throw new IOException(source + " output size mismatch");
        String expectedHash = OUTPUT_SHA256.get(outputName);
        if (expectedHash == null || !expectedHash.equalsIgnoreCase(actual.sha256)) throw new IOException(source + " output SHA-256 mismatch");
        ElfInfo elf = parseElf(file, outputName);
        r.put("elf", elf.toJson());
    }

    private static ElfInfo parseElf(File file, String expectedFileName) throws Exception {
        byte[] h = new byte[64];
        try (FileInputStream in = new FileInputStream(file)) { readFully(in, h, 0, h.length); }
        if ((h[0] & 255) != 0x7f || h[1] != 'E' || h[2] != 'L' || h[3] != 'F') throw new IOException("ELF magic mismatch");
        if ((h[4] & 255) != ELFCLASS64 || (h[5] & 255) != ELFDATA2LSB) throw new IOException("not ELF64 little-endian");
        if (u16(h, 16) != ET_DYN || u16(h, 18) != EM_AARCH64) throw new IOException("wrong ELF type or machine");
        long phoff = u64(h, 32), phentsize = u16(h, 54), phnum = u16(h, 56);
        if (phentsize != 56 || phnum == 0 || phoff > file.length() || phnum > (file.length() - phoff) / phentsize)
            throw new IOException("program-header table out of bounds");
        byte[] ph = new byte[56]; long dynOff = -1, dynSize = 0, strtabVa = -1, strsz = -1, sonameOff = -1;
        try (FileInputStream in = new FileInputStream(file)) {
            skipFully(in, phoff);
            for (int i = 0; i < phnum; i++) {
                readFully(in, ph, 0, ph.length); long type = u32(ph, 0), off = u64(ph, 8), filesz = u64(ph, 32);
                if (off > file.length() || filesz > file.length() - off) throw new IOException("program segment out of bounds");
                if (type == PT_DYNAMIC) { dynOff = off; dynSize = filesz; }
            }
        }
        if (dynOff < 0 || dynSize % 16 != 0) throw new IOException("invalid PT_DYNAMIC boundary");
        byte[] d = new byte[16];
        try (FileInputStream in = new FileInputStream(file)) { skipFully(in, dynOff); for (long p=0; p<dynSize; p+=16) { readFully(in,d,0,16); long tag=u64(d,0), val=u64(d,8); if(tag==DT_NULL) break; if(tag==DT_STRTAB)strtabVa=val; else if(tag==DT_STRSZ)strsz=val; else if(tag==DT_SONAME)sonameOff=val; } }
        if (strtabVa < 0 || strsz < 0 || sonameOff < 0) throw new IOException("missing dynamic soname metadata");
        // PT_LOAD VA-to-file mapping is checked with overflow-safe ranges.
        long strOff = -1; byte[] p = new byte[56];
        try (FileInputStream in = new FileInputStream(file)) { skipFully(in, phoff); for(int i=0;i<phnum;i++){readFully(in,p,0,56); if(u32(p,0)==PT_LOAD){long va=u64(p,16), off=u64(p,8), fs=u64(p,32); if(strtabVa>=va && strtabVa-va<=fs && strtabVa-va<=file.length()-off) strOff=off+(strtabVa-va);}}}
        if(strOff<0 || strsz>file.length()-strOff || sonameOff>=strsz) throw new IOException("string table boundary invalid");
        byte[] s = new byte[(int)Math.min(strsz-sonameOff, 4096)]; try(FileInputStream in=new FileInputStream(file)){skipFully(in,strOff+sonameOff); int n=in.read(s); String soname=new String(s,0, n<0?0:n, StandardCharsets.US_ASCII).split("\\0",2)[0]; if(!expectedFileName.equals(soname)) throw new IOException("soname/file name mismatch: "+soname); return new ElfInfo(soname, phnum);}
    }

    private static long firstU32(File f) throws Exception { byte[] b=new byte[4]; try(FileInputStream in=new FileInputStream(f)){readFully(in,b,0,4);} return u32(b,0); }
    private static long u16(byte[] b,int o){return (b[o]&255L)|((b[o+1]&255L)<<8);}
    private static long u32(byte[] b,int o){return u16(b,o)|(u16(b,o+2)<<16);}
    private static long u64(byte[] b,int o){long v=0;for(int i=7;i>=0;i--)v=(v<<8)|(b[o+i]&255L);return v;}
    private static void readFully(InputStream in,byte[] b,int o,int n)throws IOException{int p=o;while(p<o+n){int k=in.read(b,p,o+n-p);if(k<0)throw new IOException("truncated file");p+=k;}}
    private static void skipFully(InputStream in,long n)throws IOException{while(n>0){long k=in.skip(n);if(k<=0){if(in.read()<0)throw new IOException("truncated file");k=1;}n-=k;}}
    private static HashAndSize hash(File f)throws Exception{MessageDigest md=MessageDigest.getInstance("SHA-256");byte[] b=new byte[32768];long n=0;try(FileInputStream in=new FileInputStream(f)){int k;while((k=in.read(b))>=0){if(k==0)continue;md.update(b,0,k);n+=k;}}StringBuilder s=new StringBuilder();for(byte x:md.digest())s.append(String.format("%02X",x));return new HashAndSize(n,s.toString());}
    private static void deleteIfPresent(File f)throws IOException{if(f.exists()&&!f.delete())throw new IOException("cannot remove incomplete output: "+f);}
    private String readAsset(String n)throws IOException{try(InputStream in=getAssets().open(n)){byte[] b=new byte[8192];StringBuilder s=new StringBuilder();int k;while((k=in.read(b))>=0)s.append(new String(b,0,k,StandardCharsets.UTF_8));return s.toString();}}
    private void copyAsset(String n,File d)throws IOException{try(InputStream in=getAssets().open(n);FileOutputStream out=new FileOutputStream(d,false)){byte[]b=new byte[32768];int k;while((k=in.read(b))>=0){if(k>0)out.write(b,0,k);}}}
    private static void requireDirectory(File d)throws IOException{if(!d.exists()&&!d.mkdirs())throw new IOException("cannot create "+d);if(!d.isDirectory())throw new IOException("not directory "+d);}
    private void writeValidationReport(JSONArray a)throws Exception{File f=new File(getFilesDir(),"output-validation.json");try(FileOutputStream out=new FileOutputStream(f,false)){out.write(a.toString(2).getBytes(StandardCharsets.UTF_8));}}
    private void publish(String m){Log.i(TAG,m);runOnUiThread(()->statusView.setText(m));}

    private static final class HashAndSize { final long size; final String sha256; HashAndSize(long s,String h){size=s;sha256=h;} }
    private static final class ElfInfo { final String soname; final long phnum; ElfInfo(String s,long p){soname=s;phnum=p;} JSONObject toJson()throws Exception{return new JSONObject().put("class","ELF64").put("endianness","little").put("machine","AArch64").put("type","ET_DYN").put("program_headers",phnum).put("soname",soname).put("boundary_checks","PASS");} }
}
