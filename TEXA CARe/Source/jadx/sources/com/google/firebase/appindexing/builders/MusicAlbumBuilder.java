package com.google.firebase.appindexing.builders;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class MusicAlbumBuilder extends IndexableBuilder<MusicAlbumBuilder> {
    MusicAlbumBuilder() {
        super("MusicAlbum");
    }

    public MusicAlbumBuilder setByArtist(MusicGroupBuilder musicGroupBuilder) {
        put("byArtist", musicGroupBuilder);
        return this;
    }

    public MusicAlbumBuilder setNumTracks(int i) {
        put("numTracks", i);
        return this;
    }

    public MusicAlbumBuilder setTrack(MusicRecordingBuilder... musicRecordingBuilderArr) {
        put("track", musicRecordingBuilderArr);
        return this;
    }
}
