package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import androidx.collection.ArrayMap;
import androidx.work.WorkRequest;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.measurement.zzmt;
import com.google.android.gms.internal.measurement.zzom;
import com.google.android.gms.internal.measurement.zzpe;
import com.google.android.gms.internal.measurement.zzpn;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.messaging.Constants;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.math.BigInteger;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.nio.channels.OverlappingFileLockException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.zip.GZIPInputStream;
import kotlin.jvm.internal.LongCompanionObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzks implements zzgq {
    private static volatile zzks zzb;
    private long zzA;
    private final Map<String, zzag> zzB;
    long zza;
    private final zzfm zzc;
    private final zzer zzd;
    private zzaj zze;
    private zzet zzf;
    private zzkg zzg;
    private zzz zzh;
    private final zzku zzi;
    private zzif zzj;
    private zzjp zzk;
    private final zzkj zzl;
    private zzfd zzm;
    private final zzfv zzn;
    private boolean zzp;
    private List<Runnable> zzq;
    private int zzr;
    private int zzs;
    private boolean zzt;
    private boolean zzu;
    private boolean zzv;
    private FileLock zzw;
    private FileChannel zzx;
    private List<Long> zzy;
    private List<Long> zzz;
    private boolean zzo = false;
    private final zzky zzC = new zzkp(this);

    zzks(zzkt zzktVar, zzfv zzfvVar) {
        Preconditions.checkNotNull(zzktVar);
        this.zzn = zzfv.zzp(zzktVar.zza, null, null);
        this.zzA = -1L;
        this.zzl = new zzkj(this);
        zzku zzkuVar = new zzku(this);
        zzkuVar.zzZ();
        this.zzi = zzkuVar;
        zzer zzerVar = new zzer(this);
        zzerVar.zzZ();
        this.zzd = zzerVar;
        zzfm zzfmVar = new zzfm(this);
        zzfmVar.zzZ();
        this.zzc = zzfmVar;
        this.zzB = new HashMap();
        zzaz().zzp(new zzkk(this, zzktVar));
    }

    static final void zzY(com.google.android.gms.internal.measurement.zzfn zzfnVar, int i, String str) {
        List<com.google.android.gms.internal.measurement.zzfs> listZzp = zzfnVar.zzp();
        for (int i2 = 0; i2 < listZzp.size(); i2++) {
            if ("_err".equals(listZzp.get(i2).zzg())) {
                return;
            }
        }
        com.google.android.gms.internal.measurement.zzfr zzfrVarZze = com.google.android.gms.internal.measurement.zzfs.zze();
        zzfrVarZze.zzj("_err");
        zzfrVarZze.zzi(Long.valueOf(i).longValue());
        com.google.android.gms.internal.measurement.zzfs zzfsVarZzaA = zzfrVarZze.zzaA();
        com.google.android.gms.internal.measurement.zzfr zzfrVarZze2 = com.google.android.gms.internal.measurement.zzfs.zze();
        zzfrVarZze2.zzj("_ev");
        zzfrVarZze2.zzk(str);
        com.google.android.gms.internal.measurement.zzfs zzfsVarZzaA2 = zzfrVarZze2.zzaA();
        zzfnVar.zzf(zzfsVarZzaA);
        zzfnVar.zzf(zzfsVarZzaA2);
    }

    static final void zzZ(com.google.android.gms.internal.measurement.zzfn zzfnVar, String str) {
        List<com.google.android.gms.internal.measurement.zzfs> listZzp = zzfnVar.zzp();
        for (int i = 0; i < listZzp.size(); i++) {
            if (str.equals(listZzp.get(i).zzg())) {
                zzfnVar.zzh(i);
                return;
            }
        }
    }

    private final zzp zzaa(String str) {
        zzaj zzajVar = this.zze;
        zzak(zzajVar);
        zzg zzgVarZzj = zzajVar.zzj(str);
        if (zzgVarZzj == null || TextUtils.isEmpty(zzgVarZzj.zzw())) {
            zzay().zzc().zzb("No app data available; dropping", str);
            return null;
        }
        Boolean boolZzab = zzab(zzgVarZzj);
        if (boolZzab != null && !boolZzab.booleanValue()) {
            zzay().zzd().zzb("App version does not match; dropping. appId", zzel.zzn(str));
            return null;
        }
        String strZzz = zzgVarZzj.zzz();
        String strZzw = zzgVarZzj.zzw();
        long jZzb = zzgVarZzj.zzb();
        String strZzv = zzgVarZzj.zzv();
        long jZzm = zzgVarZzj.zzm();
        long jZzj = zzgVarZzj.zzj();
        boolean zZzaj = zzgVarZzj.zzaj();
        String strZzx = zzgVarZzj.zzx();
        long jZza = zzgVarZzj.zza();
        boolean zZzai = zzgVarZzj.zzai();
        String strZzr = zzgVarZzj.zzr();
        Boolean boolZzq = zzgVarZzj.zzq();
        long jZzk = zzgVarZzj.zzk();
        List<String> listZzC = zzgVarZzj.zzC();
        zzom.zzc();
        return new zzp(str, strZzz, strZzw, jZzb, strZzv, jZzm, jZzj, (String) null, zZzaj, false, strZzx, jZza, 0L, 0, zZzai, false, strZzr, boolZzq, jZzk, listZzC, zzg().zzs(str, zzdy.zzac) ? zzgVarZzj.zzy() : null, zzh(str).zzi());
    }

    private final Boolean zzab(zzg zzgVar) {
        try {
            if (zzgVar.zzb() != -2147483648L) {
                if (zzgVar.zzb() == Wrappers.packageManager(this.zzn.zzau()).getPackageInfo(zzgVar.zzt(), 0).versionCode) {
                    return true;
                }
            } else {
                String str = Wrappers.packageManager(this.zzn.zzau()).getPackageInfo(zzgVar.zzt(), 0).versionName;
                String strZzw = zzgVar.zzw();
                if (strZzw != null && strZzw.equals(str)) {
                    return true;
                }
            }
            return false;
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    private final void zzac() {
        zzaz().zzg();
        if (this.zzt || this.zzu || this.zzv) {
            zzay().zzj().zzd("Not stopping services. fetch, network, upload", Boolean.valueOf(this.zzt), Boolean.valueOf(this.zzu), Boolean.valueOf(this.zzv));
            return;
        }
        zzay().zzj().zza("Stopping uploading service(s)");
        List<Runnable> list = this.zzq;
        if (list == null) {
            return;
        }
        Iterator<Runnable> it = list.iterator();
        while (it.hasNext()) {
            it.next().run();
        }
        ((List) Preconditions.checkNotNull(this.zzq)).clear();
    }

    private final void zzad(com.google.android.gms.internal.measurement.zzfx zzfxVar, long j, boolean z) {
        String str = true != z ? "_lte" : "_se";
        zzaj zzajVar = this.zze;
        zzak(zzajVar);
        zzkx zzkxVarZzp = zzajVar.zzp(zzfxVar.zzal(), str);
        zzkx zzkxVar = (zzkxVarZzp == null || zzkxVarZzp.zze == null) ? new zzkx(zzfxVar.zzal(), "auto", str, zzav().currentTimeMillis(), Long.valueOf(j)) : new zzkx(zzfxVar.zzal(), "auto", str, zzav().currentTimeMillis(), Long.valueOf(((Long) zzkxVarZzp.zze).longValue() + j));
        com.google.android.gms.internal.measurement.zzgg zzggVarZzd = com.google.android.gms.internal.measurement.zzgh.zzd();
        zzggVarZzd.zzf(str);
        zzggVarZzd.zzg(zzav().currentTimeMillis());
        zzggVarZzd.zze(((Long) zzkxVar.zze).longValue());
        com.google.android.gms.internal.measurement.zzgh zzghVarZzaA = zzggVarZzd.zzaA();
        int iZza = zzku.zza(zzfxVar, str);
        if (iZza >= 0) {
            zzfxVar.zzai(iZza, zzghVarZzaA);
        } else {
            zzfxVar.zzl(zzghVarZzaA);
        }
        if (j > 0) {
            zzaj zzajVar2 = this.zze;
            zzak(zzajVar2);
            zzajVar2.zzN(zzkxVar);
            zzay().zzj().zzc("Updated engagement user property. scope, value", true != z ? "lifetime" : "session-scoped", zzkxVar.zze);
        }
    }

    private final void zzae(com.google.android.gms.internal.measurement.zzfn zzfnVar, com.google.android.gms.internal.measurement.zzfn zzfnVar2) {
        Preconditions.checkArgument("_e".equals(zzfnVar.zzo()));
        zzak(this.zzi);
        com.google.android.gms.internal.measurement.zzfs zzfsVarZzC = zzku.zzC(zzfnVar.zzaA(), "_et");
        if (zzfsVarZzC == null || !zzfsVarZzC.zzw() || zzfsVarZzC.zzd() <= 0) {
            return;
        }
        long jZzd = zzfsVarZzC.zzd();
        zzak(this.zzi);
        com.google.android.gms.internal.measurement.zzfs zzfsVarZzC2 = zzku.zzC(zzfnVar2.zzaA(), "_et");
        if (zzfsVarZzC2 != null && zzfsVarZzC2.zzd() > 0) {
            jZzd += zzfsVarZzC2.zzd();
        }
        zzak(this.zzi);
        zzku.zzA(zzfnVar2, "_et", Long.valueOf(jZzd));
        zzak(this.zzi);
        zzku.zzA(zzfnVar, "_fr", 1L);
    }

    private final void zzaf() {
        long jMax;
        long jMax2;
        zzaz().zzg();
        zzB();
        if (this.zza > 0) {
            long jAbs = 3600000 - Math.abs(zzav().elapsedRealtime() - this.zza);
            if (jAbs > 0) {
                zzay().zzj().zzb("Upload has been suspended. Will update scheduling later in approximately ms", Long.valueOf(jAbs));
                zzm().zzc();
                zzkg zzkgVar = this.zzg;
                zzak(zzkgVar);
                zzkgVar.zza();
                return;
            }
            this.zza = 0L;
        }
        if (!this.zzn.zzM() || !zzai()) {
            zzay().zzj().zza("Nothing to upload or uploading impossible");
            zzm().zzc();
            zzkg zzkgVar2 = this.zzg;
            zzak(zzkgVar2);
            zzkgVar2.zza();
            return;
        }
        long jCurrentTimeMillis = zzav().currentTimeMillis();
        zzg();
        long jMax3 = Math.max(0L, zzdy.zzz.zza(null).longValue());
        zzaj zzajVar = this.zze;
        zzak(zzajVar);
        boolean z = true;
        if (!zzajVar.zzJ()) {
            zzaj zzajVar2 = this.zze;
            zzak(zzajVar2);
            if (!zzajVar2.zzI()) {
                z = false;
            }
        }
        if (z) {
            String strZzl = zzg().zzl();
            if (TextUtils.isEmpty(strZzl) || ".none.".equals(strZzl)) {
                zzg();
                jMax = Math.max(0L, zzdy.zzt.zza(null).longValue());
            } else {
                zzg();
                jMax = Math.max(0L, zzdy.zzu.zza(null).longValue());
            }
        } else {
            zzg();
            jMax = Math.max(0L, zzdy.zzs.zza(null).longValue());
        }
        long jZza = this.zzk.zzc.zza();
        long jZza2 = this.zzk.zzd.zza();
        zzaj zzajVar3 = this.zze;
        zzak(zzajVar3);
        boolean z2 = z;
        long jZzd = zzajVar3.zzd();
        zzaj zzajVar4 = this.zze;
        zzak(zzajVar4);
        long jMax4 = Math.max(jZzd, zzajVar4.zze());
        if (jMax4 == 0) {
            jMax2 = 0;
        } else {
            long jAbs2 = jCurrentTimeMillis - Math.abs(jMax4 - jCurrentTimeMillis);
            long jAbs3 = Math.abs(jZza - jCurrentTimeMillis);
            long jAbs4 = jCurrentTimeMillis - Math.abs(jZza2 - jCurrentTimeMillis);
            long jMax5 = Math.max(jCurrentTimeMillis - jAbs3, jAbs4);
            jMax2 = jAbs2 + jMax3;
            if (z2 && jMax5 > 0) {
                jMax2 = Math.min(jAbs2, jMax5) + jMax;
            }
            zzku zzkuVar = this.zzi;
            zzak(zzkuVar);
            if (!zzkuVar.zzx(jMax5, jMax)) {
                jMax2 = jMax5 + jMax;
            }
            if (jAbs4 != 0 && jAbs4 >= jAbs2) {
                int i = 0;
                while (true) {
                    zzg();
                    if (i >= Math.min(20, Math.max(0, zzdy.zzB.zza(null).intValue()))) {
                        break;
                    }
                    zzg();
                    jMax2 += Math.max(0L, zzdy.zzA.zza(null).longValue()) * (1 << i);
                    if (jMax2 > jAbs4) {
                        break;
                    } else {
                        i++;
                    }
                }
            }
        }
        if (jMax2 == 0) {
            zzay().zzj().zza("Next upload time is 0");
            zzm().zzc();
            zzkg zzkgVar3 = this.zzg;
            zzak(zzkgVar3);
            zzkgVar3.zza();
            return;
        }
        zzer zzerVar = this.zzd;
        zzak(zzerVar);
        if (!zzerVar.zza()) {
            zzay().zzj().zza("No network");
            zzm().zzb();
            zzkg zzkgVar4 = this.zzg;
            zzak(zzkgVar4);
            zzkgVar4.zza();
            return;
        }
        long jZza3 = this.zzk.zzb.zza();
        zzg();
        long jMax6 = Math.max(0L, zzdy.zzq.zza(null).longValue());
        zzku zzkuVar2 = this.zzi;
        zzak(zzkuVar2);
        if (!zzkuVar2.zzx(jZza3, jMax6)) {
            jMax2 = Math.max(jMax2, jZza3 + jMax6);
        }
        zzm().zzc();
        long jCurrentTimeMillis2 = jMax2 - zzav().currentTimeMillis();
        if (jCurrentTimeMillis2 <= 0) {
            zzg();
            jCurrentTimeMillis2 = Math.max(0L, zzdy.zzv.zza(null).longValue());
            this.zzk.zzc.zzb(zzav().currentTimeMillis());
        }
        zzay().zzj().zzb("Upload scheduled in approximately ms", Long.valueOf(jCurrentTimeMillis2));
        zzkg zzkgVar5 = this.zzg;
        zzak(zzkgVar5);
        zzkgVar5.zzd(jCurrentTimeMillis2);
    }

    private final boolean zzag(zzp zzpVar) {
        zzom.zzc();
        return zzg().zzs(zzpVar.zza, zzdy.zzac) ? (TextUtils.isEmpty(zzpVar.zzb) && TextUtils.isEmpty(zzpVar.zzu) && TextUtils.isEmpty(zzpVar.zzq)) ? false : true : (TextUtils.isEmpty(zzpVar.zzb) && TextUtils.isEmpty(zzpVar.zzq)) ? false : true;
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x0396 A[Catch: all -> 0x0e20, TryCatch #0 {all -> 0x0e20, blocks: (B:3:0x0010, B:5:0x0028, B:8:0x0030, B:9:0x0058, B:12:0x006a, B:15:0x0091, B:17:0x00c7, B:20:0x00d9, B:22:0x00e3, B:214:0x069e, B:24:0x010b, B:26:0x0119, B:29:0x0139, B:31:0x013f, B:33:0x0151, B:35:0x015f, B:37:0x016f, B:38:0x017c, B:39:0x0181, B:42:0x019a, B:113:0x03c7, B:114:0x03d3, B:117:0x03de, B:123:0x0401, B:120:0x03f0, B:145:0x0480, B:147:0x048c, B:150:0x049f, B:152:0x04b0, B:154:0x04bc, B:203:0x0630, B:205:0x063a, B:207:0x0640, B:208:0x0658, B:210:0x066b, B:211:0x0683, B:213:0x068c, B:160:0x04eb, B:162:0x04fa, B:165:0x050f, B:167:0x0521, B:169:0x052d, B:175:0x054f, B:177:0x0565, B:179:0x0571, B:182:0x0584, B:184:0x0597, B:186:0x05e0, B:188:0x05e7, B:190:0x05ed, B:192:0x05f7, B:194:0x05fe, B:196:0x0604, B:198:0x0610, B:199:0x0622, B:127:0x0409, B:129:0x0415, B:131:0x0421, B:143:0x0466, B:135:0x043e, B:138:0x0450, B:140:0x0456, B:142:0x0460, B:68:0x01fa, B:71:0x0204, B:73:0x0212, B:78:0x025d, B:74:0x0230, B:76:0x0241, B:82:0x026e, B:85:0x029d, B:86:0x02c7, B:88:0x02fe, B:90:0x0304, B:93:0x0310, B:95:0x0346, B:96:0x0361, B:98:0x0367, B:100:0x0375, B:104:0x0388, B:101:0x037d, B:107:0x038f, B:110:0x0396, B:111:0x03ae, B:219:0x06b9, B:221:0x06c7, B:223:0x06d2, B:234:0x0706, B:224:0x06da, B:226:0x06e5, B:228:0x06eb, B:231:0x06f7, B:233:0x0701, B:236:0x070b, B:237:0x0717, B:240:0x071f, B:242:0x0731, B:243:0x073d, B:245:0x0745, B:249:0x076a, B:251:0x078f, B:253:0x07a0, B:255:0x07a6, B:257:0x07b2, B:258:0x07e3, B:260:0x07e9, B:262:0x07f7, B:263:0x07fb, B:264:0x07fe, B:265:0x0801, B:266:0x080f, B:268:0x0815, B:270:0x0825, B:271:0x082c, B:273:0x0838, B:274:0x083f, B:275:0x0842, B:277:0x0880, B:278:0x0893, B:280:0x0899, B:283:0x08b1, B:285:0x08cc, B:287:0x08e3, B:289:0x08e8, B:291:0x08ec, B:293:0x08f0, B:295:0x08fa, B:296:0x0904, B:298:0x0908, B:300:0x090e, B:301:0x091e, B:302:0x0927, B:371:0x0b7b, B:304:0x0932, B:306:0x0949, B:312:0x0965, B:314:0x0987, B:315:0x098f, B:317:0x0995, B:319:0x09a7, B:326:0x09d0, B:327:0x09f3, B:329:0x09ff, B:331:0x0a14, B:333:0x0a55, B:337:0x0a6d, B:339:0x0a74, B:341:0x0a83, B:343:0x0a87, B:345:0x0a8b, B:347:0x0a8f, B:348:0x0a9b, B:349:0x0aa0, B:351:0x0aa6, B:353:0x0ac2, B:354:0x0ac7, B:370:0x0b78, B:355:0x0ae0, B:357:0x0ae8, B:361:0x0b13, B:363:0x0b3f, B:365:0x0b4e, B:366:0x0b5e, B:368:0x0b68, B:358:0x0af9, B:324:0x09bb, B:310:0x0950, B:372:0x0b83, B:374:0x0b8f, B:375:0x0b95, B:376:0x0b9d, B:378:0x0ba3, B:381:0x0bbc, B:383:0x0bcd, B:403:0x0c41, B:405:0x0c47, B:407:0x0c5f, B:410:0x0c66, B:415:0x0c95, B:417:0x0cd7, B:420:0x0d0c, B:421:0x0d10, B:422:0x0d1b, B:424:0x0d5e, B:425:0x0d6b, B:427:0x0d7a, B:431:0x0d94, B:433:0x0dad, B:419:0x0ce9, B:411:0x0c6e, B:413:0x0c7a, B:414:0x0c7e, B:434:0x0dc5, B:436:0x0dd9, B:441:0x0dfc, B:440:0x0de9, B:384:0x0be5, B:386:0x0beb, B:388:0x0bf5, B:390:0x0bfc, B:396:0x0c0c, B:398:0x0c13, B:400:0x0c32, B:402:0x0c39, B:401:0x0c36, B:397:0x0c10, B:389:0x0bf9, B:246:0x074a, B:248:0x0750, B:444:0x0e0e), top: B:450:0x0010, inners: #1, #2, #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:111:0x03ae A[Catch: all -> 0x0e20, TryCatch #0 {all -> 0x0e20, blocks: (B:3:0x0010, B:5:0x0028, B:8:0x0030, B:9:0x0058, B:12:0x006a, B:15:0x0091, B:17:0x00c7, B:20:0x00d9, B:22:0x00e3, B:214:0x069e, B:24:0x010b, B:26:0x0119, B:29:0x0139, B:31:0x013f, B:33:0x0151, B:35:0x015f, B:37:0x016f, B:38:0x017c, B:39:0x0181, B:42:0x019a, B:113:0x03c7, B:114:0x03d3, B:117:0x03de, B:123:0x0401, B:120:0x03f0, B:145:0x0480, B:147:0x048c, B:150:0x049f, B:152:0x04b0, B:154:0x04bc, B:203:0x0630, B:205:0x063a, B:207:0x0640, B:208:0x0658, B:210:0x066b, B:211:0x0683, B:213:0x068c, B:160:0x04eb, B:162:0x04fa, B:165:0x050f, B:167:0x0521, B:169:0x052d, B:175:0x054f, B:177:0x0565, B:179:0x0571, B:182:0x0584, B:184:0x0597, B:186:0x05e0, B:188:0x05e7, B:190:0x05ed, B:192:0x05f7, B:194:0x05fe, B:196:0x0604, B:198:0x0610, B:199:0x0622, B:127:0x0409, B:129:0x0415, B:131:0x0421, B:143:0x0466, B:135:0x043e, B:138:0x0450, B:140:0x0456, B:142:0x0460, B:68:0x01fa, B:71:0x0204, B:73:0x0212, B:78:0x025d, B:74:0x0230, B:76:0x0241, B:82:0x026e, B:85:0x029d, B:86:0x02c7, B:88:0x02fe, B:90:0x0304, B:93:0x0310, B:95:0x0346, B:96:0x0361, B:98:0x0367, B:100:0x0375, B:104:0x0388, B:101:0x037d, B:107:0x038f, B:110:0x0396, B:111:0x03ae, B:219:0x06b9, B:221:0x06c7, B:223:0x06d2, B:234:0x0706, B:224:0x06da, B:226:0x06e5, B:228:0x06eb, B:231:0x06f7, B:233:0x0701, B:236:0x070b, B:237:0x0717, B:240:0x071f, B:242:0x0731, B:243:0x073d, B:245:0x0745, B:249:0x076a, B:251:0x078f, B:253:0x07a0, B:255:0x07a6, B:257:0x07b2, B:258:0x07e3, B:260:0x07e9, B:262:0x07f7, B:263:0x07fb, B:264:0x07fe, B:265:0x0801, B:266:0x080f, B:268:0x0815, B:270:0x0825, B:271:0x082c, B:273:0x0838, B:274:0x083f, B:275:0x0842, B:277:0x0880, B:278:0x0893, B:280:0x0899, B:283:0x08b1, B:285:0x08cc, B:287:0x08e3, B:289:0x08e8, B:291:0x08ec, B:293:0x08f0, B:295:0x08fa, B:296:0x0904, B:298:0x0908, B:300:0x090e, B:301:0x091e, B:302:0x0927, B:371:0x0b7b, B:304:0x0932, B:306:0x0949, B:312:0x0965, B:314:0x0987, B:315:0x098f, B:317:0x0995, B:319:0x09a7, B:326:0x09d0, B:327:0x09f3, B:329:0x09ff, B:331:0x0a14, B:333:0x0a55, B:337:0x0a6d, B:339:0x0a74, B:341:0x0a83, B:343:0x0a87, B:345:0x0a8b, B:347:0x0a8f, B:348:0x0a9b, B:349:0x0aa0, B:351:0x0aa6, B:353:0x0ac2, B:354:0x0ac7, B:370:0x0b78, B:355:0x0ae0, B:357:0x0ae8, B:361:0x0b13, B:363:0x0b3f, B:365:0x0b4e, B:366:0x0b5e, B:368:0x0b68, B:358:0x0af9, B:324:0x09bb, B:310:0x0950, B:372:0x0b83, B:374:0x0b8f, B:375:0x0b95, B:376:0x0b9d, B:378:0x0ba3, B:381:0x0bbc, B:383:0x0bcd, B:403:0x0c41, B:405:0x0c47, B:407:0x0c5f, B:410:0x0c66, B:415:0x0c95, B:417:0x0cd7, B:420:0x0d0c, B:421:0x0d10, B:422:0x0d1b, B:424:0x0d5e, B:425:0x0d6b, B:427:0x0d7a, B:431:0x0d94, B:433:0x0dad, B:419:0x0ce9, B:411:0x0c6e, B:413:0x0c7a, B:414:0x0c7e, B:434:0x0dc5, B:436:0x0dd9, B:441:0x0dfc, B:440:0x0de9, B:384:0x0be5, B:386:0x0beb, B:388:0x0bf5, B:390:0x0bfc, B:396:0x0c0c, B:398:0x0c13, B:400:0x0c32, B:402:0x0c39, B:401:0x0c36, B:397:0x0c10, B:389:0x0bf9, B:246:0x074a, B:248:0x0750, B:444:0x0e0e), top: B:450:0x0010, inners: #1, #2, #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:113:0x03c7 A[Catch: all -> 0x0e20, TryCatch #0 {all -> 0x0e20, blocks: (B:3:0x0010, B:5:0x0028, B:8:0x0030, B:9:0x0058, B:12:0x006a, B:15:0x0091, B:17:0x00c7, B:20:0x00d9, B:22:0x00e3, B:214:0x069e, B:24:0x010b, B:26:0x0119, B:29:0x0139, B:31:0x013f, B:33:0x0151, B:35:0x015f, B:37:0x016f, B:38:0x017c, B:39:0x0181, B:42:0x019a, B:113:0x03c7, B:114:0x03d3, B:117:0x03de, B:123:0x0401, B:120:0x03f0, B:145:0x0480, B:147:0x048c, B:150:0x049f, B:152:0x04b0, B:154:0x04bc, B:203:0x0630, B:205:0x063a, B:207:0x0640, B:208:0x0658, B:210:0x066b, B:211:0x0683, B:213:0x068c, B:160:0x04eb, B:162:0x04fa, B:165:0x050f, B:167:0x0521, B:169:0x052d, B:175:0x054f, B:177:0x0565, B:179:0x0571, B:182:0x0584, B:184:0x0597, B:186:0x05e0, B:188:0x05e7, B:190:0x05ed, B:192:0x05f7, B:194:0x05fe, B:196:0x0604, B:198:0x0610, B:199:0x0622, B:127:0x0409, B:129:0x0415, B:131:0x0421, B:143:0x0466, B:135:0x043e, B:138:0x0450, B:140:0x0456, B:142:0x0460, B:68:0x01fa, B:71:0x0204, B:73:0x0212, B:78:0x025d, B:74:0x0230, B:76:0x0241, B:82:0x026e, B:85:0x029d, B:86:0x02c7, B:88:0x02fe, B:90:0x0304, B:93:0x0310, B:95:0x0346, B:96:0x0361, B:98:0x0367, B:100:0x0375, B:104:0x0388, B:101:0x037d, B:107:0x038f, B:110:0x0396, B:111:0x03ae, B:219:0x06b9, B:221:0x06c7, B:223:0x06d2, B:234:0x0706, B:224:0x06da, B:226:0x06e5, B:228:0x06eb, B:231:0x06f7, B:233:0x0701, B:236:0x070b, B:237:0x0717, B:240:0x071f, B:242:0x0731, B:243:0x073d, B:245:0x0745, B:249:0x076a, B:251:0x078f, B:253:0x07a0, B:255:0x07a6, B:257:0x07b2, B:258:0x07e3, B:260:0x07e9, B:262:0x07f7, B:263:0x07fb, B:264:0x07fe, B:265:0x0801, B:266:0x080f, B:268:0x0815, B:270:0x0825, B:271:0x082c, B:273:0x0838, B:274:0x083f, B:275:0x0842, B:277:0x0880, B:278:0x0893, B:280:0x0899, B:283:0x08b1, B:285:0x08cc, B:287:0x08e3, B:289:0x08e8, B:291:0x08ec, B:293:0x08f0, B:295:0x08fa, B:296:0x0904, B:298:0x0908, B:300:0x090e, B:301:0x091e, B:302:0x0927, B:371:0x0b7b, B:304:0x0932, B:306:0x0949, B:312:0x0965, B:314:0x0987, B:315:0x098f, B:317:0x0995, B:319:0x09a7, B:326:0x09d0, B:327:0x09f3, B:329:0x09ff, B:331:0x0a14, B:333:0x0a55, B:337:0x0a6d, B:339:0x0a74, B:341:0x0a83, B:343:0x0a87, B:345:0x0a8b, B:347:0x0a8f, B:348:0x0a9b, B:349:0x0aa0, B:351:0x0aa6, B:353:0x0ac2, B:354:0x0ac7, B:370:0x0b78, B:355:0x0ae0, B:357:0x0ae8, B:361:0x0b13, B:363:0x0b3f, B:365:0x0b4e, B:366:0x0b5e, B:368:0x0b68, B:358:0x0af9, B:324:0x09bb, B:310:0x0950, B:372:0x0b83, B:374:0x0b8f, B:375:0x0b95, B:376:0x0b9d, B:378:0x0ba3, B:381:0x0bbc, B:383:0x0bcd, B:403:0x0c41, B:405:0x0c47, B:407:0x0c5f, B:410:0x0c66, B:415:0x0c95, B:417:0x0cd7, B:420:0x0d0c, B:421:0x0d10, B:422:0x0d1b, B:424:0x0d5e, B:425:0x0d6b, B:427:0x0d7a, B:431:0x0d94, B:433:0x0dad, B:419:0x0ce9, B:411:0x0c6e, B:413:0x0c7a, B:414:0x0c7e, B:434:0x0dc5, B:436:0x0dd9, B:441:0x0dfc, B:440:0x0de9, B:384:0x0be5, B:386:0x0beb, B:388:0x0bf5, B:390:0x0bfc, B:396:0x0c0c, B:398:0x0c13, B:400:0x0c32, B:402:0x0c39, B:401:0x0c36, B:397:0x0c10, B:389:0x0bf9, B:246:0x074a, B:248:0x0750, B:444:0x0e0e), top: B:450:0x0010, inners: #1, #2, #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:144:0x047f  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x048c A[Catch: all -> 0x0e20, TryCatch #0 {all -> 0x0e20, blocks: (B:3:0x0010, B:5:0x0028, B:8:0x0030, B:9:0x0058, B:12:0x006a, B:15:0x0091, B:17:0x00c7, B:20:0x00d9, B:22:0x00e3, B:214:0x069e, B:24:0x010b, B:26:0x0119, B:29:0x0139, B:31:0x013f, B:33:0x0151, B:35:0x015f, B:37:0x016f, B:38:0x017c, B:39:0x0181, B:42:0x019a, B:113:0x03c7, B:114:0x03d3, B:117:0x03de, B:123:0x0401, B:120:0x03f0, B:145:0x0480, B:147:0x048c, B:150:0x049f, B:152:0x04b0, B:154:0x04bc, B:203:0x0630, B:205:0x063a, B:207:0x0640, B:208:0x0658, B:210:0x066b, B:211:0x0683, B:213:0x068c, B:160:0x04eb, B:162:0x04fa, B:165:0x050f, B:167:0x0521, B:169:0x052d, B:175:0x054f, B:177:0x0565, B:179:0x0571, B:182:0x0584, B:184:0x0597, B:186:0x05e0, B:188:0x05e7, B:190:0x05ed, B:192:0x05f7, B:194:0x05fe, B:196:0x0604, B:198:0x0610, B:199:0x0622, B:127:0x0409, B:129:0x0415, B:131:0x0421, B:143:0x0466, B:135:0x043e, B:138:0x0450, B:140:0x0456, B:142:0x0460, B:68:0x01fa, B:71:0x0204, B:73:0x0212, B:78:0x025d, B:74:0x0230, B:76:0x0241, B:82:0x026e, B:85:0x029d, B:86:0x02c7, B:88:0x02fe, B:90:0x0304, B:93:0x0310, B:95:0x0346, B:96:0x0361, B:98:0x0367, B:100:0x0375, B:104:0x0388, B:101:0x037d, B:107:0x038f, B:110:0x0396, B:111:0x03ae, B:219:0x06b9, B:221:0x06c7, B:223:0x06d2, B:234:0x0706, B:224:0x06da, B:226:0x06e5, B:228:0x06eb, B:231:0x06f7, B:233:0x0701, B:236:0x070b, B:237:0x0717, B:240:0x071f, B:242:0x0731, B:243:0x073d, B:245:0x0745, B:249:0x076a, B:251:0x078f, B:253:0x07a0, B:255:0x07a6, B:257:0x07b2, B:258:0x07e3, B:260:0x07e9, B:262:0x07f7, B:263:0x07fb, B:264:0x07fe, B:265:0x0801, B:266:0x080f, B:268:0x0815, B:270:0x0825, B:271:0x082c, B:273:0x0838, B:274:0x083f, B:275:0x0842, B:277:0x0880, B:278:0x0893, B:280:0x0899, B:283:0x08b1, B:285:0x08cc, B:287:0x08e3, B:289:0x08e8, B:291:0x08ec, B:293:0x08f0, B:295:0x08fa, B:296:0x0904, B:298:0x0908, B:300:0x090e, B:301:0x091e, B:302:0x0927, B:371:0x0b7b, B:304:0x0932, B:306:0x0949, B:312:0x0965, B:314:0x0987, B:315:0x098f, B:317:0x0995, B:319:0x09a7, B:326:0x09d0, B:327:0x09f3, B:329:0x09ff, B:331:0x0a14, B:333:0x0a55, B:337:0x0a6d, B:339:0x0a74, B:341:0x0a83, B:343:0x0a87, B:345:0x0a8b, B:347:0x0a8f, B:348:0x0a9b, B:349:0x0aa0, B:351:0x0aa6, B:353:0x0ac2, B:354:0x0ac7, B:370:0x0b78, B:355:0x0ae0, B:357:0x0ae8, B:361:0x0b13, B:363:0x0b3f, B:365:0x0b4e, B:366:0x0b5e, B:368:0x0b68, B:358:0x0af9, B:324:0x09bb, B:310:0x0950, B:372:0x0b83, B:374:0x0b8f, B:375:0x0b95, B:376:0x0b9d, B:378:0x0ba3, B:381:0x0bbc, B:383:0x0bcd, B:403:0x0c41, B:405:0x0c47, B:407:0x0c5f, B:410:0x0c66, B:415:0x0c95, B:417:0x0cd7, B:420:0x0d0c, B:421:0x0d10, B:422:0x0d1b, B:424:0x0d5e, B:425:0x0d6b, B:427:0x0d7a, B:431:0x0d94, B:433:0x0dad, B:419:0x0ce9, B:411:0x0c6e, B:413:0x0c7a, B:414:0x0c7e, B:434:0x0dc5, B:436:0x0dd9, B:441:0x0dfc, B:440:0x0de9, B:384:0x0be5, B:386:0x0beb, B:388:0x0bf5, B:390:0x0bfc, B:396:0x0c0c, B:398:0x0c13, B:400:0x0c32, B:402:0x0c39, B:401:0x0c36, B:397:0x0c10, B:389:0x0bf9, B:246:0x074a, B:248:0x0750, B:444:0x0e0e), top: B:450:0x0010, inners: #1, #2, #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:160:0x04eb A[Catch: all -> 0x0e20, TryCatch #0 {all -> 0x0e20, blocks: (B:3:0x0010, B:5:0x0028, B:8:0x0030, B:9:0x0058, B:12:0x006a, B:15:0x0091, B:17:0x00c7, B:20:0x00d9, B:22:0x00e3, B:214:0x069e, B:24:0x010b, B:26:0x0119, B:29:0x0139, B:31:0x013f, B:33:0x0151, B:35:0x015f, B:37:0x016f, B:38:0x017c, B:39:0x0181, B:42:0x019a, B:113:0x03c7, B:114:0x03d3, B:117:0x03de, B:123:0x0401, B:120:0x03f0, B:145:0x0480, B:147:0x048c, B:150:0x049f, B:152:0x04b0, B:154:0x04bc, B:203:0x0630, B:205:0x063a, B:207:0x0640, B:208:0x0658, B:210:0x066b, B:211:0x0683, B:213:0x068c, B:160:0x04eb, B:162:0x04fa, B:165:0x050f, B:167:0x0521, B:169:0x052d, B:175:0x054f, B:177:0x0565, B:179:0x0571, B:182:0x0584, B:184:0x0597, B:186:0x05e0, B:188:0x05e7, B:190:0x05ed, B:192:0x05f7, B:194:0x05fe, B:196:0x0604, B:198:0x0610, B:199:0x0622, B:127:0x0409, B:129:0x0415, B:131:0x0421, B:143:0x0466, B:135:0x043e, B:138:0x0450, B:140:0x0456, B:142:0x0460, B:68:0x01fa, B:71:0x0204, B:73:0x0212, B:78:0x025d, B:74:0x0230, B:76:0x0241, B:82:0x026e, B:85:0x029d, B:86:0x02c7, B:88:0x02fe, B:90:0x0304, B:93:0x0310, B:95:0x0346, B:96:0x0361, B:98:0x0367, B:100:0x0375, B:104:0x0388, B:101:0x037d, B:107:0x038f, B:110:0x0396, B:111:0x03ae, B:219:0x06b9, B:221:0x06c7, B:223:0x06d2, B:234:0x0706, B:224:0x06da, B:226:0x06e5, B:228:0x06eb, B:231:0x06f7, B:233:0x0701, B:236:0x070b, B:237:0x0717, B:240:0x071f, B:242:0x0731, B:243:0x073d, B:245:0x0745, B:249:0x076a, B:251:0x078f, B:253:0x07a0, B:255:0x07a6, B:257:0x07b2, B:258:0x07e3, B:260:0x07e9, B:262:0x07f7, B:263:0x07fb, B:264:0x07fe, B:265:0x0801, B:266:0x080f, B:268:0x0815, B:270:0x0825, B:271:0x082c, B:273:0x0838, B:274:0x083f, B:275:0x0842, B:277:0x0880, B:278:0x0893, B:280:0x0899, B:283:0x08b1, B:285:0x08cc, B:287:0x08e3, B:289:0x08e8, B:291:0x08ec, B:293:0x08f0, B:295:0x08fa, B:296:0x0904, B:298:0x0908, B:300:0x090e, B:301:0x091e, B:302:0x0927, B:371:0x0b7b, B:304:0x0932, B:306:0x0949, B:312:0x0965, B:314:0x0987, B:315:0x098f, B:317:0x0995, B:319:0x09a7, B:326:0x09d0, B:327:0x09f3, B:329:0x09ff, B:331:0x0a14, B:333:0x0a55, B:337:0x0a6d, B:339:0x0a74, B:341:0x0a83, B:343:0x0a87, B:345:0x0a8b, B:347:0x0a8f, B:348:0x0a9b, B:349:0x0aa0, B:351:0x0aa6, B:353:0x0ac2, B:354:0x0ac7, B:370:0x0b78, B:355:0x0ae0, B:357:0x0ae8, B:361:0x0b13, B:363:0x0b3f, B:365:0x0b4e, B:366:0x0b5e, B:368:0x0b68, B:358:0x0af9, B:324:0x09bb, B:310:0x0950, B:372:0x0b83, B:374:0x0b8f, B:375:0x0b95, B:376:0x0b9d, B:378:0x0ba3, B:381:0x0bbc, B:383:0x0bcd, B:403:0x0c41, B:405:0x0c47, B:407:0x0c5f, B:410:0x0c66, B:415:0x0c95, B:417:0x0cd7, B:420:0x0d0c, B:421:0x0d10, B:422:0x0d1b, B:424:0x0d5e, B:425:0x0d6b, B:427:0x0d7a, B:431:0x0d94, B:433:0x0dad, B:419:0x0ce9, B:411:0x0c6e, B:413:0x0c7a, B:414:0x0c7e, B:434:0x0dc5, B:436:0x0dd9, B:441:0x0dfc, B:440:0x0de9, B:384:0x0be5, B:386:0x0beb, B:388:0x0bf5, B:390:0x0bfc, B:396:0x0c0c, B:398:0x0c13, B:400:0x0c32, B:402:0x0c39, B:401:0x0c36, B:397:0x0c10, B:389:0x0bf9, B:246:0x074a, B:248:0x0750, B:444:0x0e0e), top: B:450:0x0010, inners: #1, #2, #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:203:0x0630 A[Catch: all -> 0x0e20, TryCatch #0 {all -> 0x0e20, blocks: (B:3:0x0010, B:5:0x0028, B:8:0x0030, B:9:0x0058, B:12:0x006a, B:15:0x0091, B:17:0x00c7, B:20:0x00d9, B:22:0x00e3, B:214:0x069e, B:24:0x010b, B:26:0x0119, B:29:0x0139, B:31:0x013f, B:33:0x0151, B:35:0x015f, B:37:0x016f, B:38:0x017c, B:39:0x0181, B:42:0x019a, B:113:0x03c7, B:114:0x03d3, B:117:0x03de, B:123:0x0401, B:120:0x03f0, B:145:0x0480, B:147:0x048c, B:150:0x049f, B:152:0x04b0, B:154:0x04bc, B:203:0x0630, B:205:0x063a, B:207:0x0640, B:208:0x0658, B:210:0x066b, B:211:0x0683, B:213:0x068c, B:160:0x04eb, B:162:0x04fa, B:165:0x050f, B:167:0x0521, B:169:0x052d, B:175:0x054f, B:177:0x0565, B:179:0x0571, B:182:0x0584, B:184:0x0597, B:186:0x05e0, B:188:0x05e7, B:190:0x05ed, B:192:0x05f7, B:194:0x05fe, B:196:0x0604, B:198:0x0610, B:199:0x0622, B:127:0x0409, B:129:0x0415, B:131:0x0421, B:143:0x0466, B:135:0x043e, B:138:0x0450, B:140:0x0456, B:142:0x0460, B:68:0x01fa, B:71:0x0204, B:73:0x0212, B:78:0x025d, B:74:0x0230, B:76:0x0241, B:82:0x026e, B:85:0x029d, B:86:0x02c7, B:88:0x02fe, B:90:0x0304, B:93:0x0310, B:95:0x0346, B:96:0x0361, B:98:0x0367, B:100:0x0375, B:104:0x0388, B:101:0x037d, B:107:0x038f, B:110:0x0396, B:111:0x03ae, B:219:0x06b9, B:221:0x06c7, B:223:0x06d2, B:234:0x0706, B:224:0x06da, B:226:0x06e5, B:228:0x06eb, B:231:0x06f7, B:233:0x0701, B:236:0x070b, B:237:0x0717, B:240:0x071f, B:242:0x0731, B:243:0x073d, B:245:0x0745, B:249:0x076a, B:251:0x078f, B:253:0x07a0, B:255:0x07a6, B:257:0x07b2, B:258:0x07e3, B:260:0x07e9, B:262:0x07f7, B:263:0x07fb, B:264:0x07fe, B:265:0x0801, B:266:0x080f, B:268:0x0815, B:270:0x0825, B:271:0x082c, B:273:0x0838, B:274:0x083f, B:275:0x0842, B:277:0x0880, B:278:0x0893, B:280:0x0899, B:283:0x08b1, B:285:0x08cc, B:287:0x08e3, B:289:0x08e8, B:291:0x08ec, B:293:0x08f0, B:295:0x08fa, B:296:0x0904, B:298:0x0908, B:300:0x090e, B:301:0x091e, B:302:0x0927, B:371:0x0b7b, B:304:0x0932, B:306:0x0949, B:312:0x0965, B:314:0x0987, B:315:0x098f, B:317:0x0995, B:319:0x09a7, B:326:0x09d0, B:327:0x09f3, B:329:0x09ff, B:331:0x0a14, B:333:0x0a55, B:337:0x0a6d, B:339:0x0a74, B:341:0x0a83, B:343:0x0a87, B:345:0x0a8b, B:347:0x0a8f, B:348:0x0a9b, B:349:0x0aa0, B:351:0x0aa6, B:353:0x0ac2, B:354:0x0ac7, B:370:0x0b78, B:355:0x0ae0, B:357:0x0ae8, B:361:0x0b13, B:363:0x0b3f, B:365:0x0b4e, B:366:0x0b5e, B:368:0x0b68, B:358:0x0af9, B:324:0x09bb, B:310:0x0950, B:372:0x0b83, B:374:0x0b8f, B:375:0x0b95, B:376:0x0b9d, B:378:0x0ba3, B:381:0x0bbc, B:383:0x0bcd, B:403:0x0c41, B:405:0x0c47, B:407:0x0c5f, B:410:0x0c66, B:415:0x0c95, B:417:0x0cd7, B:420:0x0d0c, B:421:0x0d10, B:422:0x0d1b, B:424:0x0d5e, B:425:0x0d6b, B:427:0x0d7a, B:431:0x0d94, B:433:0x0dad, B:419:0x0ce9, B:411:0x0c6e, B:413:0x0c7a, B:414:0x0c7e, B:434:0x0dc5, B:436:0x0dd9, B:441:0x0dfc, B:440:0x0de9, B:384:0x0be5, B:386:0x0beb, B:388:0x0bf5, B:390:0x0bfc, B:396:0x0c0c, B:398:0x0c13, B:400:0x0c32, B:402:0x0c39, B:401:0x0c36, B:397:0x0c10, B:389:0x0bf9, B:246:0x074a, B:248:0x0750, B:444:0x0e0e), top: B:450:0x0010, inners: #1, #2, #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:212:0x068a  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x06da A[Catch: all -> 0x0e20, TryCatch #0 {all -> 0x0e20, blocks: (B:3:0x0010, B:5:0x0028, B:8:0x0030, B:9:0x0058, B:12:0x006a, B:15:0x0091, B:17:0x00c7, B:20:0x00d9, B:22:0x00e3, B:214:0x069e, B:24:0x010b, B:26:0x0119, B:29:0x0139, B:31:0x013f, B:33:0x0151, B:35:0x015f, B:37:0x016f, B:38:0x017c, B:39:0x0181, B:42:0x019a, B:113:0x03c7, B:114:0x03d3, B:117:0x03de, B:123:0x0401, B:120:0x03f0, B:145:0x0480, B:147:0x048c, B:150:0x049f, B:152:0x04b0, B:154:0x04bc, B:203:0x0630, B:205:0x063a, B:207:0x0640, B:208:0x0658, B:210:0x066b, B:211:0x0683, B:213:0x068c, B:160:0x04eb, B:162:0x04fa, B:165:0x050f, B:167:0x0521, B:169:0x052d, B:175:0x054f, B:177:0x0565, B:179:0x0571, B:182:0x0584, B:184:0x0597, B:186:0x05e0, B:188:0x05e7, B:190:0x05ed, B:192:0x05f7, B:194:0x05fe, B:196:0x0604, B:198:0x0610, B:199:0x0622, B:127:0x0409, B:129:0x0415, B:131:0x0421, B:143:0x0466, B:135:0x043e, B:138:0x0450, B:140:0x0456, B:142:0x0460, B:68:0x01fa, B:71:0x0204, B:73:0x0212, B:78:0x025d, B:74:0x0230, B:76:0x0241, B:82:0x026e, B:85:0x029d, B:86:0x02c7, B:88:0x02fe, B:90:0x0304, B:93:0x0310, B:95:0x0346, B:96:0x0361, B:98:0x0367, B:100:0x0375, B:104:0x0388, B:101:0x037d, B:107:0x038f, B:110:0x0396, B:111:0x03ae, B:219:0x06b9, B:221:0x06c7, B:223:0x06d2, B:234:0x0706, B:224:0x06da, B:226:0x06e5, B:228:0x06eb, B:231:0x06f7, B:233:0x0701, B:236:0x070b, B:237:0x0717, B:240:0x071f, B:242:0x0731, B:243:0x073d, B:245:0x0745, B:249:0x076a, B:251:0x078f, B:253:0x07a0, B:255:0x07a6, B:257:0x07b2, B:258:0x07e3, B:260:0x07e9, B:262:0x07f7, B:263:0x07fb, B:264:0x07fe, B:265:0x0801, B:266:0x080f, B:268:0x0815, B:270:0x0825, B:271:0x082c, B:273:0x0838, B:274:0x083f, B:275:0x0842, B:277:0x0880, B:278:0x0893, B:280:0x0899, B:283:0x08b1, B:285:0x08cc, B:287:0x08e3, B:289:0x08e8, B:291:0x08ec, B:293:0x08f0, B:295:0x08fa, B:296:0x0904, B:298:0x0908, B:300:0x090e, B:301:0x091e, B:302:0x0927, B:371:0x0b7b, B:304:0x0932, B:306:0x0949, B:312:0x0965, B:314:0x0987, B:315:0x098f, B:317:0x0995, B:319:0x09a7, B:326:0x09d0, B:327:0x09f3, B:329:0x09ff, B:331:0x0a14, B:333:0x0a55, B:337:0x0a6d, B:339:0x0a74, B:341:0x0a83, B:343:0x0a87, B:345:0x0a8b, B:347:0x0a8f, B:348:0x0a9b, B:349:0x0aa0, B:351:0x0aa6, B:353:0x0ac2, B:354:0x0ac7, B:370:0x0b78, B:355:0x0ae0, B:357:0x0ae8, B:361:0x0b13, B:363:0x0b3f, B:365:0x0b4e, B:366:0x0b5e, B:368:0x0b68, B:358:0x0af9, B:324:0x09bb, B:310:0x0950, B:372:0x0b83, B:374:0x0b8f, B:375:0x0b95, B:376:0x0b9d, B:378:0x0ba3, B:381:0x0bbc, B:383:0x0bcd, B:403:0x0c41, B:405:0x0c47, B:407:0x0c5f, B:410:0x0c66, B:415:0x0c95, B:417:0x0cd7, B:420:0x0d0c, B:421:0x0d10, B:422:0x0d1b, B:424:0x0d5e, B:425:0x0d6b, B:427:0x0d7a, B:431:0x0d94, B:433:0x0dad, B:419:0x0ce9, B:411:0x0c6e, B:413:0x0c7a, B:414:0x0c7e, B:434:0x0dc5, B:436:0x0dd9, B:441:0x0dfc, B:440:0x0de9, B:384:0x0be5, B:386:0x0beb, B:388:0x0bf5, B:390:0x0bfc, B:396:0x0c0c, B:398:0x0c13, B:400:0x0c32, B:402:0x0c39, B:401:0x0c36, B:397:0x0c10, B:389:0x0bf9, B:246:0x074a, B:248:0x0750, B:444:0x0e0e), top: B:450:0x0010, inners: #1, #2, #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:314:0x0987 A[Catch: all -> 0x0e20, TryCatch #0 {all -> 0x0e20, blocks: (B:3:0x0010, B:5:0x0028, B:8:0x0030, B:9:0x0058, B:12:0x006a, B:15:0x0091, B:17:0x00c7, B:20:0x00d9, B:22:0x00e3, B:214:0x069e, B:24:0x010b, B:26:0x0119, B:29:0x0139, B:31:0x013f, B:33:0x0151, B:35:0x015f, B:37:0x016f, B:38:0x017c, B:39:0x0181, B:42:0x019a, B:113:0x03c7, B:114:0x03d3, B:117:0x03de, B:123:0x0401, B:120:0x03f0, B:145:0x0480, B:147:0x048c, B:150:0x049f, B:152:0x04b0, B:154:0x04bc, B:203:0x0630, B:205:0x063a, B:207:0x0640, B:208:0x0658, B:210:0x066b, B:211:0x0683, B:213:0x068c, B:160:0x04eb, B:162:0x04fa, B:165:0x050f, B:167:0x0521, B:169:0x052d, B:175:0x054f, B:177:0x0565, B:179:0x0571, B:182:0x0584, B:184:0x0597, B:186:0x05e0, B:188:0x05e7, B:190:0x05ed, B:192:0x05f7, B:194:0x05fe, B:196:0x0604, B:198:0x0610, B:199:0x0622, B:127:0x0409, B:129:0x0415, B:131:0x0421, B:143:0x0466, B:135:0x043e, B:138:0x0450, B:140:0x0456, B:142:0x0460, B:68:0x01fa, B:71:0x0204, B:73:0x0212, B:78:0x025d, B:74:0x0230, B:76:0x0241, B:82:0x026e, B:85:0x029d, B:86:0x02c7, B:88:0x02fe, B:90:0x0304, B:93:0x0310, B:95:0x0346, B:96:0x0361, B:98:0x0367, B:100:0x0375, B:104:0x0388, B:101:0x037d, B:107:0x038f, B:110:0x0396, B:111:0x03ae, B:219:0x06b9, B:221:0x06c7, B:223:0x06d2, B:234:0x0706, B:224:0x06da, B:226:0x06e5, B:228:0x06eb, B:231:0x06f7, B:233:0x0701, B:236:0x070b, B:237:0x0717, B:240:0x071f, B:242:0x0731, B:243:0x073d, B:245:0x0745, B:249:0x076a, B:251:0x078f, B:253:0x07a0, B:255:0x07a6, B:257:0x07b2, B:258:0x07e3, B:260:0x07e9, B:262:0x07f7, B:263:0x07fb, B:264:0x07fe, B:265:0x0801, B:266:0x080f, B:268:0x0815, B:270:0x0825, B:271:0x082c, B:273:0x0838, B:274:0x083f, B:275:0x0842, B:277:0x0880, B:278:0x0893, B:280:0x0899, B:283:0x08b1, B:285:0x08cc, B:287:0x08e3, B:289:0x08e8, B:291:0x08ec, B:293:0x08f0, B:295:0x08fa, B:296:0x0904, B:298:0x0908, B:300:0x090e, B:301:0x091e, B:302:0x0927, B:371:0x0b7b, B:304:0x0932, B:306:0x0949, B:312:0x0965, B:314:0x0987, B:315:0x098f, B:317:0x0995, B:319:0x09a7, B:326:0x09d0, B:327:0x09f3, B:329:0x09ff, B:331:0x0a14, B:333:0x0a55, B:337:0x0a6d, B:339:0x0a74, B:341:0x0a83, B:343:0x0a87, B:345:0x0a8b, B:347:0x0a8f, B:348:0x0a9b, B:349:0x0aa0, B:351:0x0aa6, B:353:0x0ac2, B:354:0x0ac7, B:370:0x0b78, B:355:0x0ae0, B:357:0x0ae8, B:361:0x0b13, B:363:0x0b3f, B:365:0x0b4e, B:366:0x0b5e, B:368:0x0b68, B:358:0x0af9, B:324:0x09bb, B:310:0x0950, B:372:0x0b83, B:374:0x0b8f, B:375:0x0b95, B:376:0x0b9d, B:378:0x0ba3, B:381:0x0bbc, B:383:0x0bcd, B:403:0x0c41, B:405:0x0c47, B:407:0x0c5f, B:410:0x0c66, B:415:0x0c95, B:417:0x0cd7, B:420:0x0d0c, B:421:0x0d10, B:422:0x0d1b, B:424:0x0d5e, B:425:0x0d6b, B:427:0x0d7a, B:431:0x0d94, B:433:0x0dad, B:419:0x0ce9, B:411:0x0c6e, B:413:0x0c7a, B:414:0x0c7e, B:434:0x0dc5, B:436:0x0dd9, B:441:0x0dfc, B:440:0x0de9, B:384:0x0be5, B:386:0x0beb, B:388:0x0bf5, B:390:0x0bfc, B:396:0x0c0c, B:398:0x0c13, B:400:0x0c32, B:402:0x0c39, B:401:0x0c36, B:397:0x0c10, B:389:0x0bf9, B:246:0x074a, B:248:0x0750, B:444:0x0e0e), top: B:450:0x0010, inners: #1, #2, #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:324:0x09bb A[Catch: all -> 0x0e20, EDGE_INSN: B:498:0x09bb->B:324:0x09bb BREAK  A[LOOP:11: B:315:0x098f->B:323:0x09b8], TryCatch #0 {all -> 0x0e20, blocks: (B:3:0x0010, B:5:0x0028, B:8:0x0030, B:9:0x0058, B:12:0x006a, B:15:0x0091, B:17:0x00c7, B:20:0x00d9, B:22:0x00e3, B:214:0x069e, B:24:0x010b, B:26:0x0119, B:29:0x0139, B:31:0x013f, B:33:0x0151, B:35:0x015f, B:37:0x016f, B:38:0x017c, B:39:0x0181, B:42:0x019a, B:113:0x03c7, B:114:0x03d3, B:117:0x03de, B:123:0x0401, B:120:0x03f0, B:145:0x0480, B:147:0x048c, B:150:0x049f, B:152:0x04b0, B:154:0x04bc, B:203:0x0630, B:205:0x063a, B:207:0x0640, B:208:0x0658, B:210:0x066b, B:211:0x0683, B:213:0x068c, B:160:0x04eb, B:162:0x04fa, B:165:0x050f, B:167:0x0521, B:169:0x052d, B:175:0x054f, B:177:0x0565, B:179:0x0571, B:182:0x0584, B:184:0x0597, B:186:0x05e0, B:188:0x05e7, B:190:0x05ed, B:192:0x05f7, B:194:0x05fe, B:196:0x0604, B:198:0x0610, B:199:0x0622, B:127:0x0409, B:129:0x0415, B:131:0x0421, B:143:0x0466, B:135:0x043e, B:138:0x0450, B:140:0x0456, B:142:0x0460, B:68:0x01fa, B:71:0x0204, B:73:0x0212, B:78:0x025d, B:74:0x0230, B:76:0x0241, B:82:0x026e, B:85:0x029d, B:86:0x02c7, B:88:0x02fe, B:90:0x0304, B:93:0x0310, B:95:0x0346, B:96:0x0361, B:98:0x0367, B:100:0x0375, B:104:0x0388, B:101:0x037d, B:107:0x038f, B:110:0x0396, B:111:0x03ae, B:219:0x06b9, B:221:0x06c7, B:223:0x06d2, B:234:0x0706, B:224:0x06da, B:226:0x06e5, B:228:0x06eb, B:231:0x06f7, B:233:0x0701, B:236:0x070b, B:237:0x0717, B:240:0x071f, B:242:0x0731, B:243:0x073d, B:245:0x0745, B:249:0x076a, B:251:0x078f, B:253:0x07a0, B:255:0x07a6, B:257:0x07b2, B:258:0x07e3, B:260:0x07e9, B:262:0x07f7, B:263:0x07fb, B:264:0x07fe, B:265:0x0801, B:266:0x080f, B:268:0x0815, B:270:0x0825, B:271:0x082c, B:273:0x0838, B:274:0x083f, B:275:0x0842, B:277:0x0880, B:278:0x0893, B:280:0x0899, B:283:0x08b1, B:285:0x08cc, B:287:0x08e3, B:289:0x08e8, B:291:0x08ec, B:293:0x08f0, B:295:0x08fa, B:296:0x0904, B:298:0x0908, B:300:0x090e, B:301:0x091e, B:302:0x0927, B:371:0x0b7b, B:304:0x0932, B:306:0x0949, B:312:0x0965, B:314:0x0987, B:315:0x098f, B:317:0x0995, B:319:0x09a7, B:326:0x09d0, B:327:0x09f3, B:329:0x09ff, B:331:0x0a14, B:333:0x0a55, B:337:0x0a6d, B:339:0x0a74, B:341:0x0a83, B:343:0x0a87, B:345:0x0a8b, B:347:0x0a8f, B:348:0x0a9b, B:349:0x0aa0, B:351:0x0aa6, B:353:0x0ac2, B:354:0x0ac7, B:370:0x0b78, B:355:0x0ae0, B:357:0x0ae8, B:361:0x0b13, B:363:0x0b3f, B:365:0x0b4e, B:366:0x0b5e, B:368:0x0b68, B:358:0x0af9, B:324:0x09bb, B:310:0x0950, B:372:0x0b83, B:374:0x0b8f, B:375:0x0b95, B:376:0x0b9d, B:378:0x0ba3, B:381:0x0bbc, B:383:0x0bcd, B:403:0x0c41, B:405:0x0c47, B:407:0x0c5f, B:410:0x0c66, B:415:0x0c95, B:417:0x0cd7, B:420:0x0d0c, B:421:0x0d10, B:422:0x0d1b, B:424:0x0d5e, B:425:0x0d6b, B:427:0x0d7a, B:431:0x0d94, B:433:0x0dad, B:419:0x0ce9, B:411:0x0c6e, B:413:0x0c7a, B:414:0x0c7e, B:434:0x0dc5, B:436:0x0dd9, B:441:0x0dfc, B:440:0x0de9, B:384:0x0be5, B:386:0x0beb, B:388:0x0bf5, B:390:0x0bfc, B:396:0x0c0c, B:398:0x0c13, B:400:0x0c32, B:402:0x0c39, B:401:0x0c36, B:397:0x0c10, B:389:0x0bf9, B:246:0x074a, B:248:0x0750, B:444:0x0e0e), top: B:450:0x0010, inners: #1, #2, #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:326:0x09d0 A[Catch: all -> 0x0e20, TryCatch #0 {all -> 0x0e20, blocks: (B:3:0x0010, B:5:0x0028, B:8:0x0030, B:9:0x0058, B:12:0x006a, B:15:0x0091, B:17:0x00c7, B:20:0x00d9, B:22:0x00e3, B:214:0x069e, B:24:0x010b, B:26:0x0119, B:29:0x0139, B:31:0x013f, B:33:0x0151, B:35:0x015f, B:37:0x016f, B:38:0x017c, B:39:0x0181, B:42:0x019a, B:113:0x03c7, B:114:0x03d3, B:117:0x03de, B:123:0x0401, B:120:0x03f0, B:145:0x0480, B:147:0x048c, B:150:0x049f, B:152:0x04b0, B:154:0x04bc, B:203:0x0630, B:205:0x063a, B:207:0x0640, B:208:0x0658, B:210:0x066b, B:211:0x0683, B:213:0x068c, B:160:0x04eb, B:162:0x04fa, B:165:0x050f, B:167:0x0521, B:169:0x052d, B:175:0x054f, B:177:0x0565, B:179:0x0571, B:182:0x0584, B:184:0x0597, B:186:0x05e0, B:188:0x05e7, B:190:0x05ed, B:192:0x05f7, B:194:0x05fe, B:196:0x0604, B:198:0x0610, B:199:0x0622, B:127:0x0409, B:129:0x0415, B:131:0x0421, B:143:0x0466, B:135:0x043e, B:138:0x0450, B:140:0x0456, B:142:0x0460, B:68:0x01fa, B:71:0x0204, B:73:0x0212, B:78:0x025d, B:74:0x0230, B:76:0x0241, B:82:0x026e, B:85:0x029d, B:86:0x02c7, B:88:0x02fe, B:90:0x0304, B:93:0x0310, B:95:0x0346, B:96:0x0361, B:98:0x0367, B:100:0x0375, B:104:0x0388, B:101:0x037d, B:107:0x038f, B:110:0x0396, B:111:0x03ae, B:219:0x06b9, B:221:0x06c7, B:223:0x06d2, B:234:0x0706, B:224:0x06da, B:226:0x06e5, B:228:0x06eb, B:231:0x06f7, B:233:0x0701, B:236:0x070b, B:237:0x0717, B:240:0x071f, B:242:0x0731, B:243:0x073d, B:245:0x0745, B:249:0x076a, B:251:0x078f, B:253:0x07a0, B:255:0x07a6, B:257:0x07b2, B:258:0x07e3, B:260:0x07e9, B:262:0x07f7, B:263:0x07fb, B:264:0x07fe, B:265:0x0801, B:266:0x080f, B:268:0x0815, B:270:0x0825, B:271:0x082c, B:273:0x0838, B:274:0x083f, B:275:0x0842, B:277:0x0880, B:278:0x0893, B:280:0x0899, B:283:0x08b1, B:285:0x08cc, B:287:0x08e3, B:289:0x08e8, B:291:0x08ec, B:293:0x08f0, B:295:0x08fa, B:296:0x0904, B:298:0x0908, B:300:0x090e, B:301:0x091e, B:302:0x0927, B:371:0x0b7b, B:304:0x0932, B:306:0x0949, B:312:0x0965, B:314:0x0987, B:315:0x098f, B:317:0x0995, B:319:0x09a7, B:326:0x09d0, B:327:0x09f3, B:329:0x09ff, B:331:0x0a14, B:333:0x0a55, B:337:0x0a6d, B:339:0x0a74, B:341:0x0a83, B:343:0x0a87, B:345:0x0a8b, B:347:0x0a8f, B:348:0x0a9b, B:349:0x0aa0, B:351:0x0aa6, B:353:0x0ac2, B:354:0x0ac7, B:370:0x0b78, B:355:0x0ae0, B:357:0x0ae8, B:361:0x0b13, B:363:0x0b3f, B:365:0x0b4e, B:366:0x0b5e, B:368:0x0b68, B:358:0x0af9, B:324:0x09bb, B:310:0x0950, B:372:0x0b83, B:374:0x0b8f, B:375:0x0b95, B:376:0x0b9d, B:378:0x0ba3, B:381:0x0bbc, B:383:0x0bcd, B:403:0x0c41, B:405:0x0c47, B:407:0x0c5f, B:410:0x0c66, B:415:0x0c95, B:417:0x0cd7, B:420:0x0d0c, B:421:0x0d10, B:422:0x0d1b, B:424:0x0d5e, B:425:0x0d6b, B:427:0x0d7a, B:431:0x0d94, B:433:0x0dad, B:419:0x0ce9, B:411:0x0c6e, B:413:0x0c7a, B:414:0x0c7e, B:434:0x0dc5, B:436:0x0dd9, B:441:0x0dfc, B:440:0x0de9, B:384:0x0be5, B:386:0x0beb, B:388:0x0bf5, B:390:0x0bfc, B:396:0x0c0c, B:398:0x0c13, B:400:0x0c32, B:402:0x0c39, B:401:0x0c36, B:397:0x0c10, B:389:0x0bf9, B:246:0x074a, B:248:0x0750, B:444:0x0e0e), top: B:450:0x0010, inners: #1, #2, #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:327:0x09f3 A[Catch: all -> 0x0e20, TryCatch #0 {all -> 0x0e20, blocks: (B:3:0x0010, B:5:0x0028, B:8:0x0030, B:9:0x0058, B:12:0x006a, B:15:0x0091, B:17:0x00c7, B:20:0x00d9, B:22:0x00e3, B:214:0x069e, B:24:0x010b, B:26:0x0119, B:29:0x0139, B:31:0x013f, B:33:0x0151, B:35:0x015f, B:37:0x016f, B:38:0x017c, B:39:0x0181, B:42:0x019a, B:113:0x03c7, B:114:0x03d3, B:117:0x03de, B:123:0x0401, B:120:0x03f0, B:145:0x0480, B:147:0x048c, B:150:0x049f, B:152:0x04b0, B:154:0x04bc, B:203:0x0630, B:205:0x063a, B:207:0x0640, B:208:0x0658, B:210:0x066b, B:211:0x0683, B:213:0x068c, B:160:0x04eb, B:162:0x04fa, B:165:0x050f, B:167:0x0521, B:169:0x052d, B:175:0x054f, B:177:0x0565, B:179:0x0571, B:182:0x0584, B:184:0x0597, B:186:0x05e0, B:188:0x05e7, B:190:0x05ed, B:192:0x05f7, B:194:0x05fe, B:196:0x0604, B:198:0x0610, B:199:0x0622, B:127:0x0409, B:129:0x0415, B:131:0x0421, B:143:0x0466, B:135:0x043e, B:138:0x0450, B:140:0x0456, B:142:0x0460, B:68:0x01fa, B:71:0x0204, B:73:0x0212, B:78:0x025d, B:74:0x0230, B:76:0x0241, B:82:0x026e, B:85:0x029d, B:86:0x02c7, B:88:0x02fe, B:90:0x0304, B:93:0x0310, B:95:0x0346, B:96:0x0361, B:98:0x0367, B:100:0x0375, B:104:0x0388, B:101:0x037d, B:107:0x038f, B:110:0x0396, B:111:0x03ae, B:219:0x06b9, B:221:0x06c7, B:223:0x06d2, B:234:0x0706, B:224:0x06da, B:226:0x06e5, B:228:0x06eb, B:231:0x06f7, B:233:0x0701, B:236:0x070b, B:237:0x0717, B:240:0x071f, B:242:0x0731, B:243:0x073d, B:245:0x0745, B:249:0x076a, B:251:0x078f, B:253:0x07a0, B:255:0x07a6, B:257:0x07b2, B:258:0x07e3, B:260:0x07e9, B:262:0x07f7, B:263:0x07fb, B:264:0x07fe, B:265:0x0801, B:266:0x080f, B:268:0x0815, B:270:0x0825, B:271:0x082c, B:273:0x0838, B:274:0x083f, B:275:0x0842, B:277:0x0880, B:278:0x0893, B:280:0x0899, B:283:0x08b1, B:285:0x08cc, B:287:0x08e3, B:289:0x08e8, B:291:0x08ec, B:293:0x08f0, B:295:0x08fa, B:296:0x0904, B:298:0x0908, B:300:0x090e, B:301:0x091e, B:302:0x0927, B:371:0x0b7b, B:304:0x0932, B:306:0x0949, B:312:0x0965, B:314:0x0987, B:315:0x098f, B:317:0x0995, B:319:0x09a7, B:326:0x09d0, B:327:0x09f3, B:329:0x09ff, B:331:0x0a14, B:333:0x0a55, B:337:0x0a6d, B:339:0x0a74, B:341:0x0a83, B:343:0x0a87, B:345:0x0a8b, B:347:0x0a8f, B:348:0x0a9b, B:349:0x0aa0, B:351:0x0aa6, B:353:0x0ac2, B:354:0x0ac7, B:370:0x0b78, B:355:0x0ae0, B:357:0x0ae8, B:361:0x0b13, B:363:0x0b3f, B:365:0x0b4e, B:366:0x0b5e, B:368:0x0b68, B:358:0x0af9, B:324:0x09bb, B:310:0x0950, B:372:0x0b83, B:374:0x0b8f, B:375:0x0b95, B:376:0x0b9d, B:378:0x0ba3, B:381:0x0bbc, B:383:0x0bcd, B:403:0x0c41, B:405:0x0c47, B:407:0x0c5f, B:410:0x0c66, B:415:0x0c95, B:417:0x0cd7, B:420:0x0d0c, B:421:0x0d10, B:422:0x0d1b, B:424:0x0d5e, B:425:0x0d6b, B:427:0x0d7a, B:431:0x0d94, B:433:0x0dad, B:419:0x0ce9, B:411:0x0c6e, B:413:0x0c7a, B:414:0x0c7e, B:434:0x0dc5, B:436:0x0dd9, B:441:0x0dfc, B:440:0x0de9, B:384:0x0be5, B:386:0x0beb, B:388:0x0bf5, B:390:0x0bfc, B:396:0x0c0c, B:398:0x0c13, B:400:0x0c32, B:402:0x0c39, B:401:0x0c36, B:397:0x0c10, B:389:0x0bf9, B:246:0x074a, B:248:0x0750, B:444:0x0e0e), top: B:450:0x0010, inners: #1, #2, #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:332:0x0a53 A[PHI: r11
      0x0a53: PHI (r11v21 com.google.android.gms.measurement.internal.zzap) = (r11v20 com.google.android.gms.measurement.internal.zzap), (r11v34 com.google.android.gms.measurement.internal.zzap) binds: [B:328:0x09fd, B:330:0x0a12] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:419:0x0ce9 A[Catch: all -> 0x0e20, TryCatch #0 {all -> 0x0e20, blocks: (B:3:0x0010, B:5:0x0028, B:8:0x0030, B:9:0x0058, B:12:0x006a, B:15:0x0091, B:17:0x00c7, B:20:0x00d9, B:22:0x00e3, B:214:0x069e, B:24:0x010b, B:26:0x0119, B:29:0x0139, B:31:0x013f, B:33:0x0151, B:35:0x015f, B:37:0x016f, B:38:0x017c, B:39:0x0181, B:42:0x019a, B:113:0x03c7, B:114:0x03d3, B:117:0x03de, B:123:0x0401, B:120:0x03f0, B:145:0x0480, B:147:0x048c, B:150:0x049f, B:152:0x04b0, B:154:0x04bc, B:203:0x0630, B:205:0x063a, B:207:0x0640, B:208:0x0658, B:210:0x066b, B:211:0x0683, B:213:0x068c, B:160:0x04eb, B:162:0x04fa, B:165:0x050f, B:167:0x0521, B:169:0x052d, B:175:0x054f, B:177:0x0565, B:179:0x0571, B:182:0x0584, B:184:0x0597, B:186:0x05e0, B:188:0x05e7, B:190:0x05ed, B:192:0x05f7, B:194:0x05fe, B:196:0x0604, B:198:0x0610, B:199:0x0622, B:127:0x0409, B:129:0x0415, B:131:0x0421, B:143:0x0466, B:135:0x043e, B:138:0x0450, B:140:0x0456, B:142:0x0460, B:68:0x01fa, B:71:0x0204, B:73:0x0212, B:78:0x025d, B:74:0x0230, B:76:0x0241, B:82:0x026e, B:85:0x029d, B:86:0x02c7, B:88:0x02fe, B:90:0x0304, B:93:0x0310, B:95:0x0346, B:96:0x0361, B:98:0x0367, B:100:0x0375, B:104:0x0388, B:101:0x037d, B:107:0x038f, B:110:0x0396, B:111:0x03ae, B:219:0x06b9, B:221:0x06c7, B:223:0x06d2, B:234:0x0706, B:224:0x06da, B:226:0x06e5, B:228:0x06eb, B:231:0x06f7, B:233:0x0701, B:236:0x070b, B:237:0x0717, B:240:0x071f, B:242:0x0731, B:243:0x073d, B:245:0x0745, B:249:0x076a, B:251:0x078f, B:253:0x07a0, B:255:0x07a6, B:257:0x07b2, B:258:0x07e3, B:260:0x07e9, B:262:0x07f7, B:263:0x07fb, B:264:0x07fe, B:265:0x0801, B:266:0x080f, B:268:0x0815, B:270:0x0825, B:271:0x082c, B:273:0x0838, B:274:0x083f, B:275:0x0842, B:277:0x0880, B:278:0x0893, B:280:0x0899, B:283:0x08b1, B:285:0x08cc, B:287:0x08e3, B:289:0x08e8, B:291:0x08ec, B:293:0x08f0, B:295:0x08fa, B:296:0x0904, B:298:0x0908, B:300:0x090e, B:301:0x091e, B:302:0x0927, B:371:0x0b7b, B:304:0x0932, B:306:0x0949, B:312:0x0965, B:314:0x0987, B:315:0x098f, B:317:0x0995, B:319:0x09a7, B:326:0x09d0, B:327:0x09f3, B:329:0x09ff, B:331:0x0a14, B:333:0x0a55, B:337:0x0a6d, B:339:0x0a74, B:341:0x0a83, B:343:0x0a87, B:345:0x0a8b, B:347:0x0a8f, B:348:0x0a9b, B:349:0x0aa0, B:351:0x0aa6, B:353:0x0ac2, B:354:0x0ac7, B:370:0x0b78, B:355:0x0ae0, B:357:0x0ae8, B:361:0x0b13, B:363:0x0b3f, B:365:0x0b4e, B:366:0x0b5e, B:368:0x0b68, B:358:0x0af9, B:324:0x09bb, B:310:0x0950, B:372:0x0b83, B:374:0x0b8f, B:375:0x0b95, B:376:0x0b9d, B:378:0x0ba3, B:381:0x0bbc, B:383:0x0bcd, B:403:0x0c41, B:405:0x0c47, B:407:0x0c5f, B:410:0x0c66, B:415:0x0c95, B:417:0x0cd7, B:420:0x0d0c, B:421:0x0d10, B:422:0x0d1b, B:424:0x0d5e, B:425:0x0d6b, B:427:0x0d7a, B:431:0x0d94, B:433:0x0dad, B:419:0x0ce9, B:411:0x0c6e, B:413:0x0c7a, B:414:0x0c7e, B:434:0x0dc5, B:436:0x0dd9, B:441:0x0dfc, B:440:0x0de9, B:384:0x0be5, B:386:0x0beb, B:388:0x0bf5, B:390:0x0bfc, B:396:0x0c0c, B:398:0x0c13, B:400:0x0c32, B:402:0x0c39, B:401:0x0c36, B:397:0x0c10, B:389:0x0bf9, B:246:0x074a, B:248:0x0750, B:444:0x0e0e), top: B:450:0x0010, inners: #1, #2, #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01dc  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01df  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final boolean zzah(String str, long j) {
        String str2;
        long j2;
        long jLongValue;
        zzkr zzkrVar;
        long j3;
        int iZzc;
        long j4;
        SecureRandom secureRandom;
        com.google.android.gms.internal.measurement.zzfx zzfxVar;
        zzkr zzkrVar2;
        zzap zzapVar;
        Long l;
        long jZzr;
        String str3;
        String str4;
        boolean z;
        int i;
        String str5;
        com.google.android.gms.internal.measurement.zzfx zzfxVar2;
        int i2;
        String str6;
        String str7;
        com.google.android.gms.internal.measurement.zzfx zzfxVar3;
        int i3;
        String str8;
        com.google.android.gms.internal.measurement.zzfx zzfxVar4;
        int i4;
        int i5;
        String str9;
        String str10;
        int i6;
        com.google.android.gms.internal.measurement.zzfn zzfnVar;
        int i7;
        int i8;
        com.google.android.gms.internal.measurement.zzfn zzfnVar2;
        byte b;
        String str11 = "_sn";
        String str12 = "_npa";
        String str13 = "_ai";
        zzaj zzajVar = this.zze;
        zzak(zzajVar);
        zzajVar.zzw();
        try {
            zzkr zzkrVar3 = new zzkr(this, null);
            zzaj zzajVar2 = this.zze;
            zzak(zzajVar2);
            zzajVar2.zzW(null, j, this.zzA, zzkrVar3);
            List<com.google.android.gms.internal.measurement.zzfo> list = zzkrVar3.zzc;
            if (list != null && !list.isEmpty()) {
                com.google.android.gms.internal.measurement.zzfx zzfxVarZzbv = zzkrVar3.zza.zzbv();
                zzfxVarZzbv.zzp();
                boolean zZzs = zzg().zzs(zzkrVar3.zza.zzy(), zzdy.zzT);
                com.google.android.gms.internal.measurement.zzfn zzfnVar3 = null;
                com.google.android.gms.internal.measurement.zzfn zzfnVar4 = null;
                int i9 = -1;
                int i10 = 0;
                int i11 = -1;
                long jLongValue2 = 0;
                int i12 = 0;
                int i13 = 0;
                while (true) {
                    String str14 = "_fr";
                    String str15 = "_et";
                    str2 = str12;
                    j2 = jLongValue2;
                    if (i10 >= zzkrVar3.zzc.size()) {
                        break;
                    }
                    com.google.android.gms.internal.measurement.zzfn zzfnVarZzbv = zzkrVar3.zzc.get(i10).zzbv();
                    zzfm zzfmVar = this.zzc;
                    zzak(zzfmVar);
                    int i14 = i10;
                    if (zzfmVar.zzo(zzkrVar3.zza.zzy(), zzfnVarZzbv.zzo())) {
                        zzay().zzk().zzc("Dropping blocked raw event. appId", zzel.zzn(zzkrVar3.zza.zzy()), this.zzn.zzj().zzd(zzfnVarZzbv.zzo()));
                        zzfm zzfmVar2 = this.zzc;
                        zzak(zzfmVar2);
                        if (!zzfmVar2.zzm(zzkrVar3.zza.zzy())) {
                            zzfm zzfmVar3 = this.zzc;
                            zzak(zzfmVar3);
                            if (!zzfmVar3.zzp(zzkrVar3.zza.zzy()) && !"_err".equals(zzfnVarZzbv.zzo())) {
                                zzv().zzM(this.zzC, zzkrVar3.zza.zzy(), 11, "_ev", zzfnVarZzbv.zzo(), 0);
                            }
                        }
                        str3 = str13;
                        zzfxVar4 = zzfxVarZzbv;
                        z = zZzs;
                        jLongValue2 = j2;
                        i7 = i14;
                        str10 = str11;
                    } else {
                        if (zzfnVarZzbv.zzo().equals(zzgs.zza(str13))) {
                            zzfnVarZzbv.zzi(str13);
                            zzay().zzj().zza("Renaming ad_impression to _ai");
                            if (Log.isLoggable(zzay().zzq(), 5)) {
                                int i15 = 0;
                                while (i15 < zzfnVarZzbv.zza()) {
                                    String str16 = str13;
                                    if (FirebaseAnalytics.Param.AD_PLATFORM.equals(zzfnVarZzbv.zzn(i15).zzg()) && !TextUtils.isEmpty(zzfnVarZzbv.zzn(i15).zzh()) && "admob".equalsIgnoreCase(zzfnVarZzbv.zzn(i15).zzh())) {
                                        zzay().zzl().zza("AdMob ad impression logged from app. Potentially duplicative.");
                                    }
                                    i15++;
                                    str13 = str16;
                                }
                            }
                        }
                        str3 = str13;
                        zzfm zzfmVar4 = this.zzc;
                        zzak(zzfmVar4);
                        boolean zZzn = zzfmVar4.zzn(zzkrVar3.zza.zzy(), zzfnVarZzbv.zzo());
                        if (zZzn) {
                            str4 = str11;
                            z = zZzs;
                        } else {
                            zzak(this.zzi);
                            String strZzo = zzfnVarZzbv.zzo();
                            Preconditions.checkNotEmpty(strZzo);
                            z = zZzs;
                            int iHashCode = strZzo.hashCode();
                            str4 = str11;
                            if (iHashCode == 94660) {
                                if (strZzo.equals("_in")) {
                                    b = 0;
                                }
                                if (b != 0) {
                                }
                            } else if (iHashCode != 95025) {
                                b = (iHashCode == 95027 && strZzo.equals("_ui")) ? (byte) 1 : (byte) -1;
                                if (b != 0 && b != 1 && b != 2) {
                                    i2 = i9;
                                    str6 = "_fr";
                                    str5 = "_et";
                                    i = i11;
                                    zZzn = false;
                                    str7 = "_e";
                                    zzfxVar2 = zzfxVarZzbv;
                                }
                                if (!zZzn) {
                                    ArrayList arrayList = new ArrayList(zzfnVarZzbv.zzp());
                                    int i16 = -1;
                                    int i17 = -1;
                                    for (int i18 = 0; i18 < arrayList.size(); i18++) {
                                        if ("value".equals(((com.google.android.gms.internal.measurement.zzfs) arrayList.get(i18)).zzg())) {
                                            i16 = i18;
                                        } else if (FirebaseAnalytics.Param.CURRENCY.equals(((com.google.android.gms.internal.measurement.zzfs) arrayList.get(i18)).zzg())) {
                                            i17 = i18;
                                        }
                                    }
                                    if (i16 != -1) {
                                        if (((com.google.android.gms.internal.measurement.zzfs) arrayList.get(i16)).zzw() || ((com.google.android.gms.internal.measurement.zzfs) arrayList.get(i16)).zzu()) {
                                            if (i17 != -1) {
                                                String strZzh = ((com.google.android.gms.internal.measurement.zzfs) arrayList.get(i17)).zzh();
                                                if (strZzh.length() == 3) {
                                                    int iCharCount = 0;
                                                    while (iCharCount < strZzh.length()) {
                                                        int iCodePointAt = strZzh.codePointAt(iCharCount);
                                                        if (Character.isLetter(iCodePointAt)) {
                                                            iCharCount += Character.charCount(iCodePointAt);
                                                        }
                                                    }
                                                }
                                            }
                                            zzay().zzl().zza("Value parameter discarded. You must also supply a 3-letter ISO_4217 currency code in the currency parameter.");
                                            zzfnVarZzbv.zzh(i16);
                                            zzZ(zzfnVarZzbv, "_c");
                                            zzY(zzfnVarZzbv, 19, FirebaseAnalytics.Param.CURRENCY);
                                            break;
                                        }
                                        zzay().zzl().zza("Value must be specified with a numeric type.");
                                        zzfnVarZzbv.zzh(i16);
                                        zzZ(zzfnVarZzbv, "_c");
                                        zzY(zzfnVarZzbv, 18, "value");
                                    }
                                    if (str7.equals(zzfnVarZzbv.zzo())) {
                                        zzfxVar4 = zzfxVar2;
                                        i4 = i2;
                                        if ("_vs".equals(zzfnVarZzbv.zzo())) {
                                            zzak(this.zzi);
                                            str9 = str5;
                                            if (zzku.zzC(zzfnVarZzbv.zzaA(), str9) == null) {
                                                if (zzfnVar3 == null || Math.abs(zzfnVar3.zzc() - zzfnVarZzbv.zzc()) > 1000) {
                                                    i11 = i;
                                                    zzfnVar4 = zzfnVarZzbv;
                                                    i9 = i12;
                                                } else {
                                                    com.google.android.gms.internal.measurement.zzfn zzfnVarZzax = zzfnVar3.clone();
                                                    if (zzaj(zzfnVarZzax, zzfnVarZzbv)) {
                                                        i6 = i;
                                                        zzfxVar4.zzO(i6, zzfnVarZzax);
                                                        i9 = i4;
                                                        zzfnVar = null;
                                                        zzfnVar3 = null;
                                                    } else {
                                                        i6 = i;
                                                        zzfnVar = zzfnVarZzbv;
                                                        i9 = i12;
                                                    }
                                                    zzfnVar4 = zzfnVar;
                                                    i11 = i6;
                                                }
                                                str10 = str4;
                                            } else {
                                                i5 = i;
                                                str10 = str4;
                                                i11 = i5;
                                                i9 = i4;
                                            }
                                        } else {
                                            i5 = i;
                                            str9 = str5;
                                            if (zzg().zzs(zzkrVar3.zza.zzy(), zzdy.zzaf) && "_ab".equals(zzfnVarZzbv.zzo())) {
                                                zzak(this.zzi);
                                                if (zzku.zzC(zzfnVarZzbv.zzaA(), str9) == null && zzfnVar3 != null && Math.abs(zzfnVar3.zzc() - zzfnVarZzbv.zzc()) <= 4000) {
                                                    com.google.android.gms.internal.measurement.zzfn zzfnVarZzax2 = zzfnVar3.clone();
                                                    zzae(zzfnVarZzax2, zzfnVarZzbv);
                                                    Preconditions.checkArgument(str7.equals(zzfnVarZzax2.zzo()));
                                                    zzak(this.zzi);
                                                    str10 = str4;
                                                    com.google.android.gms.internal.measurement.zzfs zzfsVarZzC = zzku.zzC(zzfnVarZzax2.zzaA(), str10);
                                                    zzak(this.zzi);
                                                    com.google.android.gms.internal.measurement.zzfs zzfsVarZzC2 = zzku.zzC(zzfnVarZzax2.zzaA(), "_sc");
                                                    zzak(this.zzi);
                                                    com.google.android.gms.internal.measurement.zzfs zzfsVarZzC3 = zzku.zzC(zzfnVarZzax2.zzaA(), "_si");
                                                    String strZzh2 = zzfsVarZzC != null ? zzfsVarZzC.zzh() : "";
                                                    if (!TextUtils.isEmpty(strZzh2)) {
                                                        zzak(this.zzi);
                                                        zzku.zzA(zzfnVarZzbv, str10, strZzh2);
                                                    }
                                                    String strZzh3 = zzfsVarZzC2 != null ? zzfsVarZzC2.zzh() : "";
                                                    if (!TextUtils.isEmpty(strZzh3)) {
                                                        zzak(this.zzi);
                                                        zzku.zzA(zzfnVarZzbv, "_sc", strZzh3);
                                                    }
                                                    if (zzfsVarZzC3 != null) {
                                                        zzak(this.zzi);
                                                        zzku.zzA(zzfnVarZzbv, "_si", Long.valueOf(zzfsVarZzC3.zzd()));
                                                    }
                                                    zzfxVar4.zzO(i5, zzfnVarZzax2);
                                                    i11 = i5;
                                                    i9 = i4;
                                                    zzfnVar3 = null;
                                                }
                                            }
                                            str10 = str4;
                                            i11 = i5;
                                            i9 = i4;
                                        }
                                        if (z) {
                                        }
                                    } else {
                                        zzak(this.zzi);
                                        if (zzku.zzC(zzfnVarZzbv.zzaA(), str6) == null) {
                                            if (zzfnVar4 == null || Math.abs(zzfnVar4.zzc() - zzfnVarZzbv.zzc()) > 1000) {
                                                zzfxVar4 = zzfxVar2;
                                                zzfnVar3 = zzfnVarZzbv;
                                                i9 = i2;
                                                i11 = i12;
                                            } else {
                                                com.google.android.gms.internal.measurement.zzfn zzfnVarZzax3 = zzfnVar4.clone();
                                                if (zzaj(zzfnVarZzbv, zzfnVarZzax3)) {
                                                    zzfxVar4 = zzfxVar2;
                                                    i8 = i2;
                                                    zzfxVar4.zzO(i8, zzfnVarZzax3);
                                                    i11 = i;
                                                    zzfnVar2 = null;
                                                    zzfnVar4 = null;
                                                } else {
                                                    zzfxVar4 = zzfxVar2;
                                                    i8 = i2;
                                                    zzfnVar2 = zzfnVarZzbv;
                                                    i11 = i12;
                                                }
                                                zzfnVar3 = zzfnVar2;
                                                i9 = i8;
                                            }
                                            str10 = str4;
                                            str9 = str5;
                                            if (z || !str7.equals(zzfnVarZzbv.zzo())) {
                                                jLongValue2 = j2;
                                                i7 = i14;
                                                zzkrVar3.zzc.set(i7, zzfnVarZzbv.zzaA());
                                                i12++;
                                                zzfxVar4.zzj(zzfnVarZzbv);
                                            } else {
                                                if (zzfnVarZzbv.zza() == 0) {
                                                    zzay().zzk().zzb("Engagement event does not contain any parameters. appId", zzel.zzn(zzkrVar3.zza.zzy()));
                                                } else {
                                                    zzak(this.zzi);
                                                    Long l2 = (Long) zzku.zzD(zzfnVarZzbv.zzaA(), str9);
                                                    if (l2 == null) {
                                                        zzay().zzk().zzb("Engagement event does not include duration. appId", zzel.zzn(zzkrVar3.zza.zzy()));
                                                    } else {
                                                        jLongValue2 = j2 + l2.longValue();
                                                        i7 = i14;
                                                        zzkrVar3.zzc.set(i7, zzfnVarZzbv.zzaA());
                                                        i12++;
                                                        zzfxVar4.zzj(zzfnVarZzbv);
                                                    }
                                                }
                                                jLongValue2 = j2;
                                                i7 = i14;
                                                zzkrVar3.zzc.set(i7, zzfnVarZzbv.zzaA());
                                                i12++;
                                                zzfxVar4.zzj(zzfnVarZzbv);
                                            }
                                        } else {
                                            zzfxVar4 = zzfxVar2;
                                            i4 = i2;
                                            i5 = i;
                                            str10 = str4;
                                            str9 = str5;
                                            i11 = i5;
                                            i9 = i4;
                                            if (z) {
                                                jLongValue2 = j2;
                                                i7 = i14;
                                                zzkrVar3.zzc.set(i7, zzfnVarZzbv.zzaA());
                                                i12++;
                                                zzfxVar4.zzj(zzfnVarZzbv);
                                            }
                                        }
                                    }
                                } else if (str7.equals(zzfnVarZzbv.zzo())) {
                                }
                            } else {
                                if (strZzo.equals("_ug")) {
                                    b = 2;
                                }
                                if (b != 0) {
                                }
                            }
                        }
                        i = i11;
                        int i19 = 0;
                        boolean z2 = false;
                        boolean z3 = false;
                        while (true) {
                            str5 = str15;
                            if (i19 >= zzfnVarZzbv.zza()) {
                                break;
                            }
                            if ("_c".equals(zzfnVarZzbv.zzn(i19).zzg())) {
                                com.google.android.gms.internal.measurement.zzfr zzfrVarZzbv = zzfnVarZzbv.zzn(i19).zzbv();
                                zzfxVar3 = zzfxVarZzbv;
                                i3 = i9;
                                zzfrVarZzbv.zzi(1L);
                                zzfnVarZzbv.zzk(i19, zzfrVarZzbv.zzaA());
                                str8 = str14;
                                z2 = true;
                            } else {
                                zzfxVar3 = zzfxVarZzbv;
                                i3 = i9;
                                if ("_r".equals(zzfnVarZzbv.zzn(i19).zzg())) {
                                    com.google.android.gms.internal.measurement.zzfr zzfrVarZzbv2 = zzfnVarZzbv.zzn(i19).zzbv();
                                    str8 = str14;
                                    zzfrVarZzbv2.zzi(1L);
                                    zzfnVarZzbv.zzk(i19, zzfrVarZzbv2.zzaA());
                                    z3 = true;
                                } else {
                                    str8 = str14;
                                }
                            }
                            i19++;
                            str14 = str8;
                            zzfxVarZzbv = zzfxVar3;
                            str15 = str5;
                            i9 = i3;
                        }
                        zzfxVar2 = zzfxVarZzbv;
                        i2 = i9;
                        String str17 = str14;
                        if (z2 || !zZzn) {
                            str6 = str17;
                        } else {
                            zzay().zzj().zzb("Marking event as conversion", this.zzn.zzj().zzd(zzfnVarZzbv.zzo()));
                            com.google.android.gms.internal.measurement.zzfr zzfrVarZze = com.google.android.gms.internal.measurement.zzfs.zze();
                            zzfrVarZze.zzj("_c");
                            str6 = str17;
                            zzfrVarZze.zzi(1L);
                            zzfnVarZzbv.zze(zzfrVarZze);
                        }
                        if (!z3) {
                            zzay().zzj().zzb("Marking event as real-time", this.zzn.zzj().zzd(zzfnVarZzbv.zzo()));
                            com.google.android.gms.internal.measurement.zzfr zzfrVarZze2 = com.google.android.gms.internal.measurement.zzfs.zze();
                            zzfrVarZze2.zzj("_r");
                            zzfrVarZze2.zzi(1L);
                            zzfnVarZzbv.zze(zzfrVarZze2);
                        }
                        zzaj zzajVar3 = this.zze;
                        zzak(zzajVar3);
                        str7 = "_e";
                        if (zzajVar3.zzl(zza(), zzkrVar3.zza.zzy(), false, false, false, false, true).zze > zzg().zze(zzkrVar3.zza.zzy(), zzdy.zzn)) {
                            zzZ(zzfnVarZzbv, "_r");
                        } else {
                            i13 = 1;
                        }
                        if (zzkz.zzah(zzfnVarZzbv.zzo()) && zZzn) {
                            zzaj zzajVar4 = this.zze;
                            zzak(zzajVar4);
                            if (zzajVar4.zzl(zza(), zzkrVar3.zza.zzy(), false, false, true, false, false).zzc > zzg().zze(zzkrVar3.zza.zzy(), zzdy.zzm)) {
                                zzay().zzk().zzb("Too many conversions. Not logging as conversion. appId", zzel.zzn(zzkrVar3.zza.zzy()));
                                com.google.android.gms.internal.measurement.zzfr zzfrVarZzbv3 = null;
                                boolean z4 = false;
                                int i20 = -1;
                                for (int i21 = 0; i21 < zzfnVarZzbv.zza(); i21++) {
                                    com.google.android.gms.internal.measurement.zzfs zzfsVarZzn = zzfnVarZzbv.zzn(i21);
                                    if ("_c".equals(zzfsVarZzn.zzg())) {
                                        zzfrVarZzbv3 = zzfsVarZzn.zzbv();
                                        i20 = i21;
                                    } else if ("_err".equals(zzfsVarZzn.zzg())) {
                                        z4 = true;
                                    }
                                }
                                if (z4) {
                                    if (zzfrVarZzbv3 != null) {
                                        zzfnVarZzbv.zzh(i20);
                                    } else {
                                        zzfrVarZzbv3 = null;
                                        if (zzfrVarZzbv3 == null) {
                                        }
                                    }
                                } else if (zzfrVarZzbv3 == null) {
                                    com.google.android.gms.internal.measurement.zzfr zzfrVarZzax = zzfrVarZzbv3.clone();
                                    zzfrVarZzax.zzj("_err");
                                    zzfrVarZzax.zzi(10L);
                                    zzfnVarZzbv.zzk(i20, zzfrVarZzax.zzaA());
                                } else {
                                    zzay().zzd().zzb("Did not find conversion parameter. appId", zzel.zzn(zzkrVar3.zza.zzy()));
                                }
                            }
                        }
                        if (!zZzn) {
                        }
                    }
                    i10 = i7 + 1;
                    zzfxVarZzbv = zzfxVar4;
                    str11 = str10;
                    str12 = str2;
                    zZzs = z;
                    str13 = str3;
                }
                com.google.android.gms.internal.measurement.zzfx zzfxVar5 = zzfxVarZzbv;
                if (zZzs) {
                    int i22 = i12;
                    jLongValue = j2;
                    int i23 = 0;
                    while (i23 < i22) {
                        com.google.android.gms.internal.measurement.zzfo zzfoVarZze = zzfxVar5.zze(i23);
                        if ("_e".equals(zzfoVarZze.zzh())) {
                            zzak(this.zzi);
                            if (zzku.zzC(zzfoVarZze, "_fr") != null) {
                                zzfxVar5.zzw(i23);
                                i22--;
                                i23--;
                            } else {
                                zzak(this.zzi);
                                com.google.android.gms.internal.measurement.zzfs zzfsVarZzC4 = zzku.zzC(zzfoVarZze, "_et");
                                if (zzfsVarZzC4 != null) {
                                    Long lValueOf = zzfsVarZzC4.zzw() ? Long.valueOf(zzfsVarZzC4.zzd()) : null;
                                    if (lValueOf != null && lValueOf.longValue() > 0) {
                                        jLongValue += lValueOf.longValue();
                                    }
                                }
                            }
                        }
                        i23++;
                    }
                } else {
                    jLongValue = j2;
                }
                zzad(zzfxVar5, jLongValue, false);
                Iterator<com.google.android.gms.internal.measurement.zzfo> it = zzfxVar5.zzao().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    if ("_s".equals(it.next().zzh())) {
                        zzaj zzajVar5 = this.zze;
                        zzak(zzajVar5);
                        zzajVar5.zzB(zzfxVar5.zzal(), "_se");
                        break;
                    }
                }
                if (zzku.zza(zzfxVar5, "_sid") >= 0) {
                    zzad(zzfxVar5, jLongValue, true);
                } else {
                    int iZza = zzku.zza(zzfxVar5, "_se");
                    if (iZza >= 0) {
                        zzfxVar5.zzx(iZza);
                        zzay().zzd().zzb("Session engagement user property is in the bundle without session ID. appId", zzel.zzn(zzkrVar3.zza.zzy()));
                    }
                }
                zzku zzkuVar = this.zzi;
                zzak(zzkuVar);
                zzkuVar.zzs.zzay().zzj().zza("Checking account type status for ad personalization signals");
                zzfm zzfmVar5 = zzkuVar.zzf.zzc;
                zzak(zzfmVar5);
                if (zzfmVar5.zzk(zzfxVar5.zzal())) {
                    zzaj zzajVar6 = zzkuVar.zzf.zze;
                    zzak(zzajVar6);
                    zzg zzgVarZzj = zzajVar6.zzj(zzfxVar5.zzal());
                    if (zzgVarZzj != null && zzgVarZzj.zzai() && zzkuVar.zzs.zzg().zze()) {
                        zzkuVar.zzs.zzay().zzc().zza("Turning off ad personalization due to account type");
                        com.google.android.gms.internal.measurement.zzgg zzggVarZzd = com.google.android.gms.internal.measurement.zzgh.zzd();
                        zzggVarZzd.zzf(str2);
                        zzggVarZzd.zzg(zzkuVar.zzs.zzg().zza());
                        zzggVarZzd.zze(1L);
                        com.google.android.gms.internal.measurement.zzgh zzghVarZzaA = zzggVarZzd.zzaA();
                        int i24 = 0;
                        while (true) {
                            if (i24 >= zzfxVar5.zzb()) {
                                zzfxVar5.zzl(zzghVarZzaA);
                                break;
                            }
                            if (str2.equals(zzfxVar5.zzak(i24).zzf())) {
                                zzfxVar5.zzai(i24, zzghVarZzaA);
                                break;
                            }
                            i24++;
                        }
                    }
                }
                zzfxVar5.zzae(LongCompanionObject.MAX_VALUE);
                zzfxVar5.zzN(Long.MIN_VALUE);
                for (int i25 = 0; i25 < zzfxVar5.zza(); i25++) {
                    com.google.android.gms.internal.measurement.zzfo zzfoVarZze2 = zzfxVar5.zze(i25);
                    if (zzfoVarZze2.zzd() < zzfxVar5.zzd()) {
                        zzfxVar5.zzae(zzfoVarZze2.zzd());
                    }
                    if (zzfoVarZze2.zzd() > zzfxVar5.zzc()) {
                        zzfxVar5.zzN(zzfoVarZze2.zzd());
                    }
                }
                zzfxVar5.zzv();
                zzfxVar5.zzn();
                zzz zzzVar = this.zzh;
                zzak(zzzVar);
                zzfxVar5.zzf(zzzVar.zza(zzfxVar5.zzal(), zzfxVar5.zzao(), zzfxVar5.zzap(), Long.valueOf(zzfxVar5.zzd()), Long.valueOf(zzfxVar5.zzc())));
                if (zzg().zzw(zzkrVar3.zza.zzy())) {
                    HashMap map = new HashMap();
                    ArrayList arrayList2 = new ArrayList();
                    SecureRandom secureRandomZzF = zzv().zzF();
                    int i26 = 0;
                    while (i26 < zzfxVar5.zza()) {
                        com.google.android.gms.internal.measurement.zzfn zzfnVarZzbv2 = zzfxVar5.zze(i26).zzbv();
                        if (zzfnVarZzbv2.zzo().equals("_ep")) {
                            zzak(this.zzi);
                            String str18 = (String) zzku.zzD(zzfnVarZzbv2.zzaA(), "_en");
                            zzap zzapVarZzn = (zzap) map.get(str18);
                            if (zzapVarZzn == null) {
                                zzaj zzajVar7 = this.zze;
                                zzak(zzajVar7);
                                zzapVarZzn = zzajVar7.zzn(zzkrVar3.zza.zzy(), (String) Preconditions.checkNotNull(str18));
                                if (zzapVarZzn != null) {
                                    map.put(str18, zzapVarZzn);
                                }
                            }
                            if (zzapVarZzn != null && zzapVarZzn.zzi == null) {
                                Long l3 = zzapVarZzn.zzj;
                                if (l3 != null && l3.longValue() > 1) {
                                    zzak(this.zzi);
                                    zzku.zzA(zzfnVarZzbv2, "_sr", zzapVarZzn.zzj);
                                }
                                Boolean bool = zzapVarZzn.zzk;
                                if (bool != null && bool.booleanValue()) {
                                    zzak(this.zzi);
                                    zzku.zzA(zzfnVarZzbv2, "_efs", 1L);
                                }
                                arrayList2.add(zzfnVarZzbv2.zzaA());
                            }
                            zzfxVar5.zzO(i26, zzfnVarZzbv2);
                        } else {
                            zzfm zzfmVar6 = this.zzc;
                            zzak(zzfmVar6);
                            String strZzy = zzkrVar3.zza.zzy();
                            String strZza = zzfmVar6.zza(strZzy, "measurement.account.time_zone_offset_minutes");
                            if (TextUtils.isEmpty(strZza)) {
                                j3 = 0;
                                long jZzr2 = zzv().zzr(zzfnVarZzbv2.zzc(), j3);
                                com.google.android.gms.internal.measurement.zzfo zzfoVarZzaA = zzfnVarZzbv2.zzaA();
                                long j5 = j3;
                                Long l4 = 1L;
                                if (TextUtils.isEmpty("_dbg")) {
                                }
                            } else {
                                try {
                                    j3 = Long.parseLong(strZza);
                                } catch (NumberFormatException e) {
                                    zzfmVar6.zzs.zzay().zzk().zzc("Unable to parse timezone offset. appId", zzel.zzn(strZzy), e);
                                    j3 = 0;
                                }
                                long jZzr22 = zzv().zzr(zzfnVarZzbv2.zzc(), j3);
                                com.google.android.gms.internal.measurement.zzfo zzfoVarZzaA2 = zzfnVarZzbv2.zzaA();
                                long j52 = j3;
                                Long l42 = 1L;
                                if (TextUtils.isEmpty("_dbg")) {
                                    Iterator<com.google.android.gms.internal.measurement.zzfs> it2 = zzfoVarZzaA2.zzi().iterator();
                                    while (true) {
                                        if (!it2.hasNext()) {
                                            break;
                                        }
                                        com.google.android.gms.internal.measurement.zzfs next = it2.next();
                                        Iterator<com.google.android.gms.internal.measurement.zzfs> it3 = it2;
                                        if (!"_dbg".equals(next.zzg())) {
                                            it2 = it3;
                                        } else if (l42.equals(Long.valueOf(next.zzd()))) {
                                            iZzc = 1;
                                        }
                                    }
                                    zzfm zzfmVar7 = this.zzc;
                                    zzak(zzfmVar7);
                                    iZzc = zzfmVar7.zzc(zzkrVar3.zza.zzy(), zzfnVarZzbv2.zzo());
                                    if (iZzc > 0) {
                                        zzay().zzk().zzc("Sample rate must be positive. event, rate", zzfnVarZzbv2.zzo(), Integer.valueOf(iZzc));
                                        arrayList2.add(zzfnVarZzbv2.zzaA());
                                        zzfxVar5.zzO(i26, zzfnVarZzbv2);
                                    } else {
                                        zzap zzapVarZza = (zzap) map.get(zzfnVarZzbv2.zzo());
                                        if (zzapVarZza == null) {
                                            zzaj zzajVar8 = this.zze;
                                            zzak(zzajVar8);
                                            zzapVarZza = zzajVar8.zzn(zzkrVar3.zza.zzy(), zzfnVarZzbv2.zzo());
                                            if (zzapVarZza == null) {
                                                j4 = jZzr22;
                                                zzay().zzk().zzc("Event being bundled has no eventAggregate. appId, eventName", zzkrVar3.zza.zzy(), zzfnVarZzbv2.zzo());
                                                zzapVarZza = new zzap(zzkrVar3.zza.zzy(), zzfnVarZzbv2.zzo(), 1L, 1L, 1L, zzfnVarZzbv2.zzc(), 0L, null, null, null, null);
                                            } else {
                                                j4 = jZzr22;
                                            }
                                            zzak(this.zzi);
                                            Long l5 = (Long) zzku.zzD(zzfnVarZzbv2.zzaA(), "_eid");
                                            Boolean boolValueOf = Boolean.valueOf(l5 != null);
                                            if (iZzc == 1) {
                                                arrayList2.add(zzfnVarZzbv2.zzaA());
                                                if (boolValueOf.booleanValue() && (zzapVarZza.zzi != null || zzapVarZza.zzj != null || zzapVarZza.zzk != null)) {
                                                    map.put(zzfnVarZzbv2.zzo(), zzapVarZza.zza(null, null, null));
                                                }
                                                zzfxVar5.zzO(i26, zzfnVarZzbv2);
                                            } else {
                                                if (secureRandomZzF.nextInt(iZzc) == 0) {
                                                    zzak(this.zzi);
                                                    Long lValueOf2 = Long.valueOf(iZzc);
                                                    zzku.zzA(zzfnVarZzbv2, "_sr", lValueOf2);
                                                    arrayList2.add(zzfnVarZzbv2.zzaA());
                                                    if (boolValueOf.booleanValue()) {
                                                        zzapVarZza = zzapVarZza.zza(null, lValueOf2, null);
                                                    }
                                                    map.put(zzfnVarZzbv2.zzo(), zzapVarZza.zzb(zzfnVarZzbv2.zzc(), j4));
                                                    zzkrVar2 = zzkrVar3;
                                                    secureRandom = secureRandomZzF;
                                                } else {
                                                    secureRandom = secureRandomZzF;
                                                    long j6 = j4;
                                                    Long l6 = zzapVarZza.zzh;
                                                    if (l6 != null) {
                                                        zzfxVar = zzfxVar5;
                                                        zzapVar = zzapVarZza;
                                                        l = l5;
                                                        zzkrVar2 = zzkrVar3;
                                                        jZzr = l6.longValue();
                                                    } else {
                                                        zzfxVar = zzfxVar5;
                                                        zzkrVar2 = zzkrVar3;
                                                        zzapVar = zzapVarZza;
                                                        l = l5;
                                                        jZzr = zzv().zzr(zzfnVarZzbv2.zzb(), j52);
                                                    }
                                                    if (jZzr != j6) {
                                                        zzak(this.zzi);
                                                        zzku.zzA(zzfnVarZzbv2, "_efs", 1L);
                                                        zzak(this.zzi);
                                                        Long lValueOf3 = Long.valueOf(iZzc);
                                                        zzku.zzA(zzfnVarZzbv2, "_sr", lValueOf3);
                                                        arrayList2.add(zzfnVarZzbv2.zzaA());
                                                        map.put(zzfnVarZzbv2.zzo(), (boolValueOf.booleanValue() ? zzapVar.zza(null, lValueOf3, true) : zzapVar).zzb(zzfnVarZzbv2.zzc(), j6));
                                                    } else {
                                                        zzap zzapVar2 = zzapVar;
                                                        if (boolValueOf.booleanValue()) {
                                                            map.put(zzfnVarZzbv2.zzo(), zzapVar2.zza(l, null, null));
                                                        }
                                                    }
                                                    zzfxVar5 = zzfxVar;
                                                }
                                                zzfxVar5.zzO(i26, zzfnVarZzbv2);
                                            }
                                        }
                                    }
                                } else {
                                    zzfm zzfmVar72 = this.zzc;
                                    zzak(zzfmVar72);
                                    iZzc = zzfmVar72.zzc(zzkrVar3.zza.zzy(), zzfnVarZzbv2.zzo());
                                    if (iZzc > 0) {
                                    }
                                }
                            }
                            i26++;
                            secureRandomZzF = secureRandom;
                            zzkrVar3 = zzkrVar2;
                        }
                        zzkrVar2 = zzkrVar3;
                        secureRandom = secureRandomZzF;
                        i26++;
                        secureRandomZzF = secureRandom;
                        zzkrVar3 = zzkrVar2;
                    }
                    zzkr zzkrVar4 = zzkrVar3;
                    if (arrayList2.size() < zzfxVar5.zza()) {
                        zzfxVar5.zzp();
                        zzfxVar5.zzg(arrayList2);
                    }
                    for (Map.Entry entry : map.entrySet()) {
                        zzaj zzajVar9 = this.zze;
                        zzak(zzajVar9);
                        zzajVar9.zzF((zzap) entry.getValue());
                    }
                    zzkrVar = zzkrVar4;
                } else {
                    zzkrVar = zzkrVar3;
                }
                String strZzy2 = zzkrVar.zza.zzy();
                zzaj zzajVar10 = this.zze;
                zzak(zzajVar10);
                zzg zzgVarZzj2 = zzajVar10.zzj(strZzy2);
                if (zzgVarZzj2 == null) {
                    zzay().zzd().zzb("Bundling raw events w/o app info. appId", zzel.zzn(zzkrVar.zza.zzy()));
                } else if (zzfxVar5.zza() > 0) {
                    long jZzn = zzgVarZzj2.zzn();
                    if (jZzn != 0) {
                        zzfxVar5.zzY(jZzn);
                    } else {
                        zzfxVar5.zzs();
                    }
                    long jZzp = zzgVarZzj2.zzp();
                    if (jZzp != 0) {
                        jZzn = jZzp;
                    }
                    if (jZzn != 0) {
                        zzfxVar5.zzZ(jZzn);
                    } else {
                        zzfxVar5.zzt();
                    }
                    zzgVarZzj2.zzE();
                    zzfxVar5.zzF((int) zzgVarZzj2.zzo());
                    zzgVarZzj2.zzad(zzfxVar5.zzd());
                    zzgVarZzj2.zzab(zzfxVar5.zzc());
                    String strZzs = zzgVarZzj2.zzs();
                    if (strZzs != null) {
                        zzfxVar5.zzT(strZzs);
                    } else {
                        zzfxVar5.zzq();
                    }
                    zzaj zzajVar11 = this.zze;
                    zzak(zzajVar11);
                    zzajVar11.zzE(zzgVarZzj2);
                }
                if (zzfxVar5.zza() > 0) {
                    this.zzn.zzaw();
                    zzfm zzfmVar8 = this.zzc;
                    zzak(zzfmVar8);
                    com.google.android.gms.internal.measurement.zzfc zzfcVarZze = zzfmVar8.zze(zzkrVar.zza.zzy());
                    if (zzfcVarZze != null && zzfcVarZze.zzq()) {
                        zzfxVar5.zzH(zzfcVarZze.zzc());
                    } else if (TextUtils.isEmpty(zzkrVar.zza.zzH())) {
                        zzfxVar5.zzH(-1L);
                    } else {
                        zzay().zzk().zzb("Did not find measurement config or missing version info. appId", zzel.zzn(zzkrVar.zza.zzy()));
                    }
                    zzaj zzajVar12 = this.zze;
                    zzak(zzajVar12);
                    com.google.android.gms.internal.measurement.zzfy zzfyVar = (com.google.android.gms.internal.measurement.zzfy) zzfxVar5.zzaA();
                    zzajVar12.zzg();
                    zzajVar12.zzY();
                    Preconditions.checkNotNull(zzfyVar);
                    Preconditions.checkNotEmpty(zzfyVar.zzy());
                    Preconditions.checkState(zzfyVar.zzbc());
                    zzajVar12.zzA();
                    long jCurrentTimeMillis = zzajVar12.zzs.zzav().currentTimeMillis();
                    long jZzm = zzfyVar.zzm();
                    zzajVar12.zzs.zzf();
                    if (jZzm >= jCurrentTimeMillis - zzaf.zzA()) {
                        long jZzm2 = zzfyVar.zzm();
                        zzajVar12.zzs.zzf();
                        if (jZzm2 > zzaf.zzA() + jCurrentTimeMillis) {
                            zzajVar12.zzs.zzay().zzk().zzd("Storing bundle outside of the max uploading time span. appId, now, timestamp", zzel.zzn(zzfyVar.zzy()), Long.valueOf(jCurrentTimeMillis), Long.valueOf(zzfyVar.zzm()));
                        }
                        byte[] bArrZzbs = zzfyVar.zzbs();
                        try {
                            zzku zzkuVar2 = zzajVar12.zzf.zzi;
                            zzak(zzkuVar2);
                            byte[] bArrZzz = zzkuVar2.zzz(bArrZzbs);
                            zzajVar12.zzs.zzay().zzj().zzb("Saving bundle, size", Integer.valueOf(bArrZzz.length));
                            ContentValues contentValues = new ContentValues();
                            contentValues.put("app_id", zzfyVar.zzy());
                            contentValues.put("bundle_end_timestamp", Long.valueOf(zzfyVar.zzm()));
                            contentValues.put(Constants.ScionAnalytics.MessageType.DATA_MESSAGE, bArrZzz);
                            contentValues.put("has_realtime", Integer.valueOf(i13));
                            if (zzfyVar.zzbi()) {
                                contentValues.put("retry_count", Integer.valueOf(zzfyVar.zze()));
                            }
                            try {
                                if (zzajVar12.zzh().insert("queue", null, contentValues) == -1) {
                                    zzajVar12.zzs.zzay().zzd().zzb("Failed to insert bundle (got -1). appId", zzel.zzn(zzfyVar.zzy()));
                                }
                            } catch (SQLiteException e2) {
                                zzajVar12.zzs.zzay().zzd().zzc("Error storing bundle. appId", zzel.zzn(zzfyVar.zzy()), e2);
                            }
                        } catch (IOException e3) {
                            zzajVar12.zzs.zzay().zzd().zzc("Data loss. Failed to serialize bundle. appId", zzel.zzn(zzfyVar.zzy()), e3);
                        }
                    }
                }
                zzaj zzajVar13 = this.zze;
                zzak(zzajVar13);
                zzajVar13.zzx(zzkrVar.zzb);
                zzaj zzajVar14 = this.zze;
                zzak(zzajVar14);
                try {
                    zzajVar14.zzh().execSQL("delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)", new String[]{strZzy2, strZzy2});
                } catch (SQLiteException e4) {
                    zzajVar14.zzs.zzay().zzd().zzc("Failed to remove unused event metadata. appId", zzel.zzn(strZzy2), e4);
                }
                zzaj zzajVar15 = this.zze;
                zzak(zzajVar15);
                zzajVar15.zzD();
                zzaj zzajVar16 = this.zze;
                zzak(zzajVar16);
                zzajVar16.zzy();
                return true;
            }
            zzaj zzajVar17 = this.zze;
            zzak(zzajVar17);
            zzajVar17.zzD();
            zzaj zzajVar18 = this.zze;
            zzak(zzajVar18);
            zzajVar18.zzy();
            return false;
        } catch (Throwable th) {
            zzaj zzajVar19 = this.zze;
            zzak(zzajVar19);
            zzajVar19.zzy();
            throw th;
        }
    }

    private final boolean zzai() {
        zzaz().zzg();
        zzB();
        zzaj zzajVar = this.zze;
        zzak(zzajVar);
        if (zzajVar.zzH()) {
            return true;
        }
        zzaj zzajVar2 = this.zze;
        zzak(zzajVar2);
        return !TextUtils.isEmpty(zzajVar2.zzr());
    }

    private final boolean zzaj(com.google.android.gms.internal.measurement.zzfn zzfnVar, com.google.android.gms.internal.measurement.zzfn zzfnVar2) {
        Preconditions.checkArgument("_e".equals(zzfnVar.zzo()));
        zzak(this.zzi);
        com.google.android.gms.internal.measurement.zzfs zzfsVarZzC = zzku.zzC(zzfnVar.zzaA(), "_sc");
        String strZzh = zzfsVarZzC == null ? null : zzfsVarZzC.zzh();
        zzak(this.zzi);
        com.google.android.gms.internal.measurement.zzfs zzfsVarZzC2 = zzku.zzC(zzfnVar2.zzaA(), "_pc");
        String strZzh2 = zzfsVarZzC2 != null ? zzfsVarZzC2.zzh() : null;
        if (strZzh2 == null || !strZzh2.equals(strZzh)) {
            return false;
        }
        zzae(zzfnVar, zzfnVar2);
        return true;
    }

    private static final zzki zzak(zzki zzkiVar) {
        if (zzkiVar == null) {
            throw new IllegalStateException("Upload Component not created");
        }
        if (zzkiVar.zzaa()) {
            return zzkiVar;
        }
        String strValueOf = String.valueOf(zzkiVar.getClass());
        String.valueOf(strValueOf).length();
        throw new IllegalStateException("Component not initialized: ".concat(String.valueOf(strValueOf)));
    }

    public static zzks zzt(Context context) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(context.getApplicationContext());
        if (zzb == null) {
            synchronized (zzks.class) {
                if (zzb == null) {
                    zzb = new zzks((zzkt) Preconditions.checkNotNull(new zzkt(context)), null);
                }
            }
        }
        return zzb;
    }

    static /* bridge */ /* synthetic */ void zzy(zzks zzksVar, zzkt zzktVar) {
        zzksVar.zzaz().zzg();
        zzksVar.zzm = new zzfd(zzksVar);
        zzaj zzajVar = new zzaj(zzksVar);
        zzajVar.zzZ();
        zzksVar.zze = zzajVar;
        zzksVar.zzg().zzq((zzae) Preconditions.checkNotNull(zzksVar.zzc));
        zzjp zzjpVar = new zzjp(zzksVar);
        zzjpVar.zzZ();
        zzksVar.zzk = zzjpVar;
        zzz zzzVar = new zzz(zzksVar);
        zzzVar.zzZ();
        zzksVar.zzh = zzzVar;
        zzif zzifVar = new zzif(zzksVar);
        zzifVar.zzZ();
        zzksVar.zzj = zzifVar;
        zzkg zzkgVar = new zzkg(zzksVar);
        zzkgVar.zzZ();
        zzksVar.zzg = zzkgVar;
        zzksVar.zzf = new zzet(zzksVar);
        if (zzksVar.zzr != zzksVar.zzs) {
            zzksVar.zzay().zzd().zzc("Not all upload components initialized", Integer.valueOf(zzksVar.zzr), Integer.valueOf(zzksVar.zzs));
        }
        zzksVar.zzo = true;
    }

    final void zzA() {
        zzaz().zzg();
        zzB();
        if (this.zzp) {
            return;
        }
        this.zzp = true;
        if (zzX()) {
            FileChannel fileChannel = this.zzx;
            zzaz().zzg();
            int i = 0;
            if (fileChannel == null || !fileChannel.isOpen()) {
                zzay().zzd().zza("Bad channel to read from");
            } else {
                ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
                try {
                    fileChannel.position(0L);
                    int i2 = fileChannel.read(byteBufferAllocate);
                    if (i2 == 4) {
                        byteBufferAllocate.flip();
                        i = byteBufferAllocate.getInt();
                    } else if (i2 != -1) {
                        zzay().zzk().zzb("Unexpected data length. Bytes read", Integer.valueOf(i2));
                    }
                } catch (IOException e) {
                    zzay().zzd().zzb("Failed to read from channel", e);
                }
            }
            int iZzi = this.zzn.zzh().zzi();
            zzaz().zzg();
            if (i > iZzi) {
                zzay().zzd().zzc("Panic: can't downgrade version. Previous, current version", Integer.valueOf(i), Integer.valueOf(iZzi));
                return;
            }
            if (i < iZzi) {
                FileChannel fileChannel2 = this.zzx;
                zzaz().zzg();
                if (fileChannel2 == null || !fileChannel2.isOpen()) {
                    zzay().zzd().zza("Bad channel to read from");
                } else {
                    ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(4);
                    byteBufferAllocate2.putInt(iZzi);
                    byteBufferAllocate2.flip();
                    try {
                        fileChannel2.truncate(0L);
                        if (zzg().zzs(null, zzdy.zzak) && Build.VERSION.SDK_INT <= 19) {
                            fileChannel2.position(0L);
                        }
                        fileChannel2.write(byteBufferAllocate2);
                        fileChannel2.force(true);
                        if (fileChannel2.size() != 4) {
                            zzay().zzd().zzb("Error writing to channel. Bytes written", Long.valueOf(fileChannel2.size()));
                        }
                        zzay().zzj().zzc("Storage version upgraded. Previous, current version", Integer.valueOf(i), Integer.valueOf(iZzi));
                        return;
                    } catch (IOException e2) {
                        zzay().zzd().zzb("Failed to write to channel", e2);
                    }
                }
                zzay().zzd().zzc("Storage version upgrade failed. Previous, current version", Integer.valueOf(i), Integer.valueOf(iZzi));
            }
        }
    }

    final void zzB() {
        if (!this.zzo) {
            throw new IllegalStateException("UploadController is not initialized");
        }
    }

    final void zzC(zzg zzgVar) {
        zzaz().zzg();
        zzom.zzc();
        if (zzg().zzs(zzgVar.zzt(), zzdy.zzac)) {
            if (TextUtils.isEmpty(zzgVar.zzz()) && TextUtils.isEmpty(zzgVar.zzy()) && TextUtils.isEmpty(zzgVar.zzr())) {
                zzH((String) Preconditions.checkNotNull(zzgVar.zzt()), com.texa.careapp.Constants.PENDING_INTENT_REQUEST_CODE_PIN_CONFIRM, null, null, null);
                return;
            }
        } else if (TextUtils.isEmpty(zzgVar.zzz()) && TextUtils.isEmpty(zzgVar.zzr())) {
            zzH((String) Preconditions.checkNotNull(zzgVar.zzt()), com.texa.careapp.Constants.PENDING_INTENT_REQUEST_CODE_PIN_CONFIRM, null, null, null);
            return;
        }
        zzkj zzkjVar = this.zzl;
        Uri.Builder builder = new Uri.Builder();
        String strZzz = zzgVar.zzz();
        if (TextUtils.isEmpty(strZzz)) {
            zzom.zzc();
            if (zzkjVar.zzs.zzf().zzs(zzgVar.zzt(), zzdy.zzac)) {
                strZzz = zzgVar.zzy();
                if (TextUtils.isEmpty(strZzz)) {
                    strZzz = zzgVar.zzr();
                }
            } else {
                strZzz = zzgVar.zzr();
            }
        }
        ArrayMap arrayMap = null;
        Uri.Builder builderEncodedAuthority = builder.scheme(zzdy.zzd.zza(null)).encodedAuthority(zzdy.zze.zza(null));
        String strValueOf = String.valueOf(strZzz);
        Uri.Builder builderAppendQueryParameter = builderEncodedAuthority.path(strValueOf.length() != 0 ? "config/app/".concat(strValueOf) : new String("config/app/")).appendQueryParameter("app_instance_id", zzgVar.zzu()).appendQueryParameter("platform", com.texa.careapp.Constants.THIRD_PART_LICENSE_NAME);
        zzkjVar.zzs.zzf().zzh();
        builderAppendQueryParameter.appendQueryParameter("gmp_version", String.valueOf(46000L));
        zzpe.zzc();
        if (zzkjVar.zzs.zzf().zzs(zzgVar.zzt(), zzdy.zzat)) {
            builder.appendQueryParameter("runtime_version", "0");
        }
        String string = builder.build().toString();
        try {
            String str = (String) Preconditions.checkNotNull(zzgVar.zzt());
            URL url = new URL(string);
            zzay().zzj().zzb("Fetching remote configuration", str);
            zzfm zzfmVar = this.zzc;
            zzak(zzfmVar);
            com.google.android.gms.internal.measurement.zzfc zzfcVarZze = zzfmVar.zze(str);
            zzfm zzfmVar2 = this.zzc;
            zzak(zzfmVar2);
            String strZzf = zzfmVar2.zzf(str);
            if (zzfcVarZze != null && !TextUtils.isEmpty(strZzf)) {
                arrayMap = new ArrayMap();
                arrayMap.put("If-Modified-Since", strZzf);
            }
            this.zzt = true;
            zzer zzerVar = this.zzd;
            zzak(zzerVar);
            zzkm zzkmVar = new zzkm(this);
            zzerVar.zzg();
            zzerVar.zzY();
            Preconditions.checkNotNull(url);
            Preconditions.checkNotNull(zzkmVar);
            zzerVar.zzs.zzaz().zzo(new zzeq(zzerVar, str, url, null, arrayMap, zzkmVar));
        } catch (MalformedURLException unused) {
            zzay().zzd().zzc("Failed to parse config URL. Not fetching. appId", zzel.zzn(zzgVar.zzt()), string);
        }
    }

    final void zzD(zzat zzatVar, zzp zzpVar) {
        zzat zzatVar2;
        List<zzab> listZzt;
        List<zzab> listZzt2;
        List<zzab> listZzt3;
        Preconditions.checkNotNull(zzpVar);
        Preconditions.checkNotEmpty(zzpVar.zza);
        zzaz().zzg();
        zzB();
        String str = zzpVar.zza;
        zzat zzatVarZza = zzatVar;
        long j = zzatVarZza.zzd;
        zzpn.zzc();
        if (zzg().zzs(null, zzdy.zzaA)) {
            zzem zzemVarZzb = zzem.zzb(zzatVar);
            zzaz().zzg();
            zzkz.zzJ(null, zzemVarZzb.zzd, false);
            zzatVarZza = zzemVarZzb.zza();
        }
        zzak(this.zzi);
        if (zzku.zzB(zzatVarZza, zzpVar)) {
            if (!zzpVar.zzh) {
                zzd(zzpVar);
                return;
            }
            List<String> list = zzpVar.zzt;
            if (list == null) {
                zzatVar2 = zzatVarZza;
            } else if (!list.contains(zzatVarZza.zza)) {
                zzay().zzc().zzd("Dropping non-safelisted event. appId, event name, origin", str, zzatVarZza.zza, zzatVarZza.zzc);
                return;
            } else {
                Bundle bundleZzc = zzatVarZza.zzb.zzc();
                bundleZzc.putLong("ga_safelisted", 1L);
                zzatVar2 = new zzat(zzatVarZza.zza, new zzar(bundleZzc), zzatVarZza.zzc, zzatVarZza.zzd);
            }
            zzaj zzajVar = this.zze;
            zzak(zzajVar);
            zzajVar.zzw();
            try {
                zzaj zzajVar2 = this.zze;
                zzak(zzajVar2);
                Preconditions.checkNotEmpty(str);
                zzajVar2.zzg();
                zzajVar2.zzY();
                if (j < 0) {
                    zzajVar2.zzs.zzay().zzk().zzc("Invalid time querying timed out conditional properties", zzel.zzn(str), Long.valueOf(j));
                    listZzt = Collections.emptyList();
                } else {
                    listZzt = zzajVar2.zzt("active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout", new String[]{str, String.valueOf(j)});
                }
                for (zzab zzabVar : listZzt) {
                    if (zzabVar != null) {
                        zzay().zzj().zzd("User property timed out", zzabVar.zza, this.zzn.zzj().zzf(zzabVar.zzc.zzb), zzabVar.zzc.zza());
                        zzat zzatVar3 = zzabVar.zzg;
                        if (zzatVar3 != null) {
                            zzW(new zzat(zzatVar3, j), zzpVar);
                        }
                        zzaj zzajVar3 = this.zze;
                        zzak(zzajVar3);
                        zzajVar3.zza(str, zzabVar.zzc.zzb);
                    }
                }
                zzaj zzajVar4 = this.zze;
                zzak(zzajVar4);
                Preconditions.checkNotEmpty(str);
                zzajVar4.zzg();
                zzajVar4.zzY();
                if (j < 0) {
                    zzajVar4.zzs.zzay().zzk().zzc("Invalid time querying expired conditional properties", zzel.zzn(str), Long.valueOf(j));
                    listZzt2 = Collections.emptyList();
                } else {
                    listZzt2 = zzajVar4.zzt("active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live", new String[]{str, String.valueOf(j)});
                }
                ArrayList arrayList = new ArrayList(listZzt2.size());
                for (zzab zzabVar2 : listZzt2) {
                    if (zzabVar2 != null) {
                        zzay().zzj().zzd("User property expired", zzabVar2.zza, this.zzn.zzj().zzf(zzabVar2.zzc.zzb), zzabVar2.zzc.zza());
                        zzaj zzajVar5 = this.zze;
                        zzak(zzajVar5);
                        zzajVar5.zzB(str, zzabVar2.zzc.zzb);
                        zzat zzatVar4 = zzabVar2.zzk;
                        if (zzatVar4 != null) {
                            arrayList.add(zzatVar4);
                        }
                        zzaj zzajVar6 = this.zze;
                        zzak(zzajVar6);
                        zzajVar6.zza(str, zzabVar2.zzc.zzb);
                    }
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    zzW(new zzat((zzat) it.next(), j), zzpVar);
                }
                zzaj zzajVar7 = this.zze;
                zzak(zzajVar7);
                String str2 = zzatVar2.zza;
                Preconditions.checkNotEmpty(str);
                Preconditions.checkNotEmpty(str2);
                zzajVar7.zzg();
                zzajVar7.zzY();
                if (j < 0) {
                    zzajVar7.zzs.zzay().zzk().zzd("Invalid time querying triggered conditional properties", zzel.zzn(str), zzajVar7.zzs.zzj().zzd(str2), Long.valueOf(j));
                    listZzt3 = Collections.emptyList();
                } else {
                    listZzt3 = zzajVar7.zzt("active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout", new String[]{str, str2, String.valueOf(j)});
                }
                ArrayList arrayList2 = new ArrayList(listZzt3.size());
                for (zzab zzabVar3 : listZzt3) {
                    if (zzabVar3 != null) {
                        zzkv zzkvVar = zzabVar3.zzc;
                        zzkx zzkxVar = new zzkx((String) Preconditions.checkNotNull(zzabVar3.zza), zzabVar3.zzb, zzkvVar.zzb, j, Preconditions.checkNotNull(zzkvVar.zza()));
                        zzaj zzajVar8 = this.zze;
                        zzak(zzajVar8);
                        if (zzajVar8.zzN(zzkxVar)) {
                            zzay().zzj().zzd("User property triggered", zzabVar3.zza, this.zzn.zzj().zzf(zzkxVar.zzc), zzkxVar.zze);
                        } else {
                            zzay().zzd().zzd("Too many active user properties, ignoring", zzel.zzn(zzabVar3.zza), this.zzn.zzj().zzf(zzkxVar.zzc), zzkxVar.zze);
                        }
                        zzat zzatVar5 = zzabVar3.zzi;
                        if (zzatVar5 != null) {
                            arrayList2.add(zzatVar5);
                        }
                        zzabVar3.zzc = new zzkv(zzkxVar);
                        zzabVar3.zze = true;
                        zzaj zzajVar9 = this.zze;
                        zzak(zzajVar9);
                        zzajVar9.zzM(zzabVar3);
                    }
                }
                zzW(zzatVar2, zzpVar);
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    zzW(new zzat((zzat) it2.next(), j), zzpVar);
                }
                zzaj zzajVar10 = this.zze;
                zzak(zzajVar10);
                zzajVar10.zzD();
            } finally {
                zzaj zzajVar11 = this.zze;
                zzak(zzajVar11);
                zzajVar11.zzy();
            }
        }
    }

    final void zzE(zzat zzatVar, String str) {
        zzaj zzajVar = this.zze;
        zzak(zzajVar);
        zzg zzgVarZzj = zzajVar.zzj(str);
        if (zzgVarZzj == null || TextUtils.isEmpty(zzgVarZzj.zzw())) {
            zzay().zzc().zzb("No app data available; dropping event", str);
            return;
        }
        Boolean boolZzab = zzab(zzgVarZzj);
        if (boolZzab == null) {
            if (!"_ui".equals(zzatVar.zza)) {
                zzay().zzk().zzb("Could not find package. appId", zzel.zzn(str));
            }
        } else if (!boolZzab.booleanValue()) {
            zzay().zzd().zzb("App version does not match; dropping event. appId", zzel.zzn(str));
            return;
        }
        String strZzz = zzgVarZzj.zzz();
        String strZzw = zzgVarZzj.zzw();
        long jZzb = zzgVarZzj.zzb();
        String strZzv = zzgVarZzj.zzv();
        long jZzm = zzgVarZzj.zzm();
        long jZzj = zzgVarZzj.zzj();
        boolean zZzaj = zzgVarZzj.zzaj();
        String strZzx = zzgVarZzj.zzx();
        long jZza = zzgVarZzj.zza();
        boolean zZzai = zzgVarZzj.zzai();
        String strZzr = zzgVarZzj.zzr();
        Boolean boolZzq = zzgVarZzj.zzq();
        long jZzk = zzgVarZzj.zzk();
        List<String> listZzC = zzgVarZzj.zzC();
        zzom.zzc();
        zzF(zzatVar, new zzp(str, strZzz, strZzw, jZzb, strZzv, jZzm, jZzj, (String) null, zZzaj, false, strZzx, jZza, 0L, 0, zZzai, false, strZzr, boolZzq, jZzk, listZzC, zzg().zzs(zzgVarZzj.zzt(), zzdy.zzac) ? zzgVarZzj.zzy() : null, zzh(str).zzi()));
    }

    final void zzF(zzat zzatVar, zzp zzpVar) {
        Preconditions.checkNotEmpty(zzpVar.zza);
        zzem zzemVarZzb = zzem.zzb(zzatVar);
        zzkz zzkzVarZzv = zzv();
        Bundle bundle = zzemVarZzb.zzd;
        zzaj zzajVar = this.zze;
        zzak(zzajVar);
        zzkzVarZzv.zzK(bundle, zzajVar.zzi(zzpVar.zza));
        zzv().zzL(zzemVarZzb, zzg().zzd(zzpVar.zza));
        zzat zzatVarZza = zzemVarZzb.zza();
        if (Constants.ScionAnalytics.EVENT_FIREBASE_CAMPAIGN.equals(zzatVarZza.zza) && "referrer API v2".equals(zzatVarZza.zzb.zzg("_cis"))) {
            String strZzg = zzatVarZza.zzb.zzg("gclid");
            if (!TextUtils.isEmpty(strZzg)) {
                zzU(new zzkv("_lgclid", zzatVarZza.zzd, strZzg, "auto"), zzpVar);
            }
        }
        zzD(zzatVarZza, zzpVar);
    }

    final void zzG() {
        this.zzs++;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0127 A[Catch: all -> 0x016c, TryCatch #1 {all -> 0x016c, blocks: (B:6:0x002c, B:16:0x004a, B:61:0x015e, B:21:0x0064, B:26:0x00b6, B:25:0x00a7, B:29:0x00be, B:32:0x00ca, B:34:0x00d0, B:39:0x00dd, B:51:0x0112, B:53:0x0127, B:55:0x0146, B:57:0x0151, B:59:0x0157, B:60:0x015b, B:54:0x0135, B:45:0x00f6, B:47:0x0101), top: B:70:0x002c, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0135 A[Catch: all -> 0x016c, TryCatch #1 {all -> 0x016c, blocks: (B:6:0x002c, B:16:0x004a, B:61:0x015e, B:21:0x0064, B:26:0x00b6, B:25:0x00a7, B:29:0x00be, B:32:0x00ca, B:34:0x00d0, B:39:0x00dd, B:51:0x0112, B:53:0x0127, B:55:0x0146, B:57:0x0151, B:59:0x0157, B:60:0x015b, B:54:0x0135, B:45:0x00f6, B:47:0x0101), top: B:70:0x002c, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x015b A[Catch: all -> 0x016c, TryCatch #1 {all -> 0x016c, blocks: (B:6:0x002c, B:16:0x004a, B:61:0x015e, B:21:0x0064, B:26:0x00b6, B:25:0x00a7, B:29:0x00be, B:32:0x00ca, B:34:0x00d0, B:39:0x00dd, B:51:0x0112, B:53:0x0127, B:55:0x0146, B:57:0x0151, B:59:0x0157, B:60:0x015b, B:54:0x0135, B:45:0x00f6, B:47:0x0101), top: B:70:0x002c, outer: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    final void zzH(String str, int i, Throwable th, byte[] bArr, Map<String, List<String>> map) {
        boolean z;
        zzaj zzajVar;
        zzer zzerVar;
        zzaz().zzg();
        zzB();
        Preconditions.checkNotEmpty(str);
        if (bArr == null) {
            try {
                bArr = new byte[0];
            } finally {
                this.zzt = false;
                zzac();
            }
        }
        zzej zzejVarZzj = zzay().zzj();
        Integer numValueOf = Integer.valueOf(bArr.length);
        zzejVarZzj.zzb("onConfigFetched. Response size", numValueOf);
        zzaj zzajVar2 = this.zze;
        zzak(zzajVar2);
        zzajVar2.zzw();
        try {
            zzaj zzajVar3 = this.zze;
            zzak(zzajVar3);
            zzg zzgVarZzj = zzajVar3.zzj(str);
            if (i == 200 || i == 204) {
                z = th != null;
            } else {
                if (i == 304) {
                    i = 304;
                    if (th != null) {
                    }
                }
            }
            if (zzgVarZzj == null) {
                zzay().zzk().zzb("App does not exist in onConfigFetched. appId", zzel.zzn(str));
            } else if (z || i == 404) {
                List<String> list = map != null ? map.get("Last-Modified") : null;
                String str2 = (list == null || list.size() <= 0) ? null : list.get(0);
                if (i != 404 && i != 304) {
                    zzfm zzfmVar = this.zzc;
                    zzak(zzfmVar);
                    if (!zzfmVar.zzq(str, bArr, str2)) {
                        zzajVar = this.zze;
                        zzak(zzajVar);
                        zzajVar.zzy();
                    }
                    zzgVarZzj.zzM(zzav().currentTimeMillis());
                    zzaj zzajVar4 = this.zze;
                    zzak(zzajVar4);
                    zzajVar4.zzE(zzgVarZzj);
                    if (i != 404) {
                    }
                    zzerVar = this.zzd;
                    zzak(zzerVar);
                    if (zzerVar.zza()) {
                        zzaf();
                    }
                    zzajVar.zzy();
                }
                zzfm zzfmVar2 = this.zzc;
                zzak(zzfmVar2);
                if (zzfmVar2.zze(str) == null) {
                    zzfm zzfmVar3 = this.zzc;
                    zzak(zzfmVar3);
                    if (!zzfmVar3.zzq(str, null, null)) {
                        zzajVar = this.zze;
                        zzak(zzajVar);
                        zzajVar.zzy();
                    }
                }
                zzgVarZzj.zzM(zzav().currentTimeMillis());
                zzaj zzajVar42 = this.zze;
                zzak(zzajVar42);
                zzajVar42.zzE(zzgVarZzj);
                if (i != 404) {
                    zzay().zzl().zzb("Config not found. Using empty config. appId", str);
                } else {
                    zzay().zzj().zzc("Successfully fetched config. Got network response. code, size", Integer.valueOf(i), numValueOf);
                }
                zzerVar = this.zzd;
                zzak(zzerVar);
                if (zzerVar.zza() || !zzai()) {
                    zzaf();
                } else {
                    zzV();
                }
            } else {
                zzgVarZzj.zzV(zzav().currentTimeMillis());
                zzaj zzajVar5 = this.zze;
                zzak(zzajVar5);
                zzajVar5.zzE(zzgVarZzj);
                zzay().zzj().zzc("Fetching config failed. code, error", Integer.valueOf(i), th);
                zzfm zzfmVar4 = this.zzc;
                zzak(zzfmVar4);
                zzfmVar4.zzi(str);
                this.zzk.zzd.zzb(zzav().currentTimeMillis());
                if (i == 503 || i == 429) {
                    this.zzk.zzb.zzb(zzav().currentTimeMillis());
                }
                zzaf();
            }
            zzaj zzajVar6 = this.zze;
            zzak(zzajVar6);
            zzajVar6.zzD();
            zzajVar = this.zze;
            zzak(zzajVar);
            zzajVar.zzy();
        } catch (Throwable th2) {
            zzaj zzajVar7 = this.zze;
            zzak(zzajVar7);
            zzajVar7.zzy();
            throw th2;
        }
    }

    final void zzI(boolean z) {
        zzaf();
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x014b A[Catch: all -> 0x016b, TryCatch #2 {all -> 0x016b, blocks: (B:4:0x000d, B:5:0x000f, B:45:0x0123, B:50:0x015a, B:49:0x014b, B:11:0x0026, B:33:0x00c4, B:35:0x00d9, B:37:0x00df, B:39:0x00ea, B:38:0x00e3, B:41:0x00ee, B:42:0x00f6, B:44:0x00f8), top: B:59:0x000d, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0026 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    final void zzJ(int i, Throwable th, byte[] bArr, String str) {
        zzaj zzajVar;
        long jLongValue;
        zzaz().zzg();
        zzB();
        if (bArr == null) {
            try {
                bArr = new byte[0];
            } finally {
                this.zzu = false;
                zzac();
            }
        }
        List<Long> list = (List) Preconditions.checkNotNull(this.zzy);
        this.zzy = null;
        if (i != 200) {
            if (i == 204) {
                i = com.texa.careapp.Constants.PENDING_INTENT_REQUEST_CODE_PIN_CONFIRM;
                if (th != null) {
                }
            }
            zzay().zzj().zzc("Network upload failed. Will retry later. code, error", Integer.valueOf(i), th);
            this.zzk.zzd.zzb(zzav().currentTimeMillis());
            if (i != 503) {
                this.zzk.zzb.zzb(zzav().currentTimeMillis());
                zzaj zzajVar2 = this.zze;
                zzak(zzajVar2);
                zzajVar2.zzz(list);
                zzaf();
            }
        } else if (th != null) {
            try {
                this.zzk.zzc.zzb(zzav().currentTimeMillis());
                this.zzk.zzd.zzb(0L);
                zzaf();
                zzay().zzj().zzc("Successful upload. Got network response. code, size", Integer.valueOf(i), Integer.valueOf(bArr.length));
                zzaj zzajVar3 = this.zze;
                zzak(zzajVar3);
                zzajVar3.zzw();
                try {
                    for (Long l : list) {
                        try {
                            zzajVar = this.zze;
                            zzak(zzajVar);
                            jLongValue = l.longValue();
                            zzajVar.zzg();
                            zzajVar.zzY();
                        } catch (SQLiteException e) {
                            List<Long> list2 = this.zzz;
                            if (list2 == null || !list2.contains(l)) {
                                throw e;
                            }
                        }
                        try {
                            if (zzajVar.zzh().delete("queue", "rowid=?", new String[]{String.valueOf(jLongValue)}) != 1) {
                                throw new SQLiteException("Deleted fewer rows from queue than expected");
                            }
                        } catch (SQLiteException e2) {
                            zzajVar.zzs.zzay().zzd().zzb("Failed to delete a bundle in a queue table", e2);
                            throw e2;
                        }
                    }
                    zzaj zzajVar4 = this.zze;
                    zzak(zzajVar4);
                    zzajVar4.zzD();
                    zzaj zzajVar5 = this.zze;
                    zzak(zzajVar5);
                    zzajVar5.zzy();
                    this.zzz = null;
                    zzer zzerVar = this.zzd;
                    zzak(zzerVar);
                    if (zzerVar.zza() && zzai()) {
                        zzV();
                    } else {
                        this.zzA = -1L;
                        zzaf();
                    }
                    this.zza = 0L;
                } catch (Throwable th2) {
                    zzaj zzajVar6 = this.zze;
                    zzak(zzajVar6);
                    zzajVar6.zzy();
                    throw th2;
                }
            } catch (SQLiteException e3) {
                zzay().zzd().zzb("Database error while trying to delete uploaded bundles", e3);
                this.zza = zzav().elapsedRealtime();
                zzay().zzj().zzb("Disable upload, time", Long.valueOf(this.zza));
            }
        } else {
            zzay().zzj().zzc("Network upload failed. Will retry later. code, error", Integer.valueOf(i), th);
            this.zzk.zzd.zzb(zzav().currentTimeMillis());
            if (i != 503 || i == 429) {
                this.zzk.zzb.zzb(zzav().currentTimeMillis());
            }
            zzaj zzajVar22 = this.zze;
            zzak(zzajVar22);
            zzajVar22.zzz(list);
            zzaf();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:69:0x0218  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x021c A[Catch: all -> 0x05a5, TryCatch #1 {all -> 0x05a5, blocks: (B:23:0x00a4, B:25:0x00b3, B:43:0x0118, B:45:0x012b, B:47:0x0141, B:48:0x0168, B:50:0x01b9, B:53:0x01ce, B:56:0x01e4, B:58:0x01ef, B:63:0x0200, B:66:0x020e, B:70:0x0219, B:72:0x021c, B:74:0x023d, B:76:0x0242, B:79:0x0261, B:82:0x0275, B:84:0x029b, B:87:0x02a3, B:89:0x02b2, B:119:0x03a3, B:121:0x03d5, B:122:0x03d8, B:124:0x0401, B:164:0x04e0, B:165:0x04e3, B:170:0x0545, B:172:0x0553, B:176:0x0594, B:127:0x0418, B:132:0x0441, B:134:0x0449, B:136:0x0455, B:140:0x0468, B:144:0x0479, B:148:0x0485, B:151:0x049d, B:156:0x04c2, B:158:0x04c8, B:159:0x04cf, B:161:0x04d5, B:154:0x04ae, B:142:0x0471, B:130:0x042b, B:90:0x02c3, B:92:0x02f0, B:93:0x0301, B:95:0x0308, B:97:0x030e, B:99:0x0318, B:101:0x0322, B:103:0x0328, B:105:0x032e, B:106:0x0333, B:112:0x035b, B:115:0x0360, B:116:0x0374, B:117:0x0384, B:118:0x0394, B:166:0x04fa, B:168:0x052e, B:169:0x0531, B:173:0x0577, B:175:0x057b, B:77:0x0251, B:29:0x00c4, B:31:0x00c8, B:35:0x00d7, B:37:0x00f3, B:39:0x00fd, B:42:0x0108), top: B:185:0x00a4, inners: #0, #2, #3, #4 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    final void zzK(zzp zzpVar) {
        String str;
        String str2;
        int i;
        String str3;
        zzap zzapVarZzn;
        boolean z;
        String str4;
        String str5;
        PackageInfo packageInfo;
        String str6;
        String str7;
        String str8;
        ApplicationInfo applicationInfo;
        ApplicationInfo applicationInfo2;
        boolean z2;
        boolean z3;
        String strZzw;
        zzaz().zzg();
        zzB();
        Preconditions.checkNotNull(zzpVar);
        Preconditions.checkNotEmpty(zzpVar.zza);
        if (zzag(zzpVar)) {
            zzaj zzajVar = this.zze;
            zzak(zzajVar);
            zzg zzgVarZzj = zzajVar.zzj(zzpVar.zza);
            if (zzgVarZzj != null && TextUtils.isEmpty(zzgVarZzj.zzz()) && !TextUtils.isEmpty(zzpVar.zzb)) {
                zzgVarZzj.zzM(0L);
                zzaj zzajVar2 = this.zze;
                zzak(zzajVar2);
                zzajVar2.zzE(zzgVarZzj);
                zzfm zzfmVar = this.zzc;
                zzak(zzfmVar);
                zzfmVar.zzj(zzpVar.zza);
            }
            if (!zzpVar.zzh) {
                zzd(zzpVar);
                return;
            }
            long jCurrentTimeMillis = zzpVar.zzm;
            if (jCurrentTimeMillis == 0) {
                jCurrentTimeMillis = zzav().currentTimeMillis();
            }
            this.zzn.zzg().zzd();
            int i2 = zzpVar.zzn;
            if (i2 != 0 && i2 != 1) {
                zzay().zzk().zzc("Incorrect app type, assuming installed app. appId, appType", zzel.zzn(zzpVar.zza), Integer.valueOf(i2));
                i2 = 0;
            }
            zzaj zzajVar3 = this.zze;
            zzak(zzajVar3);
            zzajVar3.zzw();
            try {
                zzaj zzajVar4 = this.zze;
                zzak(zzajVar4);
                zzkx zzkxVarZzp = zzajVar4.zzp(zzpVar.zza, "_npa");
                if (zzkxVarZzp == null || "auto".equals(zzkxVarZzp.zzb)) {
                    Boolean bool = zzpVar.zzr;
                    if (bool != null) {
                        str = "_sysu";
                        str2 = "_sys";
                        i = 1;
                        zzkv zzkvVar = new zzkv("_npa", jCurrentTimeMillis, Long.valueOf(true != bool.booleanValue() ? 0L : 1L), "auto");
                        if (zzkxVarZzp == null || !zzkxVarZzp.zze.equals(zzkvVar.zzd)) {
                            zzU(zzkvVar, zzpVar);
                        }
                    } else {
                        str = "_sysu";
                        str2 = "_sys";
                        i = 1;
                        if (zzkxVarZzp != null) {
                            zzO(new zzkv("_npa", jCurrentTimeMillis, null, "auto"), zzpVar);
                        }
                    }
                } else {
                    str = "_sysu";
                    str2 = "_sys";
                    i = 1;
                }
                zzaj zzajVar5 = this.zze;
                zzak(zzajVar5);
                zzg zzgVarZzj2 = zzajVar5.zzj((String) Preconditions.checkNotNull(zzpVar.zza));
                if (zzgVarZzj2 != null && zzv().zzam(zzpVar.zzb, zzgVarZzj2.zzz(), zzpVar.zzq, zzgVarZzj2.zzr())) {
                    zzay().zzk().zzb("New GMP App Id passed in. Removing cached database data. appId", zzel.zzn(zzgVarZzj2.zzt()));
                    zzaj zzajVar6 = this.zze;
                    zzak(zzajVar6);
                    String strZzt = zzgVarZzj2.zzt();
                    zzajVar6.zzY();
                    zzajVar6.zzg();
                    Preconditions.checkNotEmpty(strZzt);
                    try {
                        SQLiteDatabase sQLiteDatabaseZzh = zzajVar6.zzh();
                        String[] strArr = new String[i];
                        strArr[0] = strZzt;
                        int iDelete = sQLiteDatabaseZzh.delete("events", "app_id=?", strArr) + sQLiteDatabaseZzh.delete("user_attributes", "app_id=?", strArr) + sQLiteDatabaseZzh.delete("conditional_properties", "app_id=?", strArr) + sQLiteDatabaseZzh.delete("apps", "app_id=?", strArr) + sQLiteDatabaseZzh.delete("raw_events", "app_id=?", strArr) + sQLiteDatabaseZzh.delete("raw_events_metadata", "app_id=?", strArr) + sQLiteDatabaseZzh.delete("event_filters", "app_id=?", strArr) + sQLiteDatabaseZzh.delete("property_filters", "app_id=?", strArr) + sQLiteDatabaseZzh.delete("audience_filter_values", "app_id=?", strArr) + sQLiteDatabaseZzh.delete("consent_settings", "app_id=?", strArr);
                        if (iDelete > 0) {
                            zzajVar6.zzs.zzay().zzj().zzc("Deleted application data. app, records", strZzt, Integer.valueOf(iDelete));
                        }
                    } catch (SQLiteException e) {
                        zzajVar6.zzs.zzay().zzd().zzc("Error deleting application data. appId, error", zzel.zzn(strZzt), e);
                    }
                    zzgVarZzj2 = null;
                }
                if (zzgVarZzj2 != null) {
                    if (zzgVarZzj2.zzb() != -2147483648L) {
                        str3 = "com.android.vending";
                        z3 = zzgVarZzj2.zzb() != zzpVar.zzj;
                        strZzw = zzgVarZzj2.zzw();
                        if (((zzgVarZzj2.zzb() == -2147483648L || strZzw == null || strZzw.equals(zzpVar.zzc)) ? false : true) | z3) {
                            Bundle bundle = new Bundle();
                            bundle.putString("_pv", strZzw);
                            zzD(new zzat("_au", new zzar(bundle), "auto", jCurrentTimeMillis), zzpVar);
                        }
                    } else {
                        str3 = "com.android.vending";
                    }
                    strZzw = zzgVarZzj2.zzw();
                    if (zzgVarZzj2.zzb() == -2147483648L) {
                        if (((zzgVarZzj2.zzb() == -2147483648L || strZzw == null || strZzw.equals(zzpVar.zzc)) ? false : true) | z3) {
                        }
                    }
                } else {
                    str3 = "com.android.vending";
                }
                zzd(zzpVar);
                if (i2 == 0) {
                    zzaj zzajVar7 = this.zze;
                    zzak(zzajVar7);
                    zzapVarZzn = zzajVar7.zzn(zzpVar.zza, "_f");
                    z = false;
                } else {
                    zzaj zzajVar8 = this.zze;
                    zzak(zzajVar8);
                    zzapVarZzn = zzajVar8.zzn(zzpVar.zza, "_v");
                    z = true;
                }
                if (zzapVarZzn == null) {
                    long j = ((jCurrentTimeMillis / 3600000) + 1) * 3600000;
                    if (z) {
                        zzU(new zzkv("_fvt", jCurrentTimeMillis, Long.valueOf(j), "auto"), zzpVar);
                        zzaz().zzg();
                        zzB();
                        Bundle bundle2 = new Bundle();
                        bundle2.putLong("_c", 1L);
                        bundle2.putLong("_r", 1L);
                        str4 = "_et";
                        bundle2.putLong(str4, 1L);
                        if (zzpVar.zzp) {
                            bundle2.putLong("_dac", 1L);
                        }
                        zzF(new zzat("_v", new zzar(bundle2), "auto", jCurrentTimeMillis), zzpVar);
                    } else {
                        zzU(new zzkv("_fot", jCurrentTimeMillis, Long.valueOf(j), "auto"), zzpVar);
                        zzaz().zzg();
                        zzfd zzfdVar = (zzfd) Preconditions.checkNotNull(this.zzm);
                        String str9 = zzpVar.zza;
                        if (str9 == null || str9.isEmpty()) {
                            zzfdVar.zza.zzay().zzm().zza("Install Referrer Reporter was called with invalid app package name");
                        } else {
                            zzfdVar.zza.zzaz().zzg();
                            if (zzfdVar.zza()) {
                                zzfc zzfcVar = new zzfc(zzfdVar, str9);
                                zzfdVar.zza.zzaz().zzg();
                                Intent intent = new Intent("com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE");
                                String str10 = str3;
                                intent.setComponent(new ComponentName(str10, "com.google.android.finsky.externalreferrer.GetInstallReferrerService"));
                                PackageManager packageManager = zzfdVar.zza.zzau().getPackageManager();
                                if (packageManager == null) {
                                    zzfdVar.zza.zzay().zzm().zza("Failed to obtain Package Manager to verify binding conditions for Install Referrer");
                                } else {
                                    List<ResolveInfo> listQueryIntentServices = packageManager.queryIntentServices(intent, 0);
                                    if (listQueryIntentServices == null || listQueryIntentServices.isEmpty()) {
                                        zzfdVar.zza.zzay().zzi().zza("Play Service for fetching Install Referrer is unavailable on device");
                                    } else {
                                        ResolveInfo resolveInfo = listQueryIntentServices.get(0);
                                        if (resolveInfo.serviceInfo != null) {
                                            String str11 = resolveInfo.serviceInfo.packageName;
                                            if (resolveInfo.serviceInfo.name != null && str10.equals(str11) && zzfdVar.zza()) {
                                                try {
                                                    zzfdVar.zza.zzay().zzj().zzb("Install Referrer Service is", true != ConnectionTracker.getInstance().bindService(zzfdVar.zza.zzau(), new Intent(intent), zzfcVar, 1) ? "not available" : "available");
                                                } catch (RuntimeException e2) {
                                                    zzfdVar.zza.zzay().zzd().zzb("Exception occurred while binding to Install Referrer Service", e2.getMessage());
                                                }
                                            } else {
                                                zzfdVar.zza.zzay().zzk().zza("Play Store version 8.3.73 or higher required for Install Referrer");
                                            }
                                        }
                                    }
                                }
                            } else {
                                zzfdVar.zza.zzay().zzi().zza("Install Referrer Reporter is not available");
                            }
                        }
                        zzaz().zzg();
                        zzB();
                        Bundle bundle3 = new Bundle();
                        bundle3.putLong("_c", 1L);
                        bundle3.putLong("_r", 1L);
                        bundle3.putLong("_uwa", 0L);
                        bundle3.putLong("_pfo", 0L);
                        String str12 = str2;
                        bundle3.putLong(str12, 0L);
                        String str13 = str;
                        bundle3.putLong(str13, 0L);
                        bundle3.putLong("_et", 1L);
                        if (zzpVar.zzp) {
                            bundle3.putLong("_dac", 1L);
                        }
                        String str14 = (String) Preconditions.checkNotNull(zzpVar.zza);
                        zzaj zzajVar9 = this.zze;
                        zzak(zzajVar9);
                        Preconditions.checkNotEmpty(str14);
                        zzajVar9.zzg();
                        zzajVar9.zzY();
                        long jZzc = zzajVar9.zzc(str14, "first_open_count");
                        if (this.zzn.zzau().getPackageManager() == null) {
                            zzay().zzd().zzb("PackageManager is null, first open report might be inaccurate. appId", zzel.zzn(str14));
                            str7 = "_et";
                        } else {
                            try {
                                packageInfo = Wrappers.packageManager(this.zzn.zzau()).getPackageInfo(str14, 0);
                                str5 = str13;
                            } catch (PackageManager.NameNotFoundException e3) {
                                str5 = str13;
                                zzay().zzd().zzc("Package info is null, first open report might be inaccurate. appId", zzel.zzn(str14), e3);
                                packageInfo = null;
                            }
                            if (packageInfo == null || packageInfo.firstInstallTime == 0) {
                                str6 = str12;
                                str7 = "_et";
                                str8 = str5;
                                applicationInfo = null;
                            } else {
                                str6 = str12;
                                str7 = "_et";
                                if (packageInfo.firstInstallTime != packageInfo.lastUpdateTime) {
                                    applicationInfo = null;
                                    if (!zzg().zzs(null, zzdy.zzag)) {
                                        bundle3.putLong("_uwa", 1L);
                                    } else if (jZzc == 0) {
                                        bundle3.putLong("_uwa", 1L);
                                        jZzc = 0;
                                    }
                                    z2 = false;
                                } else {
                                    applicationInfo = null;
                                    z2 = true;
                                }
                                str8 = str5;
                                zzU(new zzkv("_fi", jCurrentTimeMillis, Long.valueOf(true != z2 ? 0L : 1L), "auto"), zzpVar);
                            }
                            try {
                                applicationInfo2 = Wrappers.packageManager(this.zzn.zzau()).getApplicationInfo(str14, 0);
                            } catch (PackageManager.NameNotFoundException e4) {
                                zzay().zzd().zzc("Application info is null, first open report might be inaccurate. appId", zzel.zzn(str14), e4);
                                applicationInfo2 = applicationInfo;
                            }
                            if (applicationInfo2 != null) {
                                if ((applicationInfo2.flags & 1) != 0) {
                                    bundle3.putLong(str6, 1L);
                                }
                                if ((applicationInfo2.flags & 128) != 0) {
                                    bundle3.putLong(str8, 1L);
                                }
                            }
                        }
                        if (jZzc >= 0) {
                            bundle3.putLong("_pfo", jZzc);
                        }
                        zzF(new zzat("_f", new zzar(bundle3), "auto", jCurrentTimeMillis), zzpVar);
                        str4 = str7;
                    }
                    if (!zzg().zzs(zzpVar.zza, zzdy.zzT)) {
                        Bundle bundle4 = new Bundle();
                        bundle4.putLong(str4, 1L);
                        bundle4.putLong("_fr", 1L);
                        zzF(new zzat("_e", new zzar(bundle4), "auto", jCurrentTimeMillis), zzpVar);
                    }
                } else if (zzpVar.zzi) {
                    zzF(new zzat("_cd", new zzar(new Bundle()), "auto", jCurrentTimeMillis), zzpVar);
                }
                zzaj zzajVar10 = this.zze;
                zzak(zzajVar10);
                zzajVar10.zzD();
            } finally {
                zzaj zzajVar11 = this.zze;
                zzak(zzajVar11);
                zzajVar11.zzy();
            }
        }
    }

    final void zzL() {
        this.zzr++;
    }

    final void zzM(zzab zzabVar) {
        zzp zzpVarZzaa = zzaa((String) Preconditions.checkNotNull(zzabVar.zza));
        if (zzpVarZzaa != null) {
            zzN(zzabVar, zzpVarZzaa);
        }
    }

    final void zzN(zzab zzabVar, zzp zzpVar) {
        Preconditions.checkNotNull(zzabVar);
        Preconditions.checkNotEmpty(zzabVar.zza);
        Preconditions.checkNotNull(zzabVar.zzc);
        Preconditions.checkNotEmpty(zzabVar.zzc.zzb);
        zzaz().zzg();
        zzB();
        if (zzag(zzpVar)) {
            if (!zzpVar.zzh) {
                zzd(zzpVar);
                return;
            }
            zzaj zzajVar = this.zze;
            zzak(zzajVar);
            zzajVar.zzw();
            try {
                zzd(zzpVar);
                String str = (String) Preconditions.checkNotNull(zzabVar.zza);
                zzaj zzajVar2 = this.zze;
                zzak(zzajVar2);
                zzab zzabVarZzk = zzajVar2.zzk(str, zzabVar.zzc.zzb);
                if (zzabVarZzk != null) {
                    zzay().zzc().zzc("Removing conditional user property", zzabVar.zza, this.zzn.zzj().zzf(zzabVar.zzc.zzb));
                    zzaj zzajVar3 = this.zze;
                    zzak(zzajVar3);
                    zzajVar3.zza(str, zzabVar.zzc.zzb);
                    if (zzabVarZzk.zze) {
                        zzaj zzajVar4 = this.zze;
                        zzak(zzajVar4);
                        zzajVar4.zzB(str, zzabVar.zzc.zzb);
                    }
                    zzat zzatVar = zzabVar.zzk;
                    if (zzatVar != null) {
                        zzar zzarVar = zzatVar.zzb;
                        zzW((zzat) Preconditions.checkNotNull(zzv().zzz(str, ((zzat) Preconditions.checkNotNull(zzabVar.zzk)).zza, zzarVar != null ? zzarVar.zzc() : null, zzabVarZzk.zzb, zzabVar.zzk.zzd, true, true)), zzpVar);
                    }
                } else {
                    zzay().zzk().zzc("Conditional user property doesn't exist", zzel.zzn(zzabVar.zza), this.zzn.zzj().zzf(zzabVar.zzc.zzb));
                }
                zzaj zzajVar5 = this.zze;
                zzak(zzajVar5);
                zzajVar5.zzD();
            } finally {
                zzaj zzajVar6 = this.zze;
                zzak(zzajVar6);
                zzajVar6.zzy();
            }
        }
    }

    final void zzO(zzkv zzkvVar, zzp zzpVar) {
        zzaz().zzg();
        zzB();
        if (zzag(zzpVar)) {
            if (!zzpVar.zzh) {
                zzd(zzpVar);
                return;
            }
            if ("_npa".equals(zzkvVar.zzb) && zzpVar.zzr != null) {
                zzay().zzc().zza("Falling back to manifest metadata value for ad personalization");
                zzU(new zzkv("_npa", zzav().currentTimeMillis(), Long.valueOf(true != zzpVar.zzr.booleanValue() ? 0L : 1L), "auto"), zzpVar);
                return;
            }
            zzay().zzc().zzb("Removing user property", this.zzn.zzj().zzf(zzkvVar.zzb));
            zzaj zzajVar = this.zze;
            zzak(zzajVar);
            zzajVar.zzw();
            try {
                zzd(zzpVar);
                zzmt.zzc();
                if (this.zzn.zzf().zzs(null, zzdy.zzav) && this.zzn.zzf().zzs(null, zzdy.zzax) && "_id".equals(zzkvVar.zzb)) {
                    zzaj zzajVar2 = this.zze;
                    zzak(zzajVar2);
                    zzajVar2.zzB((String) Preconditions.checkNotNull(zzpVar.zza), "_lair");
                }
                zzaj zzajVar3 = this.zze;
                zzak(zzajVar3);
                zzajVar3.zzB((String) Preconditions.checkNotNull(zzpVar.zza), zzkvVar.zzb);
                zzaj zzajVar4 = this.zze;
                zzak(zzajVar4);
                zzajVar4.zzD();
                zzay().zzc().zzb("User property removed", this.zzn.zzj().zzf(zzkvVar.zzb));
            } finally {
                zzaj zzajVar5 = this.zze;
                zzak(zzajVar5);
                zzajVar5.zzy();
            }
        }
    }

    final void zzP(zzp zzpVar) {
        if (this.zzy != null) {
            ArrayList arrayList = new ArrayList();
            this.zzz = arrayList;
            arrayList.addAll(this.zzy);
        }
        zzaj zzajVar = this.zze;
        zzak(zzajVar);
        String str = (String) Preconditions.checkNotNull(zzpVar.zza);
        Preconditions.checkNotEmpty(str);
        zzajVar.zzg();
        zzajVar.zzY();
        try {
            SQLiteDatabase sQLiteDatabaseZzh = zzajVar.zzh();
            String[] strArr = {str};
            int iDelete = sQLiteDatabaseZzh.delete("apps", "app_id=?", strArr) + sQLiteDatabaseZzh.delete("events", "app_id=?", strArr) + sQLiteDatabaseZzh.delete("user_attributes", "app_id=?", strArr) + sQLiteDatabaseZzh.delete("conditional_properties", "app_id=?", strArr) + sQLiteDatabaseZzh.delete("raw_events", "app_id=?", strArr) + sQLiteDatabaseZzh.delete("raw_events_metadata", "app_id=?", strArr) + sQLiteDatabaseZzh.delete("queue", "app_id=?", strArr) + sQLiteDatabaseZzh.delete("audience_filter_values", "app_id=?", strArr) + sQLiteDatabaseZzh.delete("main_event_params", "app_id=?", strArr) + sQLiteDatabaseZzh.delete("default_event_params", "app_id=?", strArr);
            if (iDelete > 0) {
                zzajVar.zzs.zzay().zzj().zzc("Reset analytics data. app, records", str, Integer.valueOf(iDelete));
            }
        } catch (SQLiteException e) {
            zzajVar.zzs.zzay().zzd().zzc("Error resetting analytics data. appId, error", zzel.zzn(str), e);
        }
        if (zzpVar.zzh) {
            zzK(zzpVar);
        }
    }

    protected final void zzQ() {
        zzaz().zzg();
        zzaj zzajVar = this.zze;
        zzak(zzajVar);
        zzajVar.zzA();
        if (this.zzk.zzc.zza() == 0) {
            this.zzk.zzc.zzb(zzav().currentTimeMillis());
        }
        zzaf();
    }

    final void zzR(zzab zzabVar) {
        zzp zzpVarZzaa = zzaa((String) Preconditions.checkNotNull(zzabVar.zza));
        if (zzpVarZzaa != null) {
            zzS(zzabVar, zzpVarZzaa);
        }
    }

    final void zzS(zzab zzabVar, zzp zzpVar) {
        zzat zzatVar;
        Preconditions.checkNotNull(zzabVar);
        Preconditions.checkNotEmpty(zzabVar.zza);
        Preconditions.checkNotNull(zzabVar.zzb);
        Preconditions.checkNotNull(zzabVar.zzc);
        Preconditions.checkNotEmpty(zzabVar.zzc.zzb);
        zzaz().zzg();
        zzB();
        if (zzag(zzpVar)) {
            if (!zzpVar.zzh) {
                zzd(zzpVar);
                return;
            }
            zzab zzabVar2 = new zzab(zzabVar);
            boolean z = false;
            zzabVar2.zze = false;
            zzaj zzajVar = this.zze;
            zzak(zzajVar);
            zzajVar.zzw();
            try {
                zzaj zzajVar2 = this.zze;
                zzak(zzajVar2);
                zzab zzabVarZzk = zzajVar2.zzk((String) Preconditions.checkNotNull(zzabVar2.zza), zzabVar2.zzc.zzb);
                if (zzabVarZzk != null && !zzabVarZzk.zzb.equals(zzabVar2.zzb)) {
                    zzay().zzk().zzd("Updating a conditional user property with different origin. name, origin, origin (from DB)", this.zzn.zzj().zzf(zzabVar2.zzc.zzb), zzabVar2.zzb, zzabVarZzk.zzb);
                }
                if (zzabVarZzk != null && zzabVarZzk.zze) {
                    zzabVar2.zzb = zzabVarZzk.zzb;
                    zzabVar2.zzd = zzabVarZzk.zzd;
                    zzabVar2.zzh = zzabVarZzk.zzh;
                    zzabVar2.zzf = zzabVarZzk.zzf;
                    zzabVar2.zzi = zzabVarZzk.zzi;
                    zzabVar2.zze = true;
                    zzkv zzkvVar = zzabVar2.zzc;
                    zzabVar2.zzc = new zzkv(zzkvVar.zzb, zzabVarZzk.zzc.zzc, zzkvVar.zza(), zzabVarZzk.zzc.zzf);
                } else if (TextUtils.isEmpty(zzabVar2.zzf)) {
                    zzkv zzkvVar2 = zzabVar2.zzc;
                    zzabVar2.zzc = new zzkv(zzkvVar2.zzb, zzabVar2.zzd, zzkvVar2.zza(), zzabVar2.zzc.zzf);
                    zzabVar2.zze = true;
                    z = true;
                }
                if (zzabVar2.zze) {
                    zzkv zzkvVar3 = zzabVar2.zzc;
                    zzkx zzkxVar = new zzkx((String) Preconditions.checkNotNull(zzabVar2.zza), zzabVar2.zzb, zzkvVar3.zzb, zzkvVar3.zzc, Preconditions.checkNotNull(zzkvVar3.zza()));
                    zzaj zzajVar3 = this.zze;
                    zzak(zzajVar3);
                    if (zzajVar3.zzN(zzkxVar)) {
                        zzay().zzc().zzd("User property updated immediately", zzabVar2.zza, this.zzn.zzj().zzf(zzkxVar.zzc), zzkxVar.zze);
                    } else {
                        zzay().zzd().zzd("(2)Too many active user properties, ignoring", zzel.zzn(zzabVar2.zza), this.zzn.zzj().zzf(zzkxVar.zzc), zzkxVar.zze);
                    }
                    if (z && (zzatVar = zzabVar2.zzi) != null) {
                        zzW(new zzat(zzatVar, zzabVar2.zzd), zzpVar);
                    }
                }
                zzaj zzajVar4 = this.zze;
                zzak(zzajVar4);
                if (zzajVar4.zzM(zzabVar2)) {
                    zzay().zzc().zzd("Conditional property added", zzabVar2.zza, this.zzn.zzj().zzf(zzabVar2.zzc.zzb), zzabVar2.zzc.zza());
                } else {
                    zzay().zzd().zzd("Too many conditional properties, ignoring", zzel.zzn(zzabVar2.zza), this.zzn.zzj().zzf(zzabVar2.zzc.zzb), zzabVar2.zzc.zza());
                }
                zzaj zzajVar5 = this.zze;
                zzak(zzajVar5);
                zzajVar5.zzD();
            } finally {
                zzaj zzajVar6 = this.zze;
                zzak(zzajVar6);
                zzajVar6.zzy();
            }
        }
    }

    final void zzT(String str, zzag zzagVar) {
        zzaz().zzg();
        zzB();
        this.zzB.put(str, zzagVar);
        zzaj zzajVar = this.zze;
        zzak(zzajVar);
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(zzagVar);
        zzajVar.zzg();
        zzajVar.zzY();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("consent_state", zzagVar.zzi());
        try {
            if (zzajVar.zzh().insertWithOnConflict("consent_settings", null, contentValues, 5) == -1) {
                zzajVar.zzs.zzay().zzd().zzb("Failed to insert/update consent setting (got -1). appId", zzel.zzn(str));
            }
        } catch (SQLiteException e) {
            zzajVar.zzs.zzay().zzd().zzc("Error storing consent setting. appId, error", zzel.zzn(str), e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00d4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    final void zzU(zzkv zzkvVar, zzp zzpVar) {
        long jLongValue;
        zzaz().zzg();
        zzB();
        if (zzag(zzpVar)) {
            if (!zzpVar.zzh) {
                zzd(zzpVar);
                return;
            }
            int iZzl = zzv().zzl(zzkvVar.zzb);
            if (iZzl != 0) {
                zzkz zzkzVarZzv = zzv();
                String str = zzkvVar.zzb;
                zzg();
                String strZzC = zzkzVarZzv.zzC(str, 24, true);
                String str2 = zzkvVar.zzb;
                zzv().zzM(this.zzC, zzpVar.zza, iZzl, "_ev", strZzC, str2 != null ? str2.length() : 0);
                return;
            }
            int iZzd = zzv().zzd(zzkvVar.zzb, zzkvVar.zza());
            if (iZzd != 0) {
                zzkz zzkzVarZzv2 = zzv();
                String str3 = zzkvVar.zzb;
                zzg();
                String strZzC2 = zzkzVarZzv2.zzC(str3, 24, true);
                Object objZza = zzkvVar.zza();
                zzv().zzM(this.zzC, zzpVar.zza, iZzd, "_ev", strZzC2, (objZza == null || !((objZza instanceof String) || (objZza instanceof CharSequence))) ? 0 : objZza.toString().length());
                return;
            }
            Object objZzB = zzv().zzB(zzkvVar.zzb, zzkvVar.zza());
            if (objZzB == null) {
                return;
            }
            if ("_sid".equals(zzkvVar.zzb)) {
                long j = zzkvVar.zzc;
                String str4 = zzkvVar.zzf;
                String str5 = (String) Preconditions.checkNotNull(zzpVar.zza);
                zzaj zzajVar = this.zze;
                zzak(zzajVar);
                zzkx zzkxVarZzp = zzajVar.zzp(str5, "_sno");
                if (zzkxVarZzp != null) {
                    Object obj = zzkxVarZzp.zze;
                    if (obj instanceof Long) {
                        jLongValue = ((Long) obj).longValue();
                    } else {
                        if (zzkxVarZzp != null) {
                            zzay().zzk().zzb("Retrieved last session number from database does not contain a valid (long) value", zzkxVarZzp.zze);
                        }
                        zzaj zzajVar2 = this.zze;
                        zzak(zzajVar2);
                        zzap zzapVarZzn = zzajVar2.zzn(str5, "_s");
                        if (zzapVarZzn != null) {
                            jLongValue = zzapVarZzn.zzc;
                            zzay().zzj().zzb("Backfill the session number. Last used session number", Long.valueOf(jLongValue));
                        } else {
                            jLongValue = 0;
                        }
                    }
                    zzU(new zzkv("_sno", j, Long.valueOf(jLongValue + 1), str4), zzpVar);
                }
            }
            zzkx zzkxVar = new zzkx((String) Preconditions.checkNotNull(zzpVar.zza), (String) Preconditions.checkNotNull(zzkvVar.zzf), zzkvVar.zzb, zzkvVar.zzc, objZzB);
            zzay().zzj().zzc("Setting user property", this.zzn.zzj().zzf(zzkxVar.zzc), objZzB);
            zzaj zzajVar3 = this.zze;
            zzak(zzajVar3);
            zzajVar3.zzw();
            try {
                zzmt.zzc();
                if (this.zzn.zzf().zzs(null, zzdy.zzav) && "_id".equals(zzkxVar.zzc)) {
                    zzaj zzajVar4 = this.zze;
                    zzak(zzajVar4);
                    zzajVar4.zzB(zzpVar.zza, "_lair");
                }
                zzd(zzpVar);
                zzaj zzajVar5 = this.zze;
                zzak(zzajVar5);
                boolean zZzN = zzajVar5.zzN(zzkxVar);
                zzaj zzajVar6 = this.zze;
                zzak(zzajVar6);
                zzajVar6.zzD();
                if (!zZzN) {
                    zzay().zzd().zzc("Too many unique user properties are set. Ignoring user property", this.zzn.zzj().zzf(zzkxVar.zzc), zzkxVar.zze);
                    zzv().zzM(this.zzC, zzpVar.zza, 9, null, null, 0);
                }
            } finally {
                zzaj zzajVar7 = this.zze;
                zzak(zzajVar7);
                zzajVar7.zzy();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0270 A[Catch: all -> 0x0510, TRY_ENTER, TRY_LEAVE, TryCatch #13 {all -> 0x0510, blocks: (B:3:0x0010, B:5:0x0021, B:9:0x0034, B:11:0x003a, B:13:0x004a, B:15:0x0052, B:17:0x0058, B:19:0x0063, B:21:0x0073, B:23:0x007e, B:25:0x0091, B:27:0x00b0, B:29:0x00b6, B:30:0x00b9, B:32:0x00c5, B:33:0x00dc, B:35:0x00ed, B:37:0x00f3, B:42:0x010a, B:56:0x012d, B:60:0x0134, B:61:0x0137, B:62:0x0138, B:66:0x0160, B:70:0x0168, B:76:0x019e, B:134:0x029f, B:136:0x02a5, B:138:0x02af, B:139:0x02b3, B:141:0x02b9, B:143:0x02cd, B:147:0x02d6, B:149:0x02dc, B:155:0x0301, B:152:0x02f1, B:154:0x02fb, B:156:0x0304, B:158:0x031f, B:162:0x032c, B:164:0x033f, B:166:0x0379, B:168:0x037e, B:170:0x0386, B:171:0x0389, B:173:0x0395, B:174:0x03ab, B:175:0x03b3, B:177:0x03c4, B:179:0x03d5, B:180:0x03f0, B:182:0x0402, B:184:0x0417, B:186:0x0422, B:187:0x042b, B:183:0x0410, B:189:0x046e, B:121:0x0270, B:133:0x029c, B:193:0x0485, B:194:0x0488, B:195:0x0489, B:201:0x04cb, B:216:0x04ef, B:218:0x04f5, B:220:0x0500, B:225:0x050c, B:226:0x050f), top: B:246:0x0010, inners: #19 }] */
    /* JADX WARN: Removed duplicated region for block: B:136:0x02a5 A[Catch: all -> 0x0510, TryCatch #13 {all -> 0x0510, blocks: (B:3:0x0010, B:5:0x0021, B:9:0x0034, B:11:0x003a, B:13:0x004a, B:15:0x0052, B:17:0x0058, B:19:0x0063, B:21:0x0073, B:23:0x007e, B:25:0x0091, B:27:0x00b0, B:29:0x00b6, B:30:0x00b9, B:32:0x00c5, B:33:0x00dc, B:35:0x00ed, B:37:0x00f3, B:42:0x010a, B:56:0x012d, B:60:0x0134, B:61:0x0137, B:62:0x0138, B:66:0x0160, B:70:0x0168, B:76:0x019e, B:134:0x029f, B:136:0x02a5, B:138:0x02af, B:139:0x02b3, B:141:0x02b9, B:143:0x02cd, B:147:0x02d6, B:149:0x02dc, B:155:0x0301, B:152:0x02f1, B:154:0x02fb, B:156:0x0304, B:158:0x031f, B:162:0x032c, B:164:0x033f, B:166:0x0379, B:168:0x037e, B:170:0x0386, B:171:0x0389, B:173:0x0395, B:174:0x03ab, B:175:0x03b3, B:177:0x03c4, B:179:0x03d5, B:180:0x03f0, B:182:0x0402, B:184:0x0417, B:186:0x0422, B:187:0x042b, B:183:0x0410, B:189:0x046e, B:121:0x0270, B:133:0x029c, B:193:0x0485, B:194:0x0488, B:195:0x0489, B:201:0x04cb, B:216:0x04ef, B:218:0x04f5, B:220:0x0500, B:225:0x050c, B:226:0x050f), top: B:246:0x0010, inners: #19 }] */
    /* JADX WARN: Removed duplicated region for block: B:201:0x04cb A[Catch: all -> 0x0510, PHI: r3 r9
      0x04cb: PHI (r3v7 ??) = (r3v50 ??), (r3v51 ??), (r3v52 ??) binds: [B:205:0x04d4, B:200:0x04c9, B:214:0x04ec] A[DONT_GENERATE, DONT_INLINE]
      0x04cb: PHI (r9v4 ??) = (r9v49 ??), (r9v31 ?? I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), (r9v50 ??) binds: [B:205:0x04d4, B:200:0x04c9, B:214:0x04ec] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TRY_LEAVE, TryCatch #13 {all -> 0x0510, blocks: (B:3:0x0010, B:5:0x0021, B:9:0x0034, B:11:0x003a, B:13:0x004a, B:15:0x0052, B:17:0x0058, B:19:0x0063, B:21:0x0073, B:23:0x007e, B:25:0x0091, B:27:0x00b0, B:29:0x00b6, B:30:0x00b9, B:32:0x00c5, B:33:0x00dc, B:35:0x00ed, B:37:0x00f3, B:42:0x010a, B:56:0x012d, B:60:0x0134, B:61:0x0137, B:62:0x0138, B:66:0x0160, B:70:0x0168, B:76:0x019e, B:134:0x029f, B:136:0x02a5, B:138:0x02af, B:139:0x02b3, B:141:0x02b9, B:143:0x02cd, B:147:0x02d6, B:149:0x02dc, B:155:0x0301, B:152:0x02f1, B:154:0x02fb, B:156:0x0304, B:158:0x031f, B:162:0x032c, B:164:0x033f, B:166:0x0379, B:168:0x037e, B:170:0x0386, B:171:0x0389, B:173:0x0395, B:174:0x03ab, B:175:0x03b3, B:177:0x03c4, B:179:0x03d5, B:180:0x03f0, B:182:0x0402, B:184:0x0417, B:186:0x0422, B:187:0x042b, B:183:0x0410, B:189:0x046e, B:121:0x0270, B:133:0x029c, B:193:0x0485, B:194:0x0488, B:195:0x0489, B:201:0x04cb, B:216:0x04ef, B:218:0x04f5, B:220:0x0500, B:225:0x050c, B:226:0x050f), top: B:246:0x0010, inners: #19 }] */
    /* JADX WARN: Removed duplicated region for block: B:218:0x04f5 A[Catch: all -> 0x0510, TryCatch #13 {all -> 0x0510, blocks: (B:3:0x0010, B:5:0x0021, B:9:0x0034, B:11:0x003a, B:13:0x004a, B:15:0x0052, B:17:0x0058, B:19:0x0063, B:21:0x0073, B:23:0x007e, B:25:0x0091, B:27:0x00b0, B:29:0x00b6, B:30:0x00b9, B:32:0x00c5, B:33:0x00dc, B:35:0x00ed, B:37:0x00f3, B:42:0x010a, B:56:0x012d, B:60:0x0134, B:61:0x0137, B:62:0x0138, B:66:0x0160, B:70:0x0168, B:76:0x019e, B:134:0x029f, B:136:0x02a5, B:138:0x02af, B:139:0x02b3, B:141:0x02b9, B:143:0x02cd, B:147:0x02d6, B:149:0x02dc, B:155:0x0301, B:152:0x02f1, B:154:0x02fb, B:156:0x0304, B:158:0x031f, B:162:0x032c, B:164:0x033f, B:166:0x0379, B:168:0x037e, B:170:0x0386, B:171:0x0389, B:173:0x0395, B:174:0x03ab, B:175:0x03b3, B:177:0x03c4, B:179:0x03d5, B:180:0x03f0, B:182:0x0402, B:184:0x0417, B:186:0x0422, B:187:0x042b, B:183:0x0410, B:189:0x046e, B:121:0x0270, B:133:0x029c, B:193:0x0485, B:194:0x0488, B:195:0x0489, B:201:0x04cb, B:216:0x04ef, B:218:0x04f5, B:220:0x0500, B:225:0x050c, B:226:0x050f), top: B:246:0x0010, inners: #19 }] */
    /* JADX WARN: Removed duplicated region for block: B:225:0x050c A[Catch: all -> 0x0510, TRY_ENTER, TryCatch #13 {all -> 0x0510, blocks: (B:3:0x0010, B:5:0x0021, B:9:0x0034, B:11:0x003a, B:13:0x004a, B:15:0x0052, B:17:0x0058, B:19:0x0063, B:21:0x0073, B:23:0x007e, B:25:0x0091, B:27:0x00b0, B:29:0x00b6, B:30:0x00b9, B:32:0x00c5, B:33:0x00dc, B:35:0x00ed, B:37:0x00f3, B:42:0x010a, B:56:0x012d, B:60:0x0134, B:61:0x0137, B:62:0x0138, B:66:0x0160, B:70:0x0168, B:76:0x019e, B:134:0x029f, B:136:0x02a5, B:138:0x02af, B:139:0x02b3, B:141:0x02b9, B:143:0x02cd, B:147:0x02d6, B:149:0x02dc, B:155:0x0301, B:152:0x02f1, B:154:0x02fb, B:156:0x0304, B:158:0x031f, B:162:0x032c, B:164:0x033f, B:166:0x0379, B:168:0x037e, B:170:0x0386, B:171:0x0389, B:173:0x0395, B:174:0x03ab, B:175:0x03b3, B:177:0x03c4, B:179:0x03d5, B:180:0x03f0, B:182:0x0402, B:184:0x0417, B:186:0x0422, B:187:0x042b, B:183:0x0410, B:189:0x046e, B:121:0x0270, B:133:0x029c, B:193:0x0485, B:194:0x0488, B:195:0x0489, B:201:0x04cb, B:216:0x04ef, B:218:0x04f5, B:220:0x0500, B:225:0x050c, B:226:0x050f), top: B:246:0x0010, inners: #19 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x010a A[Catch: all -> 0x0510, PHI: r7 r11
      0x010a: PHI (r7v16 long) = (r7v0 long), (r7v18 long), (r7v0 long) binds: [B:54:0x012a, B:45:0x0112, B:41:0x0108] A[DONT_GENERATE, DONT_INLINE]
      0x010a: PHI (r11v19 android.database.Cursor) = (r11v17 android.database.Cursor), (r11v21 android.database.Cursor), (r11v21 android.database.Cursor) binds: [B:54:0x012a, B:45:0x0112, B:41:0x0108] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TRY_LEAVE, TryCatch #13 {all -> 0x0510, blocks: (B:3:0x0010, B:5:0x0021, B:9:0x0034, B:11:0x003a, B:13:0x004a, B:15:0x0052, B:17:0x0058, B:19:0x0063, B:21:0x0073, B:23:0x007e, B:25:0x0091, B:27:0x00b0, B:29:0x00b6, B:30:0x00b9, B:32:0x00c5, B:33:0x00dc, B:35:0x00ed, B:37:0x00f3, B:42:0x010a, B:56:0x012d, B:60:0x0134, B:61:0x0137, B:62:0x0138, B:66:0x0160, B:70:0x0168, B:76:0x019e, B:134:0x029f, B:136:0x02a5, B:138:0x02af, B:139:0x02b3, B:141:0x02b9, B:143:0x02cd, B:147:0x02d6, B:149:0x02dc, B:155:0x0301, B:152:0x02f1, B:154:0x02fb, B:156:0x0304, B:158:0x031f, B:162:0x032c, B:164:0x033f, B:166:0x0379, B:168:0x037e, B:170:0x0386, B:171:0x0389, B:173:0x0395, B:174:0x03ab, B:175:0x03b3, B:177:0x03c4, B:179:0x03d5, B:180:0x03f0, B:182:0x0402, B:184:0x0417, B:186:0x0422, B:187:0x042b, B:183:0x0410, B:189:0x046e, B:121:0x0270, B:133:0x029c, B:193:0x0485, B:194:0x0488, B:195:0x0489, B:201:0x04cb, B:216:0x04ef, B:218:0x04f5, B:220:0x0500, B:225:0x050c, B:226:0x050f), top: B:246:0x0010, inners: #19 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0134 A[Catch: all -> 0x0510, TryCatch #13 {all -> 0x0510, blocks: (B:3:0x0010, B:5:0x0021, B:9:0x0034, B:11:0x003a, B:13:0x004a, B:15:0x0052, B:17:0x0058, B:19:0x0063, B:21:0x0073, B:23:0x007e, B:25:0x0091, B:27:0x00b0, B:29:0x00b6, B:30:0x00b9, B:32:0x00c5, B:33:0x00dc, B:35:0x00ed, B:37:0x00f3, B:42:0x010a, B:56:0x012d, B:60:0x0134, B:61:0x0137, B:62:0x0138, B:66:0x0160, B:70:0x0168, B:76:0x019e, B:134:0x029f, B:136:0x02a5, B:138:0x02af, B:139:0x02b3, B:141:0x02b9, B:143:0x02cd, B:147:0x02d6, B:149:0x02dc, B:155:0x0301, B:152:0x02f1, B:154:0x02fb, B:156:0x0304, B:158:0x031f, B:162:0x032c, B:164:0x033f, B:166:0x0379, B:168:0x037e, B:170:0x0386, B:171:0x0389, B:173:0x0395, B:174:0x03ab, B:175:0x03b3, B:177:0x03c4, B:179:0x03d5, B:180:0x03f0, B:182:0x0402, B:184:0x0417, B:186:0x0422, B:187:0x042b, B:183:0x0410, B:189:0x046e, B:121:0x0270, B:133:0x029c, B:193:0x0485, B:194:0x0488, B:195:0x0489, B:201:0x04cb, B:216:0x04ef, B:218:0x04f5, B:220:0x0500, B:225:0x050c, B:226:0x050f), top: B:246:0x0010, inners: #19 }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0167  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0198 A[Catch: SQLiteException -> 0x0277, all -> 0x0481, TRY_LEAVE, TryCatch #1 {all -> 0x0481, blocks: (B:72:0x0192, B:74:0x0198, B:78:0x01a5, B:79:0x01ab, B:80:0x01af, B:81:0x01ba, B:83:0x01cf, B:85:0x01d5, B:86:0x01df, B:88:0x01e5, B:92:0x01eb, B:94:0x01f6, B:96:0x01fc, B:97:0x0203, B:115:0x025e, B:99:0x0218, B:102:0x022d, B:108:0x0236, B:109:0x0245, B:114:0x024b, B:131:0x0283), top: B:233:0x0168 }] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01a5 A[Catch: SQLiteException -> 0x0277, all -> 0x0481, TRY_ENTER, TryCatch #1 {all -> 0x0481, blocks: (B:72:0x0192, B:74:0x0198, B:78:0x01a5, B:79:0x01ab, B:80:0x01af, B:81:0x01ba, B:83:0x01cf, B:85:0x01d5, B:86:0x01df, B:88:0x01e5, B:92:0x01eb, B:94:0x01f6, B:96:0x01fc, B:97:0x0203, B:115:0x025e, B:99:0x0218, B:102:0x022d, B:108:0x0236, B:109:0x0245, B:114:0x024b, B:131:0x0283), top: B:233:0x0168 }] */
    /* JADX WARN: Type inference failed for: r0v30, types: [com.google.android.gms.measurement.internal.zzaj, com.google.android.gms.measurement.internal.zzki] */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v29 */
    /* JADX WARN: Type inference failed for: r3v31 */
    /* JADX WARN: Type inference failed for: r3v33, types: [java.io.ByteArrayOutputStream] */
    /* JADX WARN: Type inference failed for: r3v35 */
    /* JADX WARN: Type inference failed for: r3v36 */
    /* JADX WARN: Type inference failed for: r3v37 */
    /* JADX WARN: Type inference failed for: r3v38 */
    /* JADX WARN: Type inference failed for: r3v39 */
    /* JADX WARN: Type inference failed for: r3v40 */
    /* JADX WARN: Type inference failed for: r3v41 */
    /* JADX WARN: Type inference failed for: r3v42 */
    /* JADX WARN: Type inference failed for: r3v43 */
    /* JADX WARN: Type inference failed for: r3v44 */
    /* JADX WARN: Type inference failed for: r3v45 */
    /* JADX WARN: Type inference failed for: r3v46 */
    /* JADX WARN: Type inference failed for: r3v47 */
    /* JADX WARN: Type inference failed for: r3v48 */
    /* JADX WARN: Type inference failed for: r3v49 */
    /* JADX WARN: Type inference failed for: r3v5, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r3v50 */
    /* JADX WARN: Type inference failed for: r3v51 */
    /* JADX WARN: Type inference failed for: r3v52 */
    /* JADX WARN: Type inference failed for: r3v53 */
    /* JADX WARN: Type inference failed for: r3v54 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v16 */
    /* JADX WARN: Type inference failed for: r9v2, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r9v29 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v30 */
    /* JADX WARN: Type inference failed for: r9v31 */
    /* JADX WARN: Type inference failed for: r9v32 */
    /* JADX WARN: Type inference failed for: r9v38 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v42 */
    /* JADX WARN: Type inference failed for: r9v43 */
    /* JADX WARN: Type inference failed for: r9v44 */
    /* JADX WARN: Type inference failed for: r9v45 */
    /* JADX WARN: Type inference failed for: r9v46 */
    /* JADX WARN: Type inference failed for: r9v47 */
    /* JADX WARN: Type inference failed for: r9v48 */
    /* JADX WARN: Type inference failed for: r9v49 */
    /* JADX WARN: Type inference failed for: r9v5, types: [java.lang.CharSequence, java.lang.String] */
    /* JADX WARN: Type inference failed for: r9v50 */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference failed for: r9v7 */
    /* JADX WARN: Type inference failed for: r9v8 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:217:0x04f3 -> B:221:0x0503). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:219:0x04fe -> B:221:0x0503). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:220:0x0500 -> B:221:0x0503). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    final void zzV() {
        zzaj zzajVar;
        ?? RawQuery;
        ?? r3;
        ?? r32;
        boolean zIsEmpty;
        int iMax;
        zzaj zzajVar2;
        Cursor cursor;
        long j;
        Cursor cursorQuery;
        List listEmptyList;
        String strZzm;
        String strZzL;
        ?? byteArrayOutputStream;
        byte[] byteArray;
        Cursor cursorRawQuery;
        zzaz().zzg();
        zzB();
        int i = 1;
        this.zzv = true;
        int i2 = 0;
        ?? r33 = 0;
        try {
            this.zzn.zzaw();
            Boolean boolZzj = this.zzn.zzt().zzj();
            if (boolZzj == null) {
                zzay().zzk().zza("Upload data called on the client side before use of service was decided");
                this.zzv = false;
            } else if (boolZzj.booleanValue()) {
                zzay().zzd().zza("Upload called in the client side when service should be used");
                this.zzv = false;
            } else if (this.zza > 0) {
                zzaf();
                this.zzv = false;
            } else {
                zzaz().zzg();
                if (this.zzy != null) {
                    zzay().zzj().zza("Uploading requested multiple times");
                    this.zzv = false;
                } else {
                    zzer zzerVar = this.zzd;
                    zzak(zzerVar);
                    if (zzerVar.zza()) {
                        long jCurrentTimeMillis = zzav().currentTimeMillis();
                        ?? r9 = 0;
                        Cursor cursor2 = null;
                        ByteArrayInputStream byteArrayInputStream = null;
                        byteArrayInputStream = null;
                        byteArrayInputStream = null;
                        ByteArrayInputStream byteArrayInputStream2 = null;
                        ?? r92 = 0;
                        ?? r93 = 0;
                         = 0;
                        ?? r94 = 0;
                        int iZze = zzg().zze(null, zzdy.zzP);
                        zzg();
                        long jZzz = jCurrentTimeMillis - zzaf.zzz();
                        for (int i3 = 0; i3 < iZze && zzah(null, jZzz); i3++) {
                        }
                        long jZza = this.zzk.zzc.zza();
                        if (jZza != 0) {
                            zzay().zzc().zzb("Uploading events. Elapsed time since last upload attempt (ms)", Long.valueOf(Math.abs(jCurrentTimeMillis - jZza)));
                        }
                        zzaj zzajVar3 = this.zze;
                        zzak(zzajVar3);
                        String strZzr = zzajVar3.zzr();
                        long j2 = -1;
                        if (TextUtils.isEmpty(strZzr)) {
                            this.zzA = -1L;
                            zzajVar = this.zze;
                            zzak(zzajVar);
                            zzg();
                            long jZzz2 = jCurrentTimeMillis - zzaf.zzz();
                            zzajVar.zzg();
                            zzajVar.zzY();
                            try {
                                RawQuery = zzajVar.zzh().rawQuery("select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;", new String[]{String.valueOf(jZzz2)});
                                try {
                                    try {
                                    } catch (SQLiteException e) {
                                        e = e;
                                        zzajVar.zzs.zzay().zzd().zzb("Error selecting expired configs", e);
                                        r32 = RawQuery;
                                        r92 = r94;
                                        r3 = RawQuery;
                                        r93 = r94;
                                        if (RawQuery != 0) {
                                        }
                                    }
                                } catch (Throwable th) {
                                    th = th;
                                    r9 = RawQuery;
                                    if (r9 != 0) {
                                        r9.close();
                                    }
                                    throw th;
                                }
                            } catch (SQLiteException e2) {
                                e = e2;
                                RawQuery = 0;
                                zzajVar.zzs.zzay().zzd().zzb("Error selecting expired configs", e);
                                r32 = RawQuery;
                                r92 = r94;
                                r3 = RawQuery;
                                r93 = r94;
                                if (RawQuery != 0) {
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                if (r9 != 0) {
                                }
                                throw th;
                            }
                            if (RawQuery.moveToFirst()) {
                                String string = RawQuery.getString(0);
                                r32 = RawQuery;
                                r92 = string;
                                r3 = RawQuery;
                                r93 = string;
                                if (RawQuery != 0) {
                                }
                                zIsEmpty = TextUtils.isEmpty(r92);
                                RawQuery = r32;
                                r94 = r92;
                                if (!zIsEmpty) {
                                }
                                zzajVar = null;
                                this.zzv = false;
                            } else {
                                zzajVar.zzs.zzay().zzj().zza("No expired configs for apps with pending events");
                                r32 = RawQuery;
                                r3 = RawQuery;
                                if (RawQuery != 0) {
                                    r3.close();
                                    r32 = r3;
                                    r92 = r93;
                                }
                                zIsEmpty = TextUtils.isEmpty(r92);
                                RawQuery = r32;
                                r94 = r92;
                                if (!zIsEmpty) {
                                    ?? r0 = this.zze;
                                    zzak(r0);
                                    zzg zzgVarZzj = r0.zzj(r92);
                                    RawQuery = r32;
                                    r94 = r92;
                                    if (zzgVarZzj != null) {
                                        zzC(zzgVarZzj);
                                        RawQuery = r32;
                                        r94 = r92;
                                    }
                                }
                                zzajVar = null;
                                this.zzv = false;
                            }
                        } else {
                            if (this.zzA == -1) {
                                zzaj zzajVar4 = this.zze;
                                zzak(zzajVar4);
                                try {
                                    cursorRawQuery = zzajVar4.zzh().rawQuery("select rowid from raw_events order by rowid desc limit 1;", null);
                                    try {
                                        try {
                                        } catch (SQLiteException e3) {
                                            e = e3;
                                            zzajVar4.zzs.zzay().zzd().zzb("Error querying raw events", e);
                                            if (cursorRawQuery != null) {
                                            }
                                            this.zzA = j2;
                                            int iZze2 = zzg().zze(strZzr, zzdy.zzf);
                                            iMax = Math.max(0, zzg().zze(strZzr, zzdy.zzg));
                                            zzajVar2 = this.zze;
                                            zzak(zzajVar2);
                                            zzajVar2.zzg();
                                            zzajVar2.zzY();
                                            Preconditions.checkArgument(iZze2 <= 0);
                                            Preconditions.checkArgument(iMax <= 0);
                                            Preconditions.checkNotEmpty(strZzr);
                                            cursorQuery = zzajVar2.zzh().query("queue", new String[]{"rowid", Constants.ScionAnalytics.MessageType.DATA_MESSAGE, "retry_count"}, "app_id=?", new String[]{strZzr}, null, null, "rowid", String.valueOf(iZze2));
                                            try {
                                                if (cursorQuery.moveToFirst()) {
                                                }
                                            } catch (SQLiteException e4) {
                                                e = e4;
                                                j = jCurrentTimeMillis;
                                            }
                                            RawQuery = r33;
                                            r94 = byteArrayInputStream;
                                            if (!listEmptyList.isEmpty()) {
                                            }
                                            zzajVar = null;
                                            this.zzv = false;
                                            zzac();
                                        }
                                    } catch (Throwable th3) {
                                        th = th3;
                                        cursor2 = cursorRawQuery;
                                        if (cursor2 != null) {
                                            cursor2.close();
                                        }
                                        throw th;
                                    }
                                } catch (SQLiteException e5) {
                                    e = e5;
                                    cursorRawQuery = null;
                                } catch (Throwable th4) {
                                    th = th4;
                                    if (cursor2 != null) {
                                    }
                                    throw th;
                                }
                                if (cursorRawQuery.moveToFirst()) {
                                    j2 = cursorRawQuery.getLong(0);
                                    if (cursorRawQuery != null) {
                                    }
                                    this.zzA = j2;
                                } else {
                                    if (cursorRawQuery != null) {
                                        cursorRawQuery.close();
                                    }
                                    this.zzA = j2;
                                }
                            }
                            int iZze22 = zzg().zze(strZzr, zzdy.zzf);
                            iMax = Math.max(0, zzg().zze(strZzr, zzdy.zzg));
                            zzajVar2 = this.zze;
                            zzak(zzajVar2);
                            zzajVar2.zzg();
                            zzajVar2.zzY();
                            Preconditions.checkArgument(iZze22 <= 0);
                            try {
                                Preconditions.checkArgument(iMax <= 0);
                                Preconditions.checkNotEmpty(strZzr);
                            } catch (Throwable th5) {
                                th = th5;
                                cursor = cursorRawQuery;
                            }
                            try {
                                cursorQuery = zzajVar2.zzh().query("queue", new String[]{"rowid", Constants.ScionAnalytics.MessageType.DATA_MESSAGE, "retry_count"}, "app_id=?", new String[]{strZzr}, null, null, "rowid", String.valueOf(iZze22));
                                if (cursorQuery.moveToFirst()) {
                                    listEmptyList = Collections.emptyList();
                                    if (cursorQuery != null) {
                                        cursorQuery.close();
                                    }
                                    j = jCurrentTimeMillis;
                                } else {
                                    ArrayList arrayList = new ArrayList();
                                    int length = 0;
                                    while (true) {
                                        long j3 = cursorQuery.getLong(i2);
                                        try {
                                            byte[] blob = cursorQuery.getBlob(i);
                                            zzku zzkuVar = zzajVar2.zzf.zzi;
                                            zzak(zzkuVar);
                                            try {
                                                byteArrayInputStream2 = new ByteArrayInputStream(blob);
                                                GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream2);
                                                byteArrayOutputStream = new ByteArrayOutputStream();
                                                byte[] bArr = new byte[1024];
                                                j = jCurrentTimeMillis;
                                                while (true) {
                                                    try {
                                                        try {
                                                            int i4 = gZIPInputStream.read(bArr);
                                                            if (i4 <= 0) {
                                                                break;
                                                            } else {
                                                                byteArrayOutputStream.write(bArr, 0, i4);
                                                            }
                                                        } catch (SQLiteException e6) {
                                                            e = e6;
                                                            String str = "Error querying bundles. appId";
                                                            zzajVar2.zzs.zzay().zzd().zzc("Error querying bundles. appId", zzel.zzn(strZzr), e);
                                                            listEmptyList = Collections.emptyList();
                                                            r33 = str;
                                                            byteArrayInputStream = byteArrayInputStream2;
                                                            if (cursorQuery != null) {
                                                                cursorQuery.close();
                                                                r33 = str;
                                                                byteArrayInputStream = byteArrayInputStream2;
                                                            }
                                                        }
                                                    } catch (IOException e7) {
                                                        e = e7;
                                                        try {
                                                            zzkuVar.zzs.zzay().zzd().zzb("Failed to ungzip content", e);
                                                            throw e;
                                                        } catch (IOException e8) {
                                                            e = e8;
                                                            zzajVar2.zzs.zzay().zzd().zzc("Failed to unzip queued bundle. appId", zzel.zzn(strZzr), e);
                                                            byteArrayOutputStream = "Failed to unzip queued bundle. appId";
                                                            byteArrayInputStream2 = byteArrayInputStream2;
                                                            if (cursorQuery.moveToNext()) {
                                                                break;
                                                            } else {
                                                                break;
                                                            }
                                                            if (cursorQuery != null) {
                                                            }
                                                            listEmptyList = arrayList;
                                                            r33 = byteArrayOutputStream;
                                                            byteArrayInputStream = byteArrayInputStream2;
                                                            RawQuery = r33;
                                                            r94 = byteArrayInputStream;
                                                            if (!listEmptyList.isEmpty()) {
                                                            }
                                                            zzajVar = null;
                                                            this.zzv = false;
                                                            zzac();
                                                        }
                                                    }
                                                }
                                                gZIPInputStream.close();
                                                byteArrayInputStream2.close();
                                                byteArray = byteArrayOutputStream.toByteArray();
                                            } catch (IOException e9) {
                                                e = e9;
                                                j = jCurrentTimeMillis;
                                            }
                                        } catch (IOException e10) {
                                            e = e10;
                                            j = jCurrentTimeMillis;
                                        }
                                        if (!arrayList.isEmpty() && byteArray.length + length > iMax) {
                                            break;
                                        }
                                        try {
                                            com.google.android.gms.internal.measurement.zzfx zzfxVar = (com.google.android.gms.internal.measurement.zzfx) zzku.zzl(com.google.android.gms.internal.measurement.zzfy.zzu(), byteArray);
                                            byteArrayOutputStream = 2;
                                            if (!cursorQuery.isNull(2)) {
                                                zzfxVar.zzac(cursorQuery.getInt(2));
                                            }
                                            length += byteArray.length;
                                            arrayList.add(Pair.create(zzfxVar.zzaA(), Long.valueOf(j3)));
                                            byteArrayInputStream2 = byteArrayInputStream2;
                                        } catch (IOException e11) {
                                            zzajVar2.zzs.zzay().zzd().zzc("Failed to merge queued bundle. appId", zzel.zzn(strZzr), e11);
                                            byteArrayOutputStream = "Failed to merge queued bundle. appId";
                                            byteArrayInputStream2 = byteArrayInputStream2;
                                        }
                                        if (cursorQuery.moveToNext() || length > iMax) {
                                            break;
                                            break;
                                        }
                                        jCurrentTimeMillis = j;
                                        i = 1;
                                        i2 = 0;
                                        byteArrayInputStream2 = null;
                                    }
                                    if (cursorQuery != null) {
                                        cursorQuery.close();
                                    }
                                    listEmptyList = arrayList;
                                    r33 = byteArrayOutputStream;
                                    byteArrayInputStream = byteArrayInputStream2;
                                }
                            } catch (SQLiteException e12) {
                                e = e12;
                                j = jCurrentTimeMillis;
                                cursorQuery = null;
                            } catch (Throwable th6) {
                                th = th6;
                                cursor = null;
                                if (cursor != null) {
                                    cursor.close();
                                }
                                throw th;
                            }
                            RawQuery = r33;
                            r94 = byteArrayInputStream;
                            if (!listEmptyList.isEmpty()) {
                                if (zzh(strZzr).zzj()) {
                                    Iterator it = listEmptyList.iterator();
                                    while (true) {
                                        if (!it.hasNext()) {
                                            strZzL = null;
                                            break;
                                        }
                                        com.google.android.gms.internal.measurement.zzfy zzfyVar = (com.google.android.gms.internal.measurement.zzfy) ((Pair) it.next()).first;
                                        if (!TextUtils.isEmpty(zzfyVar.zzL())) {
                                            strZzL = zzfyVar.zzL();
                                            break;
                                        }
                                    }
                                    if (strZzL != null) {
                                        int i5 = 0;
                                        while (true) {
                                            if (i5 >= listEmptyList.size()) {
                                                break;
                                            }
                                            com.google.android.gms.internal.measurement.zzfy zzfyVar2 = (com.google.android.gms.internal.measurement.zzfy) ((Pair) listEmptyList.get(i5)).first;
                                            if (!TextUtils.isEmpty(zzfyVar2.zzL()) && !zzfyVar2.zzL().equals(strZzL)) {
                                                listEmptyList = listEmptyList.subList(0, i5);
                                                break;
                                            }
                                            i5++;
                                        }
                                    }
                                }
                                com.google.android.gms.internal.measurement.zzfv zzfvVarZza = com.google.android.gms.internal.measurement.zzfw.zza();
                                int size = listEmptyList.size();
                                ArrayList arrayList2 = new ArrayList(listEmptyList.size());
                                boolean z = zzg().zzt(strZzr) && zzh(strZzr).zzj();
                                boolean zZzj = zzh(strZzr).zzj();
                                boolean zZzk = zzh(strZzr).zzk();
                                int i6 = 0;
                                while (i6 < size) {
                                    com.google.android.gms.internal.measurement.zzfx zzfxVarZzbv = ((com.google.android.gms.internal.measurement.zzfy) ((Pair) listEmptyList.get(i6)).first).zzbv();
                                    arrayList2.add((Long) ((Pair) listEmptyList.get(i6)).second);
                                    zzg().zzh();
                                    zzfxVarZzbv.zzah(46000L);
                                    long j4 = j;
                                    zzfxVarZzbv.zzag(j4);
                                    this.zzn.zzaw();
                                    zzfxVarZzbv.zzad(false);
                                    if (!z) {
                                        zzfxVarZzbv.zzo();
                                    }
                                    if (!zZzj) {
                                        zzfxVarZzbv.zzu();
                                        zzfxVarZzbv.zzr();
                                    }
                                    if (!zZzk) {
                                        zzfxVarZzbv.zzm();
                                    }
                                    if (zzg().zzs(strZzr, zzdy.zzV)) {
                                        byte[] bArrZzbs = zzfxVarZzbv.zzaA().zzbs();
                                        zzku zzkuVar2 = this.zzi;
                                        zzak(zzkuVar2);
                                        zzfxVarZzbv.zzG(zzkuVar2.zzd(bArrZzbs));
                                    }
                                    zzfvVarZza.zza(zzfxVarZzbv);
                                    i6++;
                                    j = j4;
                                }
                                long j5 = j;
                                if (Log.isLoggable(zzay().zzq(), 2)) {
                                    zzku zzkuVar3 = this.zzi;
                                    zzak(zzkuVar3);
                                    strZzm = zzkuVar3.zzm(zzfvVarZza.zzaA());
                                } else {
                                    strZzm = null;
                                }
                                zzak(this.zzi);
                                byte[] bArrZzbs2 = zzfvVarZza.zzaA().zzbs();
                                zzg();
                                r94 = 0;
                                r94 = 0;
                                String strZza = zzdy.zzp.zza(null);
                                try {
                                    URL url = new URL(strZza);
                                    Preconditions.checkArgument(!arrayList2.isEmpty());
                                    if (this.zzy != null) {
                                        zzay().zzd().zza("Set uploading progress before finishing the previous upload");
                                    } else {
                                        this.zzy = new ArrayList(arrayList2);
                                    }
                                    this.zzk.zzd.zzb(j5);
                                    zzay().zzj().zzd("Uploading data. app, uncompressed size, data", size > 0 ? zzfvVarZza.zzb(0).zzy() : "?", Integer.valueOf(bArrZzbs2.length), strZzm);
                                    this.zzu = true;
                                    zzer zzerVar2 = this.zzd;
                                    zzak(zzerVar2);
                                    zzkl zzklVar = new zzkl(this, strZzr);
                                    zzerVar2.zzg();
                                    zzerVar2.zzY();
                                    Preconditions.checkNotNull(url);
                                    Preconditions.checkNotNull(bArrZzbs2);
                                    Preconditions.checkNotNull(zzklVar);
                                    zzfs zzfsVarZzaz = zzerVar2.zzs.zzaz();
                                    zzeq zzeqVar = new zzeq(zzerVar2, strZzr, url, bArrZzbs2, null, zzklVar);
                                    zzfsVarZzaz.zzo(zzeqVar);
                                    RawQuery = zzeqVar;
                                } catch (MalformedURLException unused) {
                                    zzej zzejVarZzd = zzay().zzd();
                                    Object objZzn = zzel.zzn(strZzr);
                                    zzejVarZzd.zzc("Failed to parse upload URL. Not uploading. appId", objZzn, strZza);
                                    RawQuery = objZzn;
                                }
                            }
                            zzajVar = null;
                            this.zzv = false;
                        }
                    } else {
                        zzay().zzj().zza("Network not connected, ignoring upload request");
                        zzaf();
                        this.zzv = false;
                    }
                }
            }
            zzac();
        } catch (Throwable th7) {
            this.zzv = false;
            zzac();
            throw th7;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x02f6 A[Catch: all -> 0x0add, TryCatch #9 {all -> 0x0add, blocks: (B:28:0x0124, B:30:0x0136, B:32:0x0142, B:33:0x014e, B:36:0x015c, B:38:0x0166, B:43:0x0172, B:103:0x032d, B:112:0x0363, B:114:0x03a1, B:116:0x03a6, B:117:0x03bd, B:121:0x03d0, B:123:0x03e9, B:125:0x03f0, B:126:0x0407, B:131:0x0431, B:135:0x0454, B:136:0x046b, B:139:0x047c, B:142:0x0499, B:143:0x04ad, B:145:0x04b7, B:147:0x04c4, B:149:0x04ca, B:150:0x04d3, B:151:0x04e1, B:153:0x04f9, B:163:0x0531, B:164:0x0546, B:166:0x0570, B:169:0x0588, B:172:0x05cb, B:174:0x05f7, B:176:0x0636, B:177:0x063b, B:179:0x0643, B:180:0x0648, B:182:0x0650, B:183:0x0655, B:185:0x065e, B:186:0x0662, B:188:0x066f, B:189:0x0674, B:191:0x06a2, B:193:0x06ac, B:195:0x06b4, B:196:0x06b9, B:198:0x06c3, B:200:0x06cd, B:202:0x06d5, B:208:0x06f2, B:210:0x06fa, B:211:0x06fd, B:213:0x0715, B:216:0x071d, B:217:0x0736, B:219:0x073c, B:221:0x0750, B:223:0x075c, B:225:0x0769, B:229:0x0783, B:230:0x0793, B:234:0x079c, B:235:0x079f, B:237:0x07bb, B:239:0x07cd, B:241:0x07d1, B:243:0x07dc, B:244:0x07e7, B:246:0x082a, B:247:0x082f, B:249:0x0837, B:251:0x0840, B:252:0x0843, B:254:0x0850, B:256:0x0870, B:257:0x087b, B:259:0x08b0, B:260:0x08b5, B:261:0x08c2, B:263:0x08c8, B:265:0x08d2, B:266:0x08df, B:268:0x08e9, B:269:0x08f6, B:270:0x0902, B:272:0x0908, B:274:0x0938, B:275:0x097e, B:276:0x0988, B:277:0x0994, B:279:0x099a, B:288:0x09e7, B:289:0x0a36, B:291:0x0a46, B:305:0x0aaa, B:294:0x0a5e, B:296:0x0a62, B:282:0x09a6, B:284:0x09d2, B:300:0x0a7b, B:301:0x0a92, B:304:0x0a95, B:203:0x06db, B:205:0x06e5, B:207:0x06ed, B:173:0x05e9, B:160:0x0516, B:106:0x0343, B:107:0x034a, B:109:0x0350, B:111:0x035c, B:49:0x0186, B:52:0x0193, B:54:0x01aa, B:60:0x01c8, B:68:0x0208, B:70:0x020e, B:72:0x021c, B:74:0x0228, B:76:0x0232, B:78:0x023d, B:81:0x0244, B:99:0x02eb, B:101:0x02f6, B:82:0x0272, B:83:0x028f, B:85:0x0296, B:87:0x02a7, B:98:0x02cf, B:97:0x02bc, B:75:0x022d, B:63:0x01d6, B:67:0x01fe), top: B:331:0x0124, inners: #1, #3, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0340  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0343 A[Catch: all -> 0x0add, TryCatch #9 {all -> 0x0add, blocks: (B:28:0x0124, B:30:0x0136, B:32:0x0142, B:33:0x014e, B:36:0x015c, B:38:0x0166, B:43:0x0172, B:103:0x032d, B:112:0x0363, B:114:0x03a1, B:116:0x03a6, B:117:0x03bd, B:121:0x03d0, B:123:0x03e9, B:125:0x03f0, B:126:0x0407, B:131:0x0431, B:135:0x0454, B:136:0x046b, B:139:0x047c, B:142:0x0499, B:143:0x04ad, B:145:0x04b7, B:147:0x04c4, B:149:0x04ca, B:150:0x04d3, B:151:0x04e1, B:153:0x04f9, B:163:0x0531, B:164:0x0546, B:166:0x0570, B:169:0x0588, B:172:0x05cb, B:174:0x05f7, B:176:0x0636, B:177:0x063b, B:179:0x0643, B:180:0x0648, B:182:0x0650, B:183:0x0655, B:185:0x065e, B:186:0x0662, B:188:0x066f, B:189:0x0674, B:191:0x06a2, B:193:0x06ac, B:195:0x06b4, B:196:0x06b9, B:198:0x06c3, B:200:0x06cd, B:202:0x06d5, B:208:0x06f2, B:210:0x06fa, B:211:0x06fd, B:213:0x0715, B:216:0x071d, B:217:0x0736, B:219:0x073c, B:221:0x0750, B:223:0x075c, B:225:0x0769, B:229:0x0783, B:230:0x0793, B:234:0x079c, B:235:0x079f, B:237:0x07bb, B:239:0x07cd, B:241:0x07d1, B:243:0x07dc, B:244:0x07e7, B:246:0x082a, B:247:0x082f, B:249:0x0837, B:251:0x0840, B:252:0x0843, B:254:0x0850, B:256:0x0870, B:257:0x087b, B:259:0x08b0, B:260:0x08b5, B:261:0x08c2, B:263:0x08c8, B:265:0x08d2, B:266:0x08df, B:268:0x08e9, B:269:0x08f6, B:270:0x0902, B:272:0x0908, B:274:0x0938, B:275:0x097e, B:276:0x0988, B:277:0x0994, B:279:0x099a, B:288:0x09e7, B:289:0x0a36, B:291:0x0a46, B:305:0x0aaa, B:294:0x0a5e, B:296:0x0a62, B:282:0x09a6, B:284:0x09d2, B:300:0x0a7b, B:301:0x0a92, B:304:0x0a95, B:203:0x06db, B:205:0x06e5, B:207:0x06ed, B:173:0x05e9, B:160:0x0516, B:106:0x0343, B:107:0x034a, B:109:0x0350, B:111:0x035c, B:49:0x0186, B:52:0x0193, B:54:0x01aa, B:60:0x01c8, B:68:0x0208, B:70:0x020e, B:72:0x021c, B:74:0x0228, B:76:0x0232, B:78:0x023d, B:81:0x0244, B:99:0x02eb, B:101:0x02f6, B:82:0x0272, B:83:0x028f, B:85:0x0296, B:87:0x02a7, B:98:0x02cf, B:97:0x02bc, B:75:0x022d, B:63:0x01d6, B:67:0x01fe), top: B:331:0x0124, inners: #1, #3, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:114:0x03a1 A[Catch: all -> 0x0add, TryCatch #9 {all -> 0x0add, blocks: (B:28:0x0124, B:30:0x0136, B:32:0x0142, B:33:0x014e, B:36:0x015c, B:38:0x0166, B:43:0x0172, B:103:0x032d, B:112:0x0363, B:114:0x03a1, B:116:0x03a6, B:117:0x03bd, B:121:0x03d0, B:123:0x03e9, B:125:0x03f0, B:126:0x0407, B:131:0x0431, B:135:0x0454, B:136:0x046b, B:139:0x047c, B:142:0x0499, B:143:0x04ad, B:145:0x04b7, B:147:0x04c4, B:149:0x04ca, B:150:0x04d3, B:151:0x04e1, B:153:0x04f9, B:163:0x0531, B:164:0x0546, B:166:0x0570, B:169:0x0588, B:172:0x05cb, B:174:0x05f7, B:176:0x0636, B:177:0x063b, B:179:0x0643, B:180:0x0648, B:182:0x0650, B:183:0x0655, B:185:0x065e, B:186:0x0662, B:188:0x066f, B:189:0x0674, B:191:0x06a2, B:193:0x06ac, B:195:0x06b4, B:196:0x06b9, B:198:0x06c3, B:200:0x06cd, B:202:0x06d5, B:208:0x06f2, B:210:0x06fa, B:211:0x06fd, B:213:0x0715, B:216:0x071d, B:217:0x0736, B:219:0x073c, B:221:0x0750, B:223:0x075c, B:225:0x0769, B:229:0x0783, B:230:0x0793, B:234:0x079c, B:235:0x079f, B:237:0x07bb, B:239:0x07cd, B:241:0x07d1, B:243:0x07dc, B:244:0x07e7, B:246:0x082a, B:247:0x082f, B:249:0x0837, B:251:0x0840, B:252:0x0843, B:254:0x0850, B:256:0x0870, B:257:0x087b, B:259:0x08b0, B:260:0x08b5, B:261:0x08c2, B:263:0x08c8, B:265:0x08d2, B:266:0x08df, B:268:0x08e9, B:269:0x08f6, B:270:0x0902, B:272:0x0908, B:274:0x0938, B:275:0x097e, B:276:0x0988, B:277:0x0994, B:279:0x099a, B:288:0x09e7, B:289:0x0a36, B:291:0x0a46, B:305:0x0aaa, B:294:0x0a5e, B:296:0x0a62, B:282:0x09a6, B:284:0x09d2, B:300:0x0a7b, B:301:0x0a92, B:304:0x0a95, B:203:0x06db, B:205:0x06e5, B:207:0x06ed, B:173:0x05e9, B:160:0x0516, B:106:0x0343, B:107:0x034a, B:109:0x0350, B:111:0x035c, B:49:0x0186, B:52:0x0193, B:54:0x01aa, B:60:0x01c8, B:68:0x0208, B:70:0x020e, B:72:0x021c, B:74:0x0228, B:76:0x0232, B:78:0x023d, B:81:0x0244, B:99:0x02eb, B:101:0x02f6, B:82:0x0272, B:83:0x028f, B:85:0x0296, B:87:0x02a7, B:98:0x02cf, B:97:0x02bc, B:75:0x022d, B:63:0x01d6, B:67:0x01fe), top: B:331:0x0124, inners: #1, #3, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:120:0x03ce  */
    /* JADX WARN: Removed duplicated region for block: B:232:0x0799  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0193 A[Catch: all -> 0x0add, TRY_ENTER, TryCatch #9 {all -> 0x0add, blocks: (B:28:0x0124, B:30:0x0136, B:32:0x0142, B:33:0x014e, B:36:0x015c, B:38:0x0166, B:43:0x0172, B:103:0x032d, B:112:0x0363, B:114:0x03a1, B:116:0x03a6, B:117:0x03bd, B:121:0x03d0, B:123:0x03e9, B:125:0x03f0, B:126:0x0407, B:131:0x0431, B:135:0x0454, B:136:0x046b, B:139:0x047c, B:142:0x0499, B:143:0x04ad, B:145:0x04b7, B:147:0x04c4, B:149:0x04ca, B:150:0x04d3, B:151:0x04e1, B:153:0x04f9, B:163:0x0531, B:164:0x0546, B:166:0x0570, B:169:0x0588, B:172:0x05cb, B:174:0x05f7, B:176:0x0636, B:177:0x063b, B:179:0x0643, B:180:0x0648, B:182:0x0650, B:183:0x0655, B:185:0x065e, B:186:0x0662, B:188:0x066f, B:189:0x0674, B:191:0x06a2, B:193:0x06ac, B:195:0x06b4, B:196:0x06b9, B:198:0x06c3, B:200:0x06cd, B:202:0x06d5, B:208:0x06f2, B:210:0x06fa, B:211:0x06fd, B:213:0x0715, B:216:0x071d, B:217:0x0736, B:219:0x073c, B:221:0x0750, B:223:0x075c, B:225:0x0769, B:229:0x0783, B:230:0x0793, B:234:0x079c, B:235:0x079f, B:237:0x07bb, B:239:0x07cd, B:241:0x07d1, B:243:0x07dc, B:244:0x07e7, B:246:0x082a, B:247:0x082f, B:249:0x0837, B:251:0x0840, B:252:0x0843, B:254:0x0850, B:256:0x0870, B:257:0x087b, B:259:0x08b0, B:260:0x08b5, B:261:0x08c2, B:263:0x08c8, B:265:0x08d2, B:266:0x08df, B:268:0x08e9, B:269:0x08f6, B:270:0x0902, B:272:0x0908, B:274:0x0938, B:275:0x097e, B:276:0x0988, B:277:0x0994, B:279:0x099a, B:288:0x09e7, B:289:0x0a36, B:291:0x0a46, B:305:0x0aaa, B:294:0x0a5e, B:296:0x0a62, B:282:0x09a6, B:284:0x09d2, B:300:0x0a7b, B:301:0x0a92, B:304:0x0a95, B:203:0x06db, B:205:0x06e5, B:207:0x06ed, B:173:0x05e9, B:160:0x0516, B:106:0x0343, B:107:0x034a, B:109:0x0350, B:111:0x035c, B:49:0x0186, B:52:0x0193, B:54:0x01aa, B:60:0x01c8, B:68:0x0208, B:70:0x020e, B:72:0x021c, B:74:0x0228, B:76:0x0232, B:78:0x023d, B:81:0x0244, B:99:0x02eb, B:101:0x02f6, B:82:0x0272, B:83:0x028f, B:85:0x0296, B:87:0x02a7, B:98:0x02cf, B:97:0x02bc, B:75:0x022d, B:63:0x01d6, B:67:0x01fe), top: B:331:0x0124, inners: #1, #3, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01fc  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x020e A[Catch: all -> 0x0add, TryCatch #9 {all -> 0x0add, blocks: (B:28:0x0124, B:30:0x0136, B:32:0x0142, B:33:0x014e, B:36:0x015c, B:38:0x0166, B:43:0x0172, B:103:0x032d, B:112:0x0363, B:114:0x03a1, B:116:0x03a6, B:117:0x03bd, B:121:0x03d0, B:123:0x03e9, B:125:0x03f0, B:126:0x0407, B:131:0x0431, B:135:0x0454, B:136:0x046b, B:139:0x047c, B:142:0x0499, B:143:0x04ad, B:145:0x04b7, B:147:0x04c4, B:149:0x04ca, B:150:0x04d3, B:151:0x04e1, B:153:0x04f9, B:163:0x0531, B:164:0x0546, B:166:0x0570, B:169:0x0588, B:172:0x05cb, B:174:0x05f7, B:176:0x0636, B:177:0x063b, B:179:0x0643, B:180:0x0648, B:182:0x0650, B:183:0x0655, B:185:0x065e, B:186:0x0662, B:188:0x066f, B:189:0x0674, B:191:0x06a2, B:193:0x06ac, B:195:0x06b4, B:196:0x06b9, B:198:0x06c3, B:200:0x06cd, B:202:0x06d5, B:208:0x06f2, B:210:0x06fa, B:211:0x06fd, B:213:0x0715, B:216:0x071d, B:217:0x0736, B:219:0x073c, B:221:0x0750, B:223:0x075c, B:225:0x0769, B:229:0x0783, B:230:0x0793, B:234:0x079c, B:235:0x079f, B:237:0x07bb, B:239:0x07cd, B:241:0x07d1, B:243:0x07dc, B:244:0x07e7, B:246:0x082a, B:247:0x082f, B:249:0x0837, B:251:0x0840, B:252:0x0843, B:254:0x0850, B:256:0x0870, B:257:0x087b, B:259:0x08b0, B:260:0x08b5, B:261:0x08c2, B:263:0x08c8, B:265:0x08d2, B:266:0x08df, B:268:0x08e9, B:269:0x08f6, B:270:0x0902, B:272:0x0908, B:274:0x0938, B:275:0x097e, B:276:0x0988, B:277:0x0994, B:279:0x099a, B:288:0x09e7, B:289:0x0a36, B:291:0x0a46, B:305:0x0aaa, B:294:0x0a5e, B:296:0x0a62, B:282:0x09a6, B:284:0x09d2, B:300:0x0a7b, B:301:0x0a92, B:304:0x0a95, B:203:0x06db, B:205:0x06e5, B:207:0x06ed, B:173:0x05e9, B:160:0x0516, B:106:0x0343, B:107:0x034a, B:109:0x0350, B:111:0x035c, B:49:0x0186, B:52:0x0193, B:54:0x01aa, B:60:0x01c8, B:68:0x0208, B:70:0x020e, B:72:0x021c, B:74:0x0228, B:76:0x0232, B:78:0x023d, B:81:0x0244, B:99:0x02eb, B:101:0x02f6, B:82:0x0272, B:83:0x028f, B:85:0x0296, B:87:0x02a7, B:98:0x02cf, B:97:0x02bc, B:75:0x022d, B:63:0x01d6, B:67:0x01fe), top: B:331:0x0124, inners: #1, #3, #7 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    final void zzW(zzat zzatVar, zzp zzpVar) {
        String strZzg;
        String str;
        long jLongValue;
        String str2;
        String str3;
        String str4;
        zzaj zzajVar;
        String str5;
        zzkx zzkxVar;
        zzaj zzajVar2;
        zzar zzarVar;
        long length;
        long jIntValue;
        long jDelete;
        zzap zzapVarZzc;
        ArrayList arrayList;
        int i;
        Preconditions.checkNotNull(zzpVar);
        Preconditions.checkNotEmpty(zzpVar.zza);
        long jNanoTime = System.nanoTime();
        zzaz().zzg();
        zzB();
        String str6 = zzpVar.zza;
        zzak(this.zzi);
        if (zzku.zzB(zzatVar, zzpVar)) {
            if (!zzpVar.zzh) {
                zzd(zzpVar);
                return;
            }
            zzfm zzfmVar = this.zzc;
            zzak(zzfmVar);
            if (zzfmVar.zzo(str6, zzatVar.zza)) {
                zzay().zzk().zzc("Dropping blocked event. appId", zzel.zzn(str6), this.zzn.zzj().zzd(zzatVar.zza));
                zzfm zzfmVar2 = this.zzc;
                zzak(zzfmVar2);
                if (!zzfmVar2.zzm(str6)) {
                    zzfm zzfmVar3 = this.zzc;
                    zzak(zzfmVar3);
                    if (!zzfmVar3.zzp(str6)) {
                        if ("_err".equals(zzatVar.zza)) {
                            return;
                        }
                        zzv().zzM(this.zzC, str6, 11, "_ev", zzatVar.zza, 0);
                        return;
                    }
                }
                zzaj zzajVar3 = this.zze;
                zzak(zzajVar3);
                zzg zzgVarZzj = zzajVar3.zzj(str6);
                if (zzgVarZzj != null) {
                    long jAbs = Math.abs(zzav().currentTimeMillis() - Math.max(zzgVarZzj.zzl(), zzgVarZzj.zzc()));
                    zzg();
                    if (jAbs > zzdy.zzy.zza(null).longValue()) {
                        zzay().zzc().zza("Fetching config for blocked app");
                        zzC(zzgVarZzj);
                        return;
                    }
                    return;
                }
                return;
            }
            zzem zzemVarZzb = zzem.zzb(zzatVar);
            zzv().zzL(zzemVarZzb, zzg().zzd(str6));
            zzat zzatVarZza = zzemVarZzb.zza();
            if (Log.isLoggable(zzay().zzq(), 2)) {
                zzay().zzj().zzb("Logging event", this.zzn.zzj().zzc(zzatVarZza));
            }
            zzaj zzajVar4 = this.zze;
            zzak(zzajVar4);
            zzajVar4.zzw();
            try {
                zzd(zzpVar);
                zzmt.zzc();
                if (!zzg().zzs(null, zzdy.zzav) && zzg().zzs(null, zzdy.zzaw)) {
                    zzaj zzajVar5 = this.zze;
                    zzak(zzajVar5);
                    zzajVar5.zzB(zzpVar.zza, "_lair");
                }
                boolean z = FirebaseAnalytics.Event.ECOMMERCE_PURCHASE.equals(zzatVarZza.zza) || "purchase".equals(zzatVarZza.zza) || FirebaseAnalytics.Event.REFUND.equals(zzatVarZza.zza);
                if ("_iap".equals(zzatVarZza.zza)) {
                    strZzg = zzatVarZza.zzb.zzg(FirebaseAnalytics.Param.CURRENCY);
                    if (z) {
                        str = "_err";
                        jLongValue = zzatVarZza.zzb.zze("value").longValue();
                    } else {
                        double dDoubleValue = zzatVarZza.zzb.zzd("value").doubleValue() * 1000000.0d;
                        if (dDoubleValue == 0.0d) {
                            str = "_err";
                            dDoubleValue = zzatVarZza.zzb.zze("value").longValue() * 1000000.0d;
                        } else {
                            str = "_err";
                        }
                        if (dDoubleValue > 9.223372036854776E18d || dDoubleValue < -9.223372036854776E18d) {
                            zzay().zzk().zzc("Data lost. Currency value is too big. appId", zzel.zzn(str6), Double.valueOf(dDoubleValue));
                            zzaj zzajVar6 = this.zze;
                            zzak(zzajVar6);
                            zzajVar6.zzD();
                            return;
                        }
                        jLongValue = Math.round(dDoubleValue);
                        if (FirebaseAnalytics.Event.REFUND.equals(zzatVarZza.zza)) {
                            jLongValue = -jLongValue;
                        }
                    }
                    if (!TextUtils.isEmpty(strZzg)) {
                        String upperCase = strZzg.toUpperCase(Locale.US);
                        if (upperCase.matches("[A-Z]{3}")) {
                            String strValueOf = String.valueOf(upperCase);
                            String strConcat = strValueOf.length() != 0 ? "_ltv_".concat(strValueOf) : new String("_ltv_");
                            zzaj zzajVar7 = this.zze;
                            zzak(zzajVar7);
                            zzkx zzkxVarZzp = zzajVar7.zzp(str6, strConcat);
                            if (zzkxVarZzp != null) {
                                Object obj = zzkxVarZzp.zze;
                                if (obj instanceof Long) {
                                    str2 = "metadata_fingerprint";
                                    str3 = str;
                                    zzkxVar = new zzkx(str6, zzatVarZza.zzc, strConcat, zzav().currentTimeMillis(), Long.valueOf(((Long) obj).longValue() + jLongValue));
                                    zzajVar2 = this.zze;
                                    zzak(zzajVar2);
                                    if (!zzajVar2.zzN(zzkxVar)) {
                                    }
                                } else {
                                    str4 = str;
                                    zzajVar = this.zze;
                                    zzak(zzajVar);
                                    int iZze = zzg().zze(str6, zzdy.zzD) - 1;
                                    Preconditions.checkNotEmpty(str6);
                                    zzajVar.zzg();
                                    zzajVar.zzY();
                                    try {
                                        SQLiteDatabase sQLiteDatabaseZzh = zzajVar.zzh();
                                        str5 = str4;
                                    } catch (SQLiteException e) {
                                        e = e;
                                        str2 = "metadata_fingerprint";
                                        str5 = str4;
                                    }
                                    try {
                                        String[] strArr = new String[3];
                                        strArr[0] = str6;
                                        strArr[1] = str6;
                                        str2 = "metadata_fingerprint";
                                        try {
                                            strArr[2] = String.valueOf(iZze);
                                            sQLiteDatabaseZzh.execSQL("delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like '_ltv_%' order by set_timestamp desc limit ?,10);", strArr);
                                        } catch (SQLiteException e2) {
                                            e = e2;
                                            zzajVar.zzs.zzay().zzd().zzc("Error pruning currencies. appId", zzel.zzn(str6), e);
                                        }
                                    } catch (SQLiteException e3) {
                                        e = e3;
                                        str2 = "metadata_fingerprint";
                                        zzajVar.zzs.zzay().zzd().zzc("Error pruning currencies. appId", zzel.zzn(str6), e);
                                        str3 = str5;
                                        zzkxVar = new zzkx(str6, zzatVarZza.zzc, strConcat, zzav().currentTimeMillis(), Long.valueOf(jLongValue));
                                        zzajVar2 = this.zze;
                                        zzak(zzajVar2);
                                        if (!zzajVar2.zzN(zzkxVar)) {
                                        }
                                        boolean zZzah = zzkz.zzah(zzatVarZza.zza);
                                        boolean zEquals = str3.equals(zzatVarZza.zza);
                                        zzv();
                                        zzarVar = zzatVarZza.zzb;
                                        if (zzarVar != null) {
                                        }
                                        zzaj zzajVar8 = this.zze;
                                        zzak(zzajVar8);
                                        zzah zzahVarZzm = zzajVar8.zzm(zza(), str6, length + 1, true, zZzah, false, zEquals, false);
                                        long j = zzahVarZzm.zzb;
                                        zzg();
                                        jIntValue = j - ((long) zzdy.zzj.zza(null).intValue());
                                        if (jIntValue <= 0) {
                                        }
                                    }
                                    str3 = str5;
                                    zzkxVar = new zzkx(str6, zzatVarZza.zzc, strConcat, zzav().currentTimeMillis(), Long.valueOf(jLongValue));
                                    zzajVar2 = this.zze;
                                    zzak(zzajVar2);
                                    if (!zzajVar2.zzN(zzkxVar)) {
                                        zzay().zzd().zzd("Too many unique user properties are set. Ignoring user property. appId", zzel.zzn(str6), this.zzn.zzj().zzf(zzkxVar.zzc), zzkxVar.zze);
                                        zzv().zzM(this.zzC, str6, 9, null, null, 0);
                                    }
                                }
                            } else {
                                str4 = str;
                                zzajVar = this.zze;
                                zzak(zzajVar);
                                int iZze2 = zzg().zze(str6, zzdy.zzD) - 1;
                                Preconditions.checkNotEmpty(str6);
                                zzajVar.zzg();
                                zzajVar.zzY();
                                SQLiteDatabase sQLiteDatabaseZzh2 = zzajVar.zzh();
                                str5 = str4;
                                String[] strArr2 = new String[3];
                                strArr2[0] = str6;
                                strArr2[1] = str6;
                                str2 = "metadata_fingerprint";
                                strArr2[2] = String.valueOf(iZze2);
                                sQLiteDatabaseZzh2.execSQL("delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like '_ltv_%' order by set_timestamp desc limit ?,10);", strArr2);
                                str3 = str5;
                                zzkxVar = new zzkx(str6, zzatVarZza.zzc, strConcat, zzav().currentTimeMillis(), Long.valueOf(jLongValue));
                                zzajVar2 = this.zze;
                                zzak(zzajVar2);
                                if (!zzajVar2.zzN(zzkxVar)) {
                                }
                            }
                        }
                    }
                    str2 = "metadata_fingerprint";
                    str3 = str;
                } else if (z) {
                    z = true;
                    strZzg = zzatVarZza.zzb.zzg(FirebaseAnalytics.Param.CURRENCY);
                    if (z) {
                    }
                    if (!TextUtils.isEmpty(strZzg)) {
                    }
                    str2 = "metadata_fingerprint";
                    str3 = str;
                } else {
                    str2 = "metadata_fingerprint";
                    str3 = "_err";
                }
                boolean zZzah2 = zzkz.zzah(zzatVarZza.zza);
                boolean zEquals2 = str3.equals(zzatVarZza.zza);
                zzv();
                zzarVar = zzatVarZza.zzb;
                if (zzarVar != null) {
                    length = 0;
                } else {
                    zzaq zzaqVar = new zzaq(zzarVar);
                    length = 0;
                    while (zzaqVar.hasNext()) {
                        Object objZzf = zzarVar.zzf(zzaqVar.next());
                        if (objZzf instanceof Parcelable[]) {
                            length += (long) ((Parcelable[]) objZzf).length;
                        }
                    }
                }
                zzaj zzajVar82 = this.zze;
                zzak(zzajVar82);
                zzah zzahVarZzm2 = zzajVar82.zzm(zza(), str6, length + 1, true, zZzah2, false, zEquals2, false);
                long j2 = zzahVarZzm2.zzb;
                zzg();
                jIntValue = j2 - ((long) zzdy.zzj.zza(null).intValue());
                if (jIntValue <= 0) {
                    if (jIntValue % 1000 == 1) {
                        zzay().zzd().zzc("Data loss. Too many events logged. appId, count", zzel.zzn(str6), Long.valueOf(zzahVarZzm2.zzb));
                    }
                    zzaj zzajVar9 = this.zze;
                    zzak(zzajVar9);
                    zzajVar9.zzD();
                    return;
                }
                if (zZzah2) {
                    long j3 = zzahVarZzm2.zza;
                    zzg();
                    long jIntValue2 = j3 - ((long) zzdy.zzl.zza(null).intValue());
                    if (jIntValue2 > 0) {
                        if (jIntValue2 % 1000 == 1) {
                            zzay().zzd().zzc("Data loss. Too many public events logged. appId, count", zzel.zzn(str6), Long.valueOf(zzahVarZzm2.zza));
                        }
                        zzv().zzM(this.zzC, str6, 16, "_ev", zzatVarZza.zza, 0);
                        zzaj zzajVar10 = this.zze;
                        zzak(zzajVar10);
                        zzajVar10.zzD();
                        return;
                    }
                }
                if (zEquals2) {
                    long jMax = zzahVarZzm2.zzd - ((long) Math.max(0, Math.min(1000000, zzg().zze(zzpVar.zza, zzdy.zzk))));
                    if (jMax > 0) {
                        if (jMax == 1) {
                            zzay().zzd().zzc("Too many error events logged. appId, count", zzel.zzn(str6), Long.valueOf(zzahVarZzm2.zzd));
                        }
                        zzaj zzajVar11 = this.zze;
                        zzak(zzajVar11);
                        zzajVar11.zzD();
                        return;
                    }
                }
                Bundle bundleZzc = zzatVarZza.zzb.zzc();
                zzv().zzN(bundleZzc, "_o", zzatVarZza.zzc);
                if (zzv().zzad(str6)) {
                    zzv().zzN(bundleZzc, "_dbg", 1L);
                    zzv().zzN(bundleZzc, "_r", 1L);
                }
                if ("_s".equals(zzatVarZza.zza)) {
                    zzaj zzajVar12 = this.zze;
                    zzak(zzajVar12);
                    zzkx zzkxVarZzp2 = zzajVar12.zzp(zzpVar.zza, "_sno");
                    if (zzkxVarZzp2 != null && (zzkxVarZzp2.zze instanceof Long)) {
                        zzv().zzN(bundleZzc, "_sno", zzkxVarZzp2.zze);
                    }
                }
                zzaj zzajVar13 = this.zze;
                zzak(zzajVar13);
                Preconditions.checkNotEmpty(str6);
                zzajVar13.zzg();
                zzajVar13.zzY();
                try {
                } catch (SQLiteException e4) {
                    e = e4;
                }
                try {
                    jDelete = zzajVar13.zzh().delete("raw_events", "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)", new String[]{str6, String.valueOf(Math.max(0, Math.min(1000000, zzajVar13.zzs.zzf().zze(str6, zzdy.zzo))))});
                } catch (SQLiteException e5) {
                    e = e5;
                    zzajVar13.zzs.zzay().zzd().zzc("Error deleting over the limit events. appId", zzel.zzn(str6), e);
                    jDelete = 0;
                }
                if (jDelete > 0) {
                    zzay().zzk().zzc("Data lost. Too many events stored on disk, deleted. appId", zzel.zzn(str6), Long.valueOf(jDelete));
                }
                zzao zzaoVar = new zzao(this.zzn, zzatVarZza.zzc, str6, zzatVarZza.zza, zzatVarZza.zzd, 0L, bundleZzc);
                zzaj zzajVar14 = this.zze;
                zzak(zzajVar14);
                zzap zzapVarZzn = zzajVar14.zzn(str6, zzaoVar.zzb);
                if (zzapVarZzn == null) {
                    zzaj zzajVar15 = this.zze;
                    zzak(zzajVar15);
                    if (zzajVar15.zzf(str6) >= zzg().zzb(str6) && zZzah2) {
                        zzay().zzd().zzd("Too many event names used, ignoring event. appId, name, supported count", zzel.zzn(str6), this.zzn.zzj().zzd(zzaoVar.zzb), Integer.valueOf(zzg().zzb(str6)));
                        zzv().zzM(this.zzC, str6, 8, null, null, 0);
                        return;
                    }
                    zzapVarZzc = new zzap(str6, zzaoVar.zzb, 0L, 0L, 0L, zzaoVar.zzd, 0L, null, null, null, null);
                } else {
                    zzaoVar = zzaoVar.zza(this.zzn, zzapVarZzn.zzf);
                    zzapVarZzc = zzapVarZzn.zzc(zzaoVar.zzd);
                }
                zzaj zzajVar16 = this.zze;
                zzak(zzajVar16);
                zzajVar16.zzF(zzapVarZzc);
                zzaz().zzg();
                zzB();
                Preconditions.checkNotNull(zzaoVar);
                Preconditions.checkNotNull(zzpVar);
                Preconditions.checkNotEmpty(zzaoVar.zza);
                Preconditions.checkArgument(zzaoVar.zza.equals(zzpVar.zza));
                com.google.android.gms.internal.measurement.zzfx zzfxVarZzu = com.google.android.gms.internal.measurement.zzfy.zzu();
                zzfxVarZzu.zzaa(1);
                zzfxVarZzu.zzW(com.texa.careapp.Constants.THIRD_PART_LICENSE_NAME);
                if (!TextUtils.isEmpty(zzpVar.zza)) {
                    zzfxVarZzu.zzA(zzpVar.zza);
                }
                if (!TextUtils.isEmpty(zzpVar.zzd)) {
                    zzfxVarZzu.zzC(zzpVar.zzd);
                }
                if (!TextUtils.isEmpty(zzpVar.zzc)) {
                    zzfxVarZzu.zzD(zzpVar.zzc);
                }
                long j4 = zzpVar.zzj;
                if (j4 != -2147483648L) {
                    zzfxVarZzu.zzE((int) j4);
                }
                zzfxVarZzu.zzS(zzpVar.zze);
                if (!TextUtils.isEmpty(zzpVar.zzb)) {
                    zzfxVarZzu.zzR(zzpVar.zzb);
                }
                zzfxVarZzu.zzI(zzh((String) Preconditions.checkNotNull(zzpVar.zza)).zzc(zzag.zzb(zzpVar.zzv)).zzi());
                zzom.zzc();
                if (zzg().zzs(zzpVar.zza, zzdy.zzac)) {
                    if (TextUtils.isEmpty(zzfxVarZzu.zzan()) && !TextUtils.isEmpty(zzpVar.zzu)) {
                        zzfxVarZzu.zzQ(zzpVar.zzu);
                    }
                    if (TextUtils.isEmpty(zzfxVarZzu.zzan()) && TextUtils.isEmpty(zzfxVarZzu.zzam()) && !TextUtils.isEmpty(zzpVar.zzq)) {
                        zzfxVarZzu.zzy(zzpVar.zzq);
                    }
                } else if (TextUtils.isEmpty(zzfxVarZzu.zzan()) && !TextUtils.isEmpty(zzpVar.zzq)) {
                    zzfxVarZzu.zzy(zzpVar.zzq);
                }
                long j5 = zzpVar.zzf;
                if (j5 != 0) {
                    zzfxVarZzu.zzJ(j5);
                }
                zzfxVarZzu.zzM(zzpVar.zzs);
                zzku zzkuVar = this.zzi;
                zzak(zzkuVar);
                Map<String, String> mapZzc = zzdy.zzc(zzkuVar.zzf.zzn.zzau());
                if (mapZzc == null || mapZzc.size() == 0) {
                    arrayList = null;
                } else {
                    arrayList = new ArrayList();
                    int iIntValue = zzdy.zzO.zza(null).intValue();
                    for (Map.Entry<String, String> entry : mapZzc.entrySet()) {
                        if (entry.getKey().startsWith("measurement.id.")) {
                            try {
                                int i2 = Integer.parseInt(entry.getValue());
                                if (i2 != 0) {
                                    arrayList.add(Integer.valueOf(i2));
                                    if (arrayList.size() >= iIntValue) {
                                        zzkuVar.zzs.zzay().zzk().zzb("Too many experiment IDs. Number of IDs", Integer.valueOf(arrayList.size()));
                                        break;
                                    }
                                    continue;
                                } else {
                                    continue;
                                }
                            } catch (NumberFormatException e6) {
                                zzkuVar.zzs.zzay().zzk().zzb("Experiment ID NumberFormatException", e6);
                            }
                        }
                    }
                    if (arrayList.size() == 0) {
                    }
                }
                if (arrayList != null) {
                    zzfxVarZzu.zzh(arrayList);
                }
                zzag zzagVarZzc = zzh((String) Preconditions.checkNotNull(zzpVar.zza)).zzc(zzag.zzb(zzpVar.zzv));
                if (zzagVarZzc.zzj()) {
                    Pair<String, Boolean> pairZzd = this.zzk.zzd(zzpVar.zza, zzagVarZzc);
                    if (!TextUtils.isEmpty((CharSequence) pairZzd.first) && zzpVar.zzo) {
                        zzfxVarZzu.zzab((String) pairZzd.first);
                        if (pairZzd.second != null) {
                            zzfxVarZzu.zzU(((Boolean) pairZzd.second).booleanValue());
                        }
                    }
                }
                this.zzn.zzg().zzu();
                zzfxVarZzu.zzK(Build.MODEL);
                this.zzn.zzg().zzu();
                zzfxVarZzu.zzV(Build.VERSION.RELEASE);
                zzfxVarZzu.zzaf((int) this.zzn.zzg().zzb());
                zzfxVarZzu.zzaj(this.zzn.zzg().zzc());
                if (!zzg().zzs(null, zzdy.zzam)) {
                    zzfxVarZzu.zzz(zzpVar.zzl);
                }
                if (this.zzn.zzJ()) {
                    zzfxVarZzu.zzal();
                    if (!TextUtils.isEmpty(null)) {
                        zzfxVarZzu.zzL(null);
                    }
                }
                zzaj zzajVar17 = this.zze;
                zzak(zzajVar17);
                zzg zzgVarZzj2 = zzajVar17.zzj(zzpVar.zza);
                if (zzgVarZzj2 == null) {
                    zzgVarZzj2 = new zzg(this.zzn, zzpVar.zza);
                    zzgVarZzj2.zzI(zzw(zzagVarZzc));
                    zzgVarZzj2.zzW(zzpVar.zzk);
                    zzgVarZzj2.zzY(zzpVar.zzb);
                    if (zzagVarZzc.zzj()) {
                        zzgVarZzj2.zzag(this.zzk.zzf(zzpVar.zza));
                    }
                    zzgVarZzj2.zzac(0L);
                    zzgVarZzj2.zzad(0L);
                    zzgVarZzj2.zzab(0L);
                    zzgVarZzj2.zzK(zzpVar.zzc);
                    zzgVarZzj2.zzL(zzpVar.zzj);
                    zzgVarZzj2.zzJ(zzpVar.zzd);
                    zzgVarZzj2.zzZ(zzpVar.zze);
                    zzgVarZzj2.zzT(zzpVar.zzf);
                    zzgVarZzj2.zzae(zzpVar.zzh);
                    if (!zzg().zzs(null, zzdy.zzam)) {
                        zzgVarZzj2.zzH(zzpVar.zzl);
                    }
                    zzgVarZzj2.zzU(zzpVar.zzs);
                    zzaj zzajVar18 = this.zze;
                    zzak(zzajVar18);
                    zzajVar18.zzE(zzgVarZzj2);
                }
                if (zzagVarZzc.zzk() && !TextUtils.isEmpty(zzgVarZzj2.zzu())) {
                    zzfxVarZzu.zzB((String) Preconditions.checkNotNull(zzgVarZzj2.zzu()));
                }
                if (!TextUtils.isEmpty(zzgVarZzj2.zzx())) {
                    zzfxVarZzu.zzP((String) Preconditions.checkNotNull(zzgVarZzj2.zzx()));
                }
                zzaj zzajVar19 = this.zze;
                zzak(zzajVar19);
                List<zzkx> listZzu = zzajVar19.zzu(zzpVar.zza);
                for (int i3 = 0; i3 < listZzu.size(); i3++) {
                    com.google.android.gms.internal.measurement.zzgg zzggVarZzd = com.google.android.gms.internal.measurement.zzgh.zzd();
                    zzggVarZzd.zzf(listZzu.get(i3).zzc);
                    zzggVarZzd.zzg(listZzu.get(i3).zzd);
                    zzku zzkuVar2 = this.zzi;
                    zzak(zzkuVar2);
                    zzkuVar2.zzv(zzggVarZzd, listZzu.get(i3).zze);
                    zzfxVarZzu.zzk(zzggVarZzd);
                }
                try {
                    zzaj zzajVar20 = this.zze;
                    zzak(zzajVar20);
                    com.google.android.gms.internal.measurement.zzfy zzfyVar = (com.google.android.gms.internal.measurement.zzfy) zzfxVarZzu.zzaA();
                    zzajVar20.zzg();
                    zzajVar20.zzY();
                    Preconditions.checkNotNull(zzfyVar);
                    Preconditions.checkNotEmpty(zzfyVar.zzy());
                    byte[] bArrZzbs = zzfyVar.zzbs();
                    zzku zzkuVar3 = zzajVar20.zzf.zzi;
                    zzak(zzkuVar3);
                    long jZzd = zzkuVar3.zzd(bArrZzbs);
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("app_id", zzfyVar.zzy());
                    String str7 = str2;
                    contentValues.put(str7, Long.valueOf(jZzd));
                    contentValues.put("metadata", bArrZzbs);
                    try {
                        zzajVar20.zzh().insertWithOnConflict("raw_events_metadata", null, contentValues, 4);
                        zzaj zzajVar21 = this.zze;
                        zzak(zzajVar21);
                        zzaq zzaqVar2 = new zzaq(zzaoVar.zzf);
                        while (true) {
                            if (zzaqVar2.hasNext()) {
                                if ("_r".equals(zzaqVar2.next())) {
                                    break;
                                }
                            } else {
                                zzfm zzfmVar4 = this.zzc;
                                zzak(zzfmVar4);
                                boolean zZzn = zzfmVar4.zzn(zzaoVar.zza, zzaoVar.zzb);
                                zzaj zzajVar22 = this.zze;
                                zzak(zzajVar22);
                                zzah zzahVarZzl = zzajVar22.zzl(zza(), zzaoVar.zza, false, false, false, false, false);
                                if (!zZzn || zzahVarZzl.zze >= zzg().zze(zzaoVar.zza, zzdy.zzn)) {
                                    i = 0;
                                }
                            }
                        }
                        i = 1;
                        zzajVar21.zzg();
                        zzajVar21.zzY();
                        Preconditions.checkNotNull(zzaoVar);
                        Preconditions.checkNotEmpty(zzaoVar.zza);
                        zzku zzkuVar4 = zzajVar21.zzf.zzi;
                        zzak(zzkuVar4);
                        byte[] bArrZzbs2 = zzkuVar4.zzj(zzaoVar).zzbs();
                        ContentValues contentValues2 = new ContentValues();
                        contentValues2.put("app_id", zzaoVar.zza);
                        contentValues2.put(AppMeasurementSdk.ConditionalUserProperty.NAME, zzaoVar.zzb);
                        contentValues2.put("timestamp", Long.valueOf(zzaoVar.zzd));
                        contentValues2.put(str7, Long.valueOf(jZzd));
                        contentValues2.put(Constants.ScionAnalytics.MessageType.DATA_MESSAGE, bArrZzbs2);
                        contentValues2.put("realtime", Integer.valueOf(i));
                        try {
                            if (zzajVar21.zzh().insert("raw_events", null, contentValues2) == -1) {
                                zzajVar21.zzs.zzay().zzd().zzb("Failed to insert raw event (got -1). appId", zzel.zzn(zzaoVar.zza));
                            } else {
                                this.zza = 0L;
                            }
                        } catch (SQLiteException e7) {
                            zzajVar21.zzs.zzay().zzd().zzc("Error storing raw event. appId", zzel.zzn(zzaoVar.zza), e7);
                        }
                    } catch (SQLiteException e8) {
                        zzajVar20.zzs.zzay().zzd().zzc("Error storing raw event metadata. appId", zzel.zzn(zzfyVar.zzy()), e8);
                        throw e8;
                    }
                } catch (IOException e9) {
                    zzay().zzd().zzc("Data loss. Failed to insert raw event metadata. appId", zzel.zzn(zzfxVarZzu.zzal()), e9);
                }
                zzaj zzajVar23 = this.zze;
                zzak(zzajVar23);
                zzajVar23.zzD();
                zzaj zzajVar24 = this.zze;
                zzak(zzajVar24);
                zzajVar24.zzy();
                zzaf();
                zzay().zzj().zzb("Background event processing time, ms", Long.valueOf(((System.nanoTime() - jNanoTime) + 500000) / 1000000));
            } finally {
                zzaj zzajVar25 = this.zze;
                zzak(zzajVar25);
                zzajVar25.zzy();
            }
        }
    }

    final boolean zzX() {
        zzaz().zzg();
        FileLock fileLock = this.zzw;
        if (fileLock != null && fileLock.isValid()) {
            zzay().zzj().zza("Storage concurrent access okay");
            return true;
        }
        this.zze.zzs.zzf();
        try {
            FileChannel channel = new RandomAccessFile(new File(this.zzn.zzau().getFilesDir(), "google_app_measurement.db"), "rw").getChannel();
            this.zzx = channel;
            FileLock fileLockTryLock = channel.tryLock();
            this.zzw = fileLockTryLock;
            if (fileLockTryLock != null) {
                zzay().zzj().zza("Storage concurrent access okay");
                return true;
            }
            zzay().zzd().zza("Storage concurrent data access panic");
            return false;
        } catch (FileNotFoundException e) {
            zzay().zzd().zzb("Failed to acquire storage lock", e);
            return false;
        } catch (IOException e2) {
            zzay().zzd().zzb("Failed to access storage lock file", e2);
            return false;
        } catch (OverlappingFileLockException e3) {
            zzay().zzk().zzb("Storage lock already acquired", e3);
            return false;
        }
    }

    final long zza() {
        long jCurrentTimeMillis = zzav().currentTimeMillis();
        zzjp zzjpVar = this.zzk;
        zzjpVar.zzY();
        zzjpVar.zzg();
        long jZza = zzjpVar.zze.zza();
        if (jZza == 0) {
            jZza = ((long) zzjpVar.zzs.zzv().zzF().nextInt(86400000)) + 1;
            zzjpVar.zze.zzb(jZza);
        }
        return ((((jCurrentTimeMillis + jZza) / 1000) / 60) / 60) / 24;
    }

    @Override // com.google.android.gms.measurement.internal.zzgq
    public final Context zzau() {
        return this.zzn.zzau();
    }

    @Override // com.google.android.gms.measurement.internal.zzgq
    public final Clock zzav() {
        return ((zzfv) Preconditions.checkNotNull(this.zzn)).zzav();
    }

    @Override // com.google.android.gms.measurement.internal.zzgq
    public final zzaa zzaw() {
        throw null;
    }

    @Override // com.google.android.gms.measurement.internal.zzgq
    public final zzel zzay() {
        return ((zzfv) Preconditions.checkNotNull(this.zzn)).zzay();
    }

    @Override // com.google.android.gms.measurement.internal.zzgq
    public final zzfs zzaz() {
        return ((zzfv) Preconditions.checkNotNull(this.zzn)).zzaz();
    }

    final zzg zzd(zzp zzpVar) {
        zzaz().zzg();
        zzB();
        Preconditions.checkNotNull(zzpVar);
        Preconditions.checkNotEmpty(zzpVar.zza);
        zzaj zzajVar = this.zze;
        zzak(zzajVar);
        zzg zzgVarZzj = zzajVar.zzj(zzpVar.zza);
        zzag zzagVarZzc = zzh(zzpVar.zza).zzc(zzag.zzb(zzpVar.zzv));
        String strZzf = zzagVarZzc.zzj() ? this.zzk.zzf(zzpVar.zza) : "";
        if (zzgVarZzj == null) {
            zzgVarZzj = new zzg(this.zzn, zzpVar.zza);
            if (zzagVarZzc.zzk()) {
                zzgVarZzj.zzI(zzw(zzagVarZzc));
            }
            if (zzagVarZzc.zzj()) {
                zzgVarZzj.zzag(strZzf);
            }
        } else if (zzagVarZzc.zzj() && strZzf != null && !strZzf.equals(zzgVarZzj.zzB())) {
            zzgVarZzj.zzag(strZzf);
            zzmt.zzc();
            if (!zzg().zzs(null, zzdy.zzav) || !zzg().zzs(null, zzdy.zzaz) || !"00000000-0000-0000-0000-000000000000".equals(this.zzk.zzd(zzpVar.zza, zzagVarZzc).first)) {
                zzgVarZzj.zzI(zzw(zzagVarZzc));
            }
            zzmt.zzc();
            if (zzg().zzs(null, zzdy.zzav) && !"00000000-0000-0000-0000-000000000000".equals(this.zzk.zzd(zzpVar.zza, zzagVarZzc).first)) {
                zzaj zzajVar2 = this.zze;
                zzak(zzajVar2);
                if (zzajVar2.zzp(zzpVar.zza, "_id") != null) {
                    zzaj zzajVar3 = this.zze;
                    zzak(zzajVar3);
                    if (zzajVar3.zzp(zzpVar.zza, "_lair") == null) {
                        zzkx zzkxVar = new zzkx(zzpVar.zza, "auto", "_lair", zzav().currentTimeMillis(), 1L);
                        zzaj zzajVar4 = this.zze;
                        zzak(zzajVar4);
                        zzajVar4.zzN(zzkxVar);
                    }
                }
            }
        } else if (TextUtils.isEmpty(zzgVarZzj.zzu()) && zzagVarZzc.zzk()) {
            zzgVarZzj.zzI(zzw(zzagVarZzc));
        }
        zzgVarZzj.zzY(zzpVar.zzb);
        zzgVarZzj.zzF(zzpVar.zzq);
        zzom.zzc();
        if (zzg().zzs(zzgVarZzj.zzt(), zzdy.zzac)) {
            zzgVarZzj.zzX(zzpVar.zzu);
        }
        if (!TextUtils.isEmpty(zzpVar.zzk)) {
            zzgVarZzj.zzW(zzpVar.zzk);
        }
        long j = zzpVar.zze;
        if (j != 0) {
            zzgVarZzj.zzZ(j);
        }
        if (!TextUtils.isEmpty(zzpVar.zzc)) {
            zzgVarZzj.zzK(zzpVar.zzc);
        }
        zzgVarZzj.zzL(zzpVar.zzj);
        String str = zzpVar.zzd;
        if (str != null) {
            zzgVarZzj.zzJ(str);
        }
        zzgVarZzj.zzT(zzpVar.zzf);
        zzgVarZzj.zzae(zzpVar.zzh);
        if (!TextUtils.isEmpty(zzpVar.zzg)) {
            zzgVarZzj.zzaa(zzpVar.zzg);
        }
        if (!zzg().zzs(null, zzdy.zzam)) {
            zzgVarZzj.zzH(zzpVar.zzl);
        }
        zzgVarZzj.zzG(zzpVar.zzo);
        zzgVarZzj.zzaf(zzpVar.zzr);
        zzgVarZzj.zzU(zzpVar.zzs);
        if (zzgVarZzj.zzak()) {
            zzaj zzajVar5 = this.zze;
            zzak(zzajVar5);
            zzajVar5.zzE(zzgVarZzj);
        }
        return zzgVarZzj;
    }

    public final zzz zzf() {
        zzz zzzVar = this.zzh;
        zzak(zzzVar);
        return zzzVar;
    }

    public final zzaf zzg() {
        return ((zzfv) Preconditions.checkNotNull(this.zzn)).zzf();
    }

    final zzag zzh(String str) {
        String string;
        zzaz().zzg();
        zzB();
        zzag zzagVar = this.zzB.get(str);
        if (zzagVar != null) {
            return zzagVar;
        }
        zzaj zzajVar = this.zze;
        zzak(zzajVar);
        Preconditions.checkNotNull(str);
        zzajVar.zzg();
        zzajVar.zzY();
        Cursor cursorRawQuery = null;
        try {
            try {
                cursorRawQuery = zzajVar.zzh().rawQuery("select consent_state from consent_settings where app_id=? limit 1;", new String[]{str});
                if (cursorRawQuery.moveToFirst()) {
                    string = cursorRawQuery.getString(0);
                } else {
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                    string = "G1";
                }
                zzag zzagVarZzb = zzag.zzb(string);
                zzT(str, zzagVarZzb);
                return zzagVarZzb;
            } catch (SQLiteException e) {
                zzajVar.zzs.zzay().zzd().zzc("Database error", "select consent_state from consent_settings where app_id=? limit 1;", e);
                throw e;
            }
        } finally {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
        }
    }

    public final zzaj zzi() {
        zzaj zzajVar = this.zze;
        zzak(zzajVar);
        return zzajVar;
    }

    public final zzeg zzj() {
        return this.zzn.zzj();
    }

    public final zzer zzl() {
        zzer zzerVar = this.zzd;
        zzak(zzerVar);
        return zzerVar;
    }

    public final zzet zzm() {
        zzet zzetVar = this.zzf;
        if (zzetVar != null) {
            return zzetVar;
        }
        throw new IllegalStateException("Network broadcast receiver not created");
    }

    public final zzfm zzo() {
        zzfm zzfmVar = this.zzc;
        zzak(zzfmVar);
        return zzfmVar;
    }

    final zzfv zzq() {
        return this.zzn;
    }

    public final zzif zzr() {
        zzif zzifVar = this.zzj;
        zzak(zzifVar);
        return zzifVar;
    }

    public final zzjp zzs() {
        return this.zzk;
    }

    public final zzku zzu() {
        zzku zzkuVar = this.zzi;
        zzak(zzkuVar);
        return zzkuVar;
    }

    public final zzkz zzv() {
        return ((zzfv) Preconditions.checkNotNull(this.zzn)).zzv();
    }

    final String zzw(zzag zzagVar) {
        if (!zzagVar.zzk()) {
            return null;
        }
        byte[] bArr = new byte[16];
        zzv().zzF().nextBytes(bArr);
        return String.format(Locale.US, "%032x", new BigInteger(1, bArr));
    }

    final String zzx(zzp zzpVar) {
        try {
            return (String) zzaz().zzh(new zzkn(this, zzpVar)).get(WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            zzay().zzd().zzc("Failed to get app instance id. appId", zzel.zzn(zzpVar.zza), e);
            return null;
        }
    }

    final void zzz(Runnable runnable) {
        zzaz().zzg();
        if (this.zzq == null) {
            this.zzq = new ArrayList();
        }
        this.zzq.add(runnable);
    }
}
