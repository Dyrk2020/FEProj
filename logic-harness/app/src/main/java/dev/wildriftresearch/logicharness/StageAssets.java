package dev.wildriftresearch.logicharness;

import android.content.Context;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.util.function.Consumer;

/**
 * Stages hash-verified research copies into app-private storage.
 *
 * H0 default: large ELFs are pushed via adb into the app files tree
 * (or into /data/local/tmp then copied). This class copies from a
 * well-known sidecar directory if present:
 *   files/incoming/
 */
public final class StageAssets {
    private StageAssets() {}

    public static final String[] DSO_NAMES = {
            "libtdr.so",
            "libLNet.so",
            "libFEProj.so",
            "libil2cpp.so",
            "libunity.so"
    };

    public static void stageFromSidecar(Context ctx, Consumer<String> log) throws Exception {
        File incoming = new File(ctx.getFilesDir(), "incoming");
        File dsoDir = new File(ctx.getFilesDir(), "dso");
        File metaDir = new File(ctx.getFilesDir(), "meta");
        File fetestLogic = new File(ctx.getFilesDir(), "fetest/Res/FETest/Logic");
        if (!fetestLogic.exists() && !fetestLogic.mkdirs()) {
            log.accept("WARN fetest mkdir failed");
        }

        for (String name : DSO_NAMES) {
            File src = new File(incoming, name);
            if (!src.isFile()) {
                log.accept("SKIP missing incoming/" + name);
                continue;
            }
            File dst = new File(dsoDir, name);
            copyFile(src, dst);
            log.accept("STAGED " + name + " sha256=" + sha256(dst));
        }

        File metaSrc = new File(incoming, "global-metadata.dat");
        File flatMetadata = new File(metaDir, "global-metadata.dat");
        File legacyMetadata = new File(metaDir, "il2cpp/Metadata/global-metadata.dat");
        if (deleteFileIfPresent(flatMetadata)) {
            log.accept("REMOVED meta/global-metadata.dat");
        }
        if (deleteFileIfPresent(legacyMetadata)) {
            log.accept("REMOVED meta/il2cpp/Metadata/global-metadata.dat");
        }
        deleteEmptyDirectory(new File(metaDir, "il2cpp/Metadata"));
        deleteEmptyDirectory(new File(metaDir, "il2cpp"));
        if (metaSrc.isFile()) {
            File canonicalMetadata = new File(metaDir, "Metadata/global-metadata.dat");
            copyFile(metaSrc, canonicalMetadata);
            log.accept("STAGED meta/Metadata/global-metadata.dat sha256=" + sha256(canonicalMetadata));
        } else {
            log.accept("SKIP missing incoming/global-metadata.dat");
        }

        File blSrc = new File(incoming, "BattleLogic.res");
        if (blSrc.isFile()) {
            File blDst = new File(fetestLogic, "BattleLogic.res");
            copyFile(blSrc, blDst);
            log.accept("STAGED BattleLogic.res sha256=" + sha256(blDst));
        } else {
            log.accept("SKIP missing incoming/BattleLogic.res");
        }
    }

    public static void printStatus(Context ctx, Consumer<String> log) throws Exception {
        File root = ctx.getFilesDir();
        walk(root, root, log);
    }

    private static void walk(File root, File cur, Consumer<String> log) throws Exception {
        File[] kids = cur.listFiles();
        if (kids == null) {
            return;
        }
        for (File f : kids) {
            if (f.isDirectory()) {
                walk(root, f, log);
            } else {
                String rel = root.toURI().relativize(f.toURI()).getPath();
                log.accept(rel + " size=" + f.length() + " sha256=" + sha256(f));
            }
        }
    }
    private static boolean deleteFileIfPresent(File file) throws IOException {
        if (!file.exists()) {
            return false;
        }
        if (!file.isFile() || !file.delete()) {
            throw new IOException("delete failed: " + file);
        }
        return true;
    }

    private static void deleteEmptyDirectory(File directory) throws IOException {
        if (!directory.isDirectory()) {
            return;
        }
        File[] children = directory.listFiles();
        if (children != null && children.length == 0 && !directory.delete()) {
            throw new IOException("delete failed: " + directory);
        }
    }


    private static void copyFile(File src, File dst) throws IOException {
        File parent = dst.getParentFile();
        if (parent != null && !parent.exists() && !parent.mkdirs()) {
            throw new IOException("mkdir failed: " + parent);
        }
        try (FileInputStream in = new FileInputStream(src);
             FileOutputStream out = new FileOutputStream(dst)) {
            byte[] buf = new byte[1 << 20];
            int n;
            while ((n = in.read(buf)) >= 0) {
                out.write(buf, 0, n);
            }
        }
    }

    private static String sha256(File f) throws Exception {
        MessageDigest md = MessageDigest.getInstance("SHA-256");
        try (FileInputStream in = new FileInputStream(f)) {
            byte[] buf = new byte[1 << 20];
            int n;
            while ((n = in.read(buf)) >= 0) {
                md.update(buf, 0, n);
            }
        }
        byte[] dig = md.digest();
        StringBuilder sb = new StringBuilder(dig.length * 2);
        for (byte b : dig) {
            sb.append(String.format("%02x", b));
        }
        return sb.toString();
    }
}
