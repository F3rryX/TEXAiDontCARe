package com.google.firebase.appindexing.builders;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
public class BookBuilder extends IndexableBuilder<BookBuilder> {
    BookBuilder() {
        super("Book");
    }

    public BookBuilder setAuthor(PersonBuilder... personBuilderArr) {
        return put("author", personBuilderArr);
    }
}
