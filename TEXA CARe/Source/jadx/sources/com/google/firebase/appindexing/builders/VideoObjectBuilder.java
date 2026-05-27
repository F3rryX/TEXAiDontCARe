package com.google.firebase.appindexing.builders;

import java.util.Date;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class VideoObjectBuilder extends IndexableBuilder<VideoObjectBuilder> {
    VideoObjectBuilder() {
        super("VideoObject");
    }

    public VideoObjectBuilder setAuthor(PersonBuilder personBuilder) {
        put("author", personBuilder);
        return this;
    }

    public VideoObjectBuilder setDuration(long j) {
        put("duration", j);
        return this;
    }

    public VideoObjectBuilder setDurationWatched(long j) {
        put("durationWatched", j);
        return this;
    }

    public VideoObjectBuilder setLocationCreated(PlaceBuilder placeBuilder) {
        put("locationCreated", placeBuilder);
        return this;
    }

    public VideoObjectBuilder setSeriesName(String str) {
        put("seriesName", str);
        return this;
    }

    public VideoObjectBuilder setUploadDate(Date date) {
        put("uploadDate", date.getTime());
        return this;
    }
}
