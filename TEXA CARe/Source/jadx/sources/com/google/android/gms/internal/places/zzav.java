package com.google.android.gms.internal.places;

import com.google.android.gms.internal.places.zzax;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class zzav<FieldDescriptorType extends zzax<FieldDescriptorType>> {
    private static final zzav zzfm = new zzav(true);
    private boolean zzfk;
    private boolean zzfl = false;
    final zzdb<FieldDescriptorType, Object> zzfj = zzdb.zzal(16);

    private zzav() {
    }

    private zzav(boolean z) {
        zzab();
    }

    public static <T extends zzax<T>> zzav<T> zzau() {
        return zzfm;
    }

    public final void zzab() {
        if (this.zzfk) {
            return;
        }
        this.zzfj.zzab();
        this.zzfk = true;
    }

    public final boolean isImmutable() {
        return this.zzfk;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzav) {
            return this.zzfj.equals(((zzav) obj).zzfj);
        }
        return false;
    }

    public final int hashCode() {
        return this.zzfj.hashCode();
    }

    public final Iterator<Map.Entry<FieldDescriptorType, Object>> iterator() {
        if (this.zzfl) {
            return new zzbq(this.zzfj.entrySet().iterator());
        }
        return this.zzfj.entrySet().iterator();
    }

    final Iterator<Map.Entry<FieldDescriptorType, Object>> descendingIterator() {
        if (this.zzfl) {
            return new zzbq(this.zzfj.zzcw().iterator());
        }
        return this.zzfj.zzcw().iterator();
    }

    private final Object zzb(FieldDescriptorType fielddescriptortype) {
        Object obj = this.zzfj.get(fielddescriptortype);
        return obj instanceof zzbl ? zzbl.zzbv() : obj;
    }

    private final void zzb(FieldDescriptorType fielddescriptortype, Object obj) {
        if (fielddescriptortype.zzaz()) {
            if (!(obj instanceof List)) {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            ArrayList arrayList2 = arrayList;
            int size = arrayList2.size();
            int i = 0;
            while (i < size) {
                Object obj2 = arrayList2.get(i);
                i++;
                zzb(fielddescriptortype.zzax(), obj2);
            }
            obj = arrayList;
        } else {
            zzb(fielddescriptortype.zzax(), obj);
        }
        if (obj instanceof zzbl) {
            this.zzfl = true;
        }
        this.zzfj.put(fielddescriptortype, obj);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:3:0x0011. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:10:0x001e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void zzb(zzef zzefVar, Object obj) {
        zzbd.checkNotNull(obj);
        boolean z = true;
        boolean z2 = false;
        switch (zzau.zzfh[zzefVar.zzdr().ordinal()]) {
            case 1:
                z = obj instanceof Integer;
                z2 = z;
                break;
            case 2:
                z = obj instanceof Long;
                z2 = z;
                break;
            case 3:
                z = obj instanceof Float;
                z2 = z;
                break;
            case 4:
                z = obj instanceof Double;
                z2 = z;
                break;
            case 5:
                z = obj instanceof Boolean;
                z2 = z;
                break;
            case 6:
                z = obj instanceof String;
                z2 = z;
                break;
            case 7:
                if (!(obj instanceof zzw) && !(obj instanceof byte[])) {
                    z = false;
                }
                z2 = z;
                break;
            case 8:
                if (!(obj instanceof Integer) && !(obj instanceof zzbg)) {
                }
                z2 = z;
                break;
            case 9:
                if (!(obj instanceof zzck) && !(obj instanceof zzbl)) {
                }
                z2 = z;
                break;
        }
        if (!z2) {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        }
    }

    public final boolean isInitialized() {
        for (int i = 0; i < this.zzfj.zzcu(); i++) {
            if (!zzc(this.zzfj.zzam(i))) {
                return false;
            }
        }
        Iterator it = this.zzfj.zzcv().iterator();
        while (it.hasNext()) {
            if (!zzc((Map.Entry) it.next())) {
                return false;
            }
        }
        return true;
    }

    private static boolean zzc(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        if (key.zzay() == zzem.MESSAGE) {
            if (key.zzaz()) {
                Iterator it = ((List) entry.getValue()).iterator();
                while (it.hasNext()) {
                    if (!((zzck) it.next()).isInitialized()) {
                        return false;
                    }
                }
            } else {
                Object value = entry.getValue();
                if (value instanceof zzck) {
                    if (!((zzck) value).isInitialized()) {
                        return false;
                    }
                } else {
                    if (value instanceof zzbl) {
                        return true;
                    }
                    throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
                }
            }
        }
        return true;
    }

    public final void zzb(zzav<FieldDescriptorType> zzavVar) {
        for (int i = 0; i < zzavVar.zzfj.zzcu(); i++) {
            zzd(zzavVar.zzfj.zzam(i));
        }
        Iterator it = zzavVar.zzfj.zzcv().iterator();
        while (it.hasNext()) {
            zzd((Map.Entry) it.next());
        }
    }

    private static Object zze(Object obj) {
        if (obj instanceof zzcp) {
            return ((zzcp) obj).zzcm();
        }
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    private final void zzd(Map.Entry<FieldDescriptorType, Object> entry) {
        zzck zzckVarZzbf;
        FieldDescriptorType key = entry.getKey();
        Object value = entry.getValue();
        if (value instanceof zzbl) {
            value = zzbl.zzbv();
        }
        if (key.zzaz()) {
            Object objZzb = zzb(key);
            if (objZzb == null) {
                objZzb = new ArrayList();
            }
            Iterator it = ((List) value).iterator();
            while (it.hasNext()) {
                ((List) objZzb).add(zze(it.next()));
            }
            this.zzfj.put(key, objZzb);
            return;
        }
        if (key.zzay() == zzem.MESSAGE) {
            Object objZzb2 = zzb(key);
            if (objZzb2 == null) {
                this.zzfj.put(key, zze(value));
                return;
            }
            if (objZzb2 instanceof zzcp) {
                zzckVarZzbf = key.zzb((zzcp) objZzb2, (zzcp) value);
            } else {
                zzckVarZzbf = key.zzb(((zzck) objZzb2).zzbk(), (zzck) value).zzbf();
            }
            this.zzfj.put(key, zzckVarZzbf);
            return;
        }
        this.zzfj.put(key, zze(value));
    }

    static void zzb(zzaj zzajVar, zzef zzefVar, int i, Object obj) throws IOException {
        if (zzefVar == zzef.zzns) {
            zzck zzckVar = (zzck) obj;
            zzbd.zzg(zzckVar);
            zzajVar.zzc(i, 3);
            zzckVar.zzc(zzajVar);
            zzajVar.zzc(i, 4);
        }
        zzajVar.zzc(i, zzefVar.zzds());
        switch (zzau.zzfi[zzefVar.ordinal()]) {
            case 1:
                zzajVar.zzb(((Double) obj).doubleValue());
                break;
            case 2:
                zzajVar.zzd(((Float) obj).floatValue());
                break;
            case 3:
                zzajVar.zzc(((Long) obj).longValue());
                break;
            case 4:
                zzajVar.zzc(((Long) obj).longValue());
                break;
            case 5:
                zzajVar.zzn(((Integer) obj).intValue());
                break;
            case 6:
                zzajVar.zze(((Long) obj).longValue());
                break;
            case 7:
                zzajVar.zzq(((Integer) obj).intValue());
                break;
            case 8:
                zzajVar.zzc(((Boolean) obj).booleanValue());
                break;
            case 9:
                ((zzck) obj).zzc(zzajVar);
                break;
            case 10:
                zzajVar.zzc((zzck) obj);
                break;
            case 11:
                if (obj instanceof zzw) {
                    zzajVar.zzb((zzw) obj);
                } else {
                    zzajVar.zzj((String) obj);
                }
                break;
            case 12:
                if (obj instanceof zzw) {
                    zzajVar.zzb((zzw) obj);
                } else {
                    byte[] bArr = (byte[]) obj;
                    zzajVar.zze(bArr, 0, bArr.length);
                }
                break;
            case 13:
                zzajVar.zzo(((Integer) obj).intValue());
                break;
            case 14:
                zzajVar.zzq(((Integer) obj).intValue());
                break;
            case 15:
                zzajVar.zze(((Long) obj).longValue());
                break;
            case 16:
                zzajVar.zzp(((Integer) obj).intValue());
                break;
            case 17:
                zzajVar.zzd(((Long) obj).longValue());
                break;
            case 18:
                if (obj instanceof zzbg) {
                    zzajVar.zzn(((zzbg) obj).zzaw());
                } else {
                    zzajVar.zzn(((Integer) obj).intValue());
                }
                break;
        }
    }

    public final int zzav() {
        int iZze = 0;
        for (int i = 0; i < this.zzfj.zzcu(); i++) {
            iZze += zze((Map.Entry) this.zzfj.zzam(i));
        }
        Iterator it = this.zzfj.zzcv().iterator();
        while (it.hasNext()) {
            iZze += zze((Map.Entry) it.next());
        }
        return iZze;
    }

    private static int zze(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        Object value = entry.getValue();
        if (key.zzay() == zzem.MESSAGE && !key.zzaz() && !key.zzba()) {
            if (value instanceof zzbl) {
                return zzaj.zzc(entry.getKey().zzaw(), (zzbl) value);
            }
            return zzaj.zzc(entry.getKey().zzaw(), (zzck) value);
        }
        return zzc((zzax<?>) key, value);
    }

    static int zzb(zzef zzefVar, int i, Object obj) {
        int iZzr = zzaj.zzr(i);
        if (zzefVar == zzef.zzns) {
            zzbd.zzg((zzck) obj);
            iZzr <<= 1;
        }
        return iZzr + zzc(zzefVar, obj);
    }

    private static int zzc(zzef zzefVar, Object obj) {
        switch (zzau.zzfi[zzefVar.ordinal()]) {
            case 1:
                return zzaj.zzc(((Double) obj).doubleValue());
            case 2:
                return zzaj.zze(((Float) obj).floatValue());
            case 3:
                return zzaj.zzf(((Long) obj).longValue());
            case 4:
                return zzaj.zzg(((Long) obj).longValue());
            case 5:
                return zzaj.zzs(((Integer) obj).intValue());
            case 6:
                return zzaj.zzi(((Long) obj).longValue());
            case 7:
                return zzaj.zzv(((Integer) obj).intValue());
            case 8:
                return zzaj.zzd(((Boolean) obj).booleanValue());
            case 9:
                return zzaj.zze((zzck) obj);
            case 10:
                if (obj instanceof zzbl) {
                    return zzaj.zzb((zzbl) obj);
                }
                return zzaj.zzd((zzck) obj);
            case 11:
                if (obj instanceof zzw) {
                    return zzaj.zzc((zzw) obj);
                }
                return zzaj.zzk((String) obj);
            case 12:
                if (obj instanceof zzw) {
                    return zzaj.zzc((zzw) obj);
                }
                return zzaj.zzd((byte[]) obj);
            case 13:
                return zzaj.zzt(((Integer) obj).intValue());
            case 14:
                return zzaj.zzw(((Integer) obj).intValue());
            case 15:
                return zzaj.zzj(((Long) obj).longValue());
            case 16:
                return zzaj.zzu(((Integer) obj).intValue());
            case 17:
                return zzaj.zzh(((Long) obj).longValue());
            case 18:
                if (obj instanceof zzbg) {
                    return zzaj.zzx(((zzbg) obj).zzaw());
                }
                return zzaj.zzx(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    public static int zzc(zzax<?> zzaxVar, Object obj) {
        zzef zzefVarZzax = zzaxVar.zzax();
        int iZzaw = zzaxVar.zzaw();
        if (zzaxVar.zzaz()) {
            int iZzb = 0;
            if (zzaxVar.zzba()) {
                Iterator it = ((List) obj).iterator();
                while (it.hasNext()) {
                    iZzb += zzc(zzefVarZzax, it.next());
                }
                return zzaj.zzr(iZzaw) + iZzb + zzaj.zzz(iZzb);
            }
            Iterator it2 = ((List) obj).iterator();
            while (it2.hasNext()) {
                iZzb += zzb(zzefVarZzax, iZzaw, it2.next());
            }
            return iZzb;
        }
        return zzb(zzefVarZzax, iZzaw, obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        zzav zzavVar = new zzav();
        for (int i = 0; i < this.zzfj.zzcu(); i++) {
            Map.Entry<K, Object> entryZzam = this.zzfj.zzam(i);
            zzavVar.zzb((zzax) entryZzam.getKey(), entryZzam.getValue());
        }
        Iterator it = this.zzfj.zzcv().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            zzavVar.zzb((zzax) entry.getKey(), entry.getValue());
        }
        zzavVar.zzfl = this.zzfl;
        return zzavVar;
    }
}
