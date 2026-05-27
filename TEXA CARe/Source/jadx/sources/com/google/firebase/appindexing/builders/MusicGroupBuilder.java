package com.google.firebase.appindexing.builders;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class MusicGroupBuilder extends IndexableBuilder<MusicGroupBuilder> {
    MusicGroupBuilder() {
        super("MusicGroup");
    }

    public MusicGroupBuilder setAlbum(MusicAlbumBuilder... musicAlbumBuilderArr) {
        put("album", musicAlbumBuilderArr);
        return this;
    }

    public MusicGroupBuilder setGenre(String str) {
        put("genre", str);
        return this;
    }

    public MusicGroupBuilder setTrack(MusicRecordingBuilder... musicRecordingBuilderArr) {
        put("track", musicRecordingBuilderArr);
        return this;
    }
}
