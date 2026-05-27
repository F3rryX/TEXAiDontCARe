package com.activeandroid;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import com.activeandroid.util.IOUtils;
import com.activeandroid.util.Log;
import com.activeandroid.util.NaturalOrderComparator;
import com.activeandroid.util.SQLiteUtils;
import com.activeandroid.util.SqlParser;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class DatabaseHelper extends SQLiteOpenHelper {
    public static final String MIGRATION_PATH = "migrations";
    private final String mSqlParser;

    public DatabaseHelper(Configuration configuration) {
        super(configuration.getContext(), configuration.getDatabaseName(), (SQLiteDatabase.CursorFactory) null, configuration.getDatabaseVersion());
        copyAttachedDatabase(configuration.getContext(), configuration.getDatabaseName());
        this.mSqlParser = configuration.getSqlParser();
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onOpen(SQLiteDatabase sQLiteDatabase) {
        executePragmas(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        executePragmas(sQLiteDatabase);
        executeCreate(sQLiteDatabase);
        executeMigrations(sQLiteDatabase, -1, sQLiteDatabase.getVersion());
        executeCreateIndex(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        executePragmas(sQLiteDatabase);
        executeCreate(sQLiteDatabase);
        executeMigrations(sQLiteDatabase, i, i2);
    }

    public void copyAttachedDatabase(Context context, String str) {
        File databasePath = context.getDatabasePath(str);
        if (databasePath.exists()) {
            return;
        }
        databasePath.getParentFile().mkdirs();
        try {
            InputStream inputStreamOpen = context.getAssets().open(str);
            FileOutputStream fileOutputStream = new FileOutputStream(databasePath);
            byte[] bArr = new byte[8192];
            while (true) {
                int i = inputStreamOpen.read(bArr, 0, 8192);
                if (i > 0) {
                    fileOutputStream.write(bArr, 0, i);
                } else {
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    inputStreamOpen.close();
                    return;
                }
            }
        } catch (IOException e) {
            Log.e("Failed to open file", e);
        }
    }

    private void executePragmas(SQLiteDatabase sQLiteDatabase) {
        if (SQLiteUtils.FOREIGN_KEYS_SUPPORTED) {
            sQLiteDatabase.execSQL("PRAGMA foreign_keys=ON;");
            Log.i("Foreign Keys supported. Enabling foreign key features.");
        }
    }

    private void executeCreateIndex(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.beginTransaction();
        try {
            Iterator<TableInfo> it = Cache.getTableInfos().iterator();
            while (it.hasNext()) {
                for (String str : SQLiteUtils.createIndexDefinition(it.next())) {
                    sQLiteDatabase.execSQL(str);
                }
            }
            sQLiteDatabase.setTransactionSuccessful();
        } finally {
            sQLiteDatabase.endTransaction();
        }
    }

    private void executeCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.beginTransaction();
        try {
            Iterator<TableInfo> it = Cache.getTableInfos().iterator();
            while (it.hasNext()) {
                sQLiteDatabase.execSQL(SQLiteUtils.createTableDefinition(it.next()));
            }
            sQLiteDatabase.setTransactionSuccessful();
        } finally {
            sQLiteDatabase.endTransaction();
        }
    }

    private boolean executeMigrations(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        boolean z = false;
        try {
            List<String> listAsList = Arrays.asList(Cache.getContext().getAssets().list(MIGRATION_PATH));
            Collections.sort(listAsList, new NaturalOrderComparator());
            sQLiteDatabase.beginTransaction();
            try {
                for (String str : listAsList) {
                    try {
                        int iIntValue = Integer.valueOf(str.replace(".sql", "")).intValue();
                        if (iIntValue > i && iIntValue <= i2) {
                            executeSqlScript(sQLiteDatabase, str);
                            z = true;
                            Log.i(str + " executed succesfully.");
                        }
                    } catch (NumberFormatException e) {
                        Log.w("Skipping invalidly named file: " + str, e);
                    }
                }
                sQLiteDatabase.setTransactionSuccessful();
                sQLiteDatabase.endTransaction();
            } catch (Throwable th) {
                sQLiteDatabase.endTransaction();
                throw th;
            }
        } catch (IOException e2) {
            Log.e("Failed to execute migrations.", e2);
        }
        return z;
    }

    private void executeSqlScript(SQLiteDatabase sQLiteDatabase, String str) {
        InputStream inputStreamOpen = null;
        try {
            try {
                inputStreamOpen = Cache.getContext().getAssets().open("migrations/" + str);
                if (Configuration.SQL_PARSER_DELIMITED.equalsIgnoreCase(this.mSqlParser)) {
                    executeDelimitedSqlScript(sQLiteDatabase, inputStreamOpen);
                } else {
                    executeLegacySqlScript(sQLiteDatabase, inputStreamOpen);
                }
            } catch (IOException e) {
                Log.e("Failed to execute " + str, e);
            }
        } finally {
            IOUtils.closeQuietly(inputStreamOpen);
        }
    }

    private void executeDelimitedSqlScript(SQLiteDatabase sQLiteDatabase, InputStream inputStream) throws IOException {
        Iterator<String> it = SqlParser.parse(inputStream).iterator();
        while (it.hasNext()) {
            sQLiteDatabase.execSQL(it.next());
        }
    }

    private void executeLegacySqlScript(SQLiteDatabase sQLiteDatabase, InputStream inputStream) throws Throwable {
        InputStreamReader inputStreamReader;
        BufferedReader bufferedReader = null;
        try {
            inputStreamReader = new InputStreamReader(inputStream);
            try {
                BufferedReader bufferedReader2 = new BufferedReader(inputStreamReader);
                while (true) {
                    try {
                        String line = bufferedReader2.readLine();
                        if (line != null) {
                            String strTrim = line.replace(";", "").trim();
                            if (!TextUtils.isEmpty(strTrim)) {
                                sQLiteDatabase.execSQL(strTrim);
                            }
                        } else {
                            IOUtils.closeQuietly(bufferedReader2);
                            IOUtils.closeQuietly(inputStreamReader);
                            return;
                        }
                    } catch (Throwable th) {
                        th = th;
                        bufferedReader = bufferedReader2;
                        IOUtils.closeQuietly(bufferedReader);
                        IOUtils.closeQuietly(inputStreamReader);
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
            inputStreamReader = null;
        }
    }
}
