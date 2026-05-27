package com.google.android.gms.internal.places;

import com.texa.carelib.communication.Commands;

/* JADX INFO: loaded from: classes.dex */
final class zzed extends zzec {
    zzed() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0061, code lost:
    
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x008b, code lost:
    
        return -1;
     */
    @Override // com.google.android.gms.internal.places.zzec
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    final int zzc(int i, byte[] bArr, int i2, int i3) {
        int i4;
        long j;
        if ((i2 | i3 | (bArr.length - i3)) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format("Array length=%d, index=%d, limit=%d", Integer.valueOf(bArr.length), Integer.valueOf(i2), Integer.valueOf(i3)));
        }
        long j2 = i2;
        int i5 = (int) (((long) i3) - j2);
        if (i5 >= 16) {
            long j3 = j2;
            i4 = 0;
            while (true) {
                if (i4 >= i5) {
                    i4 = i5;
                    break;
                }
                long j4 = j3 + 1;
                if (zzdy.zzb(bArr, j3) < 0) {
                    break;
                }
                i4++;
                j3 = j4;
            }
        } else {
            i4 = 0;
        }
        int i6 = i5 - i4;
        long j5 = j2 + ((long) i4);
        while (true) {
            byte bZzb = 0;
            while (true) {
                if (i6 <= 0) {
                    break;
                }
                long j6 = j5 + 1;
                bZzb = zzdy.zzb(bArr, j5);
                if (bZzb < 0) {
                    j5 = j6;
                    break;
                }
                i6--;
                j5 = j6;
            }
            if (i6 == 0) {
                return 0;
            }
            int i7 = i6 - 1;
            if (bZzb >= -32) {
                if (bZzb >= -16) {
                    if (i7 >= 3) {
                        i6 = i7 - 3;
                        long j7 = j5 + 1;
                        byte bZzb2 = zzdy.zzb(bArr, j5);
                        if (bZzb2 <= -65 && (((bZzb << 28) + (bZzb2 + 112)) >> 30) == 0) {
                            long j8 = j7 + 1;
                            if (zzdy.zzb(bArr, j7) > -65) {
                                break;
                            }
                            j = j8 + 1;
                            if (zzdy.zzb(bArr, j8) > -65) {
                                break;
                            }
                        } else {
                            break;
                        }
                    } else {
                        return zzb(bArr, bZzb, j5, i7);
                    }
                } else {
                    if (i7 < 2) {
                        return zzb(bArr, bZzb, j5, i7);
                    }
                    i6 = i7 - 2;
                    long j9 = j5 + 1;
                    byte bZzb3 = zzdy.zzb(bArr, j5);
                    if (bZzb3 > -65 || ((bZzb == -32 && bZzb3 < -96) || (bZzb == -19 && bZzb3 >= -96))) {
                        break;
                    }
                    j5 = j9 + 1;
                    if (zzdy.zzb(bArr, j9) > -65) {
                        break;
                    }
                }
            } else if (i7 != 0) {
                i6 = i7 - 1;
                if (bZzb < -62) {
                    break;
                }
                j = j5 + 1;
                if (zzdy.zzb(bArr, j5) > -65) {
                    break;
                }
            } else {
                return bZzb;
            }
            j5 = j;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.places.zzec
    final String zzh(byte[] bArr, int i, int i2) throws zzbk {
        if ((i | i2 | ((bArr.length - i) - i2)) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
        }
        int i3 = i + i2;
        char[] cArr = new char[i2];
        int i4 = 0;
        while (i < i3) {
            byte bZzb = zzdy.zzb(bArr, i);
            if (!zzdz.zze(bZzb)) {
                break;
            }
            i++;
            zzdz.zzb(bZzb, cArr, i4);
            i4++;
        }
        int i5 = i4;
        while (i < i3) {
            int i6 = i + 1;
            byte bZzb2 = zzdy.zzb(bArr, i);
            if (zzdz.zze(bZzb2)) {
                int i7 = i5 + 1;
                zzdz.zzb(bZzb2, cArr, i5);
                while (i6 < i3) {
                    byte bZzb3 = zzdy.zzb(bArr, i6);
                    if (!zzdz.zze(bZzb3)) {
                        break;
                    }
                    i6++;
                    zzdz.zzb(bZzb3, cArr, i7);
                    i7++;
                }
                i = i6;
                i5 = i7;
            } else if (zzdz.zzf(bZzb2)) {
                if (i6 < i3) {
                    zzdz.zzb(bZzb2, zzdy.zzb(bArr, i6), cArr, i5);
                    i = i6 + 1;
                    i5++;
                } else {
                    throw zzbk.zzbu();
                }
            } else if (zzdz.zzg(bZzb2)) {
                if (i6 < i3 - 1) {
                    int i8 = i6 + 1;
                    zzdz.zzb(bZzb2, zzdy.zzb(bArr, i6), zzdy.zzb(bArr, i8), cArr, i5);
                    i = i8 + 1;
                    i5++;
                } else {
                    throw zzbk.zzbu();
                }
            } else {
                if (i6 >= i3 - 2) {
                    throw zzbk.zzbu();
                }
                int i9 = i6 + 1;
                byte bZzb4 = zzdy.zzb(bArr, i6);
                int i10 = i9 + 1;
                zzdz.zzb(bZzb2, bZzb4, zzdy.zzb(bArr, i9), zzdy.zzb(bArr, i10), cArr, i5);
                i = i10 + 1;
                i5 = i5 + 1 + 1;
            }
        }
        return new String(cArr, 0, i5);
    }

    @Override // com.google.android.gms.internal.places.zzec
    final int zzc(CharSequence charSequence, byte[] bArr, int i, int i2) {
        char c;
        long j;
        long j2;
        long j3;
        int i3;
        char cCharAt;
        long j4 = i;
        long j5 = ((long) i2) + j4;
        int length = charSequence.length();
        if (length > i2 || bArr.length - i2 < i) {
            char cCharAt2 = charSequence.charAt(length - 1);
            StringBuilder sb = new StringBuilder(37);
            sb.append("Failed writing ");
            sb.append(cCharAt2);
            sb.append(" at index ");
            sb.append(i + i2);
            throw new ArrayIndexOutOfBoundsException(sb.toString());
        }
        int i4 = 0;
        while (true) {
            c = 128;
            j = 1;
            if (i4 >= length || (cCharAt = charSequence.charAt(i4)) >= 128) {
                break;
            }
            zzdy.zzb(bArr, j4, (byte) cCharAt);
            i4++;
            j4 = 1 + j4;
        }
        if (i4 == length) {
            return (int) j4;
        }
        while (i4 < length) {
            char cCharAt3 = charSequence.charAt(i4);
            if (cCharAt3 >= c || j4 >= j5) {
                if (cCharAt3 < 2048 && j4 <= j5 - 2) {
                    long j6 = j4 + j;
                    zzdy.zzb(bArr, j4, (byte) ((cCharAt3 >>> 6) | 960));
                    zzdy.zzb(bArr, j6, (byte) ((cCharAt3 & '?') | 128));
                    j2 = j6 + j;
                    j3 = j;
                } else {
                    if ((cCharAt3 >= 55296 && 57343 >= cCharAt3) || j4 > j5 - 3) {
                        if (j4 <= j5 - 4) {
                            int i5 = i4 + 1;
                            if (i5 != length) {
                                char cCharAt4 = charSequence.charAt(i5);
                                if (Character.isSurrogatePair(cCharAt3, cCharAt4)) {
                                    int codePoint = Character.toCodePoint(cCharAt3, cCharAt4);
                                    long j7 = j4 + 1;
                                    zzdy.zzb(bArr, j4, (byte) ((codePoint >>> 18) | Commands.GetSOSStatus));
                                    long j8 = j7 + 1;
                                    zzdy.zzb(bArr, j7, (byte) (((codePoint >>> 12) & 63) | 128));
                                    long j9 = j8 + 1;
                                    zzdy.zzb(bArr, j8, (byte) (((codePoint >>> 6) & 63) | 128));
                                    j3 = 1;
                                    j2 = j9 + 1;
                                    zzdy.zzb(bArr, j9, (byte) ((codePoint & 63) | 128));
                                    i4 = i5;
                                } else {
                                    i4 = i5;
                                }
                            }
                            throw new zzee(i4 - 1, length);
                        }
                        if (55296 <= cCharAt3 && cCharAt3 <= 57343 && ((i3 = i4 + 1) == length || !Character.isSurrogatePair(cCharAt3, charSequence.charAt(i3)))) {
                            throw new zzee(i4, length);
                        }
                        StringBuilder sb2 = new StringBuilder(46);
                        sb2.append("Failed writing ");
                        sb2.append(cCharAt3);
                        sb2.append(" at index ");
                        sb2.append(j4);
                        throw new ArrayIndexOutOfBoundsException(sb2.toString());
                    }
                    long j10 = j4 + j;
                    zzdy.zzb(bArr, j4, (byte) ((cCharAt3 >>> '\f') | 480));
                    long j11 = j10 + j;
                    zzdy.zzb(bArr, j10, (byte) (((cCharAt3 >>> 6) & 63) | 128));
                    zzdy.zzb(bArr, j11, (byte) ((cCharAt3 & '?') | 128));
                    j2 = j11 + 1;
                    j3 = 1;
                }
                i4++;
                c = 128;
                long j12 = j3;
                j4 = j2;
                j = j12;
            } else {
                long j13 = j4 + j;
                zzdy.zzb(bArr, j4, (byte) cCharAt3);
                j3 = j;
                j2 = j13;
            }
            i4++;
            c = 128;
            long j122 = j3;
            j4 = j2;
            j = j122;
        }
        return (int) j4;
    }

    private static int zzb(byte[] bArr, int i, long j, int i2) {
        if (i2 == 0) {
            return zzea.zzao(i);
        }
        if (i2 == 1) {
            return zzea.zzs(i, zzdy.zzb(bArr, j));
        }
        if (i2 == 2) {
            return zzea.zzd(i, zzdy.zzb(bArr, j), zzdy.zzb(bArr, j + 1));
        }
        throw new AssertionError();
    }
}
