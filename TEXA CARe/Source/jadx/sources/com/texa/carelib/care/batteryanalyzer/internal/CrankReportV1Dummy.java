package com.texa.carelib.care.batteryanalyzer.internal;

import com.texa.carelib.care.batteryanalyzer.CrankReport;
import com.texa.carelib.care.datamanagerconfiguration.DataManagerParameterID;
import okio.Utf8;
import org.spongycastle.bcpg.sig.RevocationKeyTags;
import org.spongycastle.bcpg.sig.RevocationReasonTags;
import org.spongycastle.crypto.signers.PSSSigner;

/* JADX INFO: loaded from: classes2.dex */
public class CrankReportV1Dummy {
    private static byte[] CRANK_FORD_C_MAX = {3, -22, 54, 1, 1, 0, 0, 0, 39, -101, -31, 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 86, 65, 76, 73, 10, 0, 0, 0, 100, 0, 0, 0, -122, 41, -5, 29, -58, -32, 18, 0, -58, 75, RevocationReasonTags.USER_NO_LONGER_VALID, 0, 0, 0, 0, 0, 79, DataManagerParameterID.LED_ALWAYS_ON, -8, -1, -1, -1, -1, -1, -73, 119, 125, 77, 1, 0, 0, 0, -20, -59, -47, Utf8.REPLACEMENT_BYTE, -58, 23, -126, RevocationKeyTags.CLASS_SENSITIVE, 18, -21, 39, 70, 92, 46, -5, 29, -1, 31, -45, 33, 60, 35, -82, 35, 111, 36, 19, 37, -75, 36, 91, 36, 99, 36, 123, 36, 29, 38, 17, 38, -5, 38, 28, 39, 77, 39, 61, 39, 106, 39, 69, 39, 110, 39, -38, 38, 71, 38, 122, 37, -51, 36, -93, 37, 9, 38, -71, 38, -89, 39, 118, 39, -31, 39, 42, 40, 10, 40, -89, 39, -30, 38, -28, 37, 38, 38, 71, 38, 72, 39, -77, 39, 118, 39, 75, 40, 42, 40, 79, 40, -17, 40, -95, 40, 73, 41, -125, 41, 8, 41, -76, 41, -51, 41, 65, 41, -43, 41, 98, 41, 6, 42, 6, 42, PSSSigner.TRAILER_IMPLICIT, 41, 72, 42, 96, 42, 6, 42, -8, 44, 9, 45, 33, 45, 58, 45, -122, 44, 42, 45, 83, 45, 125, 44, 83, 45, 74, 45, 74, 45, 66, 45, -98, 44, 83, 45, 91, 45, -37, 44, 82, 45, 83, 45, 74, 45, 99, 45, 74, 45, 74, 45, 91, 45, 83, 45, 58, 45, 91, 45, 74, 45, -65, 44, 91, 45, 107, 45, -73, 44, 86, 45, 74, 45, 99, 45, 115, 45, 83, 45, 107, 45, 107, 45, -106, 44, 99, 45, 66, 45};
    private static byte[] CRANK_GOLF_IV_1 = {3, -22, 54, 1, 1, 0, 0, 0, -19, Utf8.REPLACEMENT_BYTE, -29, 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 86, 65, 76, 73, 10, 0, 0, 0, 100, 0, 0, 0, -84, 42, 43, 28, 66, -109, 17, 0, 75, -92, 36, 0, 0, 0, 0, 0, 79, DataManagerParameterID.LED_ALWAYS_ON, -8, -1, -1, -1, -1, -1, -54, 4, -29, 91, 1, 0, 0, 0, -61, 95, -60, Utf8.REPLACEMENT_BYTE, 42, -103, -109, RevocationKeyTags.CLASS_SENSITIVE, -49, 42, 47, 70, 44, 47, 43, 28, -7, 30, -101, RevocationReasonTags.USER_NO_LONGER_VALID, -25, 33, -74, 35, -116, 36, -1, 36, -100, 36, -75, 36, 91, 36, 58, 36, -100, 36, -110, 37, 54, 38, 15, 39, -113, 39, 34, 40, 10, 40, -56, 39, 28, 39, 38, 38, 89, 37, 17, 38, -79, 38, 110, 39, -44, 39, 38, 40, 108, 40, -40, 39, -21, 38, -46, 38, 102, 39, -64, 39, 51, 40, 108, 40, -66, 40, -17, 40, RevocationReasonTags.USER_NO_LONGER_VALID, 41, 8, 41, 90, 41, 123, 41, -125, 41, -101, 41, -88, 41, PSSSigner.TRAILER_IMPLICIT, 41, -43, 41, -10, 41, -51, 41, -112, 45, -42, 45, 15, 46, 15, 46, 7, 46, 40, 46, RevocationKeyTags.CLASS_SENSITIVE, 46, RevocationReasonTags.USER_NO_LONGER_VALID, 46, RevocationKeyTags.CLASS_SENSITIVE, 46, 48, 46, 73, 46, 48, 46, 81, 46, 73, 46, 97, 46, 97, 46, 85, 46, 81, 46, 89, 46, 97, 46, 122, 46, 105, 46, 89, 46, 114, 46, 122, 46, 97, 46, 81, 46, 89, 46, 77, 46, 40, 46, 89, 46, 85, 46, 89, 46, 105, 46, 97, 46, 97, 46, 114, 46, 56, 46, 114, 46, 105, 46, 101, 46, 73, 46, 105, 46, 109, 46, 114, 46, 122, 46, 105, 46, 114, 46, 105, 46, 122, 46, 122, 46, 114, 46};

    public enum DummyCrankType {
        Ford_C_Max,
        Golf_IV_1
    }

    /* JADX INFO: renamed from: com.texa.carelib.care.batteryanalyzer.internal.CrankReportV1Dummy$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$carelib$care$batteryanalyzer$internal$CrankReportV1Dummy$DummyCrankType;

        static {
            int[] iArr = new int[DummyCrankType.values().length];
            $SwitchMap$com$texa$carelib$care$batteryanalyzer$internal$CrankReportV1Dummy$DummyCrankType = iArr;
            try {
                iArr[DummyCrankType.Ford_C_Max.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$texa$carelib$care$batteryanalyzer$internal$CrankReportV1Dummy$DummyCrankType[DummyCrankType.Golf_IV_1.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static CrankReport getInstance(DummyCrankType dummyCrankType) {
        int i = AnonymousClass1.$SwitchMap$com$texa$carelib$care$batteryanalyzer$internal$CrankReportV1Dummy$DummyCrankType[dummyCrankType.ordinal()];
        if (i == 1) {
            return new CrankReportFactory().create(CRANK_FORD_C_MAX);
        }
        if (i != 2) {
            return null;
        }
        return new CrankReportFactory().create(CRANK_GOLF_IV_1);
    }
}
