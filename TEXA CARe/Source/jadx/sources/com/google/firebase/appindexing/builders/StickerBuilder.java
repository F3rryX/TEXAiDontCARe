package com.google.firebase.appindexing.builders;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class StickerBuilder extends IndexableBuilder<StickerBuilder> {
    StickerBuilder() {
        super("Sticker");
    }

    public StickerBuilder setIsPartOf(StickerPackBuilder stickerPackBuilder) {
        return (StickerBuilder) super.setIsPartOf(stickerPackBuilder);
    }
}
