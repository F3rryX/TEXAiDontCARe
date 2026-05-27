package com.texa.careapp.utils.activeandroid;

import com.activeandroid.serializer.TypeSerializer;
import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import com.texa.careapp.model.MechanicModel;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class MechanicLocationTypeSerializer extends TypeSerializer {
    private Gson mGson = new Gson();

    @Override // com.activeandroid.serializer.TypeSerializer
    public Class<?> getDeserializedType() {
        return MechanicModel.Location.class;
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
        return this.mGson.toJson(obj);
    }

    @Override // com.activeandroid.serializer.TypeSerializer
    public Object deserialize(Object obj) {
        if (obj == null) {
            return null;
        }
        try {
            return this.mGson.fromJson((String) obj, MechanicModel.Location.class);
        } catch (JsonSyntaxException e) {
            Timber.e(e, "MechanicSerializer got exception", new Object[0]);
            return null;
        }
    }
}
