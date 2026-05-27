package com.google.android.gms.internal.icing;

import android.accounts.Account;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.appindexing.Action;
import com.google.android.gms.common.internal.AccountType;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.android.gms.measurement.api.AppMeasurementSdk;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzaf {
    public static zzx zza(Action action, long j, String str, int i) {
        String string;
        Uri uri;
        String string2;
        String string3;
        int i2;
        Bundle bundle = new Bundle();
        bundle.putAll(action.zza());
        Bundle bundle2 = bundle.getBundle("object");
        if (bundle2 != null) {
            String string4 = bundle2.getString("id");
            uri = string4 != null ? Uri.parse(string4) : null;
            string2 = bundle2.getString(AppMeasurementSdk.ConditionalUserProperty.NAME);
            string3 = bundle2.getString("type");
            string = bundle2.getString(ImagesContract.URL);
        } else {
            string = null;
            uri = null;
            string2 = null;
            string3 = null;
        }
        Intent intentZzb = zzal.zzb(str, string != null ? Uri.parse(string) : null);
        zzf zzfVarZzb = zzx.zzb(intentZzb, string2, uri, string3, null);
        byte[] byteArray = bundle.getByteArray(".private:ssbContext");
        if (byteArray != null) {
            zzfVarZzb.zza(zzk.zza(byteArray));
            bundle.remove(".private:ssbContext");
        }
        String string5 = bundle.getString(".private:accountName");
        if (string5 != null) {
            zzfVarZzb.zzd(new Account(string5, AccountType.GOOGLE));
            bundle.remove(".private:accountName");
        }
        boolean z = false;
        if (bundle.containsKey(".private:isContextOnly") && bundle.getBoolean(".private:isContextOnly")) {
            bundle.remove(".private:isContextOnly");
            i2 = 4;
        } else {
            i2 = 0;
        }
        if (bundle.containsKey(".private:isDeviceOnly")) {
            z = bundle.getBoolean(".private:isDeviceOnly", false);
            bundle.remove(".private:isDeviceOnly");
        }
        zzgf zzgfVarZzb = zzb(bundle);
        zzr zzrVar = new zzr(".private:action");
        zzrVar.zzb(true);
        zzrVar.zzd(".private:action");
        zzrVar.zza("blob");
        zzfVarZzb.zza(new zzk(zzgfVarZzb.zzh(), zzrVar.zze()));
        zzw zzwVar = new zzw();
        zzwVar.zza(zzx.zza(str, intentZzb));
        zzwVar.zzb(j);
        zzwVar.zzc(i2);
        zzwVar.zzd(zzfVarZzb.zze());
        zzwVar.zze(z);
        zzwVar.zzf(i);
        return zzwVar.zzg();
    }

    public static zzgf zzb(Bundle bundle) {
        zzge zzgeVarZza = zzgf.zza();
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            if (obj instanceof String) {
                zzgg zzggVarZza = zzgh.zza();
                zzggVarZza.zzb((String) obj);
                zzgh zzghVarZzj = zzggVarZza.zzj();
                zzgc zzgcVarZza = zzgd.zza();
                zzgcVarZza.zza(str);
                zzgcVarZza.zzb(zzghVarZzj);
                zzgeVarZza.zzb(zzgcVarZza.zzj());
            } else if (obj instanceof Bundle) {
                zzgg zzggVarZza2 = zzgh.zza();
                zzggVarZza2.zzc(zzb((Bundle) obj));
                zzgh zzghVarZzj2 = zzggVarZza2.zzj();
                zzgc zzgcVarZza2 = zzgd.zza();
                zzgcVarZza2.zza(str);
                zzgcVarZza2.zzb(zzghVarZzj2);
                zzgeVarZza.zzb(zzgcVarZza2.zzj());
            } else {
                int i = 0;
                if (obj instanceof String[]) {
                    String[] strArr = (String[]) obj;
                    int length = strArr.length;
                    while (i < length) {
                        String str2 = strArr[i];
                        if (str2 != null) {
                            zzgg zzggVarZza3 = zzgh.zza();
                            zzggVarZza3.zzb(str2);
                            zzgh zzghVarZzj3 = zzggVarZza3.zzj();
                            zzgc zzgcVarZza3 = zzgd.zza();
                            zzgcVarZza3.zza(str);
                            zzgcVarZza3.zzb(zzghVarZzj3);
                            zzgeVarZza.zzb(zzgcVarZza3.zzj());
                        }
                        i++;
                    }
                } else if (obj instanceof Bundle[]) {
                    Bundle[] bundleArr = (Bundle[]) obj;
                    int length2 = bundleArr.length;
                    while (i < length2) {
                        Bundle bundle2 = bundleArr[i];
                        if (bundle2 != null) {
                            zzgg zzggVarZza4 = zzgh.zza();
                            zzggVarZza4.zzc(zzb(bundle2));
                            zzgh zzghVarZzj4 = zzggVarZza4.zzj();
                            zzgc zzgcVarZza4 = zzgd.zza();
                            zzgcVarZza4.zza(str);
                            zzgcVarZza4.zzb(zzghVarZzj4);
                            zzgeVarZza.zzb(zzgcVarZza4.zzj());
                        }
                        i++;
                    }
                } else if (obj instanceof Boolean) {
                    zzgg zzggVarZza5 = zzgh.zza();
                    zzggVarZza5.zza(((Boolean) obj).booleanValue());
                    zzgh zzghVarZzj5 = zzggVarZza5.zzj();
                    zzgc zzgcVarZza5 = zzgd.zza();
                    zzgcVarZza5.zza(str);
                    zzgcVarZza5.zzb(zzghVarZzj5);
                    zzgeVarZza.zzb(zzgcVarZza5.zzj());
                } else {
                    String strValueOf = String.valueOf(obj);
                    StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 19);
                    sb.append("Unsupported value: ");
                    sb.append(strValueOf);
                    Log.e("SearchIndex", sb.toString());
                }
            }
        }
        String string = bundle.getString("type");
        if (string != null) {
            zzgeVarZza.zza(string);
        }
        return zzgeVarZza.zzj();
    }
}
