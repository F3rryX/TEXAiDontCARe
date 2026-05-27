package com.texa.careapp.utils.activeandroid;

import com.activeandroid.serializer.TypeSerializer;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes2.dex */
public class BigIntegerSerializer extends TypeSerializer {
    @Override // com.activeandroid.serializer.TypeSerializer
    public Class<?> getDeserializedType() {
        return BigInteger.class;
    }

    @Override // com.activeandroid.serializer.TypeSerializer
    public Class<?> getSerializedType() {
        return String.class;
    }

    @Override // com.activeandroid.serializer.TypeSerializer
    public String serialize(Object obj) {
        if (obj == null) {
            return null;
        }
        return obj.toString();
    }

    @Override // com.activeandroid.serializer.TypeSerializer
    public BigInteger deserialize(Object obj) {
        if (obj == null) {
            return null;
        }
        return new BigInteger((String) obj);
    }
}
