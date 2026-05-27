package com.google.firebase.appindexing.builders;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
public class AudiobookBuilder extends IndexableBuilder<AudiobookBuilder> {
    AudiobookBuilder() {
        super("Audiobook");
    }

    public AudiobookBuilder setAuthor(PersonBuilder... personBuilderArr) {
        return put("author", personBuilderArr);
    }

    public AudiobookBuilder setReadBy(PersonBuilder... personBuilderArr) {
        return put("readBy", personBuilderArr);
    }
}
