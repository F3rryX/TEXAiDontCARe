package com.texa.carelib.core.utils;

import android.content.Context;
import com.texa.carelib.core.utils.internal.FileCacheSupport;
import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class InternalFileCache implements FileCache {
    public static final String TAG = "InternalFileCache";
    private File mCacheRootDir;
    private final Context mContext;

    public InternalFileCache(Context context) {
        this.mContext = context;
        if (this.mCacheRootDir == null) {
            this.mCacheRootDir = new File(context.getFilesDir(), context.getPackageName());
        }
    }

    protected File getRootDirectory() {
        if (!this.mCacheRootDir.exists() && !this.mCacheRootDir.mkdirs()) {
            this.mCacheRootDir = null;
        }
        return this.mCacheRootDir;
    }

    @Override // com.texa.carelib.core.utils.FileCache
    public boolean clear() throws IOException {
        FileCacheSupport.clear(getRootDirectory());
        return true;
    }

    @Override // com.texa.carelib.core.utils.FileCache
    public File create(String str, int i) throws IOException {
        return FileCacheSupport.create(getRootDirectory(), str, i);
    }

    @Override // com.texa.carelib.core.utils.FileCache
    public File create(String str, String str2, int i) throws IOException {
        return FileCacheSupport.create(getRootDirectory(), str, str2, i);
    }

    @Override // com.texa.carelib.core.utils.FileCache
    public boolean delete(String str, String str2) throws IOException {
        return FileCacheSupport.delete(getRootDirectory(), str, str2);
    }

    @Override // com.texa.carelib.core.utils.FileCache
    public File getFolder(String str) throws IOException {
        File file = new File(getRootDirectory(), str);
        if (file.exists() || file.mkdirs()) {
            return file;
        }
        throw new IOException("Could not create folder: " + file.getAbsolutePath());
    }

    @Override // com.texa.carelib.core.utils.FileCache
    public File getFile(String str) throws IOException {
        return FileCacheSupport.getFile(getRootDirectory(), str);
    }

    @Override // com.texa.carelib.core.utils.FileCache
    public File getFile(String str, String str2) throws IOException {
        return FileCacheSupport.getFile(getRootDirectory(), str, str2);
    }

    @Override // com.texa.carelib.core.utils.FileCache
    public File store(String str, String str2, File file) throws IOException {
        return FileCacheSupport.store(getRootDirectory(), str, str2, file);
    }

    @Override // com.texa.carelib.core.utils.FileCache
    public File store(String str, String str2, byte[] bArr) throws IOException {
        return FileCacheSupport.store(getRootDirectory(), str, str2, bArr);
    }
}
