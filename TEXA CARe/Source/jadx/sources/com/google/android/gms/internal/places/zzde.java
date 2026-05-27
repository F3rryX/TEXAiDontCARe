package com.google.android.gms.internal.places;

import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: Add missing generic type declarations: [FieldDescriptorType] */
/* JADX INFO: loaded from: classes.dex */
final class zzde<FieldDescriptorType> extends zzdb<FieldDescriptorType, Object> {
    zzde(int i) {
        super(i, null);
    }

    @Override // com.google.android.gms.internal.places.zzdb
    public final void zzab() {
        if (!isImmutable()) {
            for (int i = 0; i < zzcu(); i++) {
                Map.Entry<FieldDescriptorType, Object> entryZzam = zzam(i);
                if (((zzax) entryZzam.getKey()).zzaz()) {
                    entryZzam.setValue(Collections.unmodifiableList((List) entryZzam.getValue()));
                }
            }
            for (Map.Entry<FieldDescriptorType, Object> entry : zzcv()) {
                if (((zzax) entry.getKey()).zzaz()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.zzab();
    }
}
