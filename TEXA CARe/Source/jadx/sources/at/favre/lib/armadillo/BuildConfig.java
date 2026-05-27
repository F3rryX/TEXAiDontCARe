package at.favre.lib.armadillo;

import org.spongycastle.crypto.signers.PSSSigner;
import org.spongycastle.math.ec.Tnaf;

/* JADX INFO: loaded from: classes.dex */
public final class BuildConfig {
    public static final String ANDROID_ID_FALLBACK = "0000000000000000";
    public static final String BUILD_TYPE = "release";
    public static final boolean DEBUG = false;
    public static final String LIBRARY_PACKAGE_NAME = "at.favre.lib.armadillo";
    public static final byte[] PREF_SALT = {79, 0, Tnaf.POW_2_WIDTH, 46, 98, 69, 76, 15, 59, -7, 55, 80, 71, 34, 36, 93, -32, -40, 85, -63, -70, 35, -115, -87, -16, -93, 119, 77, 56, 97, -16, -69};
    public static final byte[] STATIC_RANDOM = {PSSSigner.TRAILER_IMPLICIT, 29, -111, 123, -77, -41, -92, 25, 44, 114, 82, -12, 52, -36, -52, 79, -36, -40, -17, 81, -16, -87, 91, -35, 98, 26, 83, Tnaf.POW_2_WIDTH, -35, 33, -125, -67};
    public static final int VERSION_CODE = 266;
    public static final String VERSION_NAME = "1.0.0";
}
