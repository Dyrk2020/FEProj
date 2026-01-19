package dev.wildriftresearch.logicharness;

import android.content.Intent;
import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import android.widget.ScrollView;
import android.widget.TextView;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.SecureRandom;

/**
 * H0 research harness host.
 *
 * Intent extras:
 *   action=canary|stage|status  (default canary)
 *   gadget=true                 (load embedded Frida gadget before the action)
 *
 * Private layout:
 *   files/dso/   staged reconstructed ELFs
 *   files/meta/  metadata + canary.bin
 *   files/fetest/ FETest tree
 *   files/dump/  hook dumps
 */
public class MainActivity extends Activity {
    private static final String TAG = "WRLogicHarness";

    private TextView logView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        logView = new TextView(this);
        logView.setTextSize(14f);
        logView.setPadding(32, 32, 32, 32);
        ScrollView scroll = new ScrollView(this);
        scroll.addView(logView);
        setContentView(scroll);

        loadGadgetIfRequested(getIntent());
        runAction(getIntent());
    }

    private void loadGadgetIfRequested(Intent intent) {
        if (intent == null || !intent.getBooleanExtra("gadget", false)) {
            return;
        }
        try {
            System.loadLibrary("frida-gadget");
            Log.i(TAG, "GADGET_LOADED");
        } catch (UnsatisfiedLinkError error) {
            Log.e(TAG, "GADGET_LOAD_FAILED", error);
        }
    }

    @Override
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        runAction(intent);
    }

    private void runAction(Intent intent) {
        ensureDirs();
        String action = intent != null ? intent.getStringExtra("action") : null;
        if (action == null) {
            action = "canary";
        }
        append("action=" + action);
        try {
            switch (action) {
                case "stage":
                    StageAssets.stageFromSidecar(this, this::append);
                    readStagedMetadata();
                    readStagedBattleLogic();
                    break;
                case "status":
                    StageAssets.printStatus(this, this::append);
                    break;
                case "loadfeproj":
                    loadFEProj();
                    break;
                case "canary":
                default:
                    runCanary();
                    break;
            }
        } catch (Exception e) {
            append("ERROR " + e.getClass().getSimpleName() + ": " + e.getMessage());
            Log.e(TAG, "action failed", e);
        }
    }

    private void ensureDirs() {
        String[] names = {"dso", "meta", "fetest", "dump"};
        for (String n : names) {
            File d = new File(getFilesDir(), n);
            if (!d.exists() && !d.mkdirs()) {
                append("WARN mkdir failed: " + d.getAbsolutePath());
            }
        }
    }

    private void runCanary() throws IOException {
        File canary = new File(new File(getFilesDir(), "meta"), "canary.bin");
        byte[] data = new byte[16];
        new SecureRandom().nextBytes(data);
        try (FileOutputStream out = new FileOutputStream(canary)) {
            out.write(data);
        }
        String hex = toHex(data);
        Log.i(TAG, "CANARY_HEX=" + hex);
        append("CANARY_PATH=" + canary.getAbsolutePath());
        append("CANARY_HEX=" + hex);

        // Force a read so Frida open/read hooks can observe the same bytes.
        byte[] readBack = new byte[16];
        try (FileInputStream in = new FileInputStream(canary)) {
            int n = in.read(readBack);
            append("CANARY_READ_N=" + n);
            append("CANARY_READ_HEX=" + toHex(readBack));
        }
        Log.i(TAG, "CANARY_READ_HEX=" + toHex(readBack));
    }

    /**
     * B2 root-cause bisection action: System.load the staged libFEProj.so
     * from its absolute app-private path, with no Frida involvement in the
     * Java path itself. Logs before/after so a crash leaves a trace of how
     * far dlopen got.
     */
    private void loadFEProj() {
        File dso = new File(new File(getFilesDir(), "dso"), "libFEProj.so");
        String path = dso.getAbsolutePath();
        append("LOADFEPROJ_PATH=" + path);
        append("LOADFEPROJ_EXISTS=" + dso.isFile());
        append("LOADFEPROJ_SIZE=" + dso.length());
        if (!dso.isFile()) {
            append("LOADFEPROJ_MISSING");
            return;
        }
        Log.i(TAG, "LOADFEPROJ_BEGIN path=" + path);
        System.load(path);
        Log.i(TAG, "LOADFEPROJ_RETURNED path=" + path);
        append("LOADFEPROJ_RESULT=returned");
    }

    private void readStagedMetadata() throws IOException {
        File metadata = new File(getFilesDir(), "meta/Metadata/global-metadata.dat");
        byte[] header = new byte[16];
        try (FileInputStream in = new FileInputStream(metadata)) {
            int n = in.read(header);
            append("FMN_READ_PATH=" + metadata.getAbsolutePath());
            append("FMN_READ_N=" + n);
            append("FMN_READ_HEX=" + toHex(header));
        }
    }

    private void readStagedBattleLogic() throws IOException {
        File battleLogic = new File(getFilesDir(), "fetest/Res/FETest/Logic/BattleLogic.res");
        byte[] header = new byte[16];
        try (FileInputStream in = new FileInputStream(battleLogic)) {
            int n = in.read(header);
            append("FETEST_READ_PATH=" + battleLogic.getAbsolutePath());
            append("FETEST_READ_N=" + n);
            append("FETEST_READ_HEX=" + toHex(header));
        }
    }



    private void append(String line) {
        Log.i(TAG, line);
        if (logView != null) {
            logView.append(line + "\n");
        }
    }

    private static String toHex(byte[] data) {
        StringBuilder sb = new StringBuilder(data.length * 2);
        for (byte b : data) {
            sb.append(String.format("%02x", b));
        }
        return sb.toString();
    }
}
