package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.text.TextUtils;
import androidx.core.os.EnvironmentCompat;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.wrappers.InstantApps;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.measurement.zznx;
import com.google.android.gms.internal.measurement.zzom;
import com.google.android.gms.internal.measurement.zzpt;
import java.security.MessageDigest;
import java.util.Iterator;
import java.util.List;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzec extends zzf {
    private String zza;
    private String zzb;
    private int zzc;
    private String zzd;
    private String zze;
    private long zzf;
    private final long zzg;
    private List<String> zzh;
    private int zzi;
    private String zzj;
    private String zzk;
    private String zzl;

    zzec(zzfv zzfvVar, long j) {
        super(zzfvVar);
        this.zzg = j;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(21:0|2|(1:4)(23:106|6|(1:10)(2:11|(1:13))|100|14|(4:16|(1:18)(1:20)|104|21)|26|(1:31)(1:30)|32|SW:33|43|(1:45)|46|102|47|(1:49)(1:50)|51|52|(6:54|(1:56)(1:57)|58|(1:60)|61|(1:65))(2:66|(3:68|(1:70)(1:71)|72))|(3:74|(1:76)(1:77)|78)|82|(2:85|(1:87)(4:88|(3:91|(1:109)(1:110)|89)|108|94))(1:94)|(2:96|97)(2:98|99))|5|26|(2:28|31)(0)|32|SW:33|43|(0)|46|102|47|(0)(0)|51|52|(0)(0)|(0)|82|(0)(0)|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0232, code lost:
    
        r3 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0233, code lost:
    
        r13.zzs.zzay().zzd().zzc("Fetching Google App Id failed with exception. appId", com.google.android.gms.measurement.internal.zzel.zzn(r0), r3);
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x018f  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0191  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01a7 A[Catch: IllegalStateException -> 0x0232, TRY_ENTER, TryCatch #1 {IllegalStateException -> 0x0232, blocks: (B:47:0x0177, B:51:0x0192, B:54:0x01a7, B:58:0x01c5, B:61:0x01d2, B:63:0x01da, B:74:0x0213, B:76:0x0229, B:78:0x022e, B:77:0x022c, B:65:0x01e0, B:57:0x01c1, B:66:0x01e7, B:68:0x01ed, B:72:0x020b, B:71:0x0207), top: B:102:0x0177 }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01e7 A[Catch: IllegalStateException -> 0x0232, TryCatch #1 {IllegalStateException -> 0x0232, blocks: (B:47:0x0177, B:51:0x0192, B:54:0x01a7, B:58:0x01c5, B:61:0x01d2, B:63:0x01da, B:74:0x0213, B:76:0x0229, B:78:0x022e, B:77:0x022c, B:65:0x01e0, B:57:0x01c1, B:66:0x01e7, B:68:0x01ed, B:72:0x020b, B:71:0x0207), top: B:102:0x0177 }] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0213 A[Catch: IllegalStateException -> 0x0232, TryCatch #1 {IllegalStateException -> 0x0232, blocks: (B:47:0x0177, B:51:0x0192, B:54:0x01a7, B:58:0x01c5, B:61:0x01d2, B:63:0x01da, B:74:0x0213, B:76:0x0229, B:78:0x022e, B:77:0x022c, B:65:0x01e0, B:57:0x01c1, B:66:0x01e7, B:68:0x01ed, B:72:0x020b, B:71:0x0207), top: B:102:0x0177 }] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x025c  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0291  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0295  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x02a2  */
    @Override // com.google.android.gms.measurement.internal.zzf
    @EnsuresNonNull({"appId", "appStore", "appName", "gmpAppId", "gaAppId"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected final void zzd() {
        String str;
        String string;
        boolean z;
        int iZza;
        List<String> listZzp;
        String packageName = this.zzs.zzau().getPackageName();
        PackageManager packageManager = this.zzs.zzau().getPackageManager();
        String str2 = "Unknown";
        int i = Integer.MIN_VALUE;
        String installerPackageName = EnvironmentCompat.MEDIA_UNKNOWN;
        if (packageManager != null) {
            try {
                installerPackageName = packageManager.getInstallerPackageName(packageName);
            } catch (IllegalArgumentException unused) {
                this.zzs.zzay().zzd().zzb("Error retrieving app installer package name. appId", zzel.zzn(packageName));
            }
            if (installerPackageName == null) {
                installerPackageName = "manual_install";
            } else if ("com.android.vending".equals(installerPackageName)) {
                installerPackageName = "";
            }
            try {
                PackageInfo packageInfo = packageManager.getPackageInfo(this.zzs.zzau().getPackageName(), 0);
                if (packageInfo != null) {
                    CharSequence applicationLabel = packageManager.getApplicationLabel(packageInfo.applicationInfo);
                    string = !TextUtils.isEmpty(applicationLabel) ? applicationLabel.toString() : "Unknown";
                    try {
                        str2 = packageInfo.versionName;
                        i = packageInfo.versionCode;
                    } catch (PackageManager.NameNotFoundException unused2) {
                        str = str2;
                        str2 = string;
                        this.zzs.zzay().zzd().zzc("Error retrieving package info. appId, appName", zzel.zzn(packageName), str2);
                        string = str2;
                        str2 = str;
                    }
                }
            } catch (PackageManager.NameNotFoundException unused3) {
                str = "Unknown";
            }
            this.zza = packageName;
            this.zzd = installerPackageName;
            this.zzb = str2;
            this.zzc = i;
            this.zze = string;
            this.zzf = 0L;
            z = TextUtils.isEmpty(this.zzs.zzw()) && "am".equals(this.zzs.zzx());
            iZza = this.zzs.zza();
            switch (iZza) {
                case 0:
                    this.zzs.zzay().zzj().zza("App measurement collection enabled");
                    break;
                case 1:
                    this.zzs.zzay().zzi().zza("App measurement deactivated via the manifest");
                    break;
                case 2:
                    this.zzs.zzay().zzj().zza("App measurement deactivated via the init parameters");
                    break;
                case 3:
                    this.zzs.zzay().zzi().zza("App measurement disabled by setAnalyticsCollectionEnabled(false)");
                    break;
                case 4:
                    this.zzs.zzay().zzi().zza("App measurement disabled via the manifest");
                    break;
                case 5:
                    this.zzs.zzay().zzj().zza("App measurement disabled via the init parameters");
                    break;
                case 6:
                    this.zzs.zzay().zzl().zza("App measurement deactivated via resources. This method is being deprecated. Please refer to https://firebase.google.com/support/guides/disable-analytics");
                    break;
                case 7:
                    this.zzs.zzay().zzi().zza("App measurement disabled via the global data collection setting");
                    break;
                default:
                    this.zzs.zzay().zzi().zza("App measurement disabled due to denied storage consent");
                    break;
            }
            this.zzj = "";
            this.zzk = "";
            this.zzl = "";
            this.zzs.zzaw();
            if (z) {
                this.zzk = this.zzs.zzw();
            }
            String strZzc = zzig.zzc(this.zzs.zzau(), "google_app_id", this.zzs.zzz());
            this.zzj = true == TextUtils.isEmpty(strZzc) ? strZzc : "";
            zzom.zzc();
            if (!this.zzs.zzf().zzs(null, zzdy.zzac)) {
                Context contextZzau = this.zzs.zzau();
                String strZzz = this.zzs.zzz();
                Preconditions.checkNotNull(contextZzau);
                Resources resources = contextZzau.getResources();
                if (TextUtils.isEmpty(strZzz)) {
                    strZzz = zzfn.zza(contextZzau);
                }
                String strZzb = zzfn.zzb("ga_app_id", resources, strZzz);
                this.zzl = true != TextUtils.isEmpty(strZzb) ? strZzb : "";
                if (!TextUtils.isEmpty(strZzc) || !TextUtils.isEmpty(strZzb)) {
                    this.zzk = zzfn.zzb("admob_app_id", resources, strZzz);
                }
            } else if (!TextUtils.isEmpty(strZzc)) {
                Context contextZzau2 = this.zzs.zzau();
                String strZzz2 = this.zzs.zzz();
                Preconditions.checkNotNull(contextZzau2);
                Resources resources2 = contextZzau2.getResources();
                if (TextUtils.isEmpty(strZzz2)) {
                    strZzz2 = zzfn.zza(contextZzau2);
                }
                this.zzk = zzfn.zzb("admob_app_id", resources2, strZzz2);
            }
            if (iZza == 0) {
                this.zzs.zzay().zzj().zzc("App measurement enabled for app package, google app id", this.zza, TextUtils.isEmpty(this.zzj) ? this.zzk : this.zzj);
            }
            this.zzh = null;
            this.zzs.zzaw();
            listZzp = this.zzs.zzf().zzp("analytics.safelisted_events");
            if (listZzp == null) {
                this.zzh = listZzp;
            } else if (listZzp.size() == 0) {
                this.zzs.zzay().zzl().zza("Safelisted event list is empty. Ignoring");
            } else {
                Iterator<String> it = listZzp.iterator();
                while (it.hasNext()) {
                    if (!this.zzs.zzv().zzaa("safelisted event", it.next())) {
                    }
                }
                this.zzh = listZzp;
            }
            if (packageManager == null) {
                this.zzi = InstantApps.isInstantApp(this.zzs.zzau()) ? 1 : 0;
                return;
            } else {
                this.zzi = 0;
                return;
            }
        }
        this.zzs.zzay().zzd().zzb("PackageManager is null, app identity information might be inaccurate. appId", zzel.zzn(packageName));
        string = "Unknown";
        this.zza = packageName;
        this.zzd = installerPackageName;
        this.zzb = str2;
        this.zzc = i;
        this.zze = string;
        this.zzf = 0L;
        if (TextUtils.isEmpty(this.zzs.zzw())) {
        }
        iZza = this.zzs.zza();
        switch (iZza) {
        }
        this.zzj = "";
        this.zzk = "";
        this.zzl = "";
        this.zzs.zzaw();
        if (z) {
        }
        String strZzc2 = zzig.zzc(this.zzs.zzau(), "google_app_id", this.zzs.zzz());
        this.zzj = true == TextUtils.isEmpty(strZzc2) ? strZzc2 : "";
        zzom.zzc();
        if (!this.zzs.zzf().zzs(null, zzdy.zzac)) {
        }
        if (iZza == 0) {
        }
        this.zzh = null;
        this.zzs.zzaw();
        listZzp = this.zzs.zzf().zzp("analytics.safelisted_events");
        if (listZzp == null) {
        }
        if (packageManager == null) {
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    protected final boolean zzf() {
        return true;
    }

    final int zzh() {
        zza();
        return this.zzi;
    }

    final int zzi() {
        zza();
        return this.zzc;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v34, types: [com.google.android.gms.measurement.internal.zzgo, com.google.android.gms.measurement.internal.zzkz] */
    /* JADX WARN: Type inference failed for: r9v35, types: [com.google.android.gms.measurement.internal.zzgo] */
    /* JADX WARN: Type inference failed for: r9v39 */
    /* JADX WARN: Type inference failed for: r9v44 */
    /* JADX WARN: Type inference failed for: r9v45 */
    /* JADX WARN: Type inference failed for: r9v46 */
    final zzp zzj(String str) {
        String str2;
        Class<?> clsLoadClass;
        Object objInvoke;
        String str3;
        long jMin;
        long j;
        zzg();
        String strZzl = zzl();
        String strZzn = zzn();
        zza();
        String str4 = this.zzb;
        zza();
        long j2 = this.zzc;
        zza();
        Preconditions.checkNotNull(this.zzd);
        String str5 = this.zzd;
        this.zzs.zzf().zzh();
        zza();
        zzg();
        long j3 = this.zzf;
        long j4 = j3;
        if (j3 == 0) {
            ?? Zzv = this.zzs.zzv();
            Context contextZzau = this.zzs.zzau();
            String packageName = this.zzs.zzau().getPackageName();
            Zzv.zzg();
            Preconditions.checkNotNull(contextZzau);
            Preconditions.checkNotEmpty(packageName);
            PackageManager packageManager = contextZzau.getPackageManager();
            MessageDigest messageDigestZzE = zzkz.zzE();
            long j5 = -1;
            j5 = -1;
            if (messageDigestZzE == null) {
                Zzv.zzs.zzay().zzd().zza("Could not get MD5 instance");
            } else {
                if (packageManager != null) {
                    try {
                        if (Zzv.zzaf(contextZzau, packageName)) {
                            j5 = 0;
                            Zzv = Zzv;
                        } else {
                            PackageInfo packageInfo = Wrappers.packageManager(contextZzau).getPackageInfo(Zzv.zzs.zzau().getPackageName(), 64);
                            if (packageInfo.signatures == null || packageInfo.signatures.length <= 0) {
                                Zzv.zzs.zzay().zzk().zza("Could not get signatures");
                                Zzv = Zzv;
                            } else {
                                long jZzp = zzkz.zzp(messageDigestZzE.digest(packageInfo.signatures[0].toByteArray()));
                                j5 = jZzp;
                                Zzv = jZzp;
                            }
                        }
                    } catch (PackageManager.NameNotFoundException e) {
                        Zzv.zzs.zzay().zzd().zzb("Package name not found", e);
                        j = 0;
                    }
                }
                j = 0;
                this.zzf = j;
                j4 = j;
            }
            j = j5;
            this.zzf = j;
            j4 = j;
        }
        long j6 = j4;
        boolean zZzJ = this.zzs.zzJ();
        boolean z = !this.zzs.zzm().zzk;
        zzg();
        if (this.zzs.zzJ()) {
            zzpt.zzc();
            if (this.zzs.zzf().zzs(null, zzdy.zzae)) {
                this.zzs.zzay().zzj().zza("Disabled IID for tests.");
            } else {
                try {
                    clsLoadClass = this.zzs.zzau().getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics");
                } catch (ClassNotFoundException unused) {
                }
                if (clsLoadClass != null) {
                    try {
                        objInvoke = clsLoadClass.getDeclaredMethod("getInstance", Context.class).invoke(null, this.zzs.zzau());
                    } catch (Exception unused2) {
                        this.zzs.zzay().zzm().zza("Failed to obtain Firebase Analytics instance");
                    }
                    if (objInvoke == null) {
                        str2 = null;
                    } else {
                        try {
                            str2 = (String) clsLoadClass.getDeclaredMethod("getFirebaseInstanceId", new Class[0]).invoke(objInvoke, new Object[0]);
                        } catch (Exception unused3) {
                            this.zzs.zzay().zzl().zza("Failed to retrieve Firebase Instance Id");
                            str2 = null;
                        }
                    }
                }
            }
            str2 = null;
        } else {
            str2 = null;
        }
        zzfv zzfvVar = this.zzs;
        long jZza = zzfvVar.zzm().zzc.zza();
        if (jZza == 0) {
            str3 = strZzl;
            jMin = zzfvVar.zzc;
        } else {
            str3 = strZzl;
            jMin = Math.min(zzfvVar.zzc, jZza);
        }
        zza();
        int i = this.zzi;
        boolean zZzr = this.zzs.zzf().zzr();
        zzfa zzfaVarZzm = this.zzs.zzm();
        zzfaVarZzm.zzg();
        boolean z2 = zzfaVarZzm.zza().getBoolean("deferred_analytics_collection", false);
        zza();
        String str6 = this.zzk;
        Boolean boolValueOf = this.zzs.zzf().zzk("google_analytics_default_allow_ad_personalization_signals") == null ? null : Boolean.valueOf(!r2.booleanValue());
        long j7 = this.zzg;
        List<String> list = this.zzh;
        zzom.zzc();
        return new zzp(str3, strZzn, str4, j2, str5, 46000L, j6, str, zZzJ, z, str2, 0L, jMin, i, zZzr, z2, str6, boolValueOf, j7, list, this.zzs.zzf().zzs(null, zzdy.zzac) ? zzm() : null, this.zzs.zzm().zzc().zzi());
    }

    final String zzk() {
        zza();
        return this.zzk;
    }

    final String zzl() {
        zza();
        Preconditions.checkNotNull(this.zza);
        return this.zza;
    }

    final String zzm() {
        zza();
        Preconditions.checkNotNull(this.zzl);
        return this.zzl;
    }

    final String zzn() {
        zznx.zzc();
        if (this.zzs.zzf().zzs(null, zzdy.zzas)) {
            zzg();
        }
        zza();
        Preconditions.checkNotNull(this.zzj);
        return this.zzj;
    }

    final List<String> zzo() {
        return this.zzh;
    }
}
