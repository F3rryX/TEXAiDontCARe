package com.google.firebase.appindexing.builders;

import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.firebase.appindexing.FirebaseAppIndexingInvalidArgumentException;
import com.google.firebase.appindexing.Indexable;
import com.google.firebase.appindexing.builders.IndexableBuilder;
import com.google.firebase.appindexing.internal.Thing;
import com.google.firebase.appindexing.internal.zzac;
import com.google.firebase.appindexing.internal.zzw;
import java.util.Arrays;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class IndexableBuilder<T extends IndexableBuilder<?>> {
    private final Bundle zza;
    private final String zzb;
    private zzac zzc;
    private String zzd;

    protected IndexableBuilder(String str) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotEmpty(str);
        this.zza = new Bundle();
        this.zzb = str;
    }

    public static void zza(Bundle bundle, String str, String... strArr) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(strArr);
        String[] strArr2 = (String[]) Arrays.copyOf(strArr, strArr.length);
        if (strArr2.length <= 0) {
            zzw.zza("String array is empty and is ignored by put method.");
            return;
        }
        int i = 0;
        for (int i2 = 0; i2 < Math.min(strArr2.length, 100); i2++) {
            String str2 = strArr2[i2];
            strArr2[i] = str2;
            if (strArr2[i2] == null) {
                StringBuilder sb = new StringBuilder(59);
                sb.append("String at ");
                sb.append(i2);
                sb.append(" is null and is ignored by put method.");
                zzw.zza(sb.toString());
            } else {
                int length = str2.length();
                int i3 = Indexable.MAX_STRING_LENGTH;
                if (length > 20000) {
                    StringBuilder sb2 = new StringBuilder(53);
                    sb2.append("String at ");
                    sb2.append(i2);
                    sb2.append(" is too long, truncating string.");
                    zzw.zza(sb2.toString());
                    String strSubstring = strArr2[i];
                    if (strSubstring.length() > 20000) {
                        if (Character.isHighSurrogate(strSubstring.charAt(19999)) && Character.isLowSurrogate(strSubstring.charAt(Indexable.MAX_STRING_LENGTH))) {
                            i3 = 19999;
                        }
                        strSubstring = strSubstring.substring(0, i3);
                    }
                    strArr2[i] = strSubstring;
                }
                i++;
            }
        }
        if (i > 0) {
            bundle.putStringArray(str, (String[]) zzf((String[]) Arrays.copyOfRange(strArr2, 0, i)));
        }
    }

    public static void zzb(Bundle bundle, String str, Indexable... indexableArr) throws FirebaseAppIndexingInvalidArgumentException {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(indexableArr);
        Thing[] thingArr = new Thing[indexableArr.length];
        for (int i = 0; i < indexableArr.length; i++) {
            Indexable indexable = indexableArr[i];
            if (indexable != null && !(indexable instanceof Thing)) {
                throw new FirebaseAppIndexingInvalidArgumentException("Invalid Indexable encountered. Use Indexable.Builder or convenience methods under Indexables to create the Indexable.");
            }
            thingArr[i] = (Thing) indexable;
        }
        zze(bundle, str, thingArr);
    }

    public static void zzc(Bundle bundle, String str, boolean... zArr) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(zArr);
        int length = zArr.length;
        if (length <= 0) {
            zzw.zza("Boolean array is empty and is ignored by put method.");
            return;
        }
        if (length >= 100) {
            zzw.zza("Input Array of elements is too big, cutting off.");
            zArr = Arrays.copyOf(zArr, 100);
        }
        bundle.putBooleanArray(str, zArr);
    }

    public static void zzd(Bundle bundle, String str, long... jArr) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(jArr);
        int length = jArr.length;
        if (length <= 0) {
            zzw.zza("Long array is empty and is ignored by put method.");
            return;
        }
        if (length >= 100) {
            zzw.zza("Input Array of elements is too big, cutting off.");
            jArr = Arrays.copyOf(jArr, 100);
        }
        bundle.putLongArray(str, jArr);
    }

    private static void zze(Bundle bundle, String str, Thing... thingArr) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(thingArr);
        if (thingArr.length <= 0) {
            zzw.zza("Thing array is empty and is ignored by put method.");
            return;
        }
        int i = 0;
        for (int i2 = 0; i2 < thingArr.length; i2++) {
            thingArr[i] = thingArr[i2];
            if (thingArr[i2] == null) {
                StringBuilder sb = new StringBuilder(58);
                sb.append("Thing at ");
                sb.append(i2);
                sb.append(" is null and is ignored by put method.");
                zzw.zza(sb.toString());
            } else {
                i++;
            }
        }
        if (i > 0) {
            bundle.putParcelableArray(str, (Parcelable[]) zzf((Thing[]) Arrays.copyOfRange(thingArr, 0, i)));
        }
    }

    private static <S> S[] zzf(S[] sArr) {
        if (sArr.length < 100) {
            return sArr;
        }
        zzw.zza("Input Array of elements is too big, cutting off.");
        return (S[]) Arrays.copyOf(sArr, 100);
    }

    public final Indexable build() {
        Bundle bundle = new Bundle(this.zza);
        zzac zzacVarZza = this.zzc;
        if (zzacVarZza == null) {
            zzacVarZza = new Indexable.Metadata.Builder().zza();
        }
        return new Thing(bundle, zzacVarZza, this.zzd, this.zzb);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public T put(String str, long... jArr) {
        zzd(this.zza, str, jArr);
        return this;
    }

    public T setAlternateName(String... strArr) {
        Preconditions.checkNotNull(strArr);
        return (T) put("alternateName", strArr);
    }

    public final T setDescription(String str) {
        Preconditions.checkNotNull(str);
        return (T) put("description", str);
    }

    public T setId(String str) {
        Preconditions.checkNotNull(str);
        return (T) put("id", str);
    }

    public final T setImage(String str) {
        Preconditions.checkNotNull(str);
        return (T) put("image", str);
    }

    public final <S extends IndexableBuilder> T setIsPartOf(S... sArr) {
        Preconditions.checkNotNull(sArr);
        return (T) put("isPartOf", sArr);
    }

    public final T setKeywords(String... strArr) {
        return (T) put("keywords", strArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public T setMetadata(Indexable.Metadata.Builder builder) {
        Preconditions.checkState(this.zzc == null, "setMetadata may only be called once");
        Preconditions.checkNotNull(builder);
        this.zzc = builder.zza();
        return this;
    }

    public final T setName(String str) {
        Preconditions.checkNotNull(str);
        return (T) put(AppMeasurementSdk.ConditionalUserProperty.NAME, str);
    }

    public final T setSameAs(String str) {
        Preconditions.checkNotNull(str);
        return (T) put("sameAs", str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final T setUrl(String str) {
        Preconditions.checkNotNull(str);
        this.zzd = str;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public T put(String str, Indexable... indexableArr) throws FirebaseAppIndexingInvalidArgumentException {
        zzb(this.zza, str, indexableArr);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected <S extends IndexableBuilder> T put(String str, S... sArr) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(sArr);
        int length = sArr.length;
        if (length > 0) {
            Thing[] thingArr = new Thing[length];
            for (int i = 0; i < sArr.length; i++) {
                S s = sArr[i];
                if (s == null) {
                    StringBuilder sb = new StringBuilder(60);
                    sb.append("Builder at ");
                    sb.append(i);
                    sb.append(" is null and is ignored by put method.");
                    zzw.zza(sb.toString());
                } else {
                    thingArr[i] = (Thing) s.build();
                }
            }
            zze(this.zza, str, thingArr);
        } else {
            zzw.zza("Builder array is empty and is ignored by put method.");
        }
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public T put(String str, String... strArr) {
        zza(this.zza, str, strArr);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public T put(String str, boolean... zArr) {
        zzc(this.zza, str, zArr);
        return this;
    }
}
