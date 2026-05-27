package com.google.firebase.appindexing.builders;

import java.util.Date;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class PhotographBuilder extends IndexableBuilder<PhotographBuilder> {
    PhotographBuilder() {
        super("Photograph");
    }

    public PhotographBuilder setDateCreated(Date date) {
        put("dateCreated", date.getTime());
        return this;
    }

    public PhotographBuilder setLocationCreated(PlaceBuilder placeBuilder) {
        put("locationCreated", placeBuilder);
        return this;
    }
}
