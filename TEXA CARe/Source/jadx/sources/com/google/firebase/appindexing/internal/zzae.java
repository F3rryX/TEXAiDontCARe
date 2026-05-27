package com.google.firebase.appindexing.internal;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzae {
    private static final DateFormat zza = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US);

    public static String zza(Calendar calendar) {
        String str;
        DateFormat dateFormat = zza;
        synchronized (dateFormat) {
            dateFormat.setTimeZone(calendar.getTimeZone());
            str = dateFormat.format(calendar.getTime());
        }
        return str;
    }
}
