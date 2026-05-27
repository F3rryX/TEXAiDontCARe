package com.google.firebase.appindexing.builders;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class MusicRecordingBuilder extends IndexableBuilder<MusicRecordingBuilder> {
    MusicRecordingBuilder() {
        super("MusicRecording");
    }

    public MusicRecordingBuilder setByArtist(MusicGroupBuilder musicGroupBuilder) {
        put("byArtist", musicGroupBuilder);
        return this;
    }

    public MusicRecordingBuilder setDuration(int i) {
        put("duration", i);
        return this;
    }

    public MusicRecordingBuilder setInAlbum(MusicAlbumBuilder musicAlbumBuilder) {
        put("inAlbum", musicAlbumBuilder);
        return this;
    }

    public MusicRecordingBuilder setInPlaylist(MusicPlaylistBuilder... musicPlaylistBuilderArr) {
        put("inPlaylist", musicPlaylistBuilderArr);
        return this;
    }
}
