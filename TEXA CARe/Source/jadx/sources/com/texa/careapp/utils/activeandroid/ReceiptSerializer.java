package com.texa.careapp.utils.activeandroid;

import com.activeandroid.serializer.TypeSerializer;
import com.google.gson.JsonSyntaxException;
import com.texa.careapp.model.PurchaseData;
import com.texa.careapp.utils.Utils;

/* JADX INFO: loaded from: classes2.dex */
public class ReceiptSerializer extends TypeSerializer {
    @Override // com.activeandroid.serializer.TypeSerializer
    public Class<?> getDeserializedType() {
        return PurchaseData.ReceiptData.class;
    }

    @Override // com.activeandroid.serializer.TypeSerializer
    public Class<?> getSerializedType() {
        return String.class;
    }

    @Override // com.activeandroid.serializer.TypeSerializer
    public Object serialize(Object obj) {
        if (obj == null) {
            return null;
        }
        return Utils.buildGsonInstance().toJson(obj);
    }

    @Override // com.activeandroid.serializer.TypeSerializer
    public Object deserialize(Object obj) {
        if (obj == null) {
            return null;
        }
        try {
            return Utils.buildGsonInstance().fromJson((String) obj, PurchaseData.ReceiptData.class);
        } catch (JsonSyntaxException unused) {
            return null;
        }
    }
}
