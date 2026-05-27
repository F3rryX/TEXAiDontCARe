package com.google.firebase.appindexing.builders;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class PostalAddressBuilder extends IndexableBuilder<PostalAddressBuilder> {
    PostalAddressBuilder() {
        super("PostalAddress");
    }

    public PostalAddressBuilder setAddressCountry(String str) {
        put("addressCountry", str);
        return this;
    }

    public PostalAddressBuilder setAddressLocality(String str) {
        put("addressLocality", str);
        return this;
    }

    public PostalAddressBuilder setPostalCode(String str) {
        put("postalCode", str);
        return this;
    }

    public PostalAddressBuilder setStreetAddress(String str) {
        put("streetAddress", str);
        return this;
    }
}
