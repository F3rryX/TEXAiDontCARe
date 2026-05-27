package com.google.firebase.appindexing.builders;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class LocalBusinessBuilder extends IndexableBuilder<LocalBusinessBuilder> {
    LocalBusinessBuilder() {
        super("LocalBusiness");
    }

    public LocalBusinessBuilder setAddress(PostalAddressBuilder postalAddressBuilder) {
        put("address", postalAddressBuilder);
        return this;
    }

    public LocalBusinessBuilder setAggregateRating(AggregateRatingBuilder aggregateRatingBuilder) {
        put("aggregateRating", aggregateRatingBuilder);
        return this;
    }

    public LocalBusinessBuilder setGeo(GeoShapeBuilder geoShapeBuilder) {
        put("geo", geoShapeBuilder);
        return this;
    }

    public LocalBusinessBuilder setPriceRange(String str) {
        put("priceRange", str);
        return this;
    }

    public LocalBusinessBuilder setTelephone(String str) {
        put("telephone", str);
        return this;
    }

    LocalBusinessBuilder(String str) {
        super("Restaurant");
    }
}
