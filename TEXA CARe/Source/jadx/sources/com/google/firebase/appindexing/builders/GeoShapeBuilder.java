package com.google.firebase.appindexing.builders;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class GeoShapeBuilder extends IndexableBuilder<GeoShapeBuilder> {
    GeoShapeBuilder() {
        super("GeoShape");
    }

    @Deprecated
    public GeoShapeBuilder setBox(String str) {
        put("box", str);
        return this;
    }

    public GeoShapeBuilder setBox(String... strArr) {
        put("box", strArr);
        return this;
    }
}
