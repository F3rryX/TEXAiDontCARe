package com.google.firebase.appindexing;

import android.os.Bundle;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.firebase.appindexing.builders.IndexableBuilder;
import com.google.firebase.appindexing.internal.zzc;
import com.google.firebase.appindexing.internal.zzw;
import java.util.Arrays;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
public interface Action {

    /* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
    public interface Metadata {

        /* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
        public static class Builder {
            private boolean zza = true;

            public Builder setUpload(boolean z) {
                this.zza = z;
                return this;
            }

            public final com.google.firebase.appindexing.internal.zzb zza() {
                return new com.google.firebase.appindexing.internal.zzb(this.zza, null, null, null, false);
            }
        }
    }

    /* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
    public static class Builder {
        public static final String ACTIVATE_ACTION = "ActivateAction";
        public static final String ADD_ACTION = "AddAction";
        public static final String BOOKMARK_ACTION = "BookmarkAction";
        public static final String COMMENT_ACTION = "CommentAction";
        public static final String LIKE_ACTION = "LikeAction";
        public static final String LISTEN_ACTION = "ListenAction";
        public static final String SEND_ACTION = "SendAction";
        public static final String SHARE_ACTION = "ShareAction";
        public static final String STATUS_TYPE_ACTIVE = "http://schema.org/ActiveActionStatus";
        public static final String STATUS_TYPE_COMPLETED = "http://schema.org/CompletedActionStatus";
        public static final String STATUS_TYPE_FAILED = "http://schema.org/FailedActionStatus";
        public static final String VIEW_ACTION = "ViewAction";
        public static final String WATCH_ACTION = "WatchAction";
        private final Bundle zza = new Bundle();
        private final String zzb;
        private String zzc;
        private String zzd;
        private String zze;
        private com.google.firebase.appindexing.internal.zzb zzf;
        private String zzg;

        public Builder(String str) {
            this.zzb = str;
        }

        public Action build() {
            Preconditions.checkNotNull(this.zzc, "setObject is required before calling build().");
            Preconditions.checkNotNull(this.zzd, "setObject is required before calling build().");
            String str = this.zzb;
            String str2 = this.zzc;
            String str3 = this.zzd;
            String str4 = this.zze;
            com.google.firebase.appindexing.internal.zzb zzbVarZza = this.zzf;
            if (zzbVarZza == null) {
                zzbVarZza = new Metadata.Builder().zza();
            }
            return new zzc(str, str2, str3, str4, zzbVarZza, this.zzg, this.zza);
        }

        public Builder put(String str, double... dArr) {
            Bundle bundle = this.zza;
            Preconditions.checkNotNull(str);
            Preconditions.checkNotNull(dArr);
            int length = dArr.length;
            if (length > 0) {
                if (length >= 100) {
                    zzw.zza("Input Array of elements is too big, cutting off.");
                    dArr = Arrays.copyOf(dArr, 100);
                }
                bundle.putDoubleArray(str, dArr);
            } else {
                zzw.zza("Double array is empty and is ignored by put method.");
            }
            return this;
        }

        public Builder setActionStatus(String str) {
            Preconditions.checkNotNull(str);
            this.zzg = str;
            return this;
        }

        public Builder setMetadata(Metadata.Builder builder) {
            Preconditions.checkNotNull(builder);
            this.zzf = builder.zza();
            return this;
        }

        public final Builder setName(String str) {
            Preconditions.checkNotNull(str);
            this.zzc = str;
            return put(AppMeasurementSdk.ConditionalUserProperty.NAME, str);
        }

        public Builder setObject(String str, String str2) {
            Preconditions.checkNotNull(str);
            Preconditions.checkNotNull(str2);
            this.zzc = str;
            this.zzd = str2;
            return this;
        }

        public Builder setResult(Indexable... indexableArr) throws FirebaseAppIndexingInvalidArgumentException {
            return put("result", indexableArr);
        }

        public final Builder setUrl(String str) {
            Preconditions.checkNotNull(str);
            this.zzd = str;
            return put(ImagesContract.URL, str);
        }

        protected final String zza() {
            String str = this.zzc;
            if (str == null) {
                return null;
            }
            return new String(str);
        }

        protected final String zzb() {
            String str = this.zzd;
            if (str == null) {
                return null;
            }
            return new String(str);
        }

        protected final String zzc() {
            return new String(this.zzg);
        }

        public Builder setObject(String str, String str2, String str3) {
            Preconditions.checkNotNull(str);
            Preconditions.checkNotNull(str2);
            Preconditions.checkNotNull(str3);
            this.zzc = str;
            this.zzd = str2;
            this.zze = str3;
            return this;
        }

        public Builder put(String str, long... jArr) {
            IndexableBuilder.zzd(this.zza, str, jArr);
            return this;
        }

        public Builder put(String str, Indexable... indexableArr) throws FirebaseAppIndexingInvalidArgumentException {
            IndexableBuilder.zzb(this.zza, str, indexableArr);
            return this;
        }

        public Builder put(String str, String... strArr) {
            IndexableBuilder.zza(this.zza, str, strArr);
            return this;
        }

        public Builder put(String str, boolean... zArr) {
            IndexableBuilder.zzc(this.zza, str, zArr);
            return this;
        }
    }
}
