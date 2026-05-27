package com.google.android.gms.internal.places;

import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class zzce<K, V> extends LinkedHashMap<K, V> {
    private static final zzce zzkn;
    private boolean zzdy;

    private zzce() {
        this.zzdy = true;
    }

    private zzce(Map<K, V> map) {
        super(map);
        this.zzdy = true;
    }

    public static <K, V> zzce<K, V> zzcd() {
        return zzkn;
    }

    public final void zzb(zzce<K, V> zzceVar) {
        zzcf();
        if (zzceVar.isEmpty()) {
            return;
        }
        putAll(zzceVar);
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        return isEmpty() ? Collections.emptySet() : super.entrySet();
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void clear() {
        zzcf();
        super.clear();
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V put(K k, V v) {
        zzcf();
        zzbd.checkNotNull(k);
        zzbd.checkNotNull(v);
        return (V) super.put(k, v);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void putAll(Map<? extends K, ? extends V> map) {
        zzcf();
        for (K k : map.keySet()) {
            zzbd.checkNotNull(k);
            zzbd.checkNotNull(map.get(k));
        }
        super.putAll(map);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        zzcf();
        return (V) super.remove(obj);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x005c A[RETURN] */
    @Override // java.util.AbstractMap, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean equals(Object obj) {
        boolean z;
        boolean zEquals;
        if (obj instanceof Map) {
            Map map = (Map) obj;
            if (this == map) {
                z = true;
                if (z) {
                    return true;
                }
            } else {
                if (size() == map.size()) {
                    for (Map.Entry<K, V> entry : entrySet()) {
                        if (map.containsKey(entry.getKey())) {
                            V value = entry.getValue();
                            Object obj2 = map.get(entry.getKey());
                            if ((value instanceof byte[]) && (obj2 instanceof byte[])) {
                                zEquals = Arrays.equals((byte[]) value, (byte[]) obj2);
                            } else {
                                zEquals = value.equals(obj2);
                            }
                            if (!zEquals) {
                            }
                        }
                    }
                    z = true;
                    if (z) {
                    }
                }
                z = false;
                if (z) {
                }
            }
        }
        return false;
    }

    private static int zzm(Object obj) {
        if (obj instanceof byte[]) {
            return zzbd.hashCode((byte[]) obj);
        }
        if (obj instanceof zzbg) {
            throw new UnsupportedOperationException();
        }
        return obj.hashCode();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int iZzm = 0;
        for (Map.Entry<K, V> entry : entrySet()) {
            iZzm += zzm(entry.getValue()) ^ zzm(entry.getKey());
        }
        return iZzm;
    }

    public final zzce<K, V> zzce() {
        return isEmpty() ? new zzce<>() : new zzce<>(this);
    }

    public final void zzab() {
        this.zzdy = false;
    }

    public final boolean isMutable() {
        return this.zzdy;
    }

    private final void zzcf() {
        if (!this.zzdy) {
            throw new UnsupportedOperationException();
        }
    }

    static {
        zzce zzceVar = new zzce();
        zzkn = zzceVar;
        zzceVar.zzdy = false;
    }
}
