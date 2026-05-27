package com.texa.carelib.core.utils.internal;

import android.content.Context;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.util.Log;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class MediaScannerHelper implements MediaScannerConnection.MediaScannerConnectionClient {
    @Override // android.media.MediaScannerConnection.MediaScannerConnectionClient
    public void onMediaScannerConnected() {
    }

    public void addFile(Context context, File file) {
        scanFile(context, file.getAbsolutePath());
    }

    public void scanFile(Context context, String str) {
        MediaScannerConnection.scanFile(context, new String[]{str}, null, this);
    }

    @Override // android.media.MediaScannerConnection.OnScanCompletedListener
    public void onScanCompleted(String str, Uri uri) {
        Log.i("MediaScannerHelper", "Scan done - path:" + str + " uri:" + uri);
    }
}
