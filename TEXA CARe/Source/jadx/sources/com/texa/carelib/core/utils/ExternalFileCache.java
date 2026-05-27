package com.texa.carelib.core.utils;

import android.content.Context;
import android.os.Environment;
import com.texa.carelib.android.PermissionUtils;
import com.texa.carelib.core.utils.internal.FileCacheSupport;
import com.texa.carelib.core.utils.internal.MediaScannerHelper;
import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class ExternalFileCache implements FileCache {
    public static final String TAG = InternalFileCache.TAG;
    private File mCacheRootDir;
    private final Context mContext;

    public ExternalFileCache(Context context) {
        this.mContext = context;
        this.mCacheRootDir = context.getExternalFilesDir(null);
        if (!hasPermission(context) || this.mCacheRootDir.exists() || this.mCacheRootDir.mkdirs()) {
            return;
        }
        this.mCacheRootDir = null;
    }

    @Override // com.texa.carelib.core.utils.FileCache
    public boolean clear() throws IOException {
        if (!hasPermission(this.mContext)) {
            return false;
        }
        FileCacheSupport.clear(this.mCacheRootDir);
        return true;
    }

    @Override // com.texa.carelib.core.utils.FileCache
    public File create(String str, int i) throws IOException {
        ensureWritePermission(this.mContext);
        File fileCreate = FileCacheSupport.create(this.mCacheRootDir, str, i);
        new MediaScannerHelper().scanFile(this.mContext, fileCreate.getAbsolutePath());
        return fileCreate;
    }

    @Override // com.texa.carelib.core.utils.FileCache
    public File create(String str, String str2, int i) throws Throwable {
        ensureWritePermission(this.mContext);
        File fileCreate = FileCacheSupport.create(this.mCacheRootDir, str2, str, i);
        new MediaScannerHelper().scanFile(this.mContext, fileCreate.getAbsolutePath());
        return fileCreate;
    }

    @Override // com.texa.carelib.core.utils.FileCache
    public boolean delete(String str, String str2) throws IOException {
        ensureWritePermission(this.mContext);
        if (!FileCacheSupport.delete(this.mCacheRootDir, str, str2)) {
            return false;
        }
        new MediaScannerHelper().scanFile(this.mContext, FileCacheSupport.getDir(this.mCacheRootDir, str).getAbsolutePath());
        return false;
    }

    @Override // com.texa.carelib.core.utils.FileCache
    public File getFolder(String str) throws IOException {
        File file = new File(Environment.getRootDirectory(), str);
        if (file.exists() || file.mkdirs()) {
            return file;
        }
        throw new IOException("Could not create folder: " + file.getAbsolutePath());
    }

    @Override // com.texa.carelib.core.utils.FileCache
    public File getFile(String str) throws IOException {
        ensureWritePermission(this.mContext);
        return FileCacheSupport.getFile(this.mCacheRootDir, str);
    }

    @Override // com.texa.carelib.core.utils.FileCache
    public File getFile(String str, String str2) throws IOException {
        ensureWritePermission(this.mContext);
        return FileCacheSupport.getFile(this.mCacheRootDir, str, str2);
    }

    @Override // com.texa.carelib.core.utils.FileCache
    public File store(String str, String str2, File file) throws IOException {
        ensureWritePermission(this.mContext);
        File fileStore = FileCacheSupport.store(this.mCacheRootDir, str, str2, file);
        new MediaScannerHelper().scanFile(this.mContext, fileStore.getAbsolutePath());
        return fileStore;
    }

    @Override // com.texa.carelib.core.utils.FileCache
    public File store(String str, String str2, byte[] bArr) throws IOException {
        ensureWritePermission(this.mContext);
        File fileStore = FileCacheSupport.store(this.mCacheRootDir, str, str2, bArr);
        new MediaScannerHelper().scanFile(this.mContext, fileStore.getAbsolutePath());
        return fileStore;
    }

    private boolean hasPermission(Context context) {
        return PermissionUtils.checkSelfPermission(context, "android.permission.WRITE_EXTERNAL_STORAGE") == 0;
    }

    private void ensureWritePermission(Context context) throws IOException {
        if (!hasPermission(context)) {
            throw new IOException("Application is not authorized to write on external storage. Permission WRITE_EXTERNAL_STORAGE has be denied.");
        }
    }
}
