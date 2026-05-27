package at.favre.lib.crypto.bcrypt;

import com.texa.carelib.care.datamanagerconfiguration.DataManagerParameterID;
import okio.Utf8;
import org.spongycastle.bcpg.sig.RevocationReasonTags;
import org.spongycastle.math.ec.Tnaf;

/* JADX INFO: loaded from: classes.dex */
public interface Radix64Encoder {
    byte[] decode(byte[] bArr);

    byte[] encode(byte[] bArr);

    public static class Default implements Radix64Encoder {
        private static final byte[] DECODE_TABLE = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 1, 54, 55, 56, 57, 58, 59, 60, 61, 62, Utf8.REPLACEMENT_BYTE, -1, -1, -1, -2, -1, -1, -1, 2, 3, 4, 5, 6, 7, 8, 9, 10, DataManagerParameterID.ACCELERATION_MAX_RANGE, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, DataManagerParameterID.LED_ALWAYS_ON, 15, Tnaf.POW_2_WIDTH, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, -1, -1, -1, -1, -1, -1, 28, 29, 30, 31, RevocationReasonTags.USER_NO_LONGER_VALID, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53};
        private static final byte[] MAP = {46, 47, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57};

        @Override // at.favre.lib.crypto.bcrypt.Radix64Encoder
        public byte[] encode(byte[] bArr) {
            return encode(bArr, MAP);
        }

        @Override // at.favre.lib.crypto.bcrypt.Radix64Encoder
        public byte[] decode(byte[] bArr) {
            byte b;
            int length = bArr.length;
            while (length > 0 && ((b = bArr[length - 1]) == 61 || b == 10 || b == 13 || b == 32 || b == 9)) {
                length--;
            }
            int i = (int) ((((long) length) * 6) / 8);
            byte[] bArr2 = new byte[i];
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            for (int i5 = 0; i5 < length; i5++) {
                byte b2 = bArr[i5];
                if (b2 == 46 || b2 == 47 || ((b2 >= 65 && b2 <= 122) || (b2 >= 48 && b2 <= 57))) {
                    i3 = (i3 << 6) | DECODE_TABLE[b2];
                    i2++;
                    if (i2 % 4 == 0) {
                        int i6 = i4 + 1;
                        bArr2[i4] = (byte) (i3 >> 16);
                        int i7 = i6 + 1;
                        bArr2[i6] = (byte) (i3 >> 8);
                        bArr2[i7] = (byte) i3;
                        i4 = i7 + 1;
                    }
                } else if (b2 != 10 && b2 != 13 && b2 != 32 && b2 != 9) {
                    throw new IllegalArgumentException("invalid character to decode: " + ((int) b2));
                }
            }
            int i8 = i2 % 4;
            if (i8 == 1) {
                return new byte[0];
            }
            if (i8 == 2) {
                bArr2[i4] = (byte) ((i3 << 12) >> 16);
                i4++;
            } else if (i8 == 3) {
                int i9 = i3 << 6;
                int i10 = i4 + 1;
                bArr2[i4] = (byte) (i9 >> 16);
                i4 = i10 + 1;
                bArr2[i10] = (byte) (i9 >> 8);
            }
            if (i4 == i) {
                return bArr2;
            }
            byte[] bArr3 = new byte[i4];
            System.arraycopy(bArr2, 0, bArr3, 0, i4);
            return bArr3;
        }

        private static byte[] encode(byte[] bArr, byte[] bArr2) {
            byte[] bArr3 = new byte[((bArr.length / 3) * 4) + (bArr.length % 3 == 0 ? 0 : (bArr.length % 3) + 1)];
            int length = bArr.length - (bArr.length % 3);
            int i = 0;
            for (int i2 = 0; i2 < length; i2 += 3) {
                int i3 = i + 1;
                bArr3[i] = bArr2[(bArr[i2] & 255) >> 2];
                int i4 = i3 + 1;
                int i5 = i2 + 1;
                bArr3[i3] = bArr2[((bArr[i2] & 3) << 4) | ((bArr[i5] & 255) >> 4)];
                int i6 = i4 + 1;
                int i7 = i2 + 2;
                bArr3[i4] = bArr2[((bArr[i5] & 15) << 2) | ((bArr[i7] & 255) >> 6)];
                i = i6 + 1;
                bArr3[i6] = bArr2[bArr[i7] & Utf8.REPLACEMENT_BYTE];
            }
            int length2 = bArr.length % 3;
            if (length2 == 1) {
                bArr3[i] = bArr2[(bArr[length] & 255) >> 2];
                bArr3[i + 1] = bArr2[(bArr[length] & 3) << 4];
            } else if (length2 == 2) {
                int i8 = i + 1;
                bArr3[i] = bArr2[(bArr[length] & 255) >> 2];
                int i9 = (bArr[length] & 3) << 4;
                int i10 = length + 1;
                bArr3[i8] = bArr2[((bArr[i10] & 255) >> 4) | i9];
                bArr3[i8 + 1] = bArr2[(bArr[i10] & 15) << 2];
            }
            return bArr3;
        }
    }
}
