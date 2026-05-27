package com.google.firebase.appindexing.builders;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class PersonBuilder extends IndexableBuilder<PersonBuilder> {
    PersonBuilder() {
        super("Person");
    }

    public PersonBuilder setEmail(String str) {
        put("email", str);
        return this;
    }

    public PersonBuilder setIsSelf(boolean z) {
        put("isSelf", z);
        return this;
    }

    public PersonBuilder setTelephone(String str) {
        put("telephone", str);
        return this;
    }
}
