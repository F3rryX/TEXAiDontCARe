package com.google.firebase.appindexing.builders;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class StickerPackBuilder extends IndexableBuilder<StickerPackBuilder> {
    StickerPackBuilder() {
        super("StickerPack");
    }

    public StickerPackBuilder setHasSticker(StickerBuilder... stickerBuilderArr) {
        put("hasSticker", stickerBuilderArr);
        return this;
    }
}
