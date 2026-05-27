package com.google.firebase.appindexing;

import android.net.Uri;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.icing.zzfw;
import com.google.firebase.appindexing.builders.IndexableBuilder;
import com.google.firebase.appindexing.internal.zzac;
import com.texa.carelib.core.utils.Version;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
public interface Indexable {
    public static final int MAX_BYTE_SIZE = 30000;
    public static final int MAX_INDEXABLES_TO_BE_UPDATED_IN_ONE_CALL = 1000;
    public static final int MAX_NESTING_DEPTH = 5;
    public static final int MAX_NUMBER_OF_FIELDS = 20;
    public static final int MAX_REPEATED_SIZE = 100;
    public static final int MAX_STRING_LENGTH = 20000;
    public static final int MAX_URL_LENGTH = 256;

    /* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
    public static class Builder extends IndexableBuilder<Builder> {
        public Builder() {
            this("Thing");
        }

        public Builder(String str) {
            super(str);
        }
    }

    /* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
    public interface Metadata {

        /* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
        public static final class Builder {
            private boolean zza = zzfw.zzd().zza();
            private int zzb = zzfw.zzd().zzb();
            private String zzc = zzfw.zzd().zzc();
            private final Bundle zzd = new Bundle();

            public Builder setScope(int i) {
                boolean z = i > 0 && i <= 3;
                StringBuilder sb = new StringBuilder(69);
                sb.append("The scope of this indexable is not valid, scope value is ");
                sb.append(i);
                sb.append(Version.SEPARATOR);
                Preconditions.checkArgument(z, sb.toString());
                IndexableBuilder.zzd(this.zzd, "scope", i);
                return this;
            }

            public Builder setScore(int i) {
                boolean z = i >= 0;
                StringBuilder sb = new StringBuilder(53);
                sb.append("Negative score values are invalid. Value: ");
                sb.append(i);
                Preconditions.checkArgument(z, sb.toString());
                this.zzb = i;
                return this;
            }

            public Builder setSliceUri(Uri uri) {
                Preconditions.checkNotNull(uri);
                IndexableBuilder.zza(this.zzd, "sliceUri", uri.toString());
                return this;
            }

            public Builder setWorksOffline(boolean z) {
                this.zza = z;
                return this;
            }

            public final zzac zza() {
                return new zzac(this.zza, this.zzb, this.zzc, this.zzd, null);
            }
        }
    }
}
