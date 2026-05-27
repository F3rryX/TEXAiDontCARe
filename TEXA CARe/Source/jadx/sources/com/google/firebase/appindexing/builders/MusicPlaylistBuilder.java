package com.google.firebase.appindexing.builders;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
public class MusicPlaylistBuilder extends IndexableBuilder<MusicPlaylistBuilder> {
    MusicPlaylistBuilder() {
        super("MusicPlaylist");
    }

    public MusicPlaylistBuilder setNumTracks(int i) {
        return put("numTracks", i);
    }

    public MusicPlaylistBuilder setTrack(MusicRecordingBuilder... musicRecordingBuilderArr) {
        return put("track", musicRecordingBuilderArr);
    }
}
