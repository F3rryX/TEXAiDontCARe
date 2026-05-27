package com.texa.careapp.utils.activeandroid;

import com.activeandroid.serializer.TypeSerializer;
import com.google.gson.JsonSyntaxException;
import com.texa.careapp.model.ServerLogModel;
import com.texa.careapp.utils.Utils;

/* JADX INFO: loaded from: classes2.dex */
public class SnapshotSerializer extends TypeSerializer {
    @Override // com.activeandroid.serializer.TypeSerializer
    public Class<?> getDeserializedType() {
        return ServerLogModel.Snapshot.class;
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
            return Utils.buildGsonInstance().fromJson((String) obj, ServerLogModel.Snapshot.class);
        } catch (JsonSyntaxException unused) {
            return null;
        }
    }
}
