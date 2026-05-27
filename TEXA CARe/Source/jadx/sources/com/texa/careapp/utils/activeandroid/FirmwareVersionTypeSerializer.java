package com.texa.careapp.utils.activeandroid;

import android.util.Log;
import com.activeandroid.serializer.TypeSerializer;
import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import com.texa.carelib.core.utils.FirmwareVersion;

/* JADX INFO: loaded from: classes2.dex */
public class FirmwareVersionTypeSerializer extends TypeSerializer {
    private static final String TAG = "FirmwareVersionTypeSerializer";
    private Gson mGson = new Gson();

    @Override // com.activeandroid.serializer.TypeSerializer
    public Class<?> getDeserializedType() {
        return FirmwareVersion.class;
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
    public FirmwareVersion deserialize(Object obj) {
        if (obj == null) {
            return null;
        }
        try {
            return (FirmwareVersion) this.mGson.fromJson((String) obj, FirmwareVersion.class);
        } catch (JsonSyntaxException e) {
            Log.d(TAG, "got exception", e);
            return null;
        }
    }
}
