package org.spongycastle.crypto.engines;

import com.texa.carelib.care.datamanagerconfiguration.DataManagerParameterID;
import com.texa.carelib.communication.Commands;
import java.lang.reflect.Array;
import kotlin.jvm.internal.ByteCompanionObject;
import okio.Utf8;
import org.objectweb.asm.Opcodes;
import org.spongycastle.bcpg.sig.RevocationKeyTags;
import org.spongycastle.bcpg.sig.RevocationReasonTags;
import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.OutputLengthException;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.signers.PSSSigner;
import org.spongycastle.math.ec.Tnaf;
import org.spongycastle.util.Pack;

/* JADX INFO: loaded from: classes3.dex */
public class AESLightEngine implements BlockCipher {
    private static final int BLOCK_SIZE = 16;
    private static final int m1 = -2139062144;
    private static final int m2 = 2139062143;
    private static final int m3 = 27;
    private static final int m4 = -1061109568;
    private static final int m5 = 1061109567;
    private int C0;
    private int C1;
    private int C2;
    private int C3;
    private int ROUNDS;
    private int[][] WorkingKey = (int[][]) null;
    private boolean forEncryption;
    private static final byte[] S = {99, 124, 119, 123, -14, 107, 111, -59, 48, 1, 103, 43, -2, -41, -85, 118, -54, -126, -55, 125, -6, 89, 71, -16, -83, -44, -94, -81, -100, -92, 114, -64, -73, -3, -109, 38, 54, Utf8.REPLACEMENT_BYTE, -9, -52, 52, -91, -27, -15, 113, -40, 49, 21, 4, -57, 35, -61, 24, -106, 5, -102, 7, 18, -128, -30, -21, 39, -78, 117, 9, -125, 44, 26, 27, 110, 90, -96, 82, 59, -42, -77, 41, -29, 47, -124, 83, -47, 0, -19, RevocationReasonTags.USER_NO_LONGER_VALID, -4, -79, 91, 106, -53, -66, 57, 74, 76, 88, -49, -48, -17, -86, -5, 67, 77, 51, -123, 69, -7, 2, ByteCompanionObject.MAX_VALUE, 80, 60, -97, -88, 81, -93, RevocationKeyTags.CLASS_SENSITIVE, -113, -110, -99, 56, -11, PSSSigner.TRAILER_IMPLICIT, -74, -38, 33, Tnaf.POW_2_WIDTH, -1, -13, -46, -51, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, 19, -20, 95, -105, 68, 23, -60, -89, 126, 61, 100, 93, 25, 115, 96, -127, 79, -36, 34, 42, -112, -120, 70, -18, -72, 20, -34, 94, DataManagerParameterID.ACCELERATION_MAX_RANGE, -37, -32, 50, 58, 10, 73, 6, 36, 92, -62, -45, -84, 98, -111, -107, -28, 121, -25, -56, 55, 109, -115, -43, 78, -87, 108, 86, -12, -22, 101, 122, -82, 8, -70, 120, 37, 46, 28, -90, -76, -58, -24, -35, 116, 31, 75, -67, -117, -118, 112, 62, -75, 102, 72, 3, -10, DataManagerParameterID.LED_ALWAYS_ON, 97, 53, 87, -71, -122, -63, 29, -98, -31, -8, -104, 17, 105, -39, -114, -108, -101, 30, -121, -23, -50, 85, 40, -33, -116, -95, -119, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, -65, -26, 66, 104, 65, -103, 45, 15, -80, 84, -69, 22};
    private static final byte[] Si = {82, 9, 106, -43, 48, 54, -91, 56, -65, RevocationKeyTags.CLASS_SENSITIVE, -93, -98, -127, -13, -41, -5, 124, -29, 57, -126, -101, 47, -1, -121, 52, -114, 67, 68, -60, -34, -23, -53, 84, 123, -108, 50, -90, -62, 35, 61, -18, 76, -107, DataManagerParameterID.ACCELERATION_MAX_RANGE, 66, -6, -61, 78, 8, 46, -95, 102, 40, -39, 36, -78, 118, 91, -94, 73, 109, -117, -47, 37, 114, -8, -10, 100, -122, 104, -104, 22, -44, -92, 92, -52, 93, 101, -74, -110, 108, 112, 72, 80, -3, -19, -71, -38, 94, 21, 70, 87, -89, -115, -99, -124, -112, -40, -85, 0, -116, PSSSigner.TRAILER_IMPLICIT, -45, 10, -9, -28, 88, 5, -72, -77, 69, 6, -48, 44, 30, -113, -54, Utf8.REPLACEMENT_BYTE, 15, 2, -63, -81, -67, 3, 1, 19, -118, 107, 58, -111, 17, 65, 79, 103, -36, -22, -105, -14, -49, -50, -16, -76, -26, 115, -106, -84, 116, 34, -25, -83, 53, -123, -30, -7, 55, -24, 28, 117, -33, 110, 71, -15, 26, 113, 29, 41, -59, -119, 111, -73, 98, DataManagerParameterID.LED_ALWAYS_ON, -86, 24, -66, 27, -4, 86, 62, 75, -58, -46, 121, RevocationReasonTags.USER_NO_LONGER_VALID, -102, -37, -64, -2, 120, -51, 90, -12, 31, -35, -88, 51, -120, 7, -57, 49, -79, 18, Tnaf.POW_2_WIDTH, 89, 39, -128, -20, 95, 96, 81, ByteCompanionObject.MAX_VALUE, -87, 25, -75, 74, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, 45, -27, 122, -97, -109, -55, -100, -17, -96, -32, 59, 77, -82, 42, -11, -80, -56, -21, -69, 60, -125, 83, -103, 97, 23, 43, 4, 126, -70, 119, -42, 38, -31, 105, 20, 99, 85, 33, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, 125};
    private static final int[] rcon = {1, 2, 4, 8, 16, 32, 64, 128, 27, 54, 108, Commands.DPMC_SetUserCode, 171, 77, 154, 47, 94, 188, 99, Opcodes.IFNULL, 151, 53, 106, Commands.DPM_Exit, 179, 125, 250, Commands.GetSupportedCommands, 197, 145};

    private static int FFmulX(int i) {
        return (((i & m1) >>> 7) * 27) ^ ((m2 & i) << 1);
    }

    private static int FFmulX2(int i) {
        int i2 = (m5 & i) << 2;
        int i3 = i & m4;
        int i4 = i3 ^ (i3 >>> 1);
        return (i4 >>> 5) ^ (i2 ^ (i4 >>> 2));
    }

    private static int shift(int i, int i2) {
        return (i << (-i2)) | (i >>> i2);
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "AES";
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 16;
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public void reset() {
    }

    private static int mcol(int i) {
        int iShift = shift(i, 8);
        int i2 = i ^ iShift;
        return FFmulX(i2) ^ (iShift ^ shift(i2, 16));
    }

    private static int inv_mcol(int i) {
        int iShift = shift(i, 8) ^ i;
        int iFFmulX = i ^ FFmulX(iShift);
        int iFFmulX2 = iShift ^ FFmulX2(iFFmulX);
        return iFFmulX ^ (iFFmulX2 ^ shift(iFFmulX2, 16));
    }

    private static int subWord(int i) {
        byte[] bArr = S;
        return (bArr[(i >> 24) & 255] << 24) | (bArr[i & 255] & 255) | ((bArr[(i >> 8) & 255] & 255) << 8) | ((bArr[(i >> 16) & 255] & 255) << 16);
    }

    private int[][] generateWorkingKey(byte[] bArr, boolean z) {
        int length = bArr.length;
        if (length < 16 || length > 32 || (length & 7) != 0) {
            throw new IllegalArgumentException("Key length not 128/192/256 bits.");
        }
        int i = length >> 2;
        int i2 = i + 6;
        this.ROUNDS = i2;
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) int.class, i2 + 1, 4);
        if (i == 4) {
            int iLittleEndianToInt = Pack.littleEndianToInt(bArr, 0);
            iArr[0][0] = iLittleEndianToInt;
            int iLittleEndianToInt2 = Pack.littleEndianToInt(bArr, 4);
            iArr[0][1] = iLittleEndianToInt2;
            int iLittleEndianToInt3 = Pack.littleEndianToInt(bArr, 8);
            iArr[0][2] = iLittleEndianToInt3;
            int iLittleEndianToInt4 = Pack.littleEndianToInt(bArr, 12);
            iArr[0][3] = iLittleEndianToInt4;
            for (int i3 = 1; i3 <= 10; i3++) {
                iLittleEndianToInt ^= subWord(shift(iLittleEndianToInt4, 8)) ^ rcon[i3 - 1];
                iArr[i3][0] = iLittleEndianToInt;
                iLittleEndianToInt2 ^= iLittleEndianToInt;
                iArr[i3][1] = iLittleEndianToInt2;
                iLittleEndianToInt3 ^= iLittleEndianToInt2;
                iArr[i3][2] = iLittleEndianToInt3;
                iLittleEndianToInt4 ^= iLittleEndianToInt3;
                iArr[i3][3] = iLittleEndianToInt4;
            }
        } else if (i == 6) {
            int iLittleEndianToInt5 = Pack.littleEndianToInt(bArr, 0);
            iArr[0][0] = iLittleEndianToInt5;
            int iLittleEndianToInt6 = Pack.littleEndianToInt(bArr, 4);
            iArr[0][1] = iLittleEndianToInt6;
            int iLittleEndianToInt7 = Pack.littleEndianToInt(bArr, 8);
            iArr[0][2] = iLittleEndianToInt7;
            int iLittleEndianToInt8 = Pack.littleEndianToInt(bArr, 12);
            iArr[0][3] = iLittleEndianToInt8;
            int iLittleEndianToInt9 = Pack.littleEndianToInt(bArr, 16);
            iArr[1][0] = iLittleEndianToInt9;
            int iLittleEndianToInt10 = Pack.littleEndianToInt(bArr, 20);
            iArr[1][1] = iLittleEndianToInt10;
            int iSubWord = iLittleEndianToInt5 ^ (subWord(shift(iLittleEndianToInt10, 8)) ^ 1);
            iArr[1][2] = iSubWord;
            int i4 = iLittleEndianToInt6 ^ iSubWord;
            iArr[1][3] = i4;
            int i5 = iLittleEndianToInt7 ^ i4;
            iArr[2][0] = i5;
            int i6 = iLittleEndianToInt8 ^ i5;
            iArr[2][1] = i6;
            int i7 = iLittleEndianToInt9 ^ i6;
            iArr[2][2] = i7;
            int i8 = iLittleEndianToInt10 ^ i7;
            iArr[2][3] = i8;
            int i9 = 2;
            for (int i10 = 3; i10 < 12; i10 += 3) {
                int iSubWord2 = subWord(shift(i8, 8)) ^ i9;
                int i11 = i9 << 1;
                int i12 = iSubWord ^ iSubWord2;
                iArr[i10][0] = i12;
                int i13 = i4 ^ i12;
                iArr[i10][1] = i13;
                int i14 = i5 ^ i13;
                iArr[i10][2] = i14;
                int i15 = i6 ^ i14;
                iArr[i10][3] = i15;
                int i16 = i7 ^ i15;
                int i17 = i10 + 1;
                iArr[i17][0] = i16;
                int i18 = i8 ^ i16;
                iArr[i17][1] = i18;
                int iSubWord3 = subWord(shift(i18, 8)) ^ i11;
                i9 = i11 << 1;
                iSubWord = i12 ^ iSubWord3;
                iArr[i17][2] = iSubWord;
                i4 = i13 ^ iSubWord;
                iArr[i17][3] = i4;
                i5 = i14 ^ i4;
                int i19 = i10 + 2;
                iArr[i19][0] = i5;
                i6 = i15 ^ i5;
                iArr[i19][1] = i6;
                i7 = i16 ^ i6;
                iArr[i19][2] = i7;
                i8 = i18 ^ i7;
                iArr[i19][3] = i8;
            }
            int iSubWord4 = (subWord(shift(i8, 8)) ^ i9) ^ iSubWord;
            iArr[12][0] = iSubWord4;
            int i20 = iSubWord4 ^ i4;
            iArr[12][1] = i20;
            int i21 = i20 ^ i5;
            iArr[12][2] = i21;
            iArr[12][3] = i21 ^ i6;
        } else if (i == 8) {
            int iLittleEndianToInt11 = Pack.littleEndianToInt(bArr, 0);
            iArr[0][0] = iLittleEndianToInt11;
            int iLittleEndianToInt12 = Pack.littleEndianToInt(bArr, 4);
            iArr[0][1] = iLittleEndianToInt12;
            int iLittleEndianToInt13 = Pack.littleEndianToInt(bArr, 8);
            iArr[0][2] = iLittleEndianToInt13;
            int iLittleEndianToInt14 = Pack.littleEndianToInt(bArr, 12);
            iArr[0][3] = iLittleEndianToInt14;
            int iLittleEndianToInt15 = Pack.littleEndianToInt(bArr, 16);
            iArr[1][0] = iLittleEndianToInt15;
            int iLittleEndianToInt16 = Pack.littleEndianToInt(bArr, 20);
            iArr[1][1] = iLittleEndianToInt16;
            int iLittleEndianToInt17 = Pack.littleEndianToInt(bArr, 24);
            iArr[1][2] = iLittleEndianToInt17;
            int iLittleEndianToInt18 = Pack.littleEndianToInt(bArr, 28);
            iArr[1][3] = iLittleEndianToInt18;
            int i22 = 1;
            for (int i23 = 2; i23 < 14; i23 += 2) {
                int iSubWord5 = subWord(shift(iLittleEndianToInt18, 8)) ^ i22;
                i22 <<= 1;
                iLittleEndianToInt11 ^= iSubWord5;
                iArr[i23][0] = iLittleEndianToInt11;
                iLittleEndianToInt12 ^= iLittleEndianToInt11;
                iArr[i23][1] = iLittleEndianToInt12;
                iLittleEndianToInt13 ^= iLittleEndianToInt12;
                iArr[i23][2] = iLittleEndianToInt13;
                iLittleEndianToInt14 ^= iLittleEndianToInt13;
                iArr[i23][3] = iLittleEndianToInt14;
                iLittleEndianToInt15 ^= subWord(iLittleEndianToInt14);
                int i24 = i23 + 1;
                iArr[i24][0] = iLittleEndianToInt15;
                iLittleEndianToInt16 ^= iLittleEndianToInt15;
                iArr[i24][1] = iLittleEndianToInt16;
                iLittleEndianToInt17 ^= iLittleEndianToInt16;
                iArr[i24][2] = iLittleEndianToInt17;
                iLittleEndianToInt18 ^= iLittleEndianToInt17;
                iArr[i24][3] = iLittleEndianToInt18;
            }
            int iSubWord6 = (subWord(shift(iLittleEndianToInt18, 8)) ^ i22) ^ iLittleEndianToInt11;
            iArr[14][0] = iSubWord6;
            int i25 = iSubWord6 ^ iLittleEndianToInt12;
            iArr[14][1] = i25;
            int i26 = i25 ^ iLittleEndianToInt13;
            iArr[14][2] = i26;
            iArr[14][3] = i26 ^ iLittleEndianToInt14;
        } else {
            throw new IllegalStateException("Should never get here");
        }
        if (!z) {
            for (int i27 = 1; i27 < this.ROUNDS; i27++) {
                for (int i28 = 0; i28 < 4; i28++) {
                    iArr[i27][i28] = inv_mcol(iArr[i27][i28]);
                }
            }
        }
        return iArr;
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        if (cipherParameters instanceof KeyParameter) {
            this.WorkingKey = generateWorkingKey(((KeyParameter) cipherParameters).getKey(), z);
            this.forEncryption = z;
        } else {
            throw new IllegalArgumentException("invalid parameter passed to AES init - " + cipherParameters.getClass().getName());
        }
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        if (this.WorkingKey == null) {
            throw new IllegalStateException("AES engine not initialised");
        }
        if (i + 16 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (i2 + 16 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        if (this.forEncryption) {
            unpackBlock(bArr, i);
            encryptBlock(this.WorkingKey);
            packBlock(bArr2, i2);
            return 16;
        }
        unpackBlock(bArr, i);
        decryptBlock(this.WorkingKey);
        packBlock(bArr2, i2);
        return 16;
    }

    private void unpackBlock(byte[] bArr, int i) {
        int i2 = i + 1;
        int i3 = bArr[i] & 255;
        this.C0 = i3;
        int i4 = i2 + 1;
        int i5 = i3 | ((bArr[i2] & 255) << 8);
        this.C0 = i5;
        int i6 = i4 + 1;
        int i7 = i5 | ((bArr[i4] & 255) << 16);
        this.C0 = i7;
        int i8 = i6 + 1;
        this.C0 = i7 | (bArr[i6] << 24);
        int i9 = i8 + 1;
        int i10 = bArr[i8] & 255;
        this.C1 = i10;
        int i11 = i9 + 1;
        int i12 = ((bArr[i9] & 255) << 8) | i10;
        this.C1 = i12;
        int i13 = i11 + 1;
        int i14 = i12 | ((bArr[i11] & 255) << 16);
        this.C1 = i14;
        int i15 = i13 + 1;
        this.C1 = i14 | (bArr[i13] << 24);
        int i16 = i15 + 1;
        int i17 = bArr[i15] & 255;
        this.C2 = i17;
        int i18 = i16 + 1;
        int i19 = ((bArr[i16] & 255) << 8) | i17;
        this.C2 = i19;
        int i20 = i18 + 1;
        int i21 = i19 | ((bArr[i18] & 255) << 16);
        this.C2 = i21;
        int i22 = i20 + 1;
        this.C2 = i21 | (bArr[i20] << 24);
        int i23 = i22 + 1;
        int i24 = bArr[i22] & 255;
        this.C3 = i24;
        int i25 = i23 + 1;
        int i26 = ((bArr[i23] & 255) << 8) | i24;
        this.C3 = i26;
        int i27 = i26 | ((bArr[i25] & 255) << 16);
        this.C3 = i27;
        this.C3 = (bArr[i25 + 1] << 24) | i27;
    }

    private void packBlock(byte[] bArr, int i) {
        int i2 = i + 1;
        int i3 = this.C0;
        bArr[i] = (byte) i3;
        int i4 = i2 + 1;
        bArr[i2] = (byte) (i3 >> 8);
        int i5 = i4 + 1;
        bArr[i4] = (byte) (i3 >> 16);
        int i6 = i5 + 1;
        bArr[i5] = (byte) (i3 >> 24);
        int i7 = i6 + 1;
        int i8 = this.C1;
        bArr[i6] = (byte) i8;
        int i9 = i7 + 1;
        bArr[i7] = (byte) (i8 >> 8);
        int i10 = i9 + 1;
        bArr[i9] = (byte) (i8 >> 16);
        int i11 = i10 + 1;
        bArr[i10] = (byte) (i8 >> 24);
        int i12 = i11 + 1;
        int i13 = this.C2;
        bArr[i11] = (byte) i13;
        int i14 = i12 + 1;
        bArr[i12] = (byte) (i13 >> 8);
        int i15 = i14 + 1;
        bArr[i14] = (byte) (i13 >> 16);
        int i16 = i15 + 1;
        bArr[i15] = (byte) (i13 >> 24);
        int i17 = i16 + 1;
        int i18 = this.C3;
        bArr[i16] = (byte) i18;
        int i19 = i17 + 1;
        bArr[i17] = (byte) (i18 >> 8);
        bArr[i19] = (byte) (i18 >> 16);
        bArr[i19 + 1] = (byte) (i18 >> 24);
    }

    private void encryptBlock(int[][] iArr) {
        int i = this.C0 ^ iArr[0][0];
        int i2 = this.C1 ^ iArr[0][1];
        int i3 = this.C2 ^ iArr[0][2];
        int i4 = this.C3 ^ iArr[0][3];
        int i5 = 1;
        while (i5 < this.ROUNDS - 1) {
            byte[] bArr = S;
            int iMcol = mcol((((bArr[i & 255] & 255) ^ ((bArr[(i2 >> 8) & 255] & 255) << 8)) ^ ((bArr[(i3 >> 16) & 255] & 255) << 16)) ^ (bArr[(i4 >> 24) & 255] << 24)) ^ iArr[i5][0];
            int iMcol2 = mcol((((bArr[i2 & 255] & 255) ^ ((bArr[(i3 >> 8) & 255] & 255) << 8)) ^ ((bArr[(i4 >> 16) & 255] & 255) << 16)) ^ (bArr[(i >> 24) & 255] << 24)) ^ iArr[i5][1];
            int iMcol3 = mcol((((bArr[i3 & 255] & 255) ^ ((bArr[(i4 >> 8) & 255] & 255) << 8)) ^ ((bArr[(i >> 16) & 255] & 255) << 16)) ^ (bArr[(i2 >> 24) & 255] << 24)) ^ iArr[i5][2];
            int iMcol4 = mcol(((((bArr[(i >> 8) & 255] & 255) << 8) ^ (bArr[i4 & 255] & 255)) ^ ((bArr[(i2 >> 16) & 255] & 255) << 16)) ^ (bArr[(i3 >> 24) & 255] << 24));
            int i6 = i5 + 1;
            int i7 = iMcol4 ^ iArr[i5][3];
            int iMcol5 = mcol((((bArr[iMcol & 255] & 255) ^ ((bArr[(iMcol2 >> 8) & 255] & 255) << 8)) ^ ((bArr[(iMcol3 >> 16) & 255] & 255) << 16)) ^ (bArr[(i7 >> 24) & 255] << 24)) ^ iArr[i6][0];
            int iMcol6 = mcol((((bArr[iMcol2 & 255] & 255) ^ ((bArr[(iMcol3 >> 8) & 255] & 255) << 8)) ^ ((bArr[(i7 >> 16) & 255] & 255) << 16)) ^ (bArr[(iMcol >> 24) & 255] << 24)) ^ iArr[i6][1];
            int iMcol7 = mcol((((bArr[iMcol3 & 255] & 255) ^ ((bArr[(i7 >> 8) & 255] & 255) << 8)) ^ ((bArr[(iMcol >> 16) & 255] & 255) << 16)) ^ (bArr[(iMcol2 >> 24) & 255] << 24)) ^ iArr[i6][2];
            int iMcol8 = mcol((((bArr[i7 & 255] & 255) ^ ((bArr[(iMcol >> 8) & 255] & 255) << 8)) ^ ((bArr[(iMcol2 >> 16) & 255] & 255) << 16)) ^ (bArr[(iMcol3 >> 24) & 255] << 24));
            int i8 = i6 + 1;
            int i9 = iMcol8 ^ iArr[i6][3];
            i2 = iMcol6;
            i4 = i9;
            i = iMcol5;
            i3 = iMcol7;
            i5 = i8;
        }
        byte[] bArr2 = S;
        int iMcol9 = mcol((((bArr2[i & 255] & 255) ^ ((bArr2[(i2 >> 8) & 255] & 255) << 8)) ^ ((bArr2[(i3 >> 16) & 255] & 255) << 16)) ^ (bArr2[(i4 >> 24) & 255] << 24)) ^ iArr[i5][0];
        int iMcol10 = mcol((((bArr2[i2 & 255] & 255) ^ ((bArr2[(i3 >> 8) & 255] & 255) << 8)) ^ ((bArr2[(i4 >> 16) & 255] & 255) << 16)) ^ (bArr2[(i >> 24) & 255] << 24)) ^ iArr[i5][1];
        int iMcol11 = mcol((((bArr2[i3 & 255] & 255) ^ ((bArr2[(i4 >> 8) & 255] & 255) << 8)) ^ ((bArr2[(i >> 16) & 255] & 255) << 16)) ^ (bArr2[(i2 >> 24) & 255] << 24)) ^ iArr[i5][2];
        int iMcol12 = mcol(((((bArr2[(i >> 8) & 255] & 255) << 8) ^ (bArr2[i4 & 255] & 255)) ^ ((bArr2[(i2 >> 16) & 255] & 255) << 16)) ^ (bArr2[(i3 >> 24) & 255] << 24));
        int i10 = i5 + 1;
        int i11 = iMcol12 ^ iArr[i5][3];
        this.C0 = iArr[i10][0] ^ ((((bArr2[iMcol9 & 255] & 255) ^ ((bArr2[(iMcol10 >> 8) & 255] & 255) << 8)) ^ ((bArr2[(iMcol11 >> 16) & 255] & 255) << 16)) ^ (bArr2[(i11 >> 24) & 255] << 24));
        this.C1 = ((((bArr2[iMcol10 & 255] & 255) ^ ((bArr2[(iMcol11 >> 8) & 255] & 255) << 8)) ^ ((bArr2[(i11 >> 16) & 255] & 255) << 16)) ^ (bArr2[(iMcol9 >> 24) & 255] << 24)) ^ iArr[i10][1];
        this.C2 = ((((bArr2[iMcol11 & 255] & 255) ^ ((bArr2[(i11 >> 8) & 255] & 255) << 8)) ^ ((bArr2[(iMcol9 >> 16) & 255] & 255) << 16)) ^ (bArr2[(iMcol10 >> 24) & 255] << 24)) ^ iArr[i10][2];
        this.C3 = iArr[i10][3] ^ ((((bArr2[i11 & 255] & 255) ^ ((bArr2[(iMcol9 >> 8) & 255] & 255) << 8)) ^ ((bArr2[(iMcol10 >> 16) & 255] & 255) << 16)) ^ (bArr2[(iMcol11 >> 24) & 255] << 24));
    }

    private void decryptBlock(int[][] iArr) {
        int i = this.C0;
        int i2 = this.ROUNDS;
        int i3 = i ^ iArr[i2][0];
        int i4 = this.C1 ^ iArr[i2][1];
        int i5 = this.C2 ^ iArr[i2][2];
        int i6 = i2 - 1;
        int i7 = iArr[i2][3] ^ this.C3;
        while (i6 > 1) {
            byte[] bArr = Si;
            int iInv_mcol = inv_mcol((((bArr[i3 & 255] & 255) ^ ((bArr[(i7 >> 8) & 255] & 255) << 8)) ^ ((bArr[(i5 >> 16) & 255] & 255) << 16)) ^ (bArr[(i4 >> 24) & 255] << 24)) ^ iArr[i6][0];
            int iInv_mcol2 = inv_mcol((((bArr[i4 & 255] & 255) ^ ((bArr[(i3 >> 8) & 255] & 255) << 8)) ^ ((bArr[(i7 >> 16) & 255] & 255) << 16)) ^ (bArr[(i5 >> 24) & 255] << 24)) ^ iArr[i6][1];
            int iInv_mcol3 = inv_mcol((((bArr[i5 & 255] & 255) ^ ((bArr[(i4 >> 8) & 255] & 255) << 8)) ^ ((bArr[(i3 >> 16) & 255] & 255) << 16)) ^ (bArr[(i7 >> 24) & 255] << 24)) ^ iArr[i6][2];
            int iInv_mcol4 = inv_mcol((bArr[(i3 >> 24) & 255] << 24) ^ (((bArr[i7 & 255] & 255) ^ ((bArr[(i5 >> 8) & 255] & 255) << 8)) ^ ((bArr[(i4 >> 16) & 255] & 255) << 16)));
            int i8 = i6 - 1;
            int i9 = iInv_mcol4 ^ iArr[i6][3];
            int iInv_mcol5 = inv_mcol((((bArr[iInv_mcol & 255] & 255) ^ ((bArr[(i9 >> 8) & 255] & 255) << 8)) ^ ((bArr[(iInv_mcol3 >> 16) & 255] & 255) << 16)) ^ (bArr[(iInv_mcol2 >> 24) & 255] << 24)) ^ iArr[i8][0];
            int iInv_mcol6 = inv_mcol((((bArr[iInv_mcol2 & 255] & 255) ^ ((bArr[(iInv_mcol >> 8) & 255] & 255) << 8)) ^ ((bArr[(i9 >> 16) & 255] & 255) << 16)) ^ (bArr[(iInv_mcol3 >> 24) & 255] << 24)) ^ iArr[i8][1];
            int iInv_mcol7 = inv_mcol((((bArr[iInv_mcol3 & 255] & 255) ^ ((bArr[(iInv_mcol2 >> 8) & 255] & 255) << 8)) ^ ((bArr[(iInv_mcol >> 16) & 255] & 255) << 16)) ^ (bArr[(i9 >> 24) & 255] << 24)) ^ iArr[i8][2];
            int iInv_mcol8 = inv_mcol((((bArr[i9 & 255] & 255) ^ ((bArr[(iInv_mcol3 >> 8) & 255] & 255) << 8)) ^ ((bArr[(iInv_mcol2 >> 16) & 255] & 255) << 16)) ^ (bArr[(iInv_mcol >> 24) & 255] << 24));
            int i10 = i8 - 1;
            i7 = iArr[i8][3] ^ iInv_mcol8;
            i3 = iInv_mcol5;
            i4 = iInv_mcol6;
            i5 = iInv_mcol7;
            i6 = i10;
        }
        byte[] bArr2 = Si;
        int iInv_mcol9 = inv_mcol((((bArr2[i3 & 255] & 255) ^ ((bArr2[(i7 >> 8) & 255] & 255) << 8)) ^ ((bArr2[(i5 >> 16) & 255] & 255) << 16)) ^ (bArr2[(i4 >> 24) & 255] << 24)) ^ iArr[i6][0];
        int iInv_mcol10 = inv_mcol((((bArr2[i4 & 255] & 255) ^ ((bArr2[(i3 >> 8) & 255] & 255) << 8)) ^ ((bArr2[(i7 >> 16) & 255] & 255) << 16)) ^ (bArr2[(i5 >> 24) & 255] << 24)) ^ iArr[i6][1];
        int iInv_mcol11 = inv_mcol((((bArr2[i5 & 255] & 255) ^ ((bArr2[(i4 >> 8) & 255] & 255) << 8)) ^ ((bArr2[(i3 >> 16) & 255] & 255) << 16)) ^ (bArr2[(i7 >> 24) & 255] << 24)) ^ iArr[i6][2];
        int iInv_mcol12 = inv_mcol((bArr2[(i3 >> 24) & 255] << 24) ^ (((bArr2[i7 & 255] & 255) ^ ((bArr2[(i5 >> 8) & 255] & 255) << 8)) ^ ((bArr2[(i4 >> 16) & 255] & 255) << 16))) ^ iArr[i6][3];
        this.C0 = ((((bArr2[iInv_mcol9 & 255] & 255) ^ ((bArr2[(iInv_mcol12 >> 8) & 255] & 255) << 8)) ^ ((bArr2[(iInv_mcol11 >> 16) & 255] & 255) << 16)) ^ (bArr2[(iInv_mcol10 >> 24) & 255] << 24)) ^ iArr[0][0];
        this.C1 = ((((bArr2[iInv_mcol10 & 255] & 255) ^ ((bArr2[(iInv_mcol9 >> 8) & 255] & 255) << 8)) ^ ((bArr2[(iInv_mcol12 >> 16) & 255] & 255) << 16)) ^ (bArr2[(iInv_mcol11 >> 24) & 255] << 24)) ^ iArr[0][1];
        this.C2 = ((((bArr2[iInv_mcol11 & 255] & 255) ^ ((bArr2[(iInv_mcol10 >> 8) & 255] & 255) << 8)) ^ ((bArr2[(iInv_mcol9 >> 16) & 255] & 255) << 16)) ^ (bArr2[(iInv_mcol12 >> 24) & 255] << 24)) ^ iArr[0][2];
        this.C3 = iArr[0][3] ^ ((((bArr2[iInv_mcol12 & 255] & 255) ^ ((bArr2[(iInv_mcol11 >> 8) & 255] & 255) << 8)) ^ ((bArr2[(iInv_mcol10 >> 16) & 255] & 255) << 16)) ^ (bArr2[(iInv_mcol9 >> 24) & 255] << 24));
    }
}
