package org.spongycastle.pqc.crypto.gmss.util;

import org.spongycastle.crypto.Digest;

/* JADX INFO: loaded from: classes3.dex */
public class WinternitzOTSVerify {
    private Digest messDigestOTS;
    private int w;

    public int getLog(int i) {
        int i2 = 1;
        int i3 = 2;
        while (i3 < i) {
            i3 <<= 1;
            i2++;
        }
        return i2;
    }

    public WinternitzOTSVerify(Digest digest, int i) {
        this.w = i;
        this.messDigestOTS = digest;
    }

    public int getSignatureLength() {
        int digestSize = this.messDigestOTS.getDigestSize();
        int i = this.w;
        int i2 = ((digestSize << 3) + (i - 1)) / i;
        int log = getLog((i2 << i) + 1);
        return digestSize * (i2 + (((log + r3) - 1) / this.w));
    }

    public byte[] Verify(byte[] bArr, byte[] bArr2) {
        int i;
        byte[] bArr3 = bArr2;
        int digestSize = this.messDigestOTS.getDigestSize();
        byte[] bArr4 = new byte[digestSize];
        int i2 = 0;
        this.messDigestOTS.update(bArr, 0, bArr.length);
        int digestSize2 = this.messDigestOTS.getDigestSize();
        byte[] bArr5 = new byte[digestSize2];
        this.messDigestOTS.doFinal(bArr5, 0);
        int i3 = digestSize << 3;
        int i4 = this.w;
        int i5 = ((i4 - 1) + i3) / i4;
        int log = getLog((i5 << i4) + 1);
        int i6 = this.w;
        int i7 = ((((log + i6) - 1) / i6) + i5) * digestSize;
        if (i7 != bArr3.length) {
            return null;
        }
        byte[] bArr6 = new byte[i7];
        int i8 = 8;
        if (8 % i6 == 0) {
            int i9 = 8 / i6;
            int i10 = (1 << i6) - 1;
            byte[] bArr7 = new byte[digestSize];
            int i11 = 0;
            int i12 = 0;
            int i13 = 0;
            while (i11 < digestSize2) {
                while (i2 < i9) {
                    int i14 = bArr5[i11] & i10;
                    i12 += i14;
                    int i15 = digestSize2;
                    int i16 = i13 * digestSize;
                    int i17 = i9;
                    System.arraycopy(bArr3, i16, bArr7, 0, digestSize);
                    int i18 = i14;
                    while (i18 < i10) {
                        this.messDigestOTS.update(bArr7, 0, bArr7.length);
                        bArr7 = new byte[this.messDigestOTS.getDigestSize()];
                        this.messDigestOTS.doFinal(bArr7, 0);
                        i18++;
                        i12 = i12;
                        i7 = i7;
                    }
                    System.arraycopy(bArr7, 0, bArr6, i16, digestSize);
                    bArr5[i11] = (byte) (bArr5[i11] >>> this.w);
                    i13++;
                    i2++;
                    digestSize2 = i15;
                    bArr3 = bArr2;
                    i9 = i17;
                }
                i11++;
                bArr3 = bArr2;
                i2 = 0;
            }
            i = i7;
            int i19 = (i5 << this.w) - i12;
            int i20 = 0;
            while (i20 < log) {
                int i21 = i13 * digestSize;
                System.arraycopy(bArr2, i21, bArr7, 0, digestSize);
                for (int i22 = i19 & i10; i22 < i10; i22++) {
                    this.messDigestOTS.update(bArr7, 0, bArr7.length);
                    bArr7 = new byte[this.messDigestOTS.getDigestSize()];
                    this.messDigestOTS.doFinal(bArr7, 0);
                }
                System.arraycopy(bArr7, 0, bArr6, i21, digestSize);
                int i23 = this.w;
                i19 >>>= i23;
                i13++;
                i20 += i23;
            }
        } else {
            i = i7;
            if (i6 < 8) {
                int i24 = digestSize / i6;
                int i25 = (1 << i6) - 1;
                byte[] bArr8 = new byte[digestSize];
                int i26 = 0;
                int i27 = 0;
                int i28 = 0;
                int i29 = 0;
                while (i26 < i24) {
                    int i30 = 0;
                    long j = 0;
                    while (i30 < this.w) {
                        j ^= (long) ((bArr5[i27] & 255) << (i30 << 3));
                        i27++;
                        i30++;
                        bArr8 = bArr8;
                    }
                    int i31 = 0;
                    while (i31 < i8) {
                        int i32 = i26;
                        int i33 = (int) (j & ((long) i25));
                        i28 += i33;
                        int i34 = i29 * digestSize;
                        System.arraycopy(bArr3, i34, bArr8, 0, digestSize);
                        while (i33 < i25) {
                            this.messDigestOTS.update(bArr8, 0, bArr8.length);
                            bArr8 = new byte[this.messDigestOTS.getDigestSize()];
                            this.messDigestOTS.doFinal(bArr8, 0);
                            i33++;
                            i24 = i24;
                            i27 = i27;
                        }
                        System.arraycopy(bArr8, 0, bArr6, i34, digestSize);
                        j >>>= this.w;
                        i29++;
                        i31++;
                        i26 = i32;
                        i8 = 8;
                    }
                    i26++;
                    i8 = 8;
                }
                byte[] bArr9 = bArr8;
                int i35 = digestSize % this.w;
                long j2 = 0;
                for (int i36 = 0; i36 < i35; i36++) {
                    j2 ^= (long) ((bArr5[i27] & 255) << (i36 << 3));
                    i27++;
                }
                int i37 = i35 << 3;
                byte[] bArr10 = bArr9;
                int i38 = 0;
                while (i38 < i37) {
                    int i39 = (int) (j2 & ((long) i25));
                    i28 += i39;
                    int i40 = i29 * digestSize;
                    System.arraycopy(bArr3, i40, bArr10, 0, digestSize);
                    while (i39 < i25) {
                        this.messDigestOTS.update(bArr10, 0, bArr10.length);
                        bArr10 = new byte[this.messDigestOTS.getDigestSize()];
                        this.messDigestOTS.doFinal(bArr10, 0);
                        i39++;
                    }
                    System.arraycopy(bArr10, 0, bArr6, i40, digestSize);
                    int i41 = this.w;
                    j2 >>>= i41;
                    i29++;
                    i38 += i41;
                }
                int i42 = (i5 << this.w) - i28;
                int i43 = 0;
                while (i43 < log) {
                    int i44 = i29 * digestSize;
                    System.arraycopy(bArr3, i44, bArr10, 0, digestSize);
                    for (int i45 = i42 & i25; i45 < i25; i45++) {
                        this.messDigestOTS.update(bArr10, 0, bArr10.length);
                        bArr10 = new byte[this.messDigestOTS.getDigestSize()];
                        this.messDigestOTS.doFinal(bArr10, 0);
                    }
                    System.arraycopy(bArr10, 0, bArr6, i44, digestSize);
                    int i46 = this.w;
                    i42 >>>= i46;
                    i29++;
                    i43 += i46;
                }
            } else if (i6 < 57) {
                int i47 = i3 - i6;
                int i48 = (1 << i6) - 1;
                byte[] bArr11 = new byte[digestSize];
                int i49 = 0;
                int i50 = 0;
                int i51 = 0;
                while (i50 <= i47) {
                    int i52 = i50 >>> 3;
                    int i53 = i50 % 8;
                    int i54 = i50 + this.w;
                    int i55 = (i54 + 7) >>> 3;
                    int i56 = 0;
                    long j3 = 0;
                    while (i52 < i55) {
                        j3 ^= (long) ((bArr5[i52] & 255) << (i56 << 3));
                        i56++;
                        i52++;
                        i47 = i47;
                        log = log;
                        i5 = i5;
                    }
                    int i57 = i47;
                    int i58 = log;
                    int i59 = i5;
                    long j4 = i48;
                    long j5 = (j3 >>> i53) & j4;
                    int i60 = i54;
                    i51 = (int) (((long) i51) + j5);
                    int i61 = i49 * digestSize;
                    System.arraycopy(bArr3, i61, bArr11, 0, digestSize);
                    while (j5 < j4) {
                        this.messDigestOTS.update(bArr11, 0, bArr11.length);
                        bArr11 = new byte[this.messDigestOTS.getDigestSize()];
                        this.messDigestOTS.doFinal(bArr11, 0);
                        j5++;
                        i60 = i60;
                        i51 = i51;
                    }
                    System.arraycopy(bArr11, 0, bArr6, i61, digestSize);
                    i49++;
                    i50 = i60;
                    i47 = i57;
                    log = i58;
                    i5 = i59;
                }
                int i62 = log;
                int i63 = i5;
                int i64 = i50 >>> 3;
                if (i64 < digestSize) {
                    int i65 = i50 % 8;
                    int i66 = 0;
                    long j6 = 0;
                    while (i64 < digestSize) {
                        j6 ^= (long) ((bArr5[i64] & 255) << (i66 << 3));
                        i66++;
                        i64++;
                    }
                    long j7 = i48;
                    long j8 = (j6 >>> i65) & j7;
                    i51 = (int) (((long) i51) + j8);
                    int i67 = i49 * digestSize;
                    System.arraycopy(bArr3, i67, bArr11, 0, digestSize);
                    while (j8 < j7) {
                        this.messDigestOTS.update(bArr11, 0, bArr11.length);
                        bArr11 = new byte[this.messDigestOTS.getDigestSize()];
                        this.messDigestOTS.doFinal(bArr11, 0);
                        j8++;
                    }
                    System.arraycopy(bArr11, 0, bArr6, i67, digestSize);
                    i49++;
                }
                int i68 = (i63 << this.w) - i51;
                int i69 = 0;
                while (i69 < i62) {
                    int i70 = i49 * digestSize;
                    System.arraycopy(bArr3, i70, bArr11, 0, digestSize);
                    for (long j9 = i68 & i48; j9 < i48; j9++) {
                        this.messDigestOTS.update(bArr11, 0, bArr11.length);
                        bArr11 = new byte[this.messDigestOTS.getDigestSize()];
                        this.messDigestOTS.doFinal(bArr11, 0);
                    }
                    System.arraycopy(bArr11, 0, bArr6, i70, digestSize);
                    int i71 = this.w;
                    i68 >>>= i71;
                    i49++;
                    i69 += i71;
                }
            }
        }
        byte[] bArr12 = new byte[digestSize];
        this.messDigestOTS.update(bArr6, 0, i);
        byte[] bArr13 = new byte[this.messDigestOTS.getDigestSize()];
        this.messDigestOTS.doFinal(bArr13, 0);
        return bArr13;
    }
}
