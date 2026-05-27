package com.google.firebase.appindexing.builders;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class AggregateRatingBuilder extends IndexableBuilder<AggregateRatingBuilder> {
    AggregateRatingBuilder() {
        super("AggregateRating");
    }

    public AggregateRatingBuilder setRatingCount(long j) {
        put("ratingCount", j);
        return this;
    }

    public AggregateRatingBuilder setRatingValue(String str) {
        put("ratingValue", str);
        return this;
    }
}
