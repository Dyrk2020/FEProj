// DecompileAt2.java - targeted decompilation WITHOUT full analysis.
// Designed for -noanalysis imports: for each anchor seed, disassemble the
// reachable control flow (followFlow), create the function, define known
// rodata strings, then dump C + disassembly.
//
// Usage (headless postScript, import with -noanalysis):
//   -postScript DecompileAt2.java "<seeds>" <outdir> ["<strings>"]
//   <seeds>   = "addr:name;addr:name;..." (hex addr, no 0x)
//   <strings> = optional "va:va;va:va;..." hex string addresses to define as StringDataType
import java.io.File;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;

import ghidra.app.decompiler.DecompileResults;
import ghidra.app.decompiler.DecompInterface;
import ghidra.app.script.GhidraScript;
import ghidra.program.disassemble.Disassembler;
import ghidra.program.model.address.Address;
import ghidra.program.model.address.AddressSet;
import ghidra.program.model.address.AddressSetView;
import ghidra.program.model.data.StringDataType;
import ghidra.program.model.listing.Function;
import ghidra.program.model.listing.FunctionManager;
import ghidra.program.model.listing.Instruction;
import ghidra.program.model.listing.Listing;
import ghidra.program.model.symbol.SourceType;

public class DecompileAt2 extends GhidraScript {

    private static final long RANGE = 0x6000;

    @Override
    public void run() throws Exception {
        String[] args = getScriptArgs();
        if (args.length < 2) {
            println("usage: DecompileAt2.java \"addr:name;...\" <outdir> [\"va;va;...\"]");
            return;
        }
        String spec = args[0];
        File outDir = new File(args[1]);
        outDir.mkdirs();

        Listing listing = currentProgram.getListing();
        FunctionManager fm = currentProgram.getFunctionManager();

        // optionally define known strings so the decompiler can display them
        if (args.length > 2) {
            for (String s : args[2].split(";")) {
                if (s.trim().isEmpty()) continue;
                Address a = toAddr(Long.decode("0x" + s.trim()));
                if (listing.getDataAt(a) == null) {
                    try {
                        listing.createData(a, new StringDataType());
                    } catch (Exception e) {
                        println("string-def fail @" + a + ": " + e);
                    }
                }
            }
        }

        DecompInterface decomp = new DecompInterface();
        decomp.openProgram(currentProgram);
        decomp.toggleCCode(true);
        decomp.toggleSyntaxTree(true);

        StringBuilder log = new StringBuilder();
        for (String item : spec.split(";")) {
            String[] parts = item.split(":", 2);
            Address entry = toAddr(Long.decode("0x" + parts[0]));
            String name = parts[1];

            StringBuilder header = new StringBuilder();
            header.append("// ===== ").append(name).append(" @ ").append(entry).append(" =====\n");

            // 1) followFlow disassembly of reachable code from entry
            AddressSet startSet = new AddressSet(entry);
            AddressSet restrict = new AddressSet(entry, entry.add(RANGE));
            try {
                Disassembler dis = Disassembler.getDisassembler(currentProgram, monitor, null);
                dis.disassemble(startSet, restrict, true);
            } catch (Exception e) {
                header.append("// disassemble error: ").append(e).append("\n");
            }

            // 2) create function
            Function f = fm.getFunctionAt(entry);
            if (f == null) {
                try {
                    f = fm.createFunction(name, entry, new AddressSet(entry), SourceType.USER_DEFINED);
                } catch (Exception e) {
                    header.append("// createFunction failed: ").append(e).append("\n");
                }
            } else {
                header.append("// existing function ").append(f.getName()).append("\n");
            }

            // 3) decompile
            String c;
            try {
                DecompileResults res = decomp.decompileFunction(f, 120, monitor);
                if (res != null && res.decompileCompleted() && res.getDecompiledFunction() != null) {
                    c = res.getDecompiledFunction().getC();
                } else {
                    c = "// DECOMPILE FAILED" + (res != null && res.getErrorMessage() != null
                        ? "\n// " + res.getErrorMessage() : "");
                }
            } catch (Exception e) {
                c = "// DECOMPILE EXCEPTION: " + e;
            }
            File cf = new File(outDir, name + ".c");
            Files.write(cf.toPath(), (header.toString() + "\n" + c).getBytes(StandardCharsets.UTF_8));

            // 4) disassembly of function body (cap 0x4000 bytes from entry)
            StringBuilder asm = new StringBuilder();
            asm.append(header);
            if (f != null) {
                Address a = f.getEntryPoint();
                Address lim = f.getEntryPoint().add(0x4000);
                int guard = 0;
                while (a != null && a.compareTo(lim) < 0 && guard < 4000) {
                    Instruction ins = listing.getInstructionAt(a);
                    if (ins == null) break;
                    asm.append(ins.getAddress()).append("  ").append(ins.toString()).append("\n");
                    a = ins.getMaxAddress().add(1);
                    guard++;
                }
            }
            File af = new File(outDir, name + ".asm");
            Files.write(af.toPath(), asm.toString().getBytes(StandardCharsets.UTF_8));

            log.append(name).append(" @ ").append(entry).append(" C:").append(c.length())
               .append(" asm:").append(asm.length()).append("\n");
        }
        decomp.dispose();
        println(log.toString());
    }
}
