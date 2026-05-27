package com.texa.carelib.core.utils.internal;

import com.texa.carelib.core.utils.Version;

/* JADX INFO: loaded from: classes2.dex */
public final class VersionParser {
    public static final String TAG = "VersionParser";

    public static Version parse(byte[] bArr) {
        if (bArr != null) {
            if (bArr.length > 3) {
                return new Version(Integer.valueOf(bArr[0] & 255), Integer.valueOf(bArr[1] & 255), Integer.valueOf(bArr[2] & 255), Integer.valueOf(bArr[3] & 255));
            }
            if (bArr.length > 2) {
                return new Version(Integer.valueOf(bArr[0] & 255), Integer.valueOf(bArr[1] & 255), Integer.valueOf(bArr[2] & 255));
            }
            if (bArr.length > 1) {
                return new Version(Integer.valueOf(bArr[0] & 255), Integer.valueOf(bArr[1] & 255));
            }
            if (bArr.length > 0) {
                return new Version(Integer.valueOf(bArr[0] & 255));
            }
        }
        return new Version();
    }
}
