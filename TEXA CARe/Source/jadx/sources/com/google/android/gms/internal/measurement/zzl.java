package com.google.android.gms.internal.measurement;

import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzl extends zzam {
    private final zzab zzb;

    public zzl(zzab zzabVar) {
        this.zzb = zzabVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0051  */
    @Override // com.google.android.gms.internal.measurement.zzam, com.google.android.gms.internal.measurement.zzap
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final zzap zzbK(String str, zzg zzgVar, List<zzap> list) {
        byte b;
        switch (str.hashCode()) {
            case 21624207:
                b = str.equals("getEventName") ? (byte) 0 : (byte) -1;
                break;
            case 45521504:
                if (str.equals("getTimestamp")) {
                    b = 3;
                    break;
                }
                break;
            case 146575578:
                if (str.equals("getParamValue")) {
                    b = 1;
                    break;
                }
                break;
            case 700587132:
                if (str.equals("getParams")) {
                    b = 2;
                    break;
                }
                break;
            case 920706790:
                if (str.equals("setParamValue")) {
                    b = 5;
                    break;
                }
                break;
            case 1570616835:
                if (str.equals("setEventName")) {
                    b = 4;
                    break;
                }
                break;
        }
        if (b == 0) {
            zzh.zzh("getEventName", 0, list);
            return new zzat(this.zzb.zzb().zzd());
        }
        if (b == 1) {
            zzh.zzh("getParamValue", 1, list);
            return zzi.zzb(this.zzb.zzb().zzc(zzgVar.zzb(list.get(0)).zzi()));
        }
        if (b == 2) {
            zzh.zzh("getParams", 0, list);
            Map<String, Object> mapZze = this.zzb.zzb().zze();
            zzam zzamVar = new zzam();
            for (String str2 : mapZze.keySet()) {
                zzamVar.zzr(str2, zzi.zzb(mapZze.get(str2)));
            }
            return zzamVar;
        }
        if (b == 3) {
            zzh.zzh("getTimestamp", 0, list);
            return new zzah(Double.valueOf(this.zzb.zzb().zza()));
        }
        if (b != 4) {
            if (b != 5) {
                return super.zzbK(str, zzgVar, list);
            }
            zzh.zzh("setParamValue", 2, list);
            String strZzi = zzgVar.zzb(list.get(0)).zzi();
            zzap zzapVarZzb = zzgVar.zzb(list.get(1));
            this.zzb.zzb().zzg(strZzi, zzh.zzf(zzapVarZzb));
            return zzapVarZzb;
        }
        zzh.zzh("setEventName", 1, list);
        zzap zzapVarZzb2 = zzgVar.zzb(list.get(0));
        if (zzf.equals(zzapVarZzb2) || zzg.equals(zzapVarZzb2)) {
            throw new IllegalArgumentException("Illegal event name");
        }
        this.zzb.zzb().zzf(zzapVarZzb2.zzi());
        return new zzat(zzapVarZzb2.zzi());
    }
}
