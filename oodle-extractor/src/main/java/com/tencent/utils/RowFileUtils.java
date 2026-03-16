package com.tencent.utils;

public final class RowFileUtils {
    static {
        System.loadLibrary("Oodler");
    }

    private RowFileUtils() {
    }

    public static native int OodleDecompressFile(String inputPath, String outputPath);
}
