package com.google.firebase.appindexing.builders;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class PlaceBuilder extends IndexableBuilder<PlaceBuilder> {
    PlaceBuilder() {
        super("Place");
    }

    public PlaceBuilder setGeo(GeoShapeBuilder geoShapeBuilder) {
        put("geo", geoShapeBuilder);
        return this;
    }
}
