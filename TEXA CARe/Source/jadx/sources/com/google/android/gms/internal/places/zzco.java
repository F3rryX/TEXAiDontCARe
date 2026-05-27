package com.google.android.gms.internal.places;

import com.google.android.gms.internal.places.zzbc;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import org.spongycastle.asn1.cmp.PKIFailureInfo;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes.dex */
final class zzco<T> implements zzda<T> {
    private static final int[] zzkq = new int[0];
    private static final Unsafe zzkr = zzdy.zzdn();
    private final int[] zzks;
    private final Object[] zzkt;
    private final int zzku;
    private final int zzkv;
    private final zzck zzkw;
    private final boolean zzkx;
    private final boolean zzky;
    private final boolean zzkz;
    private final boolean zzla;
    private final int[] zzlb;
    private final int zzlc;
    private final int zzld;
    private final zzcs zzle;
    private final zzbu zzlf;
    private final zzds<?, ?> zzlg;
    private final zzar<?> zzlh;
    private final zzcd zzli;

    private zzco(int[] iArr, Object[] objArr, int i, int i2, zzck zzckVar, boolean z, boolean z2, int[] iArr2, int i3, int i4, zzcs zzcsVar, zzbu zzbuVar, zzds<?, ?> zzdsVar, zzar<?> zzarVar, zzcd zzcdVar) {
        this.zzks = iArr;
        this.zzkt = objArr;
        this.zzku = i;
        this.zzkv = i2;
        this.zzky = zzckVar instanceof zzbc;
        this.zzkz = z;
        this.zzkx = zzarVar != null && zzarVar.zzf(zzckVar);
        this.zzla = false;
        this.zzlb = iArr2;
        this.zzlc = i3;
        this.zzld = i4;
        this.zzle = zzcsVar;
        this.zzlf = zzbuVar;
        this.zzlg = zzdsVar;
        this.zzlh = zzarVar;
        this.zzkw = zzckVar;
        this.zzli = zzcdVar;
    }

    static <T> zzco<T> zzb(Class<T> cls, zzci zzciVar, zzcs zzcsVar, zzbu zzbuVar, zzds<?, ?> zzdsVar, zzar<?> zzarVar, zzcd zzcdVar) {
        int i;
        int iCharAt;
        int iCharAt2;
        int i2;
        int i3;
        int i4;
        int i5;
        int[] iArr;
        int i6;
        int i7;
        char cCharAt;
        int i8;
        char cCharAt2;
        int i9;
        char cCharAt3;
        int i10;
        char cCharAt4;
        int i11;
        char cCharAt5;
        int i12;
        char cCharAt6;
        int i13;
        char cCharAt7;
        int i14;
        char cCharAt8;
        int i15;
        int i16;
        boolean z;
        int i17;
        zzcx zzcxVar;
        int i18;
        int iObjectFieldOffset;
        int i19;
        int i20;
        Class<?> cls2;
        String str;
        int iObjectFieldOffset2;
        int i21;
        Field fieldZzb;
        int i22;
        char cCharAt9;
        int i23;
        Field fieldZzb2;
        Field fieldZzb3;
        int i24;
        char cCharAt10;
        int i25;
        char cCharAt11;
        int i26;
        char cCharAt12;
        int i27;
        char cCharAt13;
        char cCharAt14;
        if (zzciVar instanceof zzcx) {
            zzcx zzcxVar2 = (zzcx) zzciVar;
            int i28 = 0;
            boolean z2 = zzcxVar2.zzcj() == zzbc.zze.zziu;
            String strZzcr = zzcxVar2.zzcr();
            int length = strZzcr.length();
            int iCharAt3 = strZzcr.charAt(0);
            if (iCharAt3 >= 55296) {
                int i29 = iCharAt3 & 8191;
                int i30 = 1;
                int i31 = 13;
                while (true) {
                    i = i30 + 1;
                    cCharAt14 = strZzcr.charAt(i30);
                    if (cCharAt14 < 55296) {
                        break;
                    }
                    i29 |= (cCharAt14 & 8191) << i31;
                    i31 += 13;
                    i30 = i;
                }
                iCharAt3 = i29 | (cCharAt14 << i31);
            } else {
                i = 1;
            }
            int i32 = i + 1;
            int iCharAt4 = strZzcr.charAt(i);
            if (iCharAt4 >= 55296) {
                int i33 = iCharAt4 & 8191;
                int i34 = 13;
                while (true) {
                    i27 = i32 + 1;
                    cCharAt13 = strZzcr.charAt(i32);
                    if (cCharAt13 < 55296) {
                        break;
                    }
                    i33 |= (cCharAt13 & 8191) << i34;
                    i34 += 13;
                    i32 = i27;
                }
                iCharAt4 = i33 | (cCharAt13 << i34);
                i32 = i27;
            }
            if (iCharAt4 == 0) {
                iArr = zzkq;
                i6 = 0;
                i3 = 0;
                iCharAt = 0;
                i4 = 0;
                iCharAt2 = 0;
                i5 = 0;
            } else {
                int i35 = i32 + 1;
                int iCharAt5 = strZzcr.charAt(i32);
                if (iCharAt5 >= 55296) {
                    int i36 = iCharAt5 & 8191;
                    int i37 = 13;
                    while (true) {
                        i14 = i35 + 1;
                        cCharAt8 = strZzcr.charAt(i35);
                        if (cCharAt8 < 55296) {
                            break;
                        }
                        i36 |= (cCharAt8 & 8191) << i37;
                        i37 += 13;
                        i35 = i14;
                    }
                    iCharAt5 = i36 | (cCharAt8 << i37);
                    i35 = i14;
                }
                int i38 = i35 + 1;
                int iCharAt6 = strZzcr.charAt(i35);
                if (iCharAt6 >= 55296) {
                    int i39 = iCharAt6 & 8191;
                    int i40 = 13;
                    while (true) {
                        i13 = i38 + 1;
                        cCharAt7 = strZzcr.charAt(i38);
                        if (cCharAt7 < 55296) {
                            break;
                        }
                        i39 |= (cCharAt7 & 8191) << i40;
                        i40 += 13;
                        i38 = i13;
                    }
                    iCharAt6 = i39 | (cCharAt7 << i40);
                    i38 = i13;
                }
                int i41 = i38 + 1;
                iCharAt = strZzcr.charAt(i38);
                if (iCharAt >= 55296) {
                    int i42 = iCharAt & 8191;
                    int i43 = 13;
                    while (true) {
                        i12 = i41 + 1;
                        cCharAt6 = strZzcr.charAt(i41);
                        if (cCharAt6 < 55296) {
                            break;
                        }
                        i42 |= (cCharAt6 & 8191) << i43;
                        i43 += 13;
                        i41 = i12;
                    }
                    iCharAt = i42 | (cCharAt6 << i43);
                    i41 = i12;
                }
                int i44 = i41 + 1;
                int iCharAt7 = strZzcr.charAt(i41);
                if (iCharAt7 >= 55296) {
                    int i45 = iCharAt7 & 8191;
                    int i46 = 13;
                    while (true) {
                        i11 = i44 + 1;
                        cCharAt5 = strZzcr.charAt(i44);
                        if (cCharAt5 < 55296) {
                            break;
                        }
                        i45 |= (cCharAt5 & 8191) << i46;
                        i46 += 13;
                        i44 = i11;
                    }
                    iCharAt7 = i45 | (cCharAt5 << i46);
                    i44 = i11;
                }
                int i47 = i44 + 1;
                iCharAt2 = strZzcr.charAt(i44);
                if (iCharAt2 >= 55296) {
                    int i48 = iCharAt2 & 8191;
                    int i49 = 13;
                    while (true) {
                        i10 = i47 + 1;
                        cCharAt4 = strZzcr.charAt(i47);
                        if (cCharAt4 < 55296) {
                            break;
                        }
                        i48 |= (cCharAt4 & 8191) << i49;
                        i49 += 13;
                        i47 = i10;
                    }
                    iCharAt2 = i48 | (cCharAt4 << i49);
                    i47 = i10;
                }
                int i50 = i47 + 1;
                int iCharAt8 = strZzcr.charAt(i47);
                if (iCharAt8 >= 55296) {
                    int i51 = iCharAt8 & 8191;
                    int i52 = 13;
                    while (true) {
                        i9 = i50 + 1;
                        cCharAt3 = strZzcr.charAt(i50);
                        if (cCharAt3 < 55296) {
                            break;
                        }
                        i51 |= (cCharAt3 & 8191) << i52;
                        i52 += 13;
                        i50 = i9;
                    }
                    iCharAt8 = i51 | (cCharAt3 << i52);
                    i50 = i9;
                }
                int i53 = i50 + 1;
                int iCharAt9 = strZzcr.charAt(i50);
                if (iCharAt9 >= 55296) {
                    int i54 = iCharAt9 & 8191;
                    int i55 = i53;
                    int i56 = 13;
                    while (true) {
                        i8 = i55 + 1;
                        cCharAt2 = strZzcr.charAt(i55);
                        if (cCharAt2 < 55296) {
                            break;
                        }
                        i54 |= (cCharAt2 & 8191) << i56;
                        i56 += 13;
                        i55 = i8;
                    }
                    iCharAt9 = i54 | (cCharAt2 << i56);
                    i2 = i8;
                } else {
                    i2 = i53;
                }
                int i57 = i2 + 1;
                int iCharAt10 = strZzcr.charAt(i2);
                if (iCharAt10 >= 55296) {
                    int i58 = iCharAt10 & 8191;
                    int i59 = i57;
                    int i60 = 13;
                    while (true) {
                        i7 = i59 + 1;
                        cCharAt = strZzcr.charAt(i59);
                        if (cCharAt < 55296) {
                            break;
                        }
                        i58 |= (cCharAt & 8191) << i60;
                        i60 += 13;
                        i59 = i7;
                    }
                    iCharAt10 = i58 | (cCharAt << i60);
                    i57 = i7;
                }
                int[] iArr2 = new int[iCharAt10 + iCharAt8 + iCharAt9];
                int i61 = (iCharAt5 << 1) + iCharAt6;
                i3 = iCharAt7;
                i4 = i61;
                i5 = iCharAt10;
                i28 = iCharAt5;
                i32 = i57;
                int i62 = iCharAt8;
                iArr = iArr2;
                i6 = i62;
            }
            Unsafe unsafe = zzkr;
            Object[] objArrZzcs = zzcxVar2.zzcs();
            Class<?> cls3 = zzcxVar2.zzcl().getClass();
            int i63 = i32;
            int[] iArr3 = new int[iCharAt2 * 3];
            Object[] objArr = new Object[iCharAt2 << 1];
            int i64 = i5 + i6;
            int i65 = i5;
            int i66 = i63;
            int i67 = i64;
            int i68 = 0;
            int i69 = 0;
            while (i66 < length) {
                int i70 = i66 + 1;
                int iCharAt11 = strZzcr.charAt(i66);
                int i71 = length;
                if (iCharAt11 >= 55296) {
                    int i72 = iCharAt11 & 8191;
                    int i73 = i70;
                    int i74 = 13;
                    while (true) {
                        i26 = i73 + 1;
                        cCharAt12 = strZzcr.charAt(i73);
                        i15 = i5;
                        if (cCharAt12 < 55296) {
                            break;
                        }
                        i72 |= (cCharAt12 & 8191) << i74;
                        i74 += 13;
                        i73 = i26;
                        i5 = i15;
                    }
                    iCharAt11 = i72 | (cCharAt12 << i74);
                    i16 = i26;
                } else {
                    i15 = i5;
                    i16 = i70;
                }
                int i75 = i16 + 1;
                int iCharAt12 = strZzcr.charAt(i16);
                if (iCharAt12 >= 55296) {
                    int i76 = iCharAt12 & 8191;
                    int i77 = i75;
                    int i78 = 13;
                    while (true) {
                        i25 = i77 + 1;
                        cCharAt11 = strZzcr.charAt(i77);
                        z = z2;
                        if (cCharAt11 < 55296) {
                            break;
                        }
                        i76 |= (cCharAt11 & 8191) << i78;
                        i78 += 13;
                        i77 = i25;
                        z2 = z;
                    }
                    iCharAt12 = i76 | (cCharAt11 << i78);
                    i17 = i25;
                } else {
                    z = z2;
                    i17 = i75;
                }
                int i79 = iCharAt12 & 255;
                int i80 = i3;
                if ((iCharAt12 & 1024) != 0) {
                    iArr[i68] = i69;
                    i68++;
                }
                int i81 = iCharAt;
                if (i79 >= 51) {
                    int i82 = i17 + 1;
                    int iCharAt13 = strZzcr.charAt(i17);
                    char c = 55296;
                    if (iCharAt13 >= 55296) {
                        int i83 = iCharAt13 & 8191;
                        int i84 = 13;
                        while (true) {
                            i24 = i82 + 1;
                            cCharAt10 = strZzcr.charAt(i82);
                            if (cCharAt10 < c) {
                                break;
                            }
                            i83 |= (cCharAt10 & 8191) << i84;
                            i84 += 13;
                            i82 = i24;
                            c = 55296;
                        }
                        iCharAt13 = i83 | (cCharAt10 << i84);
                        i82 = i24;
                    }
                    int i85 = i79 - 51;
                    int i86 = i82;
                    if (i85 == 9 || i85 == 17) {
                        objArr[((i69 / 3) << 1) + 1] = objArrZzcs[i4];
                        i4++;
                    } else if (i85 == 12 && (iCharAt3 & 1) == 1) {
                        objArr[((i69 / 3) << 1) + 1] = objArrZzcs[i4];
                        i4++;
                    }
                    int i87 = iCharAt13 << 1;
                    Object obj = objArrZzcs[i87];
                    if (obj instanceof Field) {
                        fieldZzb2 = (Field) obj;
                    } else {
                        fieldZzb2 = zzb(cls3, (String) obj);
                        objArrZzcs[i87] = fieldZzb2;
                    }
                    zzcxVar = zzcxVar2;
                    String str2 = strZzcr;
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzb2);
                    int i88 = i87 + 1;
                    Object obj2 = objArrZzcs[i88];
                    if (obj2 instanceof Field) {
                        fieldZzb3 = (Field) obj2;
                    } else {
                        fieldZzb3 = zzb(cls3, (String) obj2);
                        objArrZzcs[i88] = fieldZzb3;
                    }
                    cls2 = cls3;
                    i19 = i4;
                    i17 = i86;
                    str = str2;
                    i21 = 0;
                    iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZzb3);
                    i20 = i28;
                } else {
                    zzcxVar = zzcxVar2;
                    String str3 = strZzcr;
                    int i89 = i4 + 1;
                    Field fieldZzb4 = zzb(cls3, (String) objArrZzcs[i4]);
                    if (i79 == 9 || i79 == 17) {
                        i18 = 1;
                        objArr[((i69 / 3) << 1) + 1] = fieldZzb4.getType();
                    } else {
                        if (i79 == 27 || i79 == 49) {
                            i18 = 1;
                            i23 = i89 + 1;
                            objArr[((i69 / 3) << 1) + 1] = objArrZzcs[i89];
                        } else if (i79 == 12 || i79 == 30 || i79 == 44) {
                            i18 = 1;
                            if ((iCharAt3 & 1) == 1) {
                                i23 = i89 + 1;
                                objArr[((i69 / 3) << 1) + 1] = objArrZzcs[i89];
                            }
                        } else if (i79 == 50) {
                            int i90 = i65 + 1;
                            iArr[i65] = i69;
                            int i91 = (i69 / 3) << 1;
                            int i92 = i89 + 1;
                            objArr[i91] = objArrZzcs[i89];
                            if ((iCharAt12 & 2048) != 0) {
                                i89 = i92 + 1;
                                objArr[i91 + 1] = objArrZzcs[i92];
                                i65 = i90;
                                i18 = 1;
                            } else {
                                i89 = i92;
                                i18 = 1;
                                i65 = i90;
                            }
                        } else {
                            i18 = 1;
                        }
                        i89 = i23;
                    }
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzb4);
                    if ((iCharAt3 & 1) != i18 || i79 > 17) {
                        i19 = i89;
                        i20 = i28;
                        cls2 = cls3;
                        str = str3;
                        iObjectFieldOffset2 = 0;
                        i21 = 0;
                    } else {
                        int i93 = i17 + 1;
                        str = str3;
                        int iCharAt14 = str.charAt(i17);
                        if (iCharAt14 >= 55296) {
                            int i94 = iCharAt14 & 8191;
                            int i95 = 13;
                            while (true) {
                                i22 = i93 + 1;
                                cCharAt9 = str.charAt(i93);
                                if (cCharAt9 < 55296) {
                                    break;
                                }
                                i94 |= (cCharAt9 & 8191) << i95;
                                i95 += 13;
                                i93 = i22;
                            }
                            iCharAt14 = i94 | (cCharAt9 << i95);
                            i93 = i22;
                        }
                        int i96 = (i28 << 1) + (iCharAt14 / 32);
                        Object obj3 = objArrZzcs[i96];
                        i19 = i89;
                        if (obj3 instanceof Field) {
                            fieldZzb = (Field) obj3;
                        } else {
                            fieldZzb = zzb(cls3, (String) obj3);
                            objArrZzcs[i96] = fieldZzb;
                        }
                        i20 = i28;
                        cls2 = cls3;
                        iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZzb);
                        i21 = iCharAt14 % 32;
                        i17 = i93;
                    }
                    if (i79 >= 18 && i79 <= 49) {
                        iArr[i67] = iObjectFieldOffset;
                        i67++;
                    }
                }
                int i97 = i69 + 1;
                iArr3[i69] = iCharAt11;
                int i98 = i97 + 1;
                iArr3[i97] = iObjectFieldOffset | ((iCharAt12 & 256) != 0 ? 268435456 : 0) | ((iCharAt12 & 512) != 0 ? PKIFailureInfo.duplicateCertReq : 0) | (i79 << 20);
                i69 = i98 + 1;
                iArr3[i98] = (i21 << 20) | iObjectFieldOffset2;
                i28 = i20;
                strZzcr = str;
                i66 = i17;
                cls3 = cls2;
                i3 = i80;
                length = i71;
                i5 = i15;
                z2 = z;
                iCharAt = i81;
                i4 = i19;
                zzcxVar2 = zzcxVar;
            }
            return new zzco<>(iArr3, objArr, iCharAt, i3, zzcxVar2.zzcl(), z2, false, iArr, i5, i64, zzcsVar, zzbuVar, zzdsVar, zzarVar, zzcdVar);
        }
        ((zzdl) zzciVar).zzcj();
        int i99 = zzbc.zze.zziu;
        throw new NoSuchMethodError();
    }

    private static Field zzb(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String string = Arrays.toString(declaredFields);
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 40 + String.valueOf(name).length() + String.valueOf(string).length());
            sb.append("Field ");
            sb.append(str);
            sb.append(" for ");
            sb.append(name);
            sb.append(" not found. Known fields are ");
            sb.append(string);
            throw new RuntimeException(sb.toString());
        }
    }

    @Override // com.google.android.gms.internal.places.zzda
    public final T newInstance() {
        return (T) this.zzle.newInstance(this.zzkw);
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x01c1  */
    @Override // com.google.android.gms.internal.places.zzda
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean equals(T t, T t2) {
        int length = this.zzks.length;
        int i = 0;
        while (true) {
            boolean zZze = true;
            if (i < length) {
                int iZzai = zzai(i);
                long j = iZzai & 1048575;
                switch ((iZzai & 267386880) >>> 20) {
                    case 0:
                        if (!zzd(t, t2, i) || Double.doubleToLongBits(zzdy.zzo(t, j)) != Double.doubleToLongBits(zzdy.zzo(t2, j))) {
                            zZze = false;
                        }
                        break;
                    case 1:
                        if (!zzd(t, t2, i) || Float.floatToIntBits(zzdy.zzn(t, j)) != Float.floatToIntBits(zzdy.zzn(t2, j))) {
                        }
                        break;
                    case 2:
                        if (!zzd(t, t2, i) || zzdy.zzl(t, j) != zzdy.zzl(t2, j)) {
                        }
                        break;
                    case 3:
                        if (!zzd(t, t2, i) || zzdy.zzl(t, j) != zzdy.zzl(t2, j)) {
                        }
                        break;
                    case 4:
                        if (!zzd(t, t2, i) || zzdy.zzk(t, j) != zzdy.zzk(t2, j)) {
                        }
                        break;
                    case 5:
                        if (!zzd(t, t2, i) || zzdy.zzl(t, j) != zzdy.zzl(t2, j)) {
                        }
                        break;
                    case 6:
                        if (!zzd(t, t2, i) || zzdy.zzk(t, j) != zzdy.zzk(t2, j)) {
                        }
                        break;
                    case 7:
                        if (!zzd(t, t2, i) || zzdy.zzm(t, j) != zzdy.zzm(t2, j)) {
                        }
                        break;
                    case 8:
                        if (!zzd(t, t2, i) || !zzdc.zze(zzdy.zzp(t, j), zzdy.zzp(t2, j))) {
                        }
                        break;
                    case 9:
                        if (!zzd(t, t2, i) || !zzdc.zze(zzdy.zzp(t, j), zzdy.zzp(t2, j))) {
                        }
                        break;
                    case 10:
                        if (!zzd(t, t2, i) || !zzdc.zze(zzdy.zzp(t, j), zzdy.zzp(t2, j))) {
                        }
                        break;
                    case 11:
                        if (!zzd(t, t2, i) || zzdy.zzk(t, j) != zzdy.zzk(t2, j)) {
                        }
                        break;
                    case 12:
                        if (!zzd(t, t2, i) || zzdy.zzk(t, j) != zzdy.zzk(t2, j)) {
                        }
                        break;
                    case 13:
                        if (!zzd(t, t2, i) || zzdy.zzk(t, j) != zzdy.zzk(t2, j)) {
                        }
                        break;
                    case 14:
                        if (!zzd(t, t2, i) || zzdy.zzl(t, j) != zzdy.zzl(t2, j)) {
                        }
                        break;
                    case 15:
                        if (!zzd(t, t2, i) || zzdy.zzk(t, j) != zzdy.zzk(t2, j)) {
                        }
                        break;
                    case 16:
                        if (!zzd(t, t2, i) || zzdy.zzl(t, j) != zzdy.zzl(t2, j)) {
                        }
                        break;
                    case 17:
                        if (!zzd(t, t2, i) || !zzdc.zze(zzdy.zzp(t, j), zzdy.zzp(t2, j))) {
                        }
                        break;
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                    case 33:
                    case 34:
                    case 35:
                    case 36:
                    case 37:
                    case 38:
                    case 39:
                    case 40:
                    case 41:
                    case 42:
                    case 43:
                    case 44:
                    case 45:
                    case 46:
                    case 47:
                    case 48:
                    case 49:
                        zZze = zzdc.zze(zzdy.zzp(t, j), zzdy.zzp(t2, j));
                        break;
                    case 50:
                        zZze = zzdc.zze(zzdy.zzp(t, j), zzdy.zzp(t2, j));
                        break;
                    case 51:
                    case 52:
                    case 53:
                    case 54:
                    case 55:
                    case 56:
                    case 57:
                    case 58:
                    case 59:
                    case 60:
                    case 61:
                    case 62:
                    case 63:
                    case 64:
                    case 65:
                    case 66:
                    case 67:
                    case 68:
                        long jZzaj = zzaj(i) & 1048575;
                        if (zzdy.zzk(t, jZzaj) != zzdy.zzk(t2, jZzaj) || !zzdc.zze(zzdy.zzp(t, j), zzdy.zzp(t2, j))) {
                        }
                        break;
                }
                if (!zZze) {
                    return false;
                }
                i += 3;
            } else {
                if (!this.zzlg.zzr(t).equals(this.zzlg.zzr(t2))) {
                    return false;
                }
                if (this.zzkx) {
                    return this.zzlh.zzb(t).equals(this.zzlh.zzb(t2));
                }
                return true;
            }
        }
    }

    @Override // com.google.android.gms.internal.places.zzda
    public final int hashCode(T t) {
        int i;
        int iZzl;
        int length = this.zzks.length;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3 += 3) {
            int iZzai = zzai(i3);
            int i4 = this.zzks[i3];
            long j = 1048575 & iZzai;
            int iHashCode = 37;
            switch ((iZzai & 267386880) >>> 20) {
                case 0:
                    i = i2 * 53;
                    iZzl = zzbd.zzl(Double.doubleToLongBits(zzdy.zzo(t, j)));
                    i2 = i + iZzl;
                    break;
                case 1:
                    i = i2 * 53;
                    iZzl = Float.floatToIntBits(zzdy.zzn(t, j));
                    i2 = i + iZzl;
                    break;
                case 2:
                    i = i2 * 53;
                    iZzl = zzbd.zzl(zzdy.zzl(t, j));
                    i2 = i + iZzl;
                    break;
                case 3:
                    i = i2 * 53;
                    iZzl = zzbd.zzl(zzdy.zzl(t, j));
                    i2 = i + iZzl;
                    break;
                case 4:
                    i = i2 * 53;
                    iZzl = zzdy.zzk(t, j);
                    i2 = i + iZzl;
                    break;
                case 5:
                    i = i2 * 53;
                    iZzl = zzbd.zzl(zzdy.zzl(t, j));
                    i2 = i + iZzl;
                    break;
                case 6:
                    i = i2 * 53;
                    iZzl = zzdy.zzk(t, j);
                    i2 = i + iZzl;
                    break;
                case 7:
                    i = i2 * 53;
                    iZzl = zzbd.zze(zzdy.zzm(t, j));
                    i2 = i + iZzl;
                    break;
                case 8:
                    i = i2 * 53;
                    iZzl = ((String) zzdy.zzp(t, j)).hashCode();
                    i2 = i + iZzl;
                    break;
                case 9:
                    Object objZzp = zzdy.zzp(t, j);
                    if (objZzp != null) {
                        iHashCode = objZzp.hashCode();
                    }
                    i2 = (i2 * 53) + iHashCode;
                    break;
                case 10:
                    i = i2 * 53;
                    iZzl = zzdy.zzp(t, j).hashCode();
                    i2 = i + iZzl;
                    break;
                case 11:
                    i = i2 * 53;
                    iZzl = zzdy.zzk(t, j);
                    i2 = i + iZzl;
                    break;
                case 12:
                    i = i2 * 53;
                    iZzl = zzdy.zzk(t, j);
                    i2 = i + iZzl;
                    break;
                case 13:
                    i = i2 * 53;
                    iZzl = zzdy.zzk(t, j);
                    i2 = i + iZzl;
                    break;
                case 14:
                    i = i2 * 53;
                    iZzl = zzbd.zzl(zzdy.zzl(t, j));
                    i2 = i + iZzl;
                    break;
                case 15:
                    i = i2 * 53;
                    iZzl = zzdy.zzk(t, j);
                    i2 = i + iZzl;
                    break;
                case 16:
                    i = i2 * 53;
                    iZzl = zzbd.zzl(zzdy.zzl(t, j));
                    i2 = i + iZzl;
                    break;
                case 17:
                    Object objZzp2 = zzdy.zzp(t, j);
                    if (objZzp2 != null) {
                        iHashCode = objZzp2.hashCode();
                    }
                    i2 = (i2 * 53) + iHashCode;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    i = i2 * 53;
                    iZzl = zzdy.zzp(t, j).hashCode();
                    i2 = i + iZzl;
                    break;
                case 50:
                    i = i2 * 53;
                    iZzl = zzdy.zzp(t, j).hashCode();
                    i2 = i + iZzl;
                    break;
                case 51:
                    if (zzb(t, i4, i3)) {
                        i = i2 * 53;
                        iZzl = zzbd.zzl(Double.doubleToLongBits(zzf(t, j)));
                        i2 = i + iZzl;
                    }
                    break;
                case 52:
                    if (zzb(t, i4, i3)) {
                        i = i2 * 53;
                        iZzl = Float.floatToIntBits(zzg(t, j));
                        i2 = i + iZzl;
                    }
                    break;
                case 53:
                    if (zzb(t, i4, i3)) {
                        i = i2 * 53;
                        iZzl = zzbd.zzl(zzi(t, j));
                        i2 = i + iZzl;
                    }
                    break;
                case 54:
                    if (zzb(t, i4, i3)) {
                        i = i2 * 53;
                        iZzl = zzbd.zzl(zzi(t, j));
                        i2 = i + iZzl;
                    }
                    break;
                case 55:
                    if (zzb(t, i4, i3)) {
                        i = i2 * 53;
                        iZzl = zzh(t, j);
                        i2 = i + iZzl;
                    }
                    break;
                case 56:
                    if (zzb(t, i4, i3)) {
                        i = i2 * 53;
                        iZzl = zzbd.zzl(zzi(t, j));
                        i2 = i + iZzl;
                    }
                    break;
                case 57:
                    if (zzb(t, i4, i3)) {
                        i = i2 * 53;
                        iZzl = zzh(t, j);
                        i2 = i + iZzl;
                    }
                    break;
                case 58:
                    if (zzb(t, i4, i3)) {
                        i = i2 * 53;
                        iZzl = zzbd.zze(zzj(t, j));
                        i2 = i + iZzl;
                    }
                    break;
                case 59:
                    if (zzb(t, i4, i3)) {
                        i = i2 * 53;
                        iZzl = ((String) zzdy.zzp(t, j)).hashCode();
                        i2 = i + iZzl;
                    }
                    break;
                case 60:
                    if (zzb(t, i4, i3)) {
                        i = i2 * 53;
                        iZzl = zzdy.zzp(t, j).hashCode();
                        i2 = i + iZzl;
                    }
                    break;
                case 61:
                    if (zzb(t, i4, i3)) {
                        i = i2 * 53;
                        iZzl = zzdy.zzp(t, j).hashCode();
                        i2 = i + iZzl;
                    }
                    break;
                case 62:
                    if (zzb(t, i4, i3)) {
                        i = i2 * 53;
                        iZzl = zzh(t, j);
                        i2 = i + iZzl;
                    }
                    break;
                case 63:
                    if (zzb(t, i4, i3)) {
                        i = i2 * 53;
                        iZzl = zzh(t, j);
                        i2 = i + iZzl;
                    }
                    break;
                case 64:
                    if (zzb(t, i4, i3)) {
                        i = i2 * 53;
                        iZzl = zzh(t, j);
                        i2 = i + iZzl;
                    }
                    break;
                case 65:
                    if (zzb(t, i4, i3)) {
                        i = i2 * 53;
                        iZzl = zzbd.zzl(zzi(t, j));
                        i2 = i + iZzl;
                    }
                    break;
                case 66:
                    if (zzb(t, i4, i3)) {
                        i = i2 * 53;
                        iZzl = zzh(t, j);
                        i2 = i + iZzl;
                    }
                    break;
                case 67:
                    if (zzb(t, i4, i3)) {
                        i = i2 * 53;
                        iZzl = zzbd.zzl(zzi(t, j));
                        i2 = i + iZzl;
                    }
                    break;
                case 68:
                    if (zzb(t, i4, i3)) {
                        i = i2 * 53;
                        iZzl = zzdy.zzp(t, j).hashCode();
                        i2 = i + iZzl;
                    }
                    break;
            }
        }
        int iHashCode2 = (i2 * 53) + this.zzlg.zzr(t).hashCode();
        return this.zzkx ? (iHashCode2 * 53) + this.zzlh.zzb(t).hashCode() : iHashCode2;
    }

    @Override // com.google.android.gms.internal.places.zzda
    public final void zzd(T t, T t2) {
        Objects.requireNonNull(t2);
        for (int i = 0; i < this.zzks.length; i += 3) {
            int iZzai = zzai(i);
            long j = 1048575 & iZzai;
            int i2 = this.zzks[i];
            switch ((iZzai & 267386880) >>> 20) {
                case 0:
                    if (zzb(t2, i)) {
                        zzdy.zzb(t, j, zzdy.zzo(t2, j));
                        zzc(t, i);
                    }
                    break;
                case 1:
                    if (zzb(t2, i)) {
                        zzdy.zzb((Object) t, j, zzdy.zzn(t2, j));
                        zzc(t, i);
                    }
                    break;
                case 2:
                    if (zzb(t2, i)) {
                        zzdy.zzb((Object) t, j, zzdy.zzl(t2, j));
                        zzc(t, i);
                    }
                    break;
                case 3:
                    if (zzb(t2, i)) {
                        zzdy.zzb((Object) t, j, zzdy.zzl(t2, j));
                        zzc(t, i);
                    }
                    break;
                case 4:
                    if (zzb(t2, i)) {
                        zzdy.zzb((Object) t, j, zzdy.zzk(t2, j));
                        zzc(t, i);
                    }
                    break;
                case 5:
                    if (zzb(t2, i)) {
                        zzdy.zzb((Object) t, j, zzdy.zzl(t2, j));
                        zzc(t, i);
                    }
                    break;
                case 6:
                    if (zzb(t2, i)) {
                        zzdy.zzb((Object) t, j, zzdy.zzk(t2, j));
                        zzc(t, i);
                    }
                    break;
                case 7:
                    if (zzb(t2, i)) {
                        zzdy.zzb(t, j, zzdy.zzm(t2, j));
                        zzc(t, i);
                    }
                    break;
                case 8:
                    if (zzb(t2, i)) {
                        zzdy.zzb(t, j, zzdy.zzp(t2, j));
                        zzc(t, i);
                    }
                    break;
                case 9:
                    zzb(t, t2, i);
                    break;
                case 10:
                    if (zzb(t2, i)) {
                        zzdy.zzb(t, j, zzdy.zzp(t2, j));
                        zzc(t, i);
                    }
                    break;
                case 11:
                    if (zzb(t2, i)) {
                        zzdy.zzb((Object) t, j, zzdy.zzk(t2, j));
                        zzc(t, i);
                    }
                    break;
                case 12:
                    if (zzb(t2, i)) {
                        zzdy.zzb((Object) t, j, zzdy.zzk(t2, j));
                        zzc(t, i);
                    }
                    break;
                case 13:
                    if (zzb(t2, i)) {
                        zzdy.zzb((Object) t, j, zzdy.zzk(t2, j));
                        zzc(t, i);
                    }
                    break;
                case 14:
                    if (zzb(t2, i)) {
                        zzdy.zzb((Object) t, j, zzdy.zzl(t2, j));
                        zzc(t, i);
                    }
                    break;
                case 15:
                    if (zzb(t2, i)) {
                        zzdy.zzb((Object) t, j, zzdy.zzk(t2, j));
                        zzc(t, i);
                    }
                    break;
                case 16:
                    if (zzb(t2, i)) {
                        zzdy.zzb((Object) t, j, zzdy.zzl(t2, j));
                        zzc(t, i);
                    }
                    break;
                case 17:
                    zzb(t, t2, i);
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    this.zzlf.zzb(t, t2, j);
                    break;
                case 50:
                    zzdc.zzb(this.zzli, t, t2, j);
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                    if (zzb(t2, i2, i)) {
                        zzdy.zzb(t, j, zzdy.zzp(t2, j));
                        zzc(t, i2, i);
                    }
                    break;
                case 60:
                    zzc(t, t2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (zzb(t2, i2, i)) {
                        zzdy.zzb(t, j, zzdy.zzp(t2, j));
                        zzc(t, i2, i);
                    }
                    break;
                case 68:
                    zzc(t, t2, i);
                    break;
            }
        }
        if (this.zzkz) {
            return;
        }
        zzdc.zzb(this.zzlg, t, t2);
        if (this.zzkx) {
            zzdc.zzb(this.zzlh, t, t2);
        }
    }

    private final void zzb(T t, T t2, int i) {
        long jZzai = zzai(i) & 1048575;
        if (zzb(t2, i)) {
            Object objZzp = zzdy.zzp(t, jZzai);
            Object objZzp2 = zzdy.zzp(t2, jZzai);
            if (objZzp != null && objZzp2 != null) {
                zzdy.zzb(t, jZzai, zzbd.zzb(objZzp, objZzp2));
                zzc(t, i);
            } else if (objZzp2 != null) {
                zzdy.zzb(t, jZzai, objZzp2);
                zzc(t, i);
            }
        }
    }

    private final void zzc(T t, T t2, int i) {
        int iZzai = zzai(i);
        int i2 = this.zzks[i];
        long j = iZzai & 1048575;
        if (zzb(t2, i2, i)) {
            Object objZzp = zzdy.zzp(t, j);
            Object objZzp2 = zzdy.zzp(t2, j);
            if (objZzp != null && objZzp2 != null) {
                zzdy.zzb(t, j, zzbd.zzb(objZzp, objZzp2));
                zzc(t, i2, i);
            } else if (objZzp2 != null) {
                zzdy.zzb(t, j, objZzp2);
                zzc(t, i2, i);
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:421:0x090b A[PHI: r6
      0x090b: PHI (r6v4 int) = 
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v16 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v1 int)
      (r6v17 int)
      (r6v1 int)
     binds: [B:256:0x0545, B:459:0x09b0, B:453:0x0994, B:450:0x0982, B:447:0x0973, B:444:0x0966, B:441:0x0959, B:437:0x094e, B:434:0x0943, B:431:0x0936, B:428:0x0929, B:425:0x0916, B:396:0x081f, B:390:0x0802, B:384:0x07e5, B:378:0x07c8, B:372:0x07aa, B:366:0x078c, B:360:0x076e, B:354:0x0750, B:348:0x0732, B:342:0x0714, B:336:0x06f6, B:330:0x06d8, B:324:0x06ba, B:318:0x069c, B:313:0x0668, B:310:0x065b, B:307:0x064b, B:304:0x063b, B:301:0x062b, B:298:0x061d, B:295:0x0610, B:292:0x0603, B:286:0x05e5, B:283:0x05d1, B:280:0x05bf, B:277:0x05af, B:274:0x059f, B:439:0x0955, B:271:0x0592, B:268:0x0584, B:265:0x0574, B:262:0x0564, B:420:0x090a, B:259:0x054e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.google.android.gms.internal.places.zzda
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int zzn(T t) {
        int i;
        int i2;
        long j;
        int iZze;
        int iZzc;
        int iZzl;
        int iZzw;
        int iZzm;
        int iZzr;
        int iZzt;
        int iZzc2;
        int iZzm2;
        int iZzr2;
        int iZzt2;
        int i3 = 267386880;
        int i4 = 1;
        if (this.zzkz) {
            Unsafe unsafe = zzkr;
            int i5 = 0;
            int i6 = 0;
            while (i5 < this.zzks.length) {
                int iZzai = zzai(i5);
                int i7 = (iZzai & i3) >>> 20;
                int i8 = this.zzks[i5];
                long j2 = iZzai & 1048575;
                int i9 = (i7 < zzaw.DOUBLE_LIST_PACKED.id() || i7 > zzaw.SINT64_LIST_PACKED.id()) ? 0 : this.zzks[i5 + 2] & 1048575;
                switch (i7) {
                    case 0:
                        if (zzb(t, i5)) {
                            iZzc2 = zzaj.zzc(i8, 0.0d);
                            i6 += iZzc2;
                        }
                        break;
                    case 1:
                        if (zzb(t, i5)) {
                            iZzc2 = zzaj.zzc(i8, 0.0f);
                            i6 += iZzc2;
                        }
                        break;
                    case 2:
                        if (zzb(t, i5)) {
                            iZzc2 = zzaj.zze(i8, zzdy.zzl(t, j2));
                            i6 += iZzc2;
                        }
                        break;
                    case 3:
                        if (zzb(t, i5)) {
                            iZzc2 = zzaj.zzf(i8, zzdy.zzl(t, j2));
                            i6 += iZzc2;
                        }
                        break;
                    case 4:
                        if (zzb(t, i5)) {
                            iZzc2 = zzaj.zzh(i8, zzdy.zzk(t, j2));
                            i6 += iZzc2;
                        }
                        break;
                    case 5:
                        if (zzb(t, i5)) {
                            iZzc2 = zzaj.zzh(i8, 0L);
                            i6 += iZzc2;
                        }
                        break;
                    case 6:
                        if (zzb(t, i5)) {
                            iZzc2 = zzaj.zzk(i8, 0);
                            i6 += iZzc2;
                        }
                        break;
                    case 7:
                        if (zzb(t, i5)) {
                            iZzc2 = zzaj.zzd(i8, true);
                            i6 += iZzc2;
                        }
                        break;
                    case 8:
                        if (zzb(t, i5)) {
                            Object objZzp = zzdy.zzp(t, j2);
                            if (objZzp instanceof zzw) {
                                iZzc2 = zzaj.zzd(i8, (zzw) objZzp);
                            } else {
                                iZzc2 = zzaj.zzc(i8, (String) objZzp);
                            }
                            i6 += iZzc2;
                        }
                        break;
                    case 9:
                        if (zzb(t, i5)) {
                            iZzc2 = zzdc.zzd(i8, zzdy.zzp(t, j2), zzaf(i5));
                            i6 += iZzc2;
                        }
                        break;
                    case 10:
                        if (zzb(t, i5)) {
                            iZzc2 = zzaj.zzd(i8, (zzw) zzdy.zzp(t, j2));
                            i6 += iZzc2;
                        }
                        break;
                    case 11:
                        if (zzb(t, i5)) {
                            iZzc2 = zzaj.zzi(i8, zzdy.zzk(t, j2));
                            i6 += iZzc2;
                        }
                        break;
                    case 12:
                        if (zzb(t, i5)) {
                            iZzc2 = zzaj.zzm(i8, zzdy.zzk(t, j2));
                            i6 += iZzc2;
                        }
                        break;
                    case 13:
                        if (zzb(t, i5)) {
                            iZzc2 = zzaj.zzl(i8, 0);
                            i6 += iZzc2;
                        }
                        break;
                    case 14:
                        if (zzb(t, i5)) {
                            iZzc2 = zzaj.zzi(i8, 0L);
                            i6 += iZzc2;
                        }
                        break;
                    case 15:
                        if (zzb(t, i5)) {
                            iZzc2 = zzaj.zzj(i8, zzdy.zzk(t, j2));
                            i6 += iZzc2;
                        }
                        break;
                    case 16:
                        if (zzb(t, i5)) {
                            iZzc2 = zzaj.zzg(i8, zzdy.zzl(t, j2));
                            i6 += iZzc2;
                        }
                        break;
                    case 17:
                        if (zzb(t, i5)) {
                            iZzc2 = zzaj.zzd(i8, (zzck) zzdy.zzp(t, j2), zzaf(i5));
                            i6 += iZzc2;
                        }
                        break;
                    case 18:
                        iZzc2 = zzdc.zzx(i8, zze(t, j2), false);
                        i6 += iZzc2;
                        break;
                    case 19:
                        iZzc2 = zzdc.zzw(i8, zze(t, j2), false);
                        i6 += iZzc2;
                        break;
                    case 20:
                        iZzc2 = zzdc.zzp(i8, zze(t, j2), false);
                        i6 += iZzc2;
                        break;
                    case 21:
                        iZzc2 = zzdc.zzq(i8, zze(t, j2), false);
                        i6 += iZzc2;
                        break;
                    case 22:
                        iZzc2 = zzdc.zzt(i8, zze(t, j2), false);
                        i6 += iZzc2;
                        break;
                    case 23:
                        iZzc2 = zzdc.zzx(i8, zze(t, j2), false);
                        i6 += iZzc2;
                        break;
                    case 24:
                        iZzc2 = zzdc.zzw(i8, zze(t, j2), false);
                        i6 += iZzc2;
                        break;
                    case 25:
                        iZzc2 = zzdc.zzy(i8, zze(t, j2), false);
                        i6 += iZzc2;
                        break;
                    case 26:
                        iZzc2 = zzdc.zzd(i8, zze(t, j2));
                        i6 += iZzc2;
                        break;
                    case 27:
                        iZzc2 = zzdc.zzd(i8, zze(t, j2), zzaf(i5));
                        i6 += iZzc2;
                        break;
                    case 28:
                        iZzc2 = zzdc.zze(i8, (List<zzw>) zze(t, j2));
                        i6 += iZzc2;
                        break;
                    case 29:
                        iZzc2 = zzdc.zzu(i8, zze(t, j2), false);
                        i6 += iZzc2;
                        break;
                    case 30:
                        iZzc2 = zzdc.zzs(i8, zze(t, j2), false);
                        i6 += iZzc2;
                        break;
                    case 31:
                        iZzc2 = zzdc.zzw(i8, zze(t, j2), false);
                        i6 += iZzc2;
                        break;
                    case 32:
                        iZzc2 = zzdc.zzx(i8, zze(t, j2), false);
                        i6 += iZzc2;
                        break;
                    case 33:
                        iZzc2 = zzdc.zzv(i8, zze(t, j2), false);
                        i6 += iZzc2;
                        break;
                    case 34:
                        iZzc2 = zzdc.zzr(i8, zze(t, j2), false);
                        i6 += iZzc2;
                        break;
                    case 35:
                        iZzm2 = zzdc.zzm((List) unsafe.getObject(t, j2));
                        if (iZzm2 > 0) {
                            if (this.zzla) {
                                unsafe.putInt(t, i9, iZzm2);
                            }
                            iZzr2 = zzaj.zzr(i8);
                            iZzt2 = zzaj.zzt(iZzm2);
                            iZzc2 = iZzr2 + iZzt2 + iZzm2;
                            i6 += iZzc2;
                        }
                        break;
                    case 36:
                        iZzm2 = zzdc.zzl((List) unsafe.getObject(t, j2));
                        if (iZzm2 > 0) {
                            if (this.zzla) {
                                unsafe.putInt(t, i9, iZzm2);
                            }
                            iZzr2 = zzaj.zzr(i8);
                            iZzt2 = zzaj.zzt(iZzm2);
                            iZzc2 = iZzr2 + iZzt2 + iZzm2;
                            i6 += iZzc2;
                        }
                        break;
                    case 37:
                        iZzm2 = zzdc.zze((List) unsafe.getObject(t, j2));
                        if (iZzm2 > 0) {
                            if (this.zzla) {
                                unsafe.putInt(t, i9, iZzm2);
                            }
                            iZzr2 = zzaj.zzr(i8);
                            iZzt2 = zzaj.zzt(iZzm2);
                            iZzc2 = iZzr2 + iZzt2 + iZzm2;
                            i6 += iZzc2;
                        }
                        break;
                    case 38:
                        iZzm2 = zzdc.zzf((List<Long>) unsafe.getObject(t, j2));
                        if (iZzm2 > 0) {
                            if (this.zzla) {
                                unsafe.putInt(t, i9, iZzm2);
                            }
                            iZzr2 = zzaj.zzr(i8);
                            iZzt2 = zzaj.zzt(iZzm2);
                            iZzc2 = iZzr2 + iZzt2 + iZzm2;
                            i6 += iZzc2;
                        }
                        break;
                    case 39:
                        iZzm2 = zzdc.zzi((List) unsafe.getObject(t, j2));
                        if (iZzm2 > 0) {
                            if (this.zzla) {
                                unsafe.putInt(t, i9, iZzm2);
                            }
                            iZzr2 = zzaj.zzr(i8);
                            iZzt2 = zzaj.zzt(iZzm2);
                            iZzc2 = iZzr2 + iZzt2 + iZzm2;
                            i6 += iZzc2;
                        }
                        break;
                    case 40:
                        iZzm2 = zzdc.zzm((List) unsafe.getObject(t, j2));
                        if (iZzm2 > 0) {
                            if (this.zzla) {
                                unsafe.putInt(t, i9, iZzm2);
                            }
                            iZzr2 = zzaj.zzr(i8);
                            iZzt2 = zzaj.zzt(iZzm2);
                            iZzc2 = iZzr2 + iZzt2 + iZzm2;
                            i6 += iZzc2;
                        }
                        break;
                    case 41:
                        iZzm2 = zzdc.zzl((List) unsafe.getObject(t, j2));
                        if (iZzm2 > 0) {
                            if (this.zzla) {
                                unsafe.putInt(t, i9, iZzm2);
                            }
                            iZzr2 = zzaj.zzr(i8);
                            iZzt2 = zzaj.zzt(iZzm2);
                            iZzc2 = iZzr2 + iZzt2 + iZzm2;
                            i6 += iZzc2;
                        }
                        break;
                    case 42:
                        iZzm2 = zzdc.zzn((List) unsafe.getObject(t, j2));
                        if (iZzm2 > 0) {
                            if (this.zzla) {
                                unsafe.putInt(t, i9, iZzm2);
                            }
                            iZzr2 = zzaj.zzr(i8);
                            iZzt2 = zzaj.zzt(iZzm2);
                            iZzc2 = iZzr2 + iZzt2 + iZzm2;
                            i6 += iZzc2;
                        }
                        break;
                    case 43:
                        iZzm2 = zzdc.zzj((List) unsafe.getObject(t, j2));
                        if (iZzm2 > 0) {
                            if (this.zzla) {
                                unsafe.putInt(t, i9, iZzm2);
                            }
                            iZzr2 = zzaj.zzr(i8);
                            iZzt2 = zzaj.zzt(iZzm2);
                            iZzc2 = iZzr2 + iZzt2 + iZzm2;
                            i6 += iZzc2;
                        }
                        break;
                    case 44:
                        iZzm2 = zzdc.zzh((List) unsafe.getObject(t, j2));
                        if (iZzm2 > 0) {
                            if (this.zzla) {
                                unsafe.putInt(t, i9, iZzm2);
                            }
                            iZzr2 = zzaj.zzr(i8);
                            iZzt2 = zzaj.zzt(iZzm2);
                            iZzc2 = iZzr2 + iZzt2 + iZzm2;
                            i6 += iZzc2;
                        }
                        break;
                    case 45:
                        iZzm2 = zzdc.zzl((List) unsafe.getObject(t, j2));
                        if (iZzm2 > 0) {
                            if (this.zzla) {
                                unsafe.putInt(t, i9, iZzm2);
                            }
                            iZzr2 = zzaj.zzr(i8);
                            iZzt2 = zzaj.zzt(iZzm2);
                            iZzc2 = iZzr2 + iZzt2 + iZzm2;
                            i6 += iZzc2;
                        }
                        break;
                    case 46:
                        iZzm2 = zzdc.zzm((List) unsafe.getObject(t, j2));
                        if (iZzm2 > 0) {
                            if (this.zzla) {
                                unsafe.putInt(t, i9, iZzm2);
                            }
                            iZzr2 = zzaj.zzr(i8);
                            iZzt2 = zzaj.zzt(iZzm2);
                            iZzc2 = iZzr2 + iZzt2 + iZzm2;
                            i6 += iZzc2;
                        }
                        break;
                    case 47:
                        iZzm2 = zzdc.zzk((List) unsafe.getObject(t, j2));
                        if (iZzm2 > 0) {
                            if (this.zzla) {
                                unsafe.putInt(t, i9, iZzm2);
                            }
                            iZzr2 = zzaj.zzr(i8);
                            iZzt2 = zzaj.zzt(iZzm2);
                            iZzc2 = iZzr2 + iZzt2 + iZzm2;
                            i6 += iZzc2;
                        }
                        break;
                    case 48:
                        iZzm2 = zzdc.zzg((List<Long>) unsafe.getObject(t, j2));
                        if (iZzm2 > 0) {
                            if (this.zzla) {
                                unsafe.putInt(t, i9, iZzm2);
                            }
                            iZzr2 = zzaj.zzr(i8);
                            iZzt2 = zzaj.zzt(iZzm2);
                            iZzc2 = iZzr2 + iZzt2 + iZzm2;
                            i6 += iZzc2;
                        }
                        break;
                    case 49:
                        iZzc2 = zzdc.zze(i8, zze(t, j2), zzaf(i5));
                        i6 += iZzc2;
                        break;
                    case 50:
                        iZzc2 = this.zzli.zzc(i8, zzdy.zzp(t, j2), zzag(i5));
                        i6 += iZzc2;
                        break;
                    case 51:
                        if (zzb(t, i8, i5)) {
                            iZzc2 = zzaj.zzc(i8, 0.0d);
                            i6 += iZzc2;
                        }
                        break;
                    case 52:
                        if (zzb(t, i8, i5)) {
                            iZzc2 = zzaj.zzc(i8, 0.0f);
                            i6 += iZzc2;
                        }
                        break;
                    case 53:
                        if (zzb(t, i8, i5)) {
                            iZzc2 = zzaj.zze(i8, zzi(t, j2));
                            i6 += iZzc2;
                        }
                        break;
                    case 54:
                        if (zzb(t, i8, i5)) {
                            iZzc2 = zzaj.zzf(i8, zzi(t, j2));
                            i6 += iZzc2;
                        }
                        break;
                    case 55:
                        if (zzb(t, i8, i5)) {
                            iZzc2 = zzaj.zzh(i8, zzh(t, j2));
                            i6 += iZzc2;
                        }
                        break;
                    case 56:
                        if (zzb(t, i8, i5)) {
                            iZzc2 = zzaj.zzh(i8, 0L);
                            i6 += iZzc2;
                        }
                        break;
                    case 57:
                        if (zzb(t, i8, i5)) {
                            iZzc2 = zzaj.zzk(i8, 0);
                            i6 += iZzc2;
                        }
                        break;
                    case 58:
                        if (zzb(t, i8, i5)) {
                            iZzc2 = zzaj.zzd(i8, true);
                            i6 += iZzc2;
                        }
                        break;
                    case 59:
                        if (zzb(t, i8, i5)) {
                            Object objZzp2 = zzdy.zzp(t, j2);
                            if (objZzp2 instanceof zzw) {
                                iZzc2 = zzaj.zzd(i8, (zzw) objZzp2);
                            } else {
                                iZzc2 = zzaj.zzc(i8, (String) objZzp2);
                            }
                            i6 += iZzc2;
                        }
                        break;
                    case 60:
                        if (zzb(t, i8, i5)) {
                            iZzc2 = zzdc.zzd(i8, zzdy.zzp(t, j2), zzaf(i5));
                            i6 += iZzc2;
                        }
                        break;
                    case 61:
                        if (zzb(t, i8, i5)) {
                            iZzc2 = zzaj.zzd(i8, (zzw) zzdy.zzp(t, j2));
                            i6 += iZzc2;
                        }
                        break;
                    case 62:
                        if (zzb(t, i8, i5)) {
                            iZzc2 = zzaj.zzi(i8, zzh(t, j2));
                            i6 += iZzc2;
                        }
                        break;
                    case 63:
                        if (zzb(t, i8, i5)) {
                            iZzc2 = zzaj.zzm(i8, zzh(t, j2));
                            i6 += iZzc2;
                        }
                        break;
                    case 64:
                        if (zzb(t, i8, i5)) {
                            iZzc2 = zzaj.zzl(i8, 0);
                            i6 += iZzc2;
                        }
                        break;
                    case 65:
                        if (zzb(t, i8, i5)) {
                            iZzc2 = zzaj.zzi(i8, 0L);
                            i6 += iZzc2;
                        }
                        break;
                    case 66:
                        if (zzb(t, i8, i5)) {
                            iZzc2 = zzaj.zzj(i8, zzh(t, j2));
                            i6 += iZzc2;
                        }
                        break;
                    case 67:
                        if (zzb(t, i8, i5)) {
                            iZzc2 = zzaj.zzg(i8, zzi(t, j2));
                            i6 += iZzc2;
                        }
                        break;
                    case 68:
                        if (zzb(t, i8, i5)) {
                            iZzc2 = zzaj.zzd(i8, (zzck) zzdy.zzp(t, j2), zzaf(i5));
                            i6 += iZzc2;
                        }
                        break;
                }
                i5 += 3;
                i3 = 267386880;
            }
            return i6 + zzb(this.zzlg, t);
        }
        Unsafe unsafe2 = zzkr;
        int i10 = -1;
        int i11 = 0;
        int iZzc3 = 0;
        int i12 = 0;
        while (i11 < this.zzks.length) {
            int iZzai2 = zzai(i11);
            int[] iArr = this.zzks;
            int i13 = iArr[i11];
            int i14 = (iZzai2 & 267386880) >>> 20;
            if (i14 <= 17) {
                int i15 = iArr[i11 + 2];
                int i16 = i15 & 1048575;
                i2 = i4 << (i15 >>> 20);
                if (i16 != i10) {
                    i12 = unsafe2.getInt(t, i16);
                    i10 = i16;
                }
                i = i15;
            } else {
                i = (!this.zzla || i14 < zzaw.DOUBLE_LIST_PACKED.id() || i14 > zzaw.SINT64_LIST_PACKED.id()) ? 0 : this.zzks[i11 + 2] & 1048575;
                i2 = 0;
            }
            long j3 = iZzai2 & 1048575;
            switch (i14) {
                case 0:
                    j = 0;
                    if ((i12 & i2) != 0) {
                        iZzc3 += zzaj.zzc(i13, 0.0d);
                    }
                    break;
                case 1:
                    j = 0;
                    if ((i12 & i2) != 0) {
                        iZzc3 += zzaj.zzc(i13, 0.0f);
                    }
                    break;
                case 2:
                    j = 0;
                    if ((i12 & i2) != 0) {
                        iZze = zzaj.zze(i13, unsafe2.getLong(t, j3));
                        iZzc3 += iZze;
                    }
                    break;
                case 3:
                    j = 0;
                    if ((i12 & i2) != 0) {
                        iZze = zzaj.zzf(i13, unsafe2.getLong(t, j3));
                        iZzc3 += iZze;
                    }
                    break;
                case 4:
                    j = 0;
                    if ((i12 & i2) != 0) {
                        iZze = zzaj.zzh(i13, unsafe2.getInt(t, j3));
                        iZzc3 += iZze;
                    }
                    break;
                case 5:
                    j = 0;
                    if ((i12 & i2) != 0) {
                        iZze = zzaj.zzh(i13, 0L);
                        iZzc3 += iZze;
                    }
                    break;
                case 6:
                    if ((i12 & i2) != 0) {
                        iZzc3 += zzaj.zzk(i13, 0);
                    }
                    j = 0;
                    break;
                case 7:
                    if ((i12 & i2) != 0) {
                        iZzc3 += zzaj.zzd(i13, true);
                    }
                    j = 0;
                    break;
                case 8:
                    if ((i12 & i2) != 0) {
                        Object object = unsafe2.getObject(t, j3);
                        if (object instanceof zzw) {
                            iZzc = zzaj.zzd(i13, (zzw) object);
                        } else {
                            iZzc = zzaj.zzc(i13, (String) object);
                        }
                        iZzc3 += iZzc;
                    }
                    j = 0;
                    break;
                case 9:
                    if ((i12 & i2) != 0) {
                        iZzc = zzdc.zzd(i13, unsafe2.getObject(t, j3), zzaf(i11));
                        iZzc3 += iZzc;
                    }
                    j = 0;
                    break;
                case 10:
                    if ((i12 & i2) != 0) {
                        iZzc = zzaj.zzd(i13, (zzw) unsafe2.getObject(t, j3));
                        iZzc3 += iZzc;
                    }
                    j = 0;
                    break;
                case 11:
                    if ((i12 & i2) != 0) {
                        iZzc = zzaj.zzi(i13, unsafe2.getInt(t, j3));
                        iZzc3 += iZzc;
                    }
                    j = 0;
                    break;
                case 12:
                    if ((i12 & i2) != 0) {
                        iZzc = zzaj.zzm(i13, unsafe2.getInt(t, j3));
                        iZzc3 += iZzc;
                    }
                    j = 0;
                    break;
                case 13:
                    if ((i12 & i2) != 0) {
                        iZzl = zzaj.zzl(i13, 0);
                        iZzc3 += iZzl;
                    }
                    j = 0;
                    break;
                case 14:
                    if ((i12 & i2) != 0) {
                        iZzc = zzaj.zzi(i13, 0L);
                        iZzc3 += iZzc;
                    }
                    j = 0;
                    break;
                case 15:
                    if ((i12 & i2) != 0) {
                        iZzc = zzaj.zzj(i13, unsafe2.getInt(t, j3));
                        iZzc3 += iZzc;
                    }
                    j = 0;
                    break;
                case 16:
                    if ((i12 & i2) != 0) {
                        iZzc = zzaj.zzg(i13, unsafe2.getLong(t, j3));
                        iZzc3 += iZzc;
                    }
                    j = 0;
                    break;
                case 17:
                    if ((i12 & i2) != 0) {
                        iZzc = zzaj.zzd(i13, (zzck) unsafe2.getObject(t, j3), zzaf(i11));
                        iZzc3 += iZzc;
                    }
                    j = 0;
                    break;
                case 18:
                    iZzc = zzdc.zzx(i13, (List) unsafe2.getObject(t, j3), false);
                    iZzc3 += iZzc;
                    j = 0;
                    break;
                case 19:
                    iZzw = zzdc.zzw(i13, (List) unsafe2.getObject(t, j3), false);
                    iZzc3 += iZzw;
                    j = 0;
                    break;
                case 20:
                    iZzw = zzdc.zzp(i13, (List) unsafe2.getObject(t, j3), false);
                    iZzc3 += iZzw;
                    j = 0;
                    break;
                case 21:
                    iZzw = zzdc.zzq(i13, (List) unsafe2.getObject(t, j3), false);
                    iZzc3 += iZzw;
                    j = 0;
                    break;
                case 22:
                    iZzw = zzdc.zzt(i13, (List) unsafe2.getObject(t, j3), false);
                    iZzc3 += iZzw;
                    j = 0;
                    break;
                case 23:
                    iZzw = zzdc.zzx(i13, (List) unsafe2.getObject(t, j3), false);
                    iZzc3 += iZzw;
                    j = 0;
                    break;
                case 24:
                    iZzw = zzdc.zzw(i13, (List) unsafe2.getObject(t, j3), false);
                    iZzc3 += iZzw;
                    j = 0;
                    break;
                case 25:
                    iZzw = zzdc.zzy(i13, (List) unsafe2.getObject(t, j3), false);
                    iZzc3 += iZzw;
                    j = 0;
                    break;
                case 26:
                    iZzc = zzdc.zzd(i13, (List) unsafe2.getObject(t, j3));
                    iZzc3 += iZzc;
                    j = 0;
                    break;
                case 27:
                    iZzc = zzdc.zzd(i13, (List<?>) unsafe2.getObject(t, j3), zzaf(i11));
                    iZzc3 += iZzc;
                    j = 0;
                    break;
                case 28:
                    iZzc = zzdc.zze(i13, (List<zzw>) unsafe2.getObject(t, j3));
                    iZzc3 += iZzc;
                    j = 0;
                    break;
                case 29:
                    iZzc = zzdc.zzu(i13, (List) unsafe2.getObject(t, j3), false);
                    iZzc3 += iZzc;
                    j = 0;
                    break;
                case 30:
                    iZzw = zzdc.zzs(i13, (List) unsafe2.getObject(t, j3), false);
                    iZzc3 += iZzw;
                    j = 0;
                    break;
                case 31:
                    iZzw = zzdc.zzw(i13, (List) unsafe2.getObject(t, j3), false);
                    iZzc3 += iZzw;
                    j = 0;
                    break;
                case 32:
                    iZzw = zzdc.zzx(i13, (List) unsafe2.getObject(t, j3), false);
                    iZzc3 += iZzw;
                    j = 0;
                    break;
                case 33:
                    iZzw = zzdc.zzv(i13, (List) unsafe2.getObject(t, j3), false);
                    iZzc3 += iZzw;
                    j = 0;
                    break;
                case 34:
                    iZzw = zzdc.zzr(i13, (List) unsafe2.getObject(t, j3), false);
                    iZzc3 += iZzw;
                    j = 0;
                    break;
                case 35:
                    iZzm = zzdc.zzm((List) unsafe2.getObject(t, j3));
                    if (iZzm > 0) {
                        if (this.zzla) {
                            unsafe2.putInt(t, i, iZzm);
                        }
                        iZzr = zzaj.zzr(i13);
                        iZzt = zzaj.zzt(iZzm);
                        iZzl = iZzr + iZzt + iZzm;
                        iZzc3 += iZzl;
                    }
                    j = 0;
                    break;
                case 36:
                    iZzm = zzdc.zzl((List) unsafe2.getObject(t, j3));
                    if (iZzm > 0) {
                        if (this.zzla) {
                            unsafe2.putInt(t, i, iZzm);
                        }
                        iZzr = zzaj.zzr(i13);
                        iZzt = zzaj.zzt(iZzm);
                        iZzl = iZzr + iZzt + iZzm;
                        iZzc3 += iZzl;
                    }
                    j = 0;
                    break;
                case 37:
                    iZzm = zzdc.zze((List) unsafe2.getObject(t, j3));
                    if (iZzm > 0) {
                        if (this.zzla) {
                            unsafe2.putInt(t, i, iZzm);
                        }
                        iZzr = zzaj.zzr(i13);
                        iZzt = zzaj.zzt(iZzm);
                        iZzl = iZzr + iZzt + iZzm;
                        iZzc3 += iZzl;
                    }
                    j = 0;
                    break;
                case 38:
                    iZzm = zzdc.zzf((List<Long>) unsafe2.getObject(t, j3));
                    if (iZzm > 0) {
                        if (this.zzla) {
                            unsafe2.putInt(t, i, iZzm);
                        }
                        iZzr = zzaj.zzr(i13);
                        iZzt = zzaj.zzt(iZzm);
                        iZzl = iZzr + iZzt + iZzm;
                        iZzc3 += iZzl;
                    }
                    j = 0;
                    break;
                case 39:
                    iZzm = zzdc.zzi((List) unsafe2.getObject(t, j3));
                    if (iZzm > 0) {
                        if (this.zzla) {
                            unsafe2.putInt(t, i, iZzm);
                        }
                        iZzr = zzaj.zzr(i13);
                        iZzt = zzaj.zzt(iZzm);
                        iZzl = iZzr + iZzt + iZzm;
                        iZzc3 += iZzl;
                    }
                    j = 0;
                    break;
                case 40:
                    iZzm = zzdc.zzm((List) unsafe2.getObject(t, j3));
                    if (iZzm > 0) {
                        if (this.zzla) {
                            unsafe2.putInt(t, i, iZzm);
                        }
                        iZzr = zzaj.zzr(i13);
                        iZzt = zzaj.zzt(iZzm);
                        iZzl = iZzr + iZzt + iZzm;
                        iZzc3 += iZzl;
                    }
                    j = 0;
                    break;
                case 41:
                    iZzm = zzdc.zzl((List) unsafe2.getObject(t, j3));
                    if (iZzm > 0) {
                        if (this.zzla) {
                            unsafe2.putInt(t, i, iZzm);
                        }
                        iZzr = zzaj.zzr(i13);
                        iZzt = zzaj.zzt(iZzm);
                        iZzl = iZzr + iZzt + iZzm;
                        iZzc3 += iZzl;
                    }
                    j = 0;
                    break;
                case 42:
                    iZzm = zzdc.zzn((List) unsafe2.getObject(t, j3));
                    if (iZzm > 0) {
                        if (this.zzla) {
                            unsafe2.putInt(t, i, iZzm);
                        }
                        iZzr = zzaj.zzr(i13);
                        iZzt = zzaj.zzt(iZzm);
                        iZzl = iZzr + iZzt + iZzm;
                        iZzc3 += iZzl;
                    }
                    j = 0;
                    break;
                case 43:
                    iZzm = zzdc.zzj((List) unsafe2.getObject(t, j3));
                    if (iZzm > 0) {
                        if (this.zzla) {
                            unsafe2.putInt(t, i, iZzm);
                        }
                        iZzr = zzaj.zzr(i13);
                        iZzt = zzaj.zzt(iZzm);
                        iZzl = iZzr + iZzt + iZzm;
                        iZzc3 += iZzl;
                    }
                    j = 0;
                    break;
                case 44:
                    iZzm = zzdc.zzh((List) unsafe2.getObject(t, j3));
                    if (iZzm > 0) {
                        if (this.zzla) {
                            unsafe2.putInt(t, i, iZzm);
                        }
                        iZzr = zzaj.zzr(i13);
                        iZzt = zzaj.zzt(iZzm);
                        iZzl = iZzr + iZzt + iZzm;
                        iZzc3 += iZzl;
                    }
                    j = 0;
                    break;
                case 45:
                    iZzm = zzdc.zzl((List) unsafe2.getObject(t, j3));
                    if (iZzm > 0) {
                        if (this.zzla) {
                            unsafe2.putInt(t, i, iZzm);
                        }
                        iZzr = zzaj.zzr(i13);
                        iZzt = zzaj.zzt(iZzm);
                        iZzl = iZzr + iZzt + iZzm;
                        iZzc3 += iZzl;
                    }
                    j = 0;
                    break;
                case 46:
                    iZzm = zzdc.zzm((List) unsafe2.getObject(t, j3));
                    if (iZzm > 0) {
                        if (this.zzla) {
                            unsafe2.putInt(t, i, iZzm);
                        }
                        iZzr = zzaj.zzr(i13);
                        iZzt = zzaj.zzt(iZzm);
                        iZzl = iZzr + iZzt + iZzm;
                        iZzc3 += iZzl;
                    }
                    j = 0;
                    break;
                case 47:
                    iZzm = zzdc.zzk((List) unsafe2.getObject(t, j3));
                    if (iZzm > 0) {
                        if (this.zzla) {
                            unsafe2.putInt(t, i, iZzm);
                        }
                        iZzr = zzaj.zzr(i13);
                        iZzt = zzaj.zzt(iZzm);
                        iZzl = iZzr + iZzt + iZzm;
                        iZzc3 += iZzl;
                    }
                    j = 0;
                    break;
                case 48:
                    iZzm = zzdc.zzg((List<Long>) unsafe2.getObject(t, j3));
                    if (iZzm > 0) {
                        if (this.zzla) {
                            unsafe2.putInt(t, i, iZzm);
                        }
                        iZzr = zzaj.zzr(i13);
                        iZzt = zzaj.zzt(iZzm);
                        iZzl = iZzr + iZzt + iZzm;
                        iZzc3 += iZzl;
                    }
                    j = 0;
                    break;
                case 49:
                    iZzc = zzdc.zze(i13, (List) unsafe2.getObject(t, j3), zzaf(i11));
                    iZzc3 += iZzc;
                    j = 0;
                    break;
                case 50:
                    iZzc = this.zzli.zzc(i13, unsafe2.getObject(t, j3), zzag(i11));
                    iZzc3 += iZzc;
                    j = 0;
                    break;
                case 51:
                    if (zzb(t, i13, i11)) {
                        iZzc = zzaj.zzc(i13, 0.0d);
                        iZzc3 += iZzc;
                    }
                    j = 0;
                    break;
                case 52:
                    if (zzb(t, i13, i11)) {
                        iZzl = zzaj.zzc(i13, 0.0f);
                        iZzc3 += iZzl;
                    }
                    j = 0;
                    break;
                case 53:
                    if (zzb(t, i13, i11)) {
                        iZzc = zzaj.zze(i13, zzi(t, j3));
                        iZzc3 += iZzc;
                    }
                    j = 0;
                    break;
                case 54:
                    if (zzb(t, i13, i11)) {
                        iZzc = zzaj.zzf(i13, zzi(t, j3));
                        iZzc3 += iZzc;
                    }
                    j = 0;
                    break;
                case 55:
                    if (zzb(t, i13, i11)) {
                        iZzc = zzaj.zzh(i13, zzh(t, j3));
                        iZzc3 += iZzc;
                    }
                    j = 0;
                    break;
                case 56:
                    if (zzb(t, i13, i11)) {
                        iZzc = zzaj.zzh(i13, 0L);
                        iZzc3 += iZzc;
                    }
                    j = 0;
                    break;
                case 57:
                    if (zzb(t, i13, i11)) {
                        iZzl = zzaj.zzk(i13, 0);
                        iZzc3 += iZzl;
                    }
                    j = 0;
                    break;
                case 58:
                    if (zzb(t, i13, i11)) {
                        iZzl = zzaj.zzd(i13, true);
                        iZzc3 += iZzl;
                    }
                    j = 0;
                    break;
                case 59:
                    if (zzb(t, i13, i11)) {
                        Object object2 = unsafe2.getObject(t, j3);
                        if (object2 instanceof zzw) {
                            iZzc = zzaj.zzd(i13, (zzw) object2);
                        } else {
                            iZzc = zzaj.zzc(i13, (String) object2);
                        }
                        iZzc3 += iZzc;
                    }
                    j = 0;
                    break;
                case 60:
                    if (zzb(t, i13, i11)) {
                        iZzc = zzdc.zzd(i13, unsafe2.getObject(t, j3), zzaf(i11));
                        iZzc3 += iZzc;
                    }
                    j = 0;
                    break;
                case 61:
                    if (zzb(t, i13, i11)) {
                        iZzc = zzaj.zzd(i13, (zzw) unsafe2.getObject(t, j3));
                        iZzc3 += iZzc;
                    }
                    j = 0;
                    break;
                case 62:
                    if (zzb(t, i13, i11)) {
                        iZzc = zzaj.zzi(i13, zzh(t, j3));
                        iZzc3 += iZzc;
                    }
                    j = 0;
                    break;
                case 63:
                    if (zzb(t, i13, i11)) {
                        iZzc = zzaj.zzm(i13, zzh(t, j3));
                        iZzc3 += iZzc;
                    }
                    j = 0;
                    break;
                case 64:
                    if (zzb(t, i13, i11)) {
                        iZzl = zzaj.zzl(i13, 0);
                        iZzc3 += iZzl;
                    }
                    j = 0;
                    break;
                case 65:
                    if (zzb(t, i13, i11)) {
                        iZzc = zzaj.zzi(i13, 0L);
                        iZzc3 += iZzc;
                    }
                    j = 0;
                    break;
                case 66:
                    if (zzb(t, i13, i11)) {
                        iZzc = zzaj.zzj(i13, zzh(t, j3));
                        iZzc3 += iZzc;
                    }
                    j = 0;
                    break;
                case 67:
                    if (zzb(t, i13, i11)) {
                        iZzc = zzaj.zzg(i13, zzi(t, j3));
                        iZzc3 += iZzc;
                    }
                    j = 0;
                    break;
                case 68:
                    if (zzb(t, i13, i11)) {
                        iZzc = zzaj.zzd(i13, (zzck) unsafe2.getObject(t, j3), zzaf(i11));
                        iZzc3 += iZzc;
                    }
                    j = 0;
                    break;
            }
            i11 += 3;
            i4 = 1;
        }
        int iZzc4 = 0;
        int iZzb = iZzc3 + zzb(this.zzlg, t);
        if (!this.zzkx) {
            return iZzb;
        }
        zzav<T> zzavVarZzb = this.zzlh.zzb(t);
        for (int i17 = 0; i17 < zzavVarZzb.zzfj.zzcu(); i17++) {
            Map.Entry entryZzam = zzavVarZzb.zzfj.zzam(i17);
            iZzc4 += zzav.zzc((zzax<?>) entryZzam.getKey(), entryZzam.getValue());
        }
        for (Map.Entry entry : zzavVarZzb.zzfj.zzcv()) {
            iZzc4 += zzav.zzc((zzax<?>) entry.getKey(), entry.getValue());
        }
        return iZzb + iZzc4;
    }

    private static <UT, UB> int zzb(zzds<UT, UB> zzdsVar, T t) {
        return zzdsVar.zzn(zzdsVar.zzr(t));
    }

    private static List<?> zze(Object obj, long j) {
        return (List) zzdy.zzp(obj, j);
    }

    /* JADX WARN: Removed duplicated region for block: B:178:0x054a  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0032  */
    @Override // com.google.android.gms.internal.places.zzda
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzb(T t, zzel zzelVar) throws IOException {
        Iterator it;
        Map.Entry<?, ?> entry;
        Iterator itDescendingIterator;
        Map.Entry<?, ?> entry2;
        if (zzelVar.zzam() == zzbc.zze.zzix) {
            zzb(this.zzlg, t, zzelVar);
            if (this.zzkx) {
                zzav<T> zzavVarZzb = this.zzlh.zzb(t);
                if (zzavVarZzb.zzfj.isEmpty()) {
                    itDescendingIterator = null;
                    entry2 = null;
                } else {
                    itDescendingIterator = zzavVarZzb.descendingIterator();
                    entry2 = (Map.Entry) itDescendingIterator.next();
                }
            }
            for (int length = this.zzks.length - 3; length >= 0; length -= 3) {
                int iZzai = zzai(length);
                int i = this.zzks[length];
                while (entry2 != null && this.zzlh.zzb(entry2) > i) {
                    this.zzlh.zzb(zzelVar, entry2);
                    entry2 = itDescendingIterator.hasNext() ? (Map.Entry) itDescendingIterator.next() : null;
                }
                switch ((iZzai & 267386880) >>> 20) {
                    case 0:
                        if (zzb(t, length)) {
                            zzelVar.zzb(i, zzdy.zzo(t, iZzai & 1048575));
                        }
                        break;
                    case 1:
                        if (zzb(t, length)) {
                            zzelVar.zzb(i, zzdy.zzn(t, iZzai & 1048575));
                        }
                        break;
                    case 2:
                        if (zzb(t, length)) {
                            zzelVar.zzj(i, zzdy.zzl(t, iZzai & 1048575));
                        }
                        break;
                    case 3:
                        if (zzb(t, length)) {
                            zzelVar.zzb(i, zzdy.zzl(t, iZzai & 1048575));
                        }
                        break;
                    case 4:
                        if (zzb(t, length)) {
                            zzelVar.zzd(i, zzdy.zzk(t, iZzai & 1048575));
                        }
                        break;
                    case 5:
                        if (zzb(t, length)) {
                            zzelVar.zzd(i, zzdy.zzl(t, iZzai & 1048575));
                        }
                        break;
                    case 6:
                        if (zzb(t, length)) {
                            zzelVar.zzg(i, zzdy.zzk(t, iZzai & 1048575));
                        }
                        break;
                    case 7:
                        if (zzb(t, length)) {
                            zzelVar.zzc(i, zzdy.zzm(t, iZzai & 1048575));
                        }
                        break;
                    case 8:
                        if (zzb(t, length)) {
                            zzb(i, zzdy.zzp(t, iZzai & 1048575), zzelVar);
                        }
                        break;
                    case 9:
                        if (zzb(t, length)) {
                            zzelVar.zzb(i, zzdy.zzp(t, iZzai & 1048575), zzaf(length));
                        }
                        break;
                    case 10:
                        if (zzb(t, length)) {
                            zzelVar.zzb(i, (zzw) zzdy.zzp(t, iZzai & 1048575));
                        }
                        break;
                    case 11:
                        if (zzb(t, length)) {
                            zzelVar.zze(i, zzdy.zzk(t, iZzai & 1048575));
                        }
                        break;
                    case 12:
                        if (zzb(t, length)) {
                            zzelVar.zzo(i, zzdy.zzk(t, iZzai & 1048575));
                        }
                        break;
                    case 13:
                        if (zzb(t, length)) {
                            zzelVar.zzn(i, zzdy.zzk(t, iZzai & 1048575));
                        }
                        break;
                    case 14:
                        if (zzb(t, length)) {
                            zzelVar.zzk(i, zzdy.zzl(t, iZzai & 1048575));
                        }
                        break;
                    case 15:
                        if (zzb(t, length)) {
                            zzelVar.zzf(i, zzdy.zzk(t, iZzai & 1048575));
                        }
                        break;
                    case 16:
                        if (zzb(t, length)) {
                            zzelVar.zzc(i, zzdy.zzl(t, iZzai & 1048575));
                        }
                        break;
                    case 17:
                        if (zzb(t, length)) {
                            zzelVar.zzc(i, zzdy.zzp(t, iZzai & 1048575), zzaf(length));
                        }
                        break;
                    case 18:
                        zzdc.zzb(this.zzks[length], (List<Double>) zzdy.zzp(t, iZzai & 1048575), zzelVar, false);
                        break;
                    case 19:
                        zzdc.zzc(this.zzks[length], (List<Float>) zzdy.zzp(t, iZzai & 1048575), zzelVar, false);
                        break;
                    case 20:
                        zzdc.zzd(this.zzks[length], (List) zzdy.zzp(t, iZzai & 1048575), zzelVar, false);
                        break;
                    case 21:
                        zzdc.zze(this.zzks[length], (List) zzdy.zzp(t, iZzai & 1048575), zzelVar, false);
                        break;
                    case 22:
                        zzdc.zzi(this.zzks[length], (List) zzdy.zzp(t, iZzai & 1048575), zzelVar, false);
                        break;
                    case 23:
                        zzdc.zzg(this.zzks[length], (List) zzdy.zzp(t, iZzai & 1048575), zzelVar, false);
                        break;
                    case 24:
                        zzdc.zzl(this.zzks[length], (List) zzdy.zzp(t, iZzai & 1048575), zzelVar, false);
                        break;
                    case 25:
                        zzdc.zzo(this.zzks[length], (List) zzdy.zzp(t, iZzai & 1048575), zzelVar, false);
                        break;
                    case 26:
                        zzdc.zzb(this.zzks[length], (List<String>) zzdy.zzp(t, iZzai & 1048575), zzelVar);
                        break;
                    case 27:
                        zzdc.zzb(this.zzks[length], (List<?>) zzdy.zzp(t, iZzai & 1048575), zzelVar, zzaf(length));
                        break;
                    case 28:
                        zzdc.zzc(this.zzks[length], (List) zzdy.zzp(t, iZzai & 1048575), zzelVar);
                        break;
                    case 29:
                        zzdc.zzj(this.zzks[length], (List) zzdy.zzp(t, iZzai & 1048575), zzelVar, false);
                        break;
                    case 30:
                        zzdc.zzn(this.zzks[length], (List) zzdy.zzp(t, iZzai & 1048575), zzelVar, false);
                        break;
                    case 31:
                        zzdc.zzm(this.zzks[length], (List) zzdy.zzp(t, iZzai & 1048575), zzelVar, false);
                        break;
                    case 32:
                        zzdc.zzh(this.zzks[length], (List) zzdy.zzp(t, iZzai & 1048575), zzelVar, false);
                        break;
                    case 33:
                        zzdc.zzk(this.zzks[length], (List) zzdy.zzp(t, iZzai & 1048575), zzelVar, false);
                        break;
                    case 34:
                        zzdc.zzf(this.zzks[length], (List) zzdy.zzp(t, iZzai & 1048575), zzelVar, false);
                        break;
                    case 35:
                        zzdc.zzb(this.zzks[length], (List<Double>) zzdy.zzp(t, iZzai & 1048575), zzelVar, true);
                        break;
                    case 36:
                        zzdc.zzc(this.zzks[length], (List<Float>) zzdy.zzp(t, iZzai & 1048575), zzelVar, true);
                        break;
                    case 37:
                        zzdc.zzd(this.zzks[length], (List) zzdy.zzp(t, iZzai & 1048575), zzelVar, true);
                        break;
                    case 38:
                        zzdc.zze(this.zzks[length], (List) zzdy.zzp(t, iZzai & 1048575), zzelVar, true);
                        break;
                    case 39:
                        zzdc.zzi(this.zzks[length], (List) zzdy.zzp(t, iZzai & 1048575), zzelVar, true);
                        break;
                    case 40:
                        zzdc.zzg(this.zzks[length], (List) zzdy.zzp(t, iZzai & 1048575), zzelVar, true);
                        break;
                    case 41:
                        zzdc.zzl(this.zzks[length], (List) zzdy.zzp(t, iZzai & 1048575), zzelVar, true);
                        break;
                    case 42:
                        zzdc.zzo(this.zzks[length], (List) zzdy.zzp(t, iZzai & 1048575), zzelVar, true);
                        break;
                    case 43:
                        zzdc.zzj(this.zzks[length], (List) zzdy.zzp(t, iZzai & 1048575), zzelVar, true);
                        break;
                    case 44:
                        zzdc.zzn(this.zzks[length], (List) zzdy.zzp(t, iZzai & 1048575), zzelVar, true);
                        break;
                    case 45:
                        zzdc.zzm(this.zzks[length], (List) zzdy.zzp(t, iZzai & 1048575), zzelVar, true);
                        break;
                    case 46:
                        zzdc.zzh(this.zzks[length], (List) zzdy.zzp(t, iZzai & 1048575), zzelVar, true);
                        break;
                    case 47:
                        zzdc.zzk(this.zzks[length], (List) zzdy.zzp(t, iZzai & 1048575), zzelVar, true);
                        break;
                    case 48:
                        zzdc.zzf(this.zzks[length], (List) zzdy.zzp(t, iZzai & 1048575), zzelVar, true);
                        break;
                    case 49:
                        zzdc.zzc(this.zzks[length], (List<?>) zzdy.zzp(t, iZzai & 1048575), zzelVar, zzaf(length));
                        break;
                    case 50:
                        zzb(zzelVar, i, zzdy.zzp(t, iZzai & 1048575), length);
                        break;
                    case 51:
                        if (zzb(t, i, length)) {
                            zzelVar.zzb(i, zzf(t, iZzai & 1048575));
                        }
                        break;
                    case 52:
                        if (zzb(t, i, length)) {
                            zzelVar.zzb(i, zzg(t, iZzai & 1048575));
                        }
                        break;
                    case 53:
                        if (zzb(t, i, length)) {
                            zzelVar.zzj(i, zzi(t, iZzai & 1048575));
                        }
                        break;
                    case 54:
                        if (zzb(t, i, length)) {
                            zzelVar.zzb(i, zzi(t, iZzai & 1048575));
                        }
                        break;
                    case 55:
                        if (zzb(t, i, length)) {
                            zzelVar.zzd(i, zzh(t, iZzai & 1048575));
                        }
                        break;
                    case 56:
                        if (zzb(t, i, length)) {
                            zzelVar.zzd(i, zzi(t, iZzai & 1048575));
                        }
                        break;
                    case 57:
                        if (zzb(t, i, length)) {
                            zzelVar.zzg(i, zzh(t, iZzai & 1048575));
                        }
                        break;
                    case 58:
                        if (zzb(t, i, length)) {
                            zzelVar.zzc(i, zzj(t, iZzai & 1048575));
                        }
                        break;
                    case 59:
                        if (zzb(t, i, length)) {
                            zzb(i, zzdy.zzp(t, iZzai & 1048575), zzelVar);
                        }
                        break;
                    case 60:
                        if (zzb(t, i, length)) {
                            zzelVar.zzb(i, zzdy.zzp(t, iZzai & 1048575), zzaf(length));
                        }
                        break;
                    case 61:
                        if (zzb(t, i, length)) {
                            zzelVar.zzb(i, (zzw) zzdy.zzp(t, iZzai & 1048575));
                        }
                        break;
                    case 62:
                        if (zzb(t, i, length)) {
                            zzelVar.zze(i, zzh(t, iZzai & 1048575));
                        }
                        break;
                    case 63:
                        if (zzb(t, i, length)) {
                            zzelVar.zzo(i, zzh(t, iZzai & 1048575));
                        }
                        break;
                    case 64:
                        if (zzb(t, i, length)) {
                            zzelVar.zzn(i, zzh(t, iZzai & 1048575));
                        }
                        break;
                    case 65:
                        if (zzb(t, i, length)) {
                            zzelVar.zzk(i, zzi(t, iZzai & 1048575));
                        }
                        break;
                    case 66:
                        if (zzb(t, i, length)) {
                            zzelVar.zzf(i, zzh(t, iZzai & 1048575));
                        }
                        break;
                    case 67:
                        if (zzb(t, i, length)) {
                            zzelVar.zzc(i, zzi(t, iZzai & 1048575));
                        }
                        break;
                    case 68:
                        if (zzb(t, i, length)) {
                            zzelVar.zzc(i, zzdy.zzp(t, iZzai & 1048575), zzaf(length));
                        }
                        break;
                }
            }
            while (entry2 != null) {
                this.zzlh.zzb(zzelVar, entry2);
                entry2 = itDescendingIterator.hasNext() ? (Map.Entry) itDescendingIterator.next() : null;
            }
            return;
        }
        if (this.zzkz) {
            if (this.zzkx) {
                zzav<T> zzavVarZzb2 = this.zzlh.zzb(t);
                if (zzavVarZzb2.zzfj.isEmpty()) {
                    it = null;
                    entry = null;
                } else {
                    it = zzavVarZzb2.iterator();
                    entry = (Map.Entry) it.next();
                }
            }
            int length2 = this.zzks.length;
            for (int i2 = 0; i2 < length2; i2 += 3) {
                int iZzai2 = zzai(i2);
                int i3 = this.zzks[i2];
                while (entry != null && this.zzlh.zzb(entry) <= i3) {
                    this.zzlh.zzb(zzelVar, entry);
                    entry = it.hasNext() ? (Map.Entry) it.next() : null;
                }
                switch ((iZzai2 & 267386880) >>> 20) {
                    case 0:
                        if (zzb(t, i2)) {
                            zzelVar.zzb(i3, zzdy.zzo(t, iZzai2 & 1048575));
                        }
                        break;
                    case 1:
                        if (zzb(t, i2)) {
                            zzelVar.zzb(i3, zzdy.zzn(t, iZzai2 & 1048575));
                        }
                        break;
                    case 2:
                        if (zzb(t, i2)) {
                            zzelVar.zzj(i3, zzdy.zzl(t, iZzai2 & 1048575));
                        }
                        break;
                    case 3:
                        if (zzb(t, i2)) {
                            zzelVar.zzb(i3, zzdy.zzl(t, iZzai2 & 1048575));
                        }
                        break;
                    case 4:
                        if (zzb(t, i2)) {
                            zzelVar.zzd(i3, zzdy.zzk(t, iZzai2 & 1048575));
                        }
                        break;
                    case 5:
                        if (zzb(t, i2)) {
                            zzelVar.zzd(i3, zzdy.zzl(t, iZzai2 & 1048575));
                        }
                        break;
                    case 6:
                        if (zzb(t, i2)) {
                            zzelVar.zzg(i3, zzdy.zzk(t, iZzai2 & 1048575));
                        }
                        break;
                    case 7:
                        if (zzb(t, i2)) {
                            zzelVar.zzc(i3, zzdy.zzm(t, iZzai2 & 1048575));
                        }
                        break;
                    case 8:
                        if (zzb(t, i2)) {
                            zzb(i3, zzdy.zzp(t, iZzai2 & 1048575), zzelVar);
                        }
                        break;
                    case 9:
                        if (zzb(t, i2)) {
                            zzelVar.zzb(i3, zzdy.zzp(t, iZzai2 & 1048575), zzaf(i2));
                        }
                        break;
                    case 10:
                        if (zzb(t, i2)) {
                            zzelVar.zzb(i3, (zzw) zzdy.zzp(t, iZzai2 & 1048575));
                        }
                        break;
                    case 11:
                        if (zzb(t, i2)) {
                            zzelVar.zze(i3, zzdy.zzk(t, iZzai2 & 1048575));
                        }
                        break;
                    case 12:
                        if (zzb(t, i2)) {
                            zzelVar.zzo(i3, zzdy.zzk(t, iZzai2 & 1048575));
                        }
                        break;
                    case 13:
                        if (zzb(t, i2)) {
                            zzelVar.zzn(i3, zzdy.zzk(t, iZzai2 & 1048575));
                        }
                        break;
                    case 14:
                        if (zzb(t, i2)) {
                            zzelVar.zzk(i3, zzdy.zzl(t, iZzai2 & 1048575));
                        }
                        break;
                    case 15:
                        if (zzb(t, i2)) {
                            zzelVar.zzf(i3, zzdy.zzk(t, iZzai2 & 1048575));
                        }
                        break;
                    case 16:
                        if (zzb(t, i2)) {
                            zzelVar.zzc(i3, zzdy.zzl(t, iZzai2 & 1048575));
                        }
                        break;
                    case 17:
                        if (zzb(t, i2)) {
                            zzelVar.zzc(i3, zzdy.zzp(t, iZzai2 & 1048575), zzaf(i2));
                        }
                        break;
                    case 18:
                        zzdc.zzb(this.zzks[i2], (List<Double>) zzdy.zzp(t, iZzai2 & 1048575), zzelVar, false);
                        break;
                    case 19:
                        zzdc.zzc(this.zzks[i2], (List<Float>) zzdy.zzp(t, iZzai2 & 1048575), zzelVar, false);
                        break;
                    case 20:
                        zzdc.zzd(this.zzks[i2], (List) zzdy.zzp(t, iZzai2 & 1048575), zzelVar, false);
                        break;
                    case 21:
                        zzdc.zze(this.zzks[i2], (List) zzdy.zzp(t, iZzai2 & 1048575), zzelVar, false);
                        break;
                    case 22:
                        zzdc.zzi(this.zzks[i2], (List) zzdy.zzp(t, iZzai2 & 1048575), zzelVar, false);
                        break;
                    case 23:
                        zzdc.zzg(this.zzks[i2], (List) zzdy.zzp(t, iZzai2 & 1048575), zzelVar, false);
                        break;
                    case 24:
                        zzdc.zzl(this.zzks[i2], (List) zzdy.zzp(t, iZzai2 & 1048575), zzelVar, false);
                        break;
                    case 25:
                        zzdc.zzo(this.zzks[i2], (List) zzdy.zzp(t, iZzai2 & 1048575), zzelVar, false);
                        break;
                    case 26:
                        zzdc.zzb(this.zzks[i2], (List<String>) zzdy.zzp(t, iZzai2 & 1048575), zzelVar);
                        break;
                    case 27:
                        zzdc.zzb(this.zzks[i2], (List<?>) zzdy.zzp(t, iZzai2 & 1048575), zzelVar, zzaf(i2));
                        break;
                    case 28:
                        zzdc.zzc(this.zzks[i2], (List) zzdy.zzp(t, iZzai2 & 1048575), zzelVar);
                        break;
                    case 29:
                        zzdc.zzj(this.zzks[i2], (List) zzdy.zzp(t, iZzai2 & 1048575), zzelVar, false);
                        break;
                    case 30:
                        zzdc.zzn(this.zzks[i2], (List) zzdy.zzp(t, iZzai2 & 1048575), zzelVar, false);
                        break;
                    case 31:
                        zzdc.zzm(this.zzks[i2], (List) zzdy.zzp(t, iZzai2 & 1048575), zzelVar, false);
                        break;
                    case 32:
                        zzdc.zzh(this.zzks[i2], (List) zzdy.zzp(t, iZzai2 & 1048575), zzelVar, false);
                        break;
                    case 33:
                        zzdc.zzk(this.zzks[i2], (List) zzdy.zzp(t, iZzai2 & 1048575), zzelVar, false);
                        break;
                    case 34:
                        zzdc.zzf(this.zzks[i2], (List) zzdy.zzp(t, iZzai2 & 1048575), zzelVar, false);
                        break;
                    case 35:
                        zzdc.zzb(this.zzks[i2], (List<Double>) zzdy.zzp(t, iZzai2 & 1048575), zzelVar, true);
                        break;
                    case 36:
                        zzdc.zzc(this.zzks[i2], (List<Float>) zzdy.zzp(t, iZzai2 & 1048575), zzelVar, true);
                        break;
                    case 37:
                        zzdc.zzd(this.zzks[i2], (List) zzdy.zzp(t, iZzai2 & 1048575), zzelVar, true);
                        break;
                    case 38:
                        zzdc.zze(this.zzks[i2], (List) zzdy.zzp(t, iZzai2 & 1048575), zzelVar, true);
                        break;
                    case 39:
                        zzdc.zzi(this.zzks[i2], (List) zzdy.zzp(t, iZzai2 & 1048575), zzelVar, true);
                        break;
                    case 40:
                        zzdc.zzg(this.zzks[i2], (List) zzdy.zzp(t, iZzai2 & 1048575), zzelVar, true);
                        break;
                    case 41:
                        zzdc.zzl(this.zzks[i2], (List) zzdy.zzp(t, iZzai2 & 1048575), zzelVar, true);
                        break;
                    case 42:
                        zzdc.zzo(this.zzks[i2], (List) zzdy.zzp(t, iZzai2 & 1048575), zzelVar, true);
                        break;
                    case 43:
                        zzdc.zzj(this.zzks[i2], (List) zzdy.zzp(t, iZzai2 & 1048575), zzelVar, true);
                        break;
                    case 44:
                        zzdc.zzn(this.zzks[i2], (List) zzdy.zzp(t, iZzai2 & 1048575), zzelVar, true);
                        break;
                    case 45:
                        zzdc.zzm(this.zzks[i2], (List) zzdy.zzp(t, iZzai2 & 1048575), zzelVar, true);
                        break;
                    case 46:
                        zzdc.zzh(this.zzks[i2], (List) zzdy.zzp(t, iZzai2 & 1048575), zzelVar, true);
                        break;
                    case 47:
                        zzdc.zzk(this.zzks[i2], (List) zzdy.zzp(t, iZzai2 & 1048575), zzelVar, true);
                        break;
                    case 48:
                        zzdc.zzf(this.zzks[i2], (List) zzdy.zzp(t, iZzai2 & 1048575), zzelVar, true);
                        break;
                    case 49:
                        zzdc.zzc(this.zzks[i2], (List<?>) zzdy.zzp(t, iZzai2 & 1048575), zzelVar, zzaf(i2));
                        break;
                    case 50:
                        zzb(zzelVar, i3, zzdy.zzp(t, iZzai2 & 1048575), i2);
                        break;
                    case 51:
                        if (zzb(t, i3, i2)) {
                            zzelVar.zzb(i3, zzf(t, iZzai2 & 1048575));
                        }
                        break;
                    case 52:
                        if (zzb(t, i3, i2)) {
                            zzelVar.zzb(i3, zzg(t, iZzai2 & 1048575));
                        }
                        break;
                    case 53:
                        if (zzb(t, i3, i2)) {
                            zzelVar.zzj(i3, zzi(t, iZzai2 & 1048575));
                        }
                        break;
                    case 54:
                        if (zzb(t, i3, i2)) {
                            zzelVar.zzb(i3, zzi(t, iZzai2 & 1048575));
                        }
                        break;
                    case 55:
                        if (zzb(t, i3, i2)) {
                            zzelVar.zzd(i3, zzh(t, iZzai2 & 1048575));
                        }
                        break;
                    case 56:
                        if (zzb(t, i3, i2)) {
                            zzelVar.zzd(i3, zzi(t, iZzai2 & 1048575));
                        }
                        break;
                    case 57:
                        if (zzb(t, i3, i2)) {
                            zzelVar.zzg(i3, zzh(t, iZzai2 & 1048575));
                        }
                        break;
                    case 58:
                        if (zzb(t, i3, i2)) {
                            zzelVar.zzc(i3, zzj(t, iZzai2 & 1048575));
                        }
                        break;
                    case 59:
                        if (zzb(t, i3, i2)) {
                            zzb(i3, zzdy.zzp(t, iZzai2 & 1048575), zzelVar);
                        }
                        break;
                    case 60:
                        if (zzb(t, i3, i2)) {
                            zzelVar.zzb(i3, zzdy.zzp(t, iZzai2 & 1048575), zzaf(i2));
                        }
                        break;
                    case 61:
                        if (zzb(t, i3, i2)) {
                            zzelVar.zzb(i3, (zzw) zzdy.zzp(t, iZzai2 & 1048575));
                        }
                        break;
                    case 62:
                        if (zzb(t, i3, i2)) {
                            zzelVar.zze(i3, zzh(t, iZzai2 & 1048575));
                        }
                        break;
                    case 63:
                        if (zzb(t, i3, i2)) {
                            zzelVar.zzo(i3, zzh(t, iZzai2 & 1048575));
                        }
                        break;
                    case 64:
                        if (zzb(t, i3, i2)) {
                            zzelVar.zzn(i3, zzh(t, iZzai2 & 1048575));
                        }
                        break;
                    case 65:
                        if (zzb(t, i3, i2)) {
                            zzelVar.zzk(i3, zzi(t, iZzai2 & 1048575));
                        }
                        break;
                    case 66:
                        if (zzb(t, i3, i2)) {
                            zzelVar.zzf(i3, zzh(t, iZzai2 & 1048575));
                        }
                        break;
                    case 67:
                        if (zzb(t, i3, i2)) {
                            zzelVar.zzc(i3, zzi(t, iZzai2 & 1048575));
                        }
                        break;
                    case 68:
                        if (zzb(t, i3, i2)) {
                            zzelVar.zzc(i3, zzdy.zzp(t, iZzai2 & 1048575), zzaf(i2));
                        }
                        break;
                }
            }
            while (entry != null) {
                this.zzlh.zzb(zzelVar, entry);
                entry = it.hasNext() ? (Map.Entry) it.next() : null;
            }
            zzb(this.zzlg, t, zzelVar);
            return;
        }
        zzc(t, zzelVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void zzc(T t, zzel zzelVar) throws IOException {
        Iterator it;
        Map.Entry<?, ?> entry;
        int i;
        int i2;
        if (this.zzkx) {
            zzav<T> zzavVarZzb = this.zzlh.zzb(t);
            if (zzavVarZzb.zzfj.isEmpty()) {
                it = null;
                entry = null;
            } else {
                it = zzavVarZzb.iterator();
                entry = (Map.Entry) it.next();
            }
        }
        int i3 = -1;
        int length = this.zzks.length;
        Unsafe unsafe = zzkr;
        int i4 = 0;
        int i5 = 0;
        while (i4 < length) {
            int iZzai = zzai(i4);
            int[] iArr = this.zzks;
            int i6 = iArr[i4];
            int i7 = (267386880 & iZzai) >>> 20;
            if (this.zzkz || i7 > 17) {
                i = i4;
                i2 = 0;
            } else {
                int i8 = iArr[i4 + 2];
                int i9 = i8 & 1048575;
                i = i4;
                if (i9 != i3) {
                    i5 = unsafe.getInt(t, i9);
                    i3 = i9;
                }
                i2 = 1 << (i8 >>> 20);
            }
            while (entry != null && this.zzlh.zzb(entry) <= i6) {
                this.zzlh.zzb(zzelVar, entry);
                entry = it.hasNext() ? (Map.Entry) it.next() : null;
            }
            long j = iZzai & 1048575;
            int i10 = i;
            switch (i7) {
                case 0:
                    if ((i2 & i5) != 0) {
                        zzelVar.zzb(i6, zzdy.zzo(t, j));
                        continue;
                    }
                    i4 = i10 + 3;
                    break;
                case 1:
                    if ((i2 & i5) != 0) {
                        zzelVar.zzb(i6, zzdy.zzn(t, j));
                    } else {
                        continue;
                    }
                    i4 = i10 + 3;
                    break;
                case 2:
                    if ((i2 & i5) != 0) {
                        zzelVar.zzj(i6, unsafe.getLong(t, j));
                    } else {
                        continue;
                    }
                    i4 = i10 + 3;
                    break;
                case 3:
                    if ((i2 & i5) != 0) {
                        zzelVar.zzb(i6, unsafe.getLong(t, j));
                    } else {
                        continue;
                    }
                    i4 = i10 + 3;
                    break;
                case 4:
                    if ((i2 & i5) != 0) {
                        zzelVar.zzd(i6, unsafe.getInt(t, j));
                    } else {
                        continue;
                    }
                    i4 = i10 + 3;
                    break;
                case 5:
                    if ((i2 & i5) != 0) {
                        zzelVar.zzd(i6, unsafe.getLong(t, j));
                    } else {
                        continue;
                    }
                    i4 = i10 + 3;
                    break;
                case 6:
                    if ((i2 & i5) != 0) {
                        zzelVar.zzg(i6, unsafe.getInt(t, j));
                    } else {
                        continue;
                    }
                    i4 = i10 + 3;
                    break;
                case 7:
                    if ((i2 & i5) != 0) {
                        zzelVar.zzc(i6, zzdy.zzm(t, j));
                    } else {
                        continue;
                    }
                    i4 = i10 + 3;
                    break;
                case 8:
                    if ((i2 & i5) != 0) {
                        zzb(i6, unsafe.getObject(t, j), zzelVar);
                    } else {
                        continue;
                    }
                    i4 = i10 + 3;
                    break;
                case 9:
                    if ((i2 & i5) != 0) {
                        zzelVar.zzb(i6, unsafe.getObject(t, j), zzaf(i10));
                    } else {
                        continue;
                    }
                    i4 = i10 + 3;
                    break;
                case 10:
                    if ((i2 & i5) != 0) {
                        zzelVar.zzb(i6, (zzw) unsafe.getObject(t, j));
                    } else {
                        continue;
                    }
                    i4 = i10 + 3;
                    break;
                case 11:
                    if ((i2 & i5) != 0) {
                        zzelVar.zze(i6, unsafe.getInt(t, j));
                    } else {
                        continue;
                    }
                    i4 = i10 + 3;
                    break;
                case 12:
                    if ((i2 & i5) != 0) {
                        zzelVar.zzo(i6, unsafe.getInt(t, j));
                    } else {
                        continue;
                    }
                    i4 = i10 + 3;
                    break;
                case 13:
                    if ((i2 & i5) != 0) {
                        zzelVar.zzn(i6, unsafe.getInt(t, j));
                    } else {
                        continue;
                    }
                    i4 = i10 + 3;
                    break;
                case 14:
                    if ((i2 & i5) != 0) {
                        zzelVar.zzk(i6, unsafe.getLong(t, j));
                    } else {
                        continue;
                    }
                    i4 = i10 + 3;
                    break;
                case 15:
                    if ((i2 & i5) != 0) {
                        zzelVar.zzf(i6, unsafe.getInt(t, j));
                    } else {
                        continue;
                    }
                    i4 = i10 + 3;
                    break;
                case 16:
                    if ((i2 & i5) != 0) {
                        zzelVar.zzc(i6, unsafe.getLong(t, j));
                    } else {
                        continue;
                    }
                    i4 = i10 + 3;
                    break;
                case 17:
                    if ((i2 & i5) != 0) {
                        zzelVar.zzc(i6, unsafe.getObject(t, j), zzaf(i10));
                    } else {
                        continue;
                    }
                    i4 = i10 + 3;
                    break;
                case 18:
                    zzdc.zzb(this.zzks[i10], (List<Double>) unsafe.getObject(t, j), zzelVar, false);
                    continue;
                    i4 = i10 + 3;
                    break;
                case 19:
                    zzdc.zzc(this.zzks[i10], (List<Float>) unsafe.getObject(t, j), zzelVar, false);
                    continue;
                    i4 = i10 + 3;
                    break;
                case 20:
                    zzdc.zzd(this.zzks[i10], (List) unsafe.getObject(t, j), zzelVar, false);
                    continue;
                    i4 = i10 + 3;
                    break;
                case 21:
                    zzdc.zze(this.zzks[i10], (List) unsafe.getObject(t, j), zzelVar, false);
                    continue;
                    i4 = i10 + 3;
                    break;
                case 22:
                    zzdc.zzi(this.zzks[i10], (List) unsafe.getObject(t, j), zzelVar, false);
                    continue;
                    i4 = i10 + 3;
                    break;
                case 23:
                    zzdc.zzg(this.zzks[i10], (List) unsafe.getObject(t, j), zzelVar, false);
                    continue;
                    i4 = i10 + 3;
                    break;
                case 24:
                    zzdc.zzl(this.zzks[i10], (List) unsafe.getObject(t, j), zzelVar, false);
                    continue;
                    i4 = i10 + 3;
                    break;
                case 25:
                    zzdc.zzo(this.zzks[i10], (List) unsafe.getObject(t, j), zzelVar, false);
                    continue;
                    i4 = i10 + 3;
                    break;
                case 26:
                    zzdc.zzb(this.zzks[i10], (List<String>) unsafe.getObject(t, j), zzelVar);
                    break;
                case 27:
                    zzdc.zzb(this.zzks[i10], (List<?>) unsafe.getObject(t, j), zzelVar, zzaf(i10));
                    break;
                case 28:
                    zzdc.zzc(this.zzks[i10], (List) unsafe.getObject(t, j), zzelVar);
                    break;
                case 29:
                    zzdc.zzj(this.zzks[i10], (List) unsafe.getObject(t, j), zzelVar, false);
                    continue;
                    i4 = i10 + 3;
                    break;
                case 30:
                    zzdc.zzn(this.zzks[i10], (List) unsafe.getObject(t, j), zzelVar, false);
                    continue;
                    i4 = i10 + 3;
                    break;
                case 31:
                    zzdc.zzm(this.zzks[i10], (List) unsafe.getObject(t, j), zzelVar, false);
                    continue;
                    i4 = i10 + 3;
                    break;
                case 32:
                    zzdc.zzh(this.zzks[i10], (List) unsafe.getObject(t, j), zzelVar, false);
                    continue;
                    i4 = i10 + 3;
                    break;
                case 33:
                    zzdc.zzk(this.zzks[i10], (List) unsafe.getObject(t, j), zzelVar, false);
                    continue;
                    i4 = i10 + 3;
                    break;
                case 34:
                    zzdc.zzf(this.zzks[i10], (List) unsafe.getObject(t, j), zzelVar, false);
                    continue;
                    i4 = i10 + 3;
                    break;
                case 35:
                    zzdc.zzb(this.zzks[i10], (List<Double>) unsafe.getObject(t, j), zzelVar, true);
                    break;
                case 36:
                    zzdc.zzc(this.zzks[i10], (List<Float>) unsafe.getObject(t, j), zzelVar, true);
                    break;
                case 37:
                    zzdc.zzd(this.zzks[i10], (List) unsafe.getObject(t, j), zzelVar, true);
                    break;
                case 38:
                    zzdc.zze(this.zzks[i10], (List) unsafe.getObject(t, j), zzelVar, true);
                    break;
                case 39:
                    zzdc.zzi(this.zzks[i10], (List) unsafe.getObject(t, j), zzelVar, true);
                    break;
                case 40:
                    zzdc.zzg(this.zzks[i10], (List) unsafe.getObject(t, j), zzelVar, true);
                    break;
                case 41:
                    zzdc.zzl(this.zzks[i10], (List) unsafe.getObject(t, j), zzelVar, true);
                    break;
                case 42:
                    zzdc.zzo(this.zzks[i10], (List) unsafe.getObject(t, j), zzelVar, true);
                    break;
                case 43:
                    zzdc.zzj(this.zzks[i10], (List) unsafe.getObject(t, j), zzelVar, true);
                    break;
                case 44:
                    zzdc.zzn(this.zzks[i10], (List) unsafe.getObject(t, j), zzelVar, true);
                    break;
                case 45:
                    zzdc.zzm(this.zzks[i10], (List) unsafe.getObject(t, j), zzelVar, true);
                    break;
                case 46:
                    zzdc.zzh(this.zzks[i10], (List) unsafe.getObject(t, j), zzelVar, true);
                    break;
                case 47:
                    zzdc.zzk(this.zzks[i10], (List) unsafe.getObject(t, j), zzelVar, true);
                    break;
                case 48:
                    zzdc.zzf(this.zzks[i10], (List) unsafe.getObject(t, j), zzelVar, true);
                    break;
                case 49:
                    zzdc.zzc(this.zzks[i10], (List<?>) unsafe.getObject(t, j), zzelVar, zzaf(i10));
                    break;
                case 50:
                    zzb(zzelVar, i6, unsafe.getObject(t, j), i10);
                    break;
                case 51:
                    if (zzb(t, i6, i10)) {
                        zzelVar.zzb(i6, zzf(t, j));
                    }
                    break;
                case 52:
                    if (zzb(t, i6, i10)) {
                        zzelVar.zzb(i6, zzg(t, j));
                    }
                    break;
                case 53:
                    if (zzb(t, i6, i10)) {
                        zzelVar.zzj(i6, zzi(t, j));
                    }
                    break;
                case 54:
                    if (zzb(t, i6, i10)) {
                        zzelVar.zzb(i6, zzi(t, j));
                    }
                    break;
                case 55:
                    if (zzb(t, i6, i10)) {
                        zzelVar.zzd(i6, zzh(t, j));
                    }
                    break;
                case 56:
                    if (zzb(t, i6, i10)) {
                        zzelVar.zzd(i6, zzi(t, j));
                    }
                    break;
                case 57:
                    if (zzb(t, i6, i10)) {
                        zzelVar.zzg(i6, zzh(t, j));
                    }
                    break;
                case 58:
                    if (zzb(t, i6, i10)) {
                        zzelVar.zzc(i6, zzj(t, j));
                    }
                    break;
                case 59:
                    if (zzb(t, i6, i10)) {
                        zzb(i6, unsafe.getObject(t, j), zzelVar);
                    }
                    break;
                case 60:
                    if (zzb(t, i6, i10)) {
                        zzelVar.zzb(i6, unsafe.getObject(t, j), zzaf(i10));
                    }
                    break;
                case 61:
                    if (zzb(t, i6, i10)) {
                        zzelVar.zzb(i6, (zzw) unsafe.getObject(t, j));
                    }
                    break;
                case 62:
                    if (zzb(t, i6, i10)) {
                        zzelVar.zze(i6, zzh(t, j));
                    }
                    break;
                case 63:
                    if (zzb(t, i6, i10)) {
                        zzelVar.zzo(i6, zzh(t, j));
                    }
                    break;
                case 64:
                    if (zzb(t, i6, i10)) {
                        zzelVar.zzn(i6, zzh(t, j));
                    }
                    break;
                case 65:
                    if (zzb(t, i6, i10)) {
                        zzelVar.zzk(i6, zzi(t, j));
                    }
                    break;
                case 66:
                    if (zzb(t, i6, i10)) {
                        zzelVar.zzf(i6, zzh(t, j));
                    }
                    break;
                case 67:
                    if (zzb(t, i6, i10)) {
                        zzelVar.zzc(i6, zzi(t, j));
                    }
                    break;
                case 68:
                    if (zzb(t, i6, i10)) {
                        zzelVar.zzc(i6, unsafe.getObject(t, j), zzaf(i10));
                    }
                    break;
            }
            i4 = i10 + 3;
        }
        while (entry != null) {
            this.zzlh.zzb(zzelVar, entry);
            entry = it.hasNext() ? (Map.Entry) it.next() : null;
        }
        zzb(this.zzlg, t, zzelVar);
    }

    private final <K, V> void zzb(zzel zzelVar, int i, Object obj, int i2) throws IOException {
        if (obj != null) {
            zzelVar.zzb(i, this.zzli.zzl(zzag(i2)), this.zzli.zzh(obj));
        }
    }

    private static <UT, UB> void zzb(zzds<UT, UB> zzdsVar, T t, zzel zzelVar) throws IOException {
        zzdsVar.zzb(zzdsVar.zzr(t), zzelVar);
    }

    private static zzdr zzo(Object obj) {
        zzbc zzbcVar = (zzbc) obj;
        zzdr zzdrVar = zzbcVar.zzih;
        if (zzdrVar != zzdr.zzdh()) {
            return zzdrVar;
        }
        zzdr zzdrVarZzdi = zzdr.zzdi();
        zzbcVar.zzih = zzdrVarZzdi;
        return zzdrVarZzdi;
    }

    private static int zzb(byte[] bArr, int i, int i2, zzef zzefVar, Class<?> cls, zzr zzrVar) throws IOException {
        switch (zzcn.zzfi[zzefVar.ordinal()]) {
            case 1:
                int iZzc = zzs.zzc(bArr, i, zzrVar);
                zzrVar.zzeb = Boolean.valueOf(zzrVar.zzea != 0);
                return iZzc;
            case 2:
                return zzs.zzf(bArr, i, zzrVar);
            case 3:
                zzrVar.zzeb = Double.valueOf(zzs.zzd(bArr, i));
                return i + 8;
            case 4:
            case 5:
                zzrVar.zzeb = Integer.valueOf(zzs.zzb(bArr, i));
                return i + 4;
            case 6:
            case 7:
                zzrVar.zzeb = Long.valueOf(zzs.zzc(bArr, i));
                return i + 8;
            case 8:
                zzrVar.zzeb = Float.valueOf(zzs.zze(bArr, i));
                return i + 4;
            case 9:
            case 10:
            case 11:
                int iZzb = zzs.zzb(bArr, i, zzrVar);
                zzrVar.zzeb = Integer.valueOf(zzrVar.zzdz);
                return iZzb;
            case 12:
            case 13:
                int iZzc2 = zzs.zzc(bArr, i, zzrVar);
                zzrVar.zzeb = Long.valueOf(zzrVar.zzea);
                return iZzc2;
            case 14:
                return zzs.zzb(zzcv.zzcq().zzf(cls), bArr, i, i2, zzrVar);
            case 15:
                int iZzb2 = zzs.zzb(bArr, i, zzrVar);
                zzrVar.zzeb = Integer.valueOf(zzai.zzm(zzrVar.zzdz));
                return iZzb2;
            case 16:
                int iZzc3 = zzs.zzc(bArr, i, zzrVar);
                zzrVar.zzeb = Long.valueOf(zzai.zzb(zzrVar.zzea));
                return iZzc3;
            case 17:
                return zzs.zze(bArr, i, zzrVar);
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    private final int zzb(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, long j, int i7, long j2, zzr zzrVar) throws IOException {
        int iZzb;
        int iZzb2 = i;
        Unsafe unsafe = zzkr;
        zzbh zzbhVarZzh = (zzbh) unsafe.getObject(t, j2);
        if (!zzbhVarZzh.zzaa()) {
            int size = zzbhVarZzh.size();
            zzbhVarZzh = zzbhVarZzh.zzh(size == 0 ? 10 : size << 1);
            unsafe.putObject(t, j2, zzbhVarZzh);
        }
        switch (i7) {
            case 18:
            case 35:
                if (i5 == 2) {
                    zzao zzaoVar = (zzao) zzbhVarZzh;
                    int iZzb3 = zzs.zzb(bArr, iZzb2, zzrVar);
                    int i8 = zzrVar.zzdz + iZzb3;
                    while (iZzb3 < i8) {
                        zzaoVar.zzd(zzs.zzd(bArr, iZzb3));
                        iZzb3 += 8;
                    }
                    if (iZzb3 == i8) {
                        return iZzb3;
                    }
                    throw zzbk.zzbp();
                }
                if (i5 == 1) {
                    zzao zzaoVar2 = (zzao) zzbhVarZzh;
                    zzaoVar2.zzd(zzs.zzd(bArr, i));
                    while (true) {
                        int i9 = iZzb2 + 8;
                        if (i9 >= i2) {
                            return i9;
                        }
                        iZzb2 = zzs.zzb(bArr, i9, zzrVar);
                        if (i3 != zzrVar.zzdz) {
                            return i9;
                        }
                        zzaoVar2.zzd(zzs.zzd(bArr, iZzb2));
                    }
                }
                return iZzb2;
            case 19:
            case 36:
                if (i5 == 2) {
                    zzbb zzbbVar = (zzbb) zzbhVarZzh;
                    int iZzb4 = zzs.zzb(bArr, iZzb2, zzrVar);
                    int i10 = zzrVar.zzdz + iZzb4;
                    while (iZzb4 < i10) {
                        zzbbVar.zzf(zzs.zze(bArr, iZzb4));
                        iZzb4 += 4;
                    }
                    if (iZzb4 == i10) {
                        return iZzb4;
                    }
                    throw zzbk.zzbp();
                }
                if (i5 == 5) {
                    zzbb zzbbVar2 = (zzbb) zzbhVarZzh;
                    zzbbVar2.zzf(zzs.zze(bArr, i));
                    while (true) {
                        int i11 = iZzb2 + 4;
                        if (i11 >= i2) {
                            return i11;
                        }
                        iZzb2 = zzs.zzb(bArr, i11, zzrVar);
                        if (i3 != zzrVar.zzdz) {
                            return i11;
                        }
                        zzbbVar2.zzf(zzs.zze(bArr, iZzb2));
                    }
                }
                return iZzb2;
            case 20:
            case 21:
            case 37:
            case 38:
                if (i5 == 2) {
                    zzby zzbyVar = (zzby) zzbhVarZzh;
                    int iZzb5 = zzs.zzb(bArr, iZzb2, zzrVar);
                    int i12 = zzrVar.zzdz + iZzb5;
                    while (iZzb5 < i12) {
                        iZzb5 = zzs.zzc(bArr, iZzb5, zzrVar);
                        zzbyVar.zzm(zzrVar.zzea);
                    }
                    if (iZzb5 == i12) {
                        return iZzb5;
                    }
                    throw zzbk.zzbp();
                }
                if (i5 == 0) {
                    zzby zzbyVar2 = (zzby) zzbhVarZzh;
                    int iZzc = zzs.zzc(bArr, iZzb2, zzrVar);
                    zzbyVar2.zzm(zzrVar.zzea);
                    while (iZzc < i2) {
                        int iZzb6 = zzs.zzb(bArr, iZzc, zzrVar);
                        if (i3 != zzrVar.zzdz) {
                            return iZzc;
                        }
                        iZzc = zzs.zzc(bArr, iZzb6, zzrVar);
                        zzbyVar2.zzm(zzrVar.zzea);
                    }
                    return iZzc;
                }
                return iZzb2;
            case 22:
            case 29:
            case 39:
            case 43:
                if (i5 == 2) {
                    return zzs.zzb(bArr, iZzb2, (zzbh<?>) zzbhVarZzh, zzrVar);
                }
                if (i5 == 0) {
                    return zzs.zzb(i3, bArr, i, i2, (zzbh<?>) zzbhVarZzh, zzrVar);
                }
                return iZzb2;
            case 23:
            case 32:
            case 40:
            case 46:
                if (i5 == 2) {
                    zzby zzbyVar3 = (zzby) zzbhVarZzh;
                    int iZzb7 = zzs.zzb(bArr, iZzb2, zzrVar);
                    int i13 = zzrVar.zzdz + iZzb7;
                    while (iZzb7 < i13) {
                        zzbyVar3.zzm(zzs.zzc(bArr, iZzb7));
                        iZzb7 += 8;
                    }
                    if (iZzb7 == i13) {
                        return iZzb7;
                    }
                    throw zzbk.zzbp();
                }
                if (i5 == 1) {
                    zzby zzbyVar4 = (zzby) zzbhVarZzh;
                    zzbyVar4.zzm(zzs.zzc(bArr, i));
                    while (true) {
                        int i14 = iZzb2 + 8;
                        if (i14 >= i2) {
                            return i14;
                        }
                        iZzb2 = zzs.zzb(bArr, i14, zzrVar);
                        if (i3 != zzrVar.zzdz) {
                            return i14;
                        }
                        zzbyVar4.zzm(zzs.zzc(bArr, iZzb2));
                    }
                }
                return iZzb2;
            case 24:
            case 31:
            case 41:
            case 45:
                if (i5 == 2) {
                    zzbe zzbeVar = (zzbe) zzbhVarZzh;
                    int iZzb8 = zzs.zzb(bArr, iZzb2, zzrVar);
                    int i15 = zzrVar.zzdz + iZzb8;
                    while (iZzb8 < i15) {
                        zzbeVar.zzac(zzs.zzb(bArr, iZzb8));
                        iZzb8 += 4;
                    }
                    if (iZzb8 == i15) {
                        return iZzb8;
                    }
                    throw zzbk.zzbp();
                }
                if (i5 == 5) {
                    zzbe zzbeVar2 = (zzbe) zzbhVarZzh;
                    zzbeVar2.zzac(zzs.zzb(bArr, i));
                    while (true) {
                        int i16 = iZzb2 + 4;
                        if (i16 >= i2) {
                            return i16;
                        }
                        iZzb2 = zzs.zzb(bArr, i16, zzrVar);
                        if (i3 != zzrVar.zzdz) {
                            return i16;
                        }
                        zzbeVar2.zzac(zzs.zzb(bArr, iZzb2));
                    }
                }
                return iZzb2;
            case 25:
            case 42:
                if (i5 == 2) {
                    zzu zzuVar = (zzu) zzbhVarZzh;
                    iZzb = zzs.zzb(bArr, iZzb2, zzrVar);
                    int i17 = zzrVar.zzdz + iZzb;
                    while (iZzb < i17) {
                        iZzb = zzs.zzc(bArr, iZzb, zzrVar);
                        zzuVar.addBoolean(zzrVar.zzea != 0);
                    }
                    if (iZzb != i17) {
                        throw zzbk.zzbp();
                    }
                    return iZzb;
                }
                if (i5 == 0) {
                    zzu zzuVar2 = (zzu) zzbhVarZzh;
                    iZzb2 = zzs.zzc(bArr, iZzb2, zzrVar);
                    zzuVar2.addBoolean(zzrVar.zzea != 0);
                    while (iZzb2 < i2) {
                        int iZzb9 = zzs.zzb(bArr, iZzb2, zzrVar);
                        if (i3 == zzrVar.zzdz) {
                            iZzb2 = zzs.zzc(bArr, iZzb9, zzrVar);
                            zzuVar2.addBoolean(zzrVar.zzea != 0);
                        }
                    }
                }
                return iZzb2;
            case 26:
                if (i5 == 2) {
                    if ((j & 536870912) == 0) {
                        iZzb2 = zzs.zzb(bArr, iZzb2, zzrVar);
                        int i18 = zzrVar.zzdz;
                        if (i18 < 0) {
                            throw zzbk.zzbq();
                        }
                        if (i18 == 0) {
                            zzbhVarZzh.add("");
                        } else {
                            zzbhVarZzh.add(new String(bArr, iZzb2, i18, zzbd.UTF_8));
                            iZzb2 += i18;
                        }
                        while (iZzb2 < i2) {
                            int iZzb10 = zzs.zzb(bArr, iZzb2, zzrVar);
                            if (i3 == zzrVar.zzdz) {
                                iZzb2 = zzs.zzb(bArr, iZzb10, zzrVar);
                                int i19 = zzrVar.zzdz;
                                if (i19 < 0) {
                                    throw zzbk.zzbq();
                                }
                                if (i19 == 0) {
                                    zzbhVarZzh.add("");
                                } else {
                                    zzbhVarZzh.add(new String(bArr, iZzb2, i19, zzbd.UTF_8));
                                    iZzb2 += i19;
                                }
                            }
                        }
                    } else {
                        iZzb2 = zzs.zzb(bArr, iZzb2, zzrVar);
                        int i20 = zzrVar.zzdz;
                        if (i20 < 0) {
                            throw zzbk.zzbq();
                        }
                        if (i20 == 0) {
                            zzbhVarZzh.add("");
                        } else {
                            int i21 = iZzb2 + i20;
                            if (!zzea.zzf(bArr, iZzb2, i21)) {
                                throw zzbk.zzbu();
                            }
                            zzbhVarZzh.add(new String(bArr, iZzb2, i20, zzbd.UTF_8));
                            iZzb2 = i21;
                        }
                        while (iZzb2 < i2) {
                            int iZzb11 = zzs.zzb(bArr, iZzb2, zzrVar);
                            if (i3 == zzrVar.zzdz) {
                                iZzb2 = zzs.zzb(bArr, iZzb11, zzrVar);
                                int i22 = zzrVar.zzdz;
                                if (i22 < 0) {
                                    throw zzbk.zzbq();
                                }
                                if (i22 == 0) {
                                    zzbhVarZzh.add("");
                                } else {
                                    int i23 = iZzb2 + i22;
                                    if (!zzea.zzf(bArr, iZzb2, i23)) {
                                        throw zzbk.zzbu();
                                    }
                                    zzbhVarZzh.add(new String(bArr, iZzb2, i22, zzbd.UTF_8));
                                    iZzb2 = i23;
                                }
                            }
                        }
                    }
                }
                return iZzb2;
            case 27:
                if (i5 == 2) {
                    return zzs.zzb(zzaf(i6), i3, bArr, i, i2, zzbhVarZzh, zzrVar);
                }
                return iZzb2;
            case 28:
                if (i5 == 2) {
                    int iZzb12 = zzs.zzb(bArr, iZzb2, zzrVar);
                    int i24 = zzrVar.zzdz;
                    if (i24 < 0) {
                        throw zzbk.zzbq();
                    }
                    if (i24 > bArr.length - iZzb12) {
                        throw zzbk.zzbp();
                    }
                    if (i24 == 0) {
                        zzbhVarZzh.add(zzw.zzeg);
                    } else {
                        zzbhVarZzh.add(zzw.zzc(bArr, iZzb12, i24));
                        iZzb12 += i24;
                    }
                    while (iZzb12 < i2) {
                        int iZzb13 = zzs.zzb(bArr, iZzb12, zzrVar);
                        if (i3 != zzrVar.zzdz) {
                            return iZzb12;
                        }
                        iZzb12 = zzs.zzb(bArr, iZzb13, zzrVar);
                        int i25 = zzrVar.zzdz;
                        if (i25 < 0) {
                            throw zzbk.zzbq();
                        }
                        if (i25 > bArr.length - iZzb12) {
                            throw zzbk.zzbp();
                        }
                        if (i25 == 0) {
                            zzbhVarZzh.add(zzw.zzeg);
                        } else {
                            zzbhVarZzh.add(zzw.zzc(bArr, iZzb12, i25));
                            iZzb12 += i25;
                        }
                    }
                    return iZzb12;
                }
                return iZzb2;
            case 30:
            case 44:
                if (i5 != 2) {
                    if (i5 == 0) {
                        iZzb = zzs.zzb(i3, bArr, i, i2, (zzbh<?>) zzbhVarZzh, zzrVar);
                    }
                    return iZzb2;
                }
                iZzb = zzs.zzb(bArr, iZzb2, (zzbh<?>) zzbhVarZzh, zzrVar);
                zzbc zzbcVar = (zzbc) t;
                zzdr zzdrVar = zzbcVar.zzih;
                if (zzdrVar == zzdr.zzdh()) {
                    zzdrVar = null;
                }
                zzdr zzdrVar2 = (zzdr) zzdc.zzb(i4, zzbhVarZzh, zzah(i6), zzdrVar, this.zzlg);
                if (zzdrVar2 != null) {
                    zzbcVar.zzih = zzdrVar2;
                }
                return iZzb;
            case 33:
            case 47:
                if (i5 == 2) {
                    zzbe zzbeVar3 = (zzbe) zzbhVarZzh;
                    int iZzb14 = zzs.zzb(bArr, iZzb2, zzrVar);
                    int i26 = zzrVar.zzdz + iZzb14;
                    while (iZzb14 < i26) {
                        iZzb14 = zzs.zzb(bArr, iZzb14, zzrVar);
                        zzbeVar3.zzac(zzai.zzm(zzrVar.zzdz));
                    }
                    if (iZzb14 == i26) {
                        return iZzb14;
                    }
                    throw zzbk.zzbp();
                }
                if (i5 == 0) {
                    zzbe zzbeVar4 = (zzbe) zzbhVarZzh;
                    int iZzb15 = zzs.zzb(bArr, iZzb2, zzrVar);
                    zzbeVar4.zzac(zzai.zzm(zzrVar.zzdz));
                    while (iZzb15 < i2) {
                        int iZzb16 = zzs.zzb(bArr, iZzb15, zzrVar);
                        if (i3 != zzrVar.zzdz) {
                            return iZzb15;
                        }
                        iZzb15 = zzs.zzb(bArr, iZzb16, zzrVar);
                        zzbeVar4.zzac(zzai.zzm(zzrVar.zzdz));
                    }
                    return iZzb15;
                }
                return iZzb2;
            case 34:
            case 48:
                if (i5 == 2) {
                    zzby zzbyVar5 = (zzby) zzbhVarZzh;
                    int iZzb17 = zzs.zzb(bArr, iZzb2, zzrVar);
                    int i27 = zzrVar.zzdz + iZzb17;
                    while (iZzb17 < i27) {
                        iZzb17 = zzs.zzc(bArr, iZzb17, zzrVar);
                        zzbyVar5.zzm(zzai.zzb(zzrVar.zzea));
                    }
                    if (iZzb17 == i27) {
                        return iZzb17;
                    }
                    throw zzbk.zzbp();
                }
                if (i5 == 0) {
                    zzby zzbyVar6 = (zzby) zzbhVarZzh;
                    int iZzc2 = zzs.zzc(bArr, iZzb2, zzrVar);
                    zzbyVar6.zzm(zzai.zzb(zzrVar.zzea));
                    while (iZzc2 < i2) {
                        int iZzb18 = zzs.zzb(bArr, iZzc2, zzrVar);
                        if (i3 != zzrVar.zzdz) {
                            return iZzc2;
                        }
                        iZzc2 = zzs.zzc(bArr, iZzb18, zzrVar);
                        zzbyVar6.zzm(zzai.zzb(zzrVar.zzea));
                    }
                    return iZzc2;
                }
                return iZzb2;
            case 49:
                if (i5 == 3) {
                    zzda zzdaVarZzaf = zzaf(i6);
                    int i28 = (i3 & (-8)) | 4;
                    iZzb2 = zzs.zzb(zzdaVarZzaf, bArr, i, i2, i28, zzrVar);
                    zzbhVarZzh.add(zzrVar.zzeb);
                    while (iZzb2 < i2) {
                        int iZzb19 = zzs.zzb(bArr, iZzb2, zzrVar);
                        if (i3 == zzrVar.zzdz) {
                            iZzb2 = zzs.zzb(zzdaVarZzaf, bArr, iZzb19, i2, i28, zzrVar);
                            zzbhVarZzh.add(zzrVar.zzeb);
                        }
                    }
                }
                return iZzb2;
            default:
                return iZzb2;
        }
    }

    private final <K, V> int zzb(T t, byte[] bArr, int i, int i2, int i3, long j, zzr zzrVar) throws IOException {
        Unsafe unsafe = zzkr;
        Object objZzag = zzag(i3);
        Object object = unsafe.getObject(t, j);
        if (this.zzli.zzi(object)) {
            Object objZzk = this.zzli.zzk(objZzag);
            this.zzli.zzc(objZzk, object);
            unsafe.putObject(t, j, objZzk);
            object = objZzk;
        }
        zzcb<?, ?> zzcbVarZzl = this.zzli.zzl(objZzag);
        Map<?, ?> mapZzg = this.zzli.zzg(object);
        int iZzb = zzs.zzb(bArr, i, zzrVar);
        int i4 = zzrVar.zzdz;
        if (i4 < 0 || i4 > i2 - iZzb) {
            throw zzbk.zzbp();
        }
        int i5 = i4 + iZzb;
        K k = zzcbVarZzl.zzkk;
        V v = zzcbVarZzl.zzkm;
        while (iZzb < i5) {
            int iZzb2 = iZzb + 1;
            int i6 = bArr[iZzb];
            if (i6 < 0) {
                iZzb2 = zzs.zzb(i6, bArr, iZzb2, zzrVar);
                i6 = zzrVar.zzdz;
            }
            int i7 = iZzb2;
            int i8 = i6 >>> 3;
            int i9 = i6 & 7;
            if (i8 == 1) {
                if (i9 == zzcbVarZzl.zzkj.zzds()) {
                    iZzb = zzb(bArr, i7, i2, zzcbVarZzl.zzkj, (Class<?>) null, zzrVar);
                    k = (K) zzrVar.zzeb;
                } else {
                    iZzb = zzs.zzb(i6, bArr, i7, i2, zzrVar);
                }
            } else if (i8 == 2 && i9 == zzcbVarZzl.zzkl.zzds()) {
                iZzb = zzb(bArr, i7, i2, zzcbVarZzl.zzkl, zzcbVarZzl.zzkm.getClass(), zzrVar);
                v = zzrVar.zzeb;
            } else {
                iZzb = zzs.zzb(i6, bArr, i7, i2, zzrVar);
            }
        }
        if (iZzb != i5) {
            throw zzbk.zzbt();
        }
        mapZzg.put(k, v);
        return i5;
    }

    private final int zzb(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, zzr zzrVar) throws IOException {
        int iZzc;
        Unsafe unsafe = zzkr;
        long j2 = this.zzks[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                if (i5 != 1) {
                    return i;
                }
                unsafe.putObject(t, j, Double.valueOf(zzs.zzd(bArr, i)));
                iZzc = i + 8;
                unsafe.putInt(t, j2, i4);
                return iZzc;
            case 52:
                if (i5 != 5) {
                    return i;
                }
                unsafe.putObject(t, j, Float.valueOf(zzs.zze(bArr, i)));
                iZzc = i + 4;
                unsafe.putInt(t, j2, i4);
                return iZzc;
            case 53:
            case 54:
                if (i5 != 0) {
                    return i;
                }
                iZzc = zzs.zzc(bArr, i, zzrVar);
                unsafe.putObject(t, j, Long.valueOf(zzrVar.zzea));
                unsafe.putInt(t, j2, i4);
                return iZzc;
            case 55:
            case 62:
                if (i5 != 0) {
                    return i;
                }
                iZzc = zzs.zzb(bArr, i, zzrVar);
                unsafe.putObject(t, j, Integer.valueOf(zzrVar.zzdz));
                unsafe.putInt(t, j2, i4);
                return iZzc;
            case 56:
            case 65:
                if (i5 != 1) {
                    return i;
                }
                unsafe.putObject(t, j, Long.valueOf(zzs.zzc(bArr, i)));
                iZzc = i + 8;
                unsafe.putInt(t, j2, i4);
                return iZzc;
            case 57:
            case 64:
                if (i5 != 5) {
                    return i;
                }
                unsafe.putObject(t, j, Integer.valueOf(zzs.zzb(bArr, i)));
                iZzc = i + 4;
                unsafe.putInt(t, j2, i4);
                return iZzc;
            case 58:
                if (i5 != 0) {
                    return i;
                }
                iZzc = zzs.zzc(bArr, i, zzrVar);
                unsafe.putObject(t, j, Boolean.valueOf(zzrVar.zzea != 0));
                unsafe.putInt(t, j2, i4);
                return iZzc;
            case 59:
                if (i5 != 2) {
                    return i;
                }
                int iZzb = zzs.zzb(bArr, i, zzrVar);
                int i9 = zzrVar.zzdz;
                if (i9 == 0) {
                    unsafe.putObject(t, j, "");
                } else {
                    if ((i6 & PKIFailureInfo.duplicateCertReq) != 0 && !zzea.zzf(bArr, iZzb, iZzb + i9)) {
                        throw zzbk.zzbu();
                    }
                    unsafe.putObject(t, j, new String(bArr, iZzb, i9, zzbd.UTF_8));
                    iZzb += i9;
                }
                unsafe.putInt(t, j2, i4);
                return iZzb;
            case 60:
                if (i5 != 2) {
                    return i;
                }
                int iZzb2 = zzs.zzb(zzaf(i8), bArr, i, i2, zzrVar);
                Object object = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                if (object == null) {
                    unsafe.putObject(t, j, zzrVar.zzeb);
                } else {
                    unsafe.putObject(t, j, zzbd.zzb(object, zzrVar.zzeb));
                }
                unsafe.putInt(t, j2, i4);
                return iZzb2;
            case 61:
                if (i5 != 2) {
                    return i;
                }
                iZzc = zzs.zzf(bArr, i, zzrVar);
                unsafe.putObject(t, j, zzrVar.zzeb);
                unsafe.putInt(t, j2, i4);
                return iZzc;
            case 63:
                if (i5 != 0) {
                    return i;
                }
                int iZzb3 = zzs.zzb(bArr, i, zzrVar);
                int i10 = zzrVar.zzdz;
                zzbf zzbfVarZzah = zzah(i8);
                if (zzbfVarZzah == null || zzbfVarZzah.zzad(i10)) {
                    unsafe.putObject(t, j, Integer.valueOf(i10));
                    iZzc = iZzb3;
                    unsafe.putInt(t, j2, i4);
                    return iZzc;
                }
                zzo(t).zzc(i3, Long.valueOf(i10));
                return iZzb3;
            case 66:
                if (i5 != 0) {
                    return i;
                }
                iZzc = zzs.zzb(bArr, i, zzrVar);
                unsafe.putObject(t, j, Integer.valueOf(zzai.zzm(zzrVar.zzdz)));
                unsafe.putInt(t, j2, i4);
                return iZzc;
            case 67:
                if (i5 != 0) {
                    return i;
                }
                iZzc = zzs.zzc(bArr, i, zzrVar);
                unsafe.putObject(t, j, Long.valueOf(zzai.zzb(zzrVar.zzea)));
                unsafe.putInt(t, j2, i4);
                return iZzc;
            case 68:
                if (i5 != 3) {
                    return i;
                }
                iZzc = zzs.zzb(zzaf(i8), bArr, i, i2, (i3 & (-8)) | 4, zzrVar);
                Object object2 = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                if (object2 == null) {
                    unsafe.putObject(t, j, zzrVar.zzeb);
                } else {
                    unsafe.putObject(t, j, zzbd.zzb(object2, zzrVar.zzeb));
                }
                unsafe.putInt(t, j2, i4);
                return iZzc;
            default:
                return i;
        }
    }

    private final zzda zzaf(int i) {
        int i2 = (i / 3) << 1;
        zzda zzdaVar = (zzda) this.zzkt[i2];
        if (zzdaVar != null) {
            return zzdaVar;
        }
        zzda<T> zzdaVarZzf = zzcv.zzcq().zzf((Class) this.zzkt[i2 + 1]);
        this.zzkt[i2] = zzdaVarZzf;
        return zzdaVarZzf;
    }

    private final Object zzag(int i) {
        return this.zzkt[(i / 3) << 1];
    }

    private final zzbf zzah(int i) {
        return (zzbf) this.zzkt[((i / 3) << 1) + 1];
    }

    /* JADX WARN: Code restructure failed: missing block: B:152:0x048b, code lost:
    
        if (r0 == r1) goto L154;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x048d, code lost:
    
        r27.putInt(r13, r0, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x0493, code lost:
    
        r5 = null;
        r11 = r10.zzlc;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x049a, code lost:
    
        if (r11 >= r10.zzld) goto L250;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x049c, code lost:
    
        r1 = r10.zzlb[r11];
        r6 = r10.zzlg;
        r2 = r10.zzks[r1];
        r0 = com.google.android.gms.internal.places.zzdy.zzp(r13, r10.zzai(r1) & 1048575);
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x04b1, code lost:
    
        if (r0 != null) goto L160;
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x04b4, code lost:
    
        r4 = r10.zzah(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x04b8, code lost:
    
        if (r4 != null) goto L163;
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x04bb, code lost:
    
        r5 = zzb(r1, r2, r10.zzli.zzg(r0), r4, r5, (com.google.android.gms.internal.places.zzds<UT, java.lang.Object>) r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x04c7, code lost:
    
        r5 = (com.google.android.gms.internal.places.zzdr) r5;
        r11 = r11 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x04cc, code lost:
    
        if (r5 == null) goto L167;
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x04ce, code lost:
    
        r10.zzlg.zzg(r13, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x04d3, code lost:
    
        if (r8 != 0) goto L173;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x04d7, code lost:
    
        if (r7 != r34) goto L171;
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x04de, code lost:
    
        throw com.google.android.gms.internal.places.zzbk.zzbt();
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x04e1, code lost:
    
        if (r7 > r34) goto L177;
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x04e3, code lost:
    
        if (r9 != r8) goto L177;
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x04e5, code lost:
    
        return r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x04ea, code lost:
    
        throw com.google.android.gms.internal.places.zzbk.zzbt();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type update failed for variable: r31v0 ??, new type: T
    jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 13001. Try increasing type updates limit count.
    	at jadx.core.dex.visitors.typeinference.TypeUpdateInfo.requestUpdate(TypeUpdateInfo.java:37)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:224)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    final int zzb(T t, byte[] bArr, int i, int i2, int i3, zzr zzrVar) throws IOException {
        Unsafe unsafe;
        int i4;
        Object obj;
        zzco<T> zzcoVar;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int iZzb;
        int iZzak;
        int i10;
        int i11;
        int i12;
        Object obj2;
        zzr zzrVar2;
        int i13;
        int i14;
        int i15;
        zzr zzrVar3;
        int i16;
        zzr zzrVar4;
        int i17;
        int i18;
        zzr zzrVar5;
        int i19;
        int i20;
        int i21;
        zzco<T> zzcoVar2 = this;
        Object obj3 = t;
        byte[] bArr2 = bArr;
        int i22 = i2;
        int i23 = i3;
        zzr zzrVar6 = zzrVar;
        Unsafe unsafe2 = zzkr;
        int iZzb2 = i;
        int i24 = -1;
        int i25 = 0;
        int i26 = 0;
        int i27 = 0;
        int i28 = -1;
        while (true) {
            if (iZzb2 < i22) {
                int i29 = iZzb2 + 1;
                byte b = bArr2[iZzb2];
                if (b < 0) {
                    iZzb = zzs.zzb(b, bArr2, i29, zzrVar6);
                    i9 = zzrVar6.zzdz;
                } else {
                    i9 = b;
                    iZzb = i29;
                }
                int i30 = i9 >>> 3;
                int i31 = i9 & 7;
                if (i30 > i24) {
                    iZzak = zzcoVar2.zzq(i30, i25 / 3);
                } else {
                    iZzak = zzcoVar2.zzak(i30);
                }
                int i32 = iZzak;
                if (i32 == -1) {
                    i10 = i30;
                    i11 = iZzb;
                    i6 = i9;
                    unsafe = unsafe2;
                    i4 = i23;
                    i12 = 0;
                } else {
                    int[] iArr = zzcoVar2.zzks;
                    int i33 = iArr[i32 + 1];
                    int i34 = (i33 & 267386880) >>> 20;
                    int i35 = i9;
                    long j = i33 & 1048575;
                    if (i34 <= 17) {
                        int i36 = iArr[i32 + 2];
                        int i37 = 1 << (i36 >>> 20);
                        int i38 = i36 & 1048575;
                        if (i38 != i28) {
                            if (i28 != -1) {
                                unsafe2.putInt(obj3, i28, i27);
                            }
                            i27 = unsafe2.getInt(obj3, i38);
                            i28 = i38;
                        }
                        switch (i34) {
                            case 0:
                                i13 = i32;
                                i14 = i30;
                                i16 = i28;
                                i15 = i35;
                                bArr2 = bArr;
                                zzrVar4 = zzrVar;
                                i17 = iZzb;
                                if (i31 != 1) {
                                    i11 = i17;
                                    i12 = i13;
                                    unsafe = unsafe2;
                                    i10 = i14;
                                    i28 = i16;
                                    i6 = i15;
                                    i4 = i3;
                                } else {
                                    zzdy.zzb(obj3, j, zzs.zzd(bArr2, i17));
                                    iZzb2 = i17 + 8;
                                    i27 |= i37;
                                    i28 = i16;
                                    i26 = i15;
                                    i25 = i13;
                                    i24 = i14;
                                    zzrVar6 = zzrVar4;
                                    i22 = i2;
                                    i23 = i3;
                                }
                                break;
                            case 1:
                                i13 = i32;
                                i14 = i30;
                                i16 = i28;
                                i15 = i35;
                                bArr2 = bArr;
                                zzrVar4 = zzrVar;
                                i17 = iZzb;
                                if (i31 != 5) {
                                    i11 = i17;
                                    i12 = i13;
                                    unsafe = unsafe2;
                                    i10 = i14;
                                    i28 = i16;
                                    i6 = i15;
                                    i4 = i3;
                                } else {
                                    zzdy.zzb(obj3, j, zzs.zze(bArr2, i17));
                                    iZzb2 = i17 + 4;
                                    i27 |= i37;
                                    i28 = i16;
                                    i26 = i15;
                                    i25 = i13;
                                    i24 = i14;
                                    zzrVar6 = zzrVar4;
                                    i22 = i2;
                                    i23 = i3;
                                }
                                break;
                            case 2:
                            case 3:
                                i13 = i32;
                                i14 = i30;
                                i16 = i28;
                                i15 = i35;
                                bArr2 = bArr;
                                i17 = iZzb;
                                if (i31 != 0) {
                                    i11 = i17;
                                    i12 = i13;
                                    unsafe = unsafe2;
                                    i10 = i14;
                                    i28 = i16;
                                    i6 = i15;
                                    i4 = i3;
                                } else {
                                    int iZzc = zzs.zzc(bArr2, i17, zzrVar);
                                    unsafe2.putLong(t, j, zzrVar.zzea);
                                    i27 |= i37;
                                    iZzb2 = iZzc;
                                    i26 = i15;
                                    i25 = i13;
                                    i24 = i14;
                                    zzrVar6 = zzrVar;
                                    i28 = i16;
                                    i22 = i2;
                                    i23 = i3;
                                }
                                break;
                            case 4:
                            case 11:
                                i13 = i32;
                                i14 = i30;
                                i16 = i28;
                                i15 = i35;
                                bArr2 = bArr;
                                zzrVar4 = zzrVar;
                                i17 = iZzb;
                                if (i31 != 0) {
                                    i11 = i17;
                                    i12 = i13;
                                    unsafe = unsafe2;
                                    i10 = i14;
                                    i28 = i16;
                                    i6 = i15;
                                    i4 = i3;
                                } else {
                                    iZzb2 = zzs.zzb(bArr2, i17, zzrVar4);
                                    unsafe2.putInt(obj3, j, zzrVar4.zzdz);
                                    i27 |= i37;
                                    i28 = i16;
                                    i26 = i15;
                                    i25 = i13;
                                    i24 = i14;
                                    zzrVar6 = zzrVar4;
                                    i22 = i2;
                                    i23 = i3;
                                }
                                break;
                            case 5:
                            case 14:
                                i13 = i32;
                                i14 = i30;
                                i15 = i35;
                                bArr2 = bArr;
                                zzrVar4 = zzrVar;
                                if (i31 != 1) {
                                    i16 = i28;
                                    i17 = iZzb;
                                    i11 = i17;
                                    i12 = i13;
                                    unsafe = unsafe2;
                                    i10 = i14;
                                    i28 = i16;
                                    i6 = i15;
                                    i4 = i3;
                                } else {
                                    i16 = i28;
                                    i17 = iZzb;
                                    unsafe2.putLong(t, j, zzs.zzc(bArr2, iZzb));
                                    iZzb2 = i17 + 8;
                                    i27 |= i37;
                                    i28 = i16;
                                    i26 = i15;
                                    i25 = i13;
                                    i24 = i14;
                                    zzrVar6 = zzrVar4;
                                    i22 = i2;
                                    i23 = i3;
                                }
                                break;
                            case 6:
                            case 13:
                                i18 = i2;
                                i13 = i32;
                                i14 = i30;
                                i15 = i35;
                                bArr2 = bArr;
                                zzrVar5 = zzrVar;
                                if (i31 != 5) {
                                    i16 = i28;
                                    i17 = iZzb;
                                    i11 = i17;
                                    i12 = i13;
                                    unsafe = unsafe2;
                                    i10 = i14;
                                    i28 = i16;
                                    i6 = i15;
                                    i4 = i3;
                                } else {
                                    unsafe2.putInt(obj3, j, zzs.zzb(bArr2, iZzb));
                                    iZzb2 = iZzb + 4;
                                    i27 |= i37;
                                    i26 = i15;
                                    i25 = i13;
                                    i24 = i14;
                                    zzrVar6 = zzrVar5;
                                    i23 = i3;
                                    i22 = i18;
                                }
                                break;
                            case 7:
                                i18 = i2;
                                i13 = i32;
                                i14 = i30;
                                i15 = i35;
                                bArr2 = bArr;
                                zzrVar5 = zzrVar;
                                if (i31 != 0) {
                                    i16 = i28;
                                    i17 = iZzb;
                                    i11 = i17;
                                    i12 = i13;
                                    unsafe = unsafe2;
                                    i10 = i14;
                                    i28 = i16;
                                    i6 = i15;
                                    i4 = i3;
                                } else {
                                    int iZzc2 = zzs.zzc(bArr2, iZzb, zzrVar5);
                                    zzdy.zzb(obj3, j, zzrVar5.zzea != 0);
                                    i27 |= i37;
                                    iZzb2 = iZzc2;
                                    i26 = i15;
                                    i25 = i13;
                                    i24 = i14;
                                    zzrVar6 = zzrVar5;
                                    i23 = i3;
                                    i22 = i18;
                                }
                                break;
                            case 8:
                                i18 = i2;
                                i13 = i32;
                                i14 = i30;
                                i15 = i35;
                                bArr2 = bArr;
                                zzrVar5 = zzrVar;
                                if (i31 != 2) {
                                    i16 = i28;
                                    i17 = iZzb;
                                    i11 = i17;
                                    i12 = i13;
                                    unsafe = unsafe2;
                                    i10 = i14;
                                    i28 = i16;
                                    i6 = i15;
                                    i4 = i3;
                                } else {
                                    if ((i33 & PKIFailureInfo.duplicateCertReq) == 0) {
                                        iZzb2 = zzs.zzd(bArr2, iZzb, zzrVar5);
                                    } else {
                                        iZzb2 = zzs.zze(bArr2, iZzb, zzrVar5);
                                    }
                                    unsafe2.putObject(obj3, j, zzrVar5.zzeb);
                                    i27 |= i37;
                                    i26 = i15;
                                    i25 = i13;
                                    i24 = i14;
                                    zzrVar6 = zzrVar5;
                                    i23 = i3;
                                    i22 = i18;
                                }
                                break;
                            case 9:
                                i13 = i32;
                                i14 = i30;
                                i15 = i35;
                                bArr2 = bArr;
                                zzrVar5 = zzrVar;
                                if (i31 != 2) {
                                    i16 = i28;
                                    i17 = iZzb;
                                    i11 = i17;
                                    i12 = i13;
                                    unsafe = unsafe2;
                                    i10 = i14;
                                    i28 = i16;
                                    i6 = i15;
                                    i4 = i3;
                                } else {
                                    i18 = i2;
                                    iZzb2 = zzs.zzb(zzcoVar2.zzaf(i13), bArr2, iZzb, i18, zzrVar5);
                                    if ((i27 & i37) == 0) {
                                        unsafe2.putObject(obj3, j, zzrVar5.zzeb);
                                    } else {
                                        unsafe2.putObject(obj3, j, zzbd.zzb(unsafe2.getObject(obj3, j), zzrVar5.zzeb));
                                    }
                                    i27 |= i37;
                                    i26 = i15;
                                    i25 = i13;
                                    i24 = i14;
                                    zzrVar6 = zzrVar5;
                                    i23 = i3;
                                    i22 = i18;
                                }
                                break;
                            case 10:
                                i13 = i32;
                                i14 = i30;
                                i15 = i35;
                                bArr2 = bArr;
                                zzrVar4 = zzrVar;
                                if (i31 != 2) {
                                    i16 = i28;
                                    i17 = iZzb;
                                    i11 = i17;
                                    i12 = i13;
                                    unsafe = unsafe2;
                                    i10 = i14;
                                    i28 = i16;
                                    i6 = i15;
                                    i4 = i3;
                                } else {
                                    iZzb2 = zzs.zzf(bArr2, iZzb, zzrVar4);
                                    unsafe2.putObject(obj3, j, zzrVar4.zzeb);
                                    i27 |= i37;
                                    i26 = i15;
                                    i25 = i13;
                                    i24 = i14;
                                    zzrVar6 = zzrVar4;
                                    i22 = i2;
                                    i23 = i3;
                                }
                                break;
                            case 12:
                                i13 = i32;
                                i14 = i30;
                                i15 = i35;
                                bArr2 = bArr;
                                zzrVar4 = zzrVar;
                                if (i31 != 0) {
                                    i16 = i28;
                                    i17 = iZzb;
                                    i11 = i17;
                                    i12 = i13;
                                    unsafe = unsafe2;
                                    i10 = i14;
                                    i28 = i16;
                                    i6 = i15;
                                    i4 = i3;
                                } else {
                                    iZzb2 = zzs.zzb(bArr2, iZzb, zzrVar4);
                                    int i39 = zzrVar4.zzdz;
                                    zzbf zzbfVarZzah = zzcoVar2.zzah(i13);
                                    if (zzbfVarZzah == null || zzbfVarZzah.zzad(i39)) {
                                        unsafe2.putInt(obj3, j, i39);
                                        i27 |= i37;
                                        i26 = i15;
                                        i25 = i13;
                                        i24 = i14;
                                        zzrVar6 = zzrVar4;
                                        i22 = i2;
                                        i23 = i3;
                                    } else {
                                        zzo(t).zzc(i15, Long.valueOf(i39));
                                        i26 = i15;
                                        i25 = i13;
                                        i24 = i14;
                                        zzrVar6 = zzrVar4;
                                        i22 = i2;
                                        i23 = i3;
                                    }
                                }
                                break;
                            case 15:
                                i13 = i32;
                                i14 = i30;
                                i15 = i35;
                                bArr2 = bArr;
                                zzrVar4 = zzrVar;
                                if (i31 != 0) {
                                    i16 = i28;
                                    i17 = iZzb;
                                    i11 = i17;
                                    i12 = i13;
                                    unsafe = unsafe2;
                                    i10 = i14;
                                    i28 = i16;
                                    i6 = i15;
                                    i4 = i3;
                                } else {
                                    iZzb2 = zzs.zzb(bArr2, iZzb, zzrVar4);
                                    unsafe2.putInt(obj3, j, zzai.zzm(zzrVar4.zzdz));
                                    i27 |= i37;
                                    i26 = i15;
                                    i25 = i13;
                                    i24 = i14;
                                    zzrVar6 = zzrVar4;
                                    i22 = i2;
                                    i23 = i3;
                                }
                                break;
                            case 16:
                                i13 = i32;
                                i14 = i30;
                                i15 = i35;
                                if (i31 != 0) {
                                    i16 = i28;
                                    i17 = iZzb;
                                    i11 = i17;
                                    i12 = i13;
                                    unsafe = unsafe2;
                                    i10 = i14;
                                    i28 = i16;
                                    i6 = i15;
                                    i4 = i3;
                                } else {
                                    bArr2 = bArr;
                                    int iZzc3 = zzs.zzc(bArr2, iZzb, zzrVar);
                                    zzrVar4 = zzrVar;
                                    unsafe2.putLong(t, j, zzai.zzb(zzrVar.zzea));
                                    i27 |= i37;
                                    iZzb2 = iZzc3;
                                    i26 = i15;
                                    i25 = i13;
                                    i24 = i14;
                                    zzrVar6 = zzrVar4;
                                    i22 = i2;
                                    i23 = i3;
                                }
                                break;
                            case 17:
                                if (i31 != 3) {
                                    i13 = i32;
                                    i14 = i30;
                                    i15 = i35;
                                    i16 = i28;
                                    i17 = iZzb;
                                    i11 = i17;
                                    i12 = i13;
                                    unsafe = unsafe2;
                                    i10 = i14;
                                    i28 = i16;
                                    i6 = i15;
                                    i4 = i3;
                                } else {
                                    iZzb2 = zzs.zzb(zzcoVar2.zzaf(i32), bArr, iZzb, i2, (i30 << 3) | 4, zzrVar);
                                    if ((i27 & i37) == 0) {
                                        zzrVar3 = zzrVar;
                                        unsafe2.putObject(obj3, j, zzrVar3.zzeb);
                                    } else {
                                        zzrVar3 = zzrVar;
                                        unsafe2.putObject(obj3, j, zzbd.zzb(unsafe2.getObject(obj3, j), zzrVar3.zzeb));
                                    }
                                    i27 |= i37;
                                    bArr2 = bArr;
                                    i22 = i2;
                                    i26 = i35;
                                    i25 = i32;
                                    i24 = i30;
                                    i23 = i3;
                                    zzrVar6 = zzrVar3;
                                }
                                break;
                            default:
                                i13 = i32;
                                i14 = i30;
                                i16 = i28;
                                i15 = i35;
                                i17 = iZzb;
                                i11 = i17;
                                i12 = i13;
                                unsafe = unsafe2;
                                i10 = i14;
                                i28 = i16;
                                i6 = i15;
                                i4 = i3;
                                break;
                        }
                    } else {
                        int i40 = i28;
                        int i41 = iZzb;
                        bArr2 = bArr;
                        zzr zzrVar7 = zzrVar6;
                        if (i34 != 27) {
                            i19 = i27;
                            if (i34 <= 49) {
                                i10 = i30;
                                i21 = i35;
                                i12 = i32;
                                unsafe = unsafe2;
                                iZzb2 = zzb(t, bArr, i41, i2, i35, i30, i31, i32, i33, i34, j, zzrVar);
                                if (iZzb2 == i41) {
                                    i4 = i3;
                                    i11 = iZzb2;
                                } else {
                                    zzcoVar2 = this;
                                    obj3 = t;
                                    bArr2 = bArr;
                                    i22 = i2;
                                    i23 = i3;
                                    zzrVar6 = zzrVar;
                                    i28 = i40;
                                    i25 = i12;
                                    i27 = i19;
                                    i24 = i10;
                                    i26 = i21;
                                    unsafe2 = unsafe;
                                }
                            } else {
                                i10 = i30;
                                i20 = i41;
                                i21 = i35;
                                i12 = i32;
                                unsafe = unsafe2;
                                if (i34 != 50) {
                                    iZzb2 = zzb(t, bArr, i20, i2, i21, i10, i31, i33, i34, j, i12, zzrVar);
                                    if (iZzb2 != i20) {
                                        zzcoVar2 = this;
                                        obj3 = t;
                                        i22 = i2;
                                        i23 = i3;
                                        i26 = i21;
                                        i24 = i10;
                                        i28 = i40;
                                        i25 = i12;
                                        i27 = i19;
                                        unsafe2 = unsafe;
                                        bArr2 = bArr;
                                        zzrVar6 = zzrVar;
                                    }
                                } else if (i31 == 2) {
                                    iZzb2 = zzb(t, bArr, i20, i2, i12, j, zzrVar);
                                    if (iZzb2 != i20) {
                                        zzcoVar2 = this;
                                        obj3 = t;
                                        bArr2 = bArr;
                                        i22 = i2;
                                        i23 = i3;
                                        zzrVar6 = zzrVar;
                                        i28 = i40;
                                        i25 = i12;
                                        i27 = i19;
                                        i24 = i10;
                                        i26 = i21;
                                        unsafe2 = unsafe;
                                    }
                                } else {
                                    i4 = i3;
                                    i11 = i20;
                                }
                                i4 = i3;
                                i11 = iZzb2;
                            }
                        } else if (i31 == 2) {
                            zzbh zzbhVarZzh = (zzbh) unsafe2.getObject(obj3, j);
                            if (!zzbhVarZzh.zzaa()) {
                                int size = zzbhVarZzh.size();
                                zzbhVarZzh = zzbhVarZzh.zzh(size == 0 ? 10 : size << 1);
                                unsafe2.putObject(obj3, j, zzbhVarZzh);
                            }
                            iZzb2 = zzs.zzb(zzcoVar2.zzaf(i32), i35, bArr, i41, i2, zzbhVarZzh, zzrVar);
                            i23 = i3;
                            i24 = i30;
                            i26 = i35;
                            i25 = i32;
                            zzrVar6 = zzrVar7;
                            i28 = i40;
                            i27 = i27;
                            i22 = i2;
                        } else {
                            i19 = i27;
                            i10 = i30;
                            i20 = i41;
                            i21 = i35;
                            i12 = i32;
                            unsafe = unsafe2;
                            i4 = i3;
                            i11 = i20;
                        }
                        i28 = i40;
                        i27 = i19;
                        i6 = i21;
                    }
                }
                if (i6 != i4 || i4 == 0) {
                    if (this.zzkx) {
                        zzrVar2 = zzrVar;
                        if (zzrVar2.zzec != zzap.zzao()) {
                            int i42 = i10;
                            if (zzrVar2.zzec.zzb(this.zzkw, i42) == null) {
                                iZzb2 = zzs.zzb(i6, bArr, i11, i2, zzo(t), zzrVar);
                                obj3 = t;
                                i22 = i2;
                                i26 = i6;
                                zzcoVar2 = this;
                                zzrVar6 = zzrVar2;
                                i24 = i42;
                                i25 = i12;
                                unsafe2 = unsafe;
                                bArr2 = bArr;
                                i23 = i4;
                            } else {
                                zzbc.zzc zzcVar = (zzbc.zzc) t;
                                zzcVar.zzbm();
                                zzav<Object> zzavVar = zzcVar.zzik;
                                throw new NoSuchMethodError();
                            }
                        } else {
                            obj2 = t;
                        }
                    } else {
                        obj2 = t;
                        zzrVar2 = zzrVar;
                    }
                    iZzb2 = zzs.zzb(i6, bArr, i11, i2, zzo(t), zzrVar);
                    i26 = i6;
                    zzcoVar2 = this;
                    zzrVar6 = zzrVar2;
                    i24 = i10;
                    obj3 = obj2;
                    i25 = i12;
                    unsafe2 = unsafe;
                    bArr2 = bArr;
                    i22 = i2;
                    i23 = i4;
                } else {
                    zzcoVar = this;
                    obj = t;
                    i7 = i28;
                    i8 = -1;
                    i5 = i11;
                }
            } else {
                int i43 = i28;
                unsafe = unsafe2;
                i4 = i23;
                obj = obj3;
                zzcoVar = zzcoVar2;
                i5 = iZzb2;
                i6 = i26;
                i7 = i43;
                i8 = -1;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x022e, code lost:
    
        if (r0 == r15) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0230, code lost:
    
        r2 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x01e2, code lost:
    
        if (r0 == r15) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x020f, code lost:
    
        if (r0 == r15) goto L104;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:20:0x0061. Please report as an issue. */
    @Override // com.google.android.gms.internal.places.zzda
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzb(T t, byte[] bArr, int i, int i2, zzr zzrVar) throws IOException {
        int i3;
        int iZzb;
        int iZzak;
        int i4;
        int i5;
        int i6;
        Unsafe unsafe;
        int i7;
        int i8;
        int iZzc;
        zzco<T> zzcoVar = this;
        T t2 = t;
        byte[] bArr2 = bArr;
        int i9 = i2;
        zzr zzrVar2 = zzrVar;
        if (zzcoVar.zzkz) {
            Unsafe unsafe2 = zzkr;
            int i10 = -1;
            int iZzb2 = i;
            int i11 = -1;
            int i12 = 0;
            while (iZzb2 < i9) {
                int i13 = iZzb2 + 1;
                byte b = bArr2[iZzb2];
                if (b < 0) {
                    iZzb = zzs.zzb(b, bArr2, i13, zzrVar2);
                    i3 = zzrVar2.zzdz;
                } else {
                    i3 = b;
                    iZzb = i13;
                }
                int i14 = i3 >>> 3;
                int i15 = i3 & 7;
                if (i14 > i11) {
                    iZzak = zzcoVar.zzq(i14, i12 / 3);
                } else {
                    iZzak = zzcoVar.zzak(i14);
                }
                int i16 = iZzak;
                if (i16 == i10) {
                    i5 = i14;
                    i7 = iZzb;
                    unsafe = unsafe2;
                    i4 = 0;
                } else {
                    int i17 = zzcoVar.zzks[i16 + 1];
                    int i18 = (267386880 & i17) >>> 20;
                    long j = 1048575 & i17;
                    if (i18 <= 17) {
                        switch (i18) {
                            case 0:
                                i8 = i16;
                                if (i15 == 1) {
                                    zzdy.zzb(t2, j, zzs.zzd(bArr2, iZzb));
                                    iZzb2 = iZzb + 8;
                                    i11 = i14;
                                    i12 = i8;
                                }
                                i5 = i14;
                                i6 = iZzb;
                                unsafe = unsafe2;
                                i4 = i8;
                                break;
                            case 1:
                                i8 = i16;
                                if (i15 == 5) {
                                    zzdy.zzb((Object) t2, j, zzs.zze(bArr2, iZzb));
                                    iZzb2 = iZzb + 4;
                                    i11 = i14;
                                    i12 = i8;
                                }
                                i5 = i14;
                                i6 = iZzb;
                                unsafe = unsafe2;
                                i4 = i8;
                                break;
                            case 2:
                            case 3:
                                i8 = i16;
                                if (i15 == 0) {
                                    iZzc = zzs.zzc(bArr2, iZzb, zzrVar2);
                                    unsafe2.putLong(t, j, zzrVar2.zzea);
                                    iZzb2 = iZzc;
                                    i11 = i14;
                                    i12 = i8;
                                }
                                i5 = i14;
                                i6 = iZzb;
                                unsafe = unsafe2;
                                i4 = i8;
                                break;
                            case 4:
                            case 11:
                                i8 = i16;
                                if (i15 == 0) {
                                    iZzb2 = zzs.zzb(bArr2, iZzb, zzrVar2);
                                    unsafe2.putInt(t2, j, zzrVar2.zzdz);
                                    i11 = i14;
                                    i12 = i8;
                                }
                                i5 = i14;
                                i6 = iZzb;
                                unsafe = unsafe2;
                                i4 = i8;
                                break;
                            case 5:
                            case 14:
                                if (i15 == 1) {
                                    i8 = i16;
                                    unsafe2.putLong(t, j, zzs.zzc(bArr2, iZzb));
                                    iZzb2 = iZzb + 8;
                                    i11 = i14;
                                    i12 = i8;
                                }
                                i4 = i16;
                                i5 = i14;
                                i6 = iZzb;
                                unsafe = unsafe2;
                                break;
                            case 6:
                            case 13:
                                if (i15 == 5) {
                                    unsafe2.putInt(t2, j, zzs.zzb(bArr2, iZzb));
                                    iZzb2 = iZzb + 4;
                                    i12 = i16;
                                    i11 = i14;
                                }
                                i4 = i16;
                                i5 = i14;
                                i6 = iZzb;
                                unsafe = unsafe2;
                                break;
                            case 7:
                                if (i15 == 0) {
                                    int iZzc2 = zzs.zzc(bArr2, iZzb, zzrVar2);
                                    zzdy.zzb(t2, j, zzrVar2.zzea != 0);
                                    iZzb2 = iZzc2;
                                    i12 = i16;
                                    i11 = i14;
                                }
                                i4 = i16;
                                i5 = i14;
                                i6 = iZzb;
                                unsafe = unsafe2;
                                break;
                            case 8:
                                if (i15 == 2) {
                                    if ((536870912 & i17) == 0) {
                                        iZzb2 = zzs.zzd(bArr2, iZzb, zzrVar2);
                                    } else {
                                        iZzb2 = zzs.zze(bArr2, iZzb, zzrVar2);
                                    }
                                    unsafe2.putObject(t2, j, zzrVar2.zzeb);
                                    i12 = i16;
                                    i11 = i14;
                                }
                                i4 = i16;
                                i5 = i14;
                                i6 = iZzb;
                                unsafe = unsafe2;
                                break;
                            case 9:
                                if (i15 == 2) {
                                    iZzb2 = zzs.zzb(zzcoVar.zzaf(i16), bArr2, iZzb, i9, zzrVar2);
                                    Object object = unsafe2.getObject(t2, j);
                                    if (object == null) {
                                        unsafe2.putObject(t2, j, zzrVar2.zzeb);
                                    } else {
                                        unsafe2.putObject(t2, j, zzbd.zzb(object, zzrVar2.zzeb));
                                    }
                                    i12 = i16;
                                    i11 = i14;
                                }
                                i4 = i16;
                                i5 = i14;
                                i6 = iZzb;
                                unsafe = unsafe2;
                                break;
                            case 10:
                                if (i15 == 2) {
                                    iZzb2 = zzs.zzf(bArr2, iZzb, zzrVar2);
                                    unsafe2.putObject(t2, j, zzrVar2.zzeb);
                                    i12 = i16;
                                    i11 = i14;
                                }
                                i4 = i16;
                                i5 = i14;
                                i6 = iZzb;
                                unsafe = unsafe2;
                                break;
                            case 12:
                                i8 = i16;
                                if (i15 == 0) {
                                    iZzb2 = zzs.zzb(bArr2, iZzb, zzrVar2);
                                    unsafe2.putInt(t2, j, zzrVar2.zzdz);
                                    i11 = i14;
                                    i12 = i8;
                                }
                                i5 = i14;
                                i6 = iZzb;
                                unsafe = unsafe2;
                                i4 = i8;
                                break;
                            case 15:
                                i8 = i16;
                                if (i15 == 0) {
                                    iZzb2 = zzs.zzb(bArr2, iZzb, zzrVar2);
                                    unsafe2.putInt(t2, j, zzai.zzm(zzrVar2.zzdz));
                                    i11 = i14;
                                    i12 = i8;
                                }
                                i5 = i14;
                                i6 = iZzb;
                                unsafe = unsafe2;
                                i4 = i8;
                                break;
                            case 16:
                                if (i15 == 0) {
                                    iZzc = zzs.zzc(bArr2, iZzb, zzrVar2);
                                    i8 = i16;
                                    unsafe2.putLong(t, j, zzai.zzb(zzrVar2.zzea));
                                    iZzb2 = iZzc;
                                    i11 = i14;
                                    i12 = i8;
                                }
                                i4 = i16;
                                i5 = i14;
                                i6 = iZzb;
                                unsafe = unsafe2;
                                break;
                            default:
                                i4 = i16;
                                i5 = i14;
                                i6 = iZzb;
                                unsafe = unsafe2;
                                break;
                        }
                        i10 = -1;
                    } else if (i18 == 27) {
                        if (i15 == 2) {
                            zzbh zzbhVarZzh = (zzbh) unsafe2.getObject(t2, j);
                            if (!zzbhVarZzh.zzaa()) {
                                int size = zzbhVarZzh.size();
                                zzbhVarZzh = zzbhVarZzh.zzh(size == 0 ? 10 : size << 1);
                                unsafe2.putObject(t2, j, zzbhVarZzh);
                            }
                            iZzb2 = zzs.zzb(zzcoVar.zzaf(i16), i3, bArr, iZzb, i2, zzbhVarZzh, zzrVar);
                            i11 = i14;
                            i12 = i16;
                            i10 = -1;
                        }
                        i4 = i16;
                        i5 = i14;
                        i6 = iZzb;
                        unsafe = unsafe2;
                    } else {
                        i4 = i16;
                        if (i18 <= 49) {
                            i5 = i14;
                            int i19 = iZzb;
                            unsafe = unsafe2;
                            iZzb2 = zzb(t, bArr, iZzb, i2, i3, i14, i15, i4, i17, i18, j, zzrVar);
                        } else {
                            i5 = i14;
                            i6 = iZzb;
                            unsafe = unsafe2;
                            if (i18 == 50) {
                                if (i15 == 2) {
                                    iZzb2 = zzb(t, bArr, i6, i2, i4, j, zzrVar);
                                }
                                i7 = i6;
                            } else {
                                iZzb2 = zzb(t, bArr, i6, i2, i3, i5, i15, i17, i18, j, i4, zzrVar);
                            }
                        }
                        zzcoVar = this;
                        t2 = t;
                        bArr2 = bArr;
                        i9 = i2;
                        zzrVar2 = zzrVar;
                        unsafe2 = unsafe;
                        i12 = i4;
                        i11 = i5;
                        i10 = -1;
                    }
                    i7 = i6;
                }
                iZzb2 = zzs.zzb(i3, bArr, i7, i2, zzo(t), zzrVar);
                zzcoVar = this;
                t2 = t;
                bArr2 = bArr;
                i9 = i2;
                zzrVar2 = zzrVar;
                unsafe2 = unsafe;
                i12 = i4;
                i11 = i5;
                i10 = -1;
            }
            if (iZzb2 != i9) {
                throw zzbk.zzbt();
            }
            return;
        }
        zzb(t, bArr, i, i2, 0, zzrVar);
    }

    @Override // com.google.android.gms.internal.places.zzda
    public final void zzd(T t) {
        int i;
        int i2 = this.zzlc;
        while (true) {
            i = this.zzld;
            if (i2 >= i) {
                break;
            }
            long jZzai = zzai(this.zzlb[i2]) & 1048575;
            Object objZzp = zzdy.zzp(t, jZzai);
            if (objZzp != null) {
                zzdy.zzb(t, jZzai, this.zzli.zzj(objZzp));
            }
            i2++;
        }
        int length = this.zzlb.length;
        while (i < length) {
            this.zzlf.zzb(t, this.zzlb[i]);
            i++;
        }
        this.zzlg.zzd(t);
        if (this.zzkx) {
            this.zzlh.zzd(t);
        }
    }

    private final <K, V, UT, UB> UB zzb(int i, int i2, Map<K, V> map, zzbf zzbfVar, UB ub, zzds<UT, UB> zzdsVar) {
        zzcb<?, ?> zzcbVarZzl = this.zzli.zzl(zzag(i));
        Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (!zzbfVar.zzad(((Integer) next.getValue()).intValue())) {
                if (ub == null) {
                    ub = zzdsVar.zzdk();
                }
                zzae zzaeVarZzk = zzw.zzk(zzcc.zzb(zzcbVarZzl, next.getKey(), next.getValue()));
                try {
                    zzcc.zzb(zzaeVarZzk.zzai(), zzcbVarZzl, next.getKey(), next.getValue());
                    zzdsVar.zzb(ub, i2, zzaeVarZzk.zzah());
                    it.remove();
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return ub;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00ca  */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v14, types: [com.google.android.gms.internal.places.zzda] */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v5, types: [com.google.android.gms.internal.places.zzda] */
    @Override // com.google.android.gms.internal.places.zzda
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean zzp(T t) {
        int i;
        int i2 = -1;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            boolean z = true;
            if (i3 >= this.zzlc) {
                return !this.zzkx || this.zzlh.zzb(t).isInitialized();
            }
            int i5 = this.zzlb[i3];
            int i6 = this.zzks[i5];
            int iZzai = zzai(i5);
            if (this.zzkz) {
                i = 0;
            } else {
                int i7 = this.zzks[i5 + 2];
                int i8 = i7 & 1048575;
                i = 1 << (i7 >>> 20);
                if (i8 != i2) {
                    i4 = zzkr.getInt(t, i8);
                    i2 = i8;
                }
            }
            if (((268435456 & iZzai) != 0) && !zzb(t, i5, i4, i)) {
                return false;
            }
            int i9 = (267386880 & iZzai) >>> 20;
            if (i9 == 9 || i9 == 17) {
                if (zzb(t, i5, i4, i) && !zzb(t, iZzai, zzaf(i5))) {
                    return false;
                }
            } else if (i9 == 27) {
                List list = (List) zzdy.zzp(t, iZzai & 1048575);
                if (!list.isEmpty()) {
                    ?? Zzaf = zzaf(i5);
                    int i10 = 0;
                    while (true) {
                        if (i10 >= list.size()) {
                            break;
                        }
                        if (!Zzaf.zzp(list.get(i10))) {
                            z = false;
                            break;
                        }
                        i10++;
                    }
                }
                if (!z) {
                    return false;
                }
            } else if (i9 == 60 || i9 == 68) {
                if (zzb(t, i6, i5) && !zzb(t, iZzai, zzaf(i5))) {
                    return false;
                }
            } else if (i9 != 49) {
                if (i9 != 50) {
                    continue;
                } else {
                    Map<?, ?> mapZzh = this.zzli.zzh(zzdy.zzp(t, iZzai & 1048575));
                    if (!mapZzh.isEmpty()) {
                        if (this.zzli.zzl(zzag(i5)).zzkl.zzdr() == zzem.MESSAGE) {
                            ?? Zzf = 0;
                            Iterator<?> it = mapZzh.values().iterator();
                            while (true) {
                                if (!it.hasNext()) {
                                    break;
                                }
                                Object next = it.next();
                                Zzf = Zzf;
                                if (Zzf == 0) {
                                    Zzf = zzcv.zzcq().zzf(next.getClass());
                                }
                                if (!Zzf.zzp(next)) {
                                    z = false;
                                    break;
                                }
                            }
                        }
                    }
                    if (!z) {
                        return false;
                    }
                }
            }
            i3++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean zzb(Object obj, int i, zzda zzdaVar) {
        return zzdaVar.zzp(zzdy.zzp(obj, i & 1048575));
    }

    private static void zzb(int i, Object obj, zzel zzelVar) throws IOException {
        if (obj instanceof String) {
            zzelVar.zzb(i, (String) obj);
        } else {
            zzelVar.zzb(i, (zzw) obj);
        }
    }

    private final int zzai(int i) {
        return this.zzks[i + 1];
    }

    private final int zzaj(int i) {
        return this.zzks[i + 2];
    }

    private static <T> double zzf(T t, long j) {
        return ((Double) zzdy.zzp(t, j)).doubleValue();
    }

    private static <T> float zzg(T t, long j) {
        return ((Float) zzdy.zzp(t, j)).floatValue();
    }

    private static <T> int zzh(T t, long j) {
        return ((Integer) zzdy.zzp(t, j)).intValue();
    }

    private static <T> long zzi(T t, long j) {
        return ((Long) zzdy.zzp(t, j)).longValue();
    }

    private static <T> boolean zzj(T t, long j) {
        return ((Boolean) zzdy.zzp(t, j)).booleanValue();
    }

    private final boolean zzd(T t, T t2, int i) {
        return zzb(t, i) == zzb(t2, i);
    }

    private final boolean zzb(T t, int i, int i2, int i3) {
        if (this.zzkz) {
            return zzb(t, i);
        }
        return (i2 & i3) != 0;
    }

    private final boolean zzb(T t, int i) {
        if (this.zzkz) {
            int iZzai = zzai(i);
            long j = iZzai & 1048575;
            switch ((iZzai & 267386880) >>> 20) {
                case 0:
                    return zzdy.zzo(t, j) != 0.0d;
                case 1:
                    return zzdy.zzn(t, j) != 0.0f;
                case 2:
                    return zzdy.zzl(t, j) != 0;
                case 3:
                    return zzdy.zzl(t, j) != 0;
                case 4:
                    return zzdy.zzk(t, j) != 0;
                case 5:
                    return zzdy.zzl(t, j) != 0;
                case 6:
                    return zzdy.zzk(t, j) != 0;
                case 7:
                    return zzdy.zzm(t, j);
                case 8:
                    Object objZzp = zzdy.zzp(t, j);
                    if (objZzp instanceof String) {
                        return !((String) objZzp).isEmpty();
                    }
                    if (objZzp instanceof zzw) {
                        return !zzw.zzeg.equals(objZzp);
                    }
                    throw new IllegalArgumentException();
                case 9:
                    return zzdy.zzp(t, j) != null;
                case 10:
                    return !zzw.zzeg.equals(zzdy.zzp(t, j));
                case 11:
                    return zzdy.zzk(t, j) != 0;
                case 12:
                    return zzdy.zzk(t, j) != 0;
                case 13:
                    return zzdy.zzk(t, j) != 0;
                case 14:
                    return zzdy.zzl(t, j) != 0;
                case 15:
                    return zzdy.zzk(t, j) != 0;
                case 16:
                    return zzdy.zzl(t, j) != 0;
                case 17:
                    return zzdy.zzp(t, j) != null;
                default:
                    throw new IllegalArgumentException();
            }
        }
        int iZzaj = zzaj(i);
        return (zzdy.zzk(t, (long) (iZzaj & 1048575)) & (1 << (iZzaj >>> 20))) != 0;
    }

    private final void zzc(T t, int i) {
        if (this.zzkz) {
            return;
        }
        int iZzaj = zzaj(i);
        long j = iZzaj & 1048575;
        zzdy.zzb((Object) t, j, zzdy.zzk(t, j) | (1 << (iZzaj >>> 20)));
    }

    private final boolean zzb(T t, int i, int i2) {
        return zzdy.zzk(t, (long) (zzaj(i2) & 1048575)) == i;
    }

    private final void zzc(T t, int i, int i2) {
        zzdy.zzb((Object) t, zzaj(i2) & 1048575, i);
    }

    private final int zzak(int i) {
        if (i < this.zzku || i > this.zzkv) {
            return -1;
        }
        return zzr(i, 0);
    }

    private final int zzq(int i, int i2) {
        if (i < this.zzku || i > this.zzkv) {
            return -1;
        }
        return zzr(i, i2);
    }

    private final int zzr(int i, int i2) {
        int length = (this.zzks.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = this.zzks[i4];
            if (i == i5) {
                return i4;
            }
            if (i < i5) {
                length = i3 - 1;
            } else {
                i2 = i3 + 1;
            }
        }
        return -1;
    }
}
