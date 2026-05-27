package com.texa.carelib.care.vehicletroubles;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Base64;
import com.texa.carelib.care.vehicletroubles.DTC;
import com.texa.carelib.care.vehicletroubles.internal.PCodeConverterEOBD;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.LocaleHelper;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.core.utils.DTCCache;
import com.texa.carelib.core.utils.GenericAdapter;
import com.texa.carelib.core.utils.internal.ByteBufferUtils;
import com.texa.carelib.core.utils.internal.Utils;
import java.io.File;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class LocalDTCResolutionProcedure implements DTCTranslator {
    private static final String ECU_OBD = "_OBD";
    private static final String TAG = "LocalDTCResolutionProcedure";
    private final Context mContext;
    private final File mExtDTCFile;
    private final DTCCache mDTCCache = new DTCCache();
    private final List<Locale> mLocales = new ArrayList();

    public LocalDTCResolutionProcedure(Context context, File file) {
        this.mContext = context.getApplicationContext();
        this.mExtDTCFile = file;
        setLanguages(Locale.getDefault());
    }

    public void setLanguages(Locale locale) {
        setLanguages(locale, Locale.UK);
    }

    public void setLanguages(Locale locale, Locale locale2) {
        this.mLocales.clear();
        this.mLocales.add(0, locale);
        this.mLocales.add(1, locale2);
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01fa  */
    @Override // com.texa.carelib.care.vehicletroubles.DTCTranslator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void translateDTCsForECU(VehicleTroubles vehicleTroubles, long j, Map<String, DTCDetail> map) throws CareLibException {
        Iterator<Map.Entry<String, DTCDetail>> it;
        Locale[] localeArr;
        ArrayList arrayList;
        DTC.Builder builder;
        long j2;
        boolean z;
        LocalDTCResolutionProcedure localDTCResolutionProcedure;
        ArrayList arrayList2;
        LocalDTCResolutionProcedure localDTCResolutionProcedure2 = this;
        Locale[] localeArr2 = new Locale[localDTCResolutionProcedure2.mLocales.size()];
        localDTCResolutionProcedure2.mLocales.toArray(localeArr2);
        List<DTC> cachedDTCs = localDTCResolutionProcedure2.mDTCCache.getCachedDTCs(map, localeArr2, Utils.getUTCNow());
        Map<String, DTCDetail> notCachedDTC = localDTCResolutionProcedure2.mDTCCache.getNotCachedDTC(map);
        int i = 0;
        if (Utils.isEmpty(notCachedDTC)) {
            CareLog.d(TAG, "Nothing to do. All DTCs are available from the cache.", new Object[0]);
            vehicleTroubles.updateDTC(cachedDTCs, j, null);
            return;
        }
        PCodeConverterEOBD pCodeConverterEOBD = new PCodeConverterEOBD();
        ArrayList arrayList3 = new ArrayList(notCachedDTC.size());
        Iterator<Map.Entry<String, DTCDetail>> it2 = notCachedDTC.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry<String, DTCDetail> next = it2.next();
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(Base64.decode(next.getKey(), i));
            byteBufferWrap.order(ByteOrder.LITTLE_ENDIAN);
            byteBufferWrap.position(i);
            ByteBufferUtils.getUnsignedInt(byteBufferWrap);
            long unsignedInt = ByteBufferUtils.getUnsignedInt(byteBufferWrap);
            long unsignedInt2 = ByteBufferUtils.getUnsignedInt(byteBufferWrap);
            long unsignedInt3 = ByteBufferUtils.getUnsignedInt(byteBufferWrap);
            DTC.Builder builder2 = new DTC.Builder();
            builder2.setAcquisitionDate(Utils.getUTCNow());
            builder2.setStatus(next.getValue().getStatus());
            File file = localDTCResolutionProcedure2.mExtDTCFile;
            if (file == null || !file.exists()) {
                it = it2;
                localeArr = localeArr2;
                arrayList = arrayList3;
                builder = builder2;
                j2 = unsignedInt;
            } else {
                DTCDBAdapter dTCDBAdapter = localDTCResolutionProcedure2.new DTCDBAdapter(localDTCResolutionProcedure2.mExtDTCFile);
                builder = builder2;
                Cursor dTCInfo = dTCDBAdapter.getDTCInfo(unsignedInt2, unsignedInt3, unsignedInt);
                if (dTCInfo.moveToNext()) {
                    String string = dTCInfo.getString(0);
                    j2 = unsignedInt;
                    builder.setID(localDTCResolutionProcedure2.getFullURN(string, j2));
                    builder.setECU(dTCInfo.getString(1));
                    builder.setCode(dTCInfo.getString(2));
                    dTCInfo.close();
                    if (dTCDBAdapter.supportsTranslations()) {
                        Cursor dTCTranslations = dTCDBAdapter.getDTCTranslations(string, j2, localDTCResolutionProcedure2.mLocales);
                        int size = localDTCResolutionProcedure2.mLocales.size();
                        Locale[] localeArr3 = new Locale[size];
                        int size2 = localDTCResolutionProcedure2.mLocales.size();
                        String[] strArr = new String[size2];
                        if (dTCTranslations.getCount() > 0) {
                            while (dTCTranslations.moveToNext()) {
                                Iterator<Map.Entry<String, DTCDetail>> it3 = it2;
                                Locale localeFromRFC3066 = LocaleHelper.fromRFC3066(dTCTranslations.getString(0));
                                Locale[] localeArr4 = localeArr2;
                                int iIndexOf = localDTCResolutionProcedure2.mLocales.indexOf(localeFromRFC3066);
                                if (iIndexOf < 0) {
                                    int i2 = iIndexOf;
                                    arrayList2 = arrayList3;
                                    int i3 = 0;
                                    while (i3 < localDTCResolutionProcedure2.mLocales.size()) {
                                        if (localDTCResolutionProcedure2.mLocales.get(i3).getLanguage().equals(localeFromRFC3066.getLanguage())) {
                                            i2 = i3;
                                        }
                                        i3++;
                                        localDTCResolutionProcedure2 = this;
                                    }
                                    iIndexOf = i2;
                                } else {
                                    arrayList2 = arrayList3;
                                }
                                if (iIndexOf >= 0) {
                                    localeArr3[iIndexOf] = localeFromRFC3066;
                                    strArr[iIndexOf] = dTCTranslations.getString(1);
                                }
                                localDTCResolutionProcedure2 = this;
                                it2 = it3;
                                localeArr2 = localeArr4;
                                arrayList3 = arrayList2;
                            }
                        }
                        it = it2;
                        localeArr = localeArr2;
                        arrayList = arrayList3;
                        dTCTranslations.close();
                        for (int i4 = 0; i4 < size && i4 < size2; i4++) {
                            if (localeArr3[i4] != null && strArr[i4] != null) {
                                builder.addDetail(localeArr3[i4], strArr[i4]);
                            }
                        }
                    } else {
                        it = it2;
                        localeArr = localeArr2;
                        arrayList = arrayList3;
                    }
                    z = true;
                    if (!z) {
                        localDTCResolutionProcedure = this;
                    } else if (next.getValue().isOBD()) {
                        builder.setCode(pCodeConverterEOBD.convert(j2));
                        localDTCResolutionProcedure = this;
                        builder.setID(localDTCResolutionProcedure.getFullURN(String.format(Locale.US, "OBD:%1$d/Variant%2$d", Long.valueOf(unsignedInt2), Long.valueOf(unsignedInt3)), j2));
                        builder.setECU(ECU_OBD);
                    } else {
                        localDTCResolutionProcedure = this;
                        builder.setID(localDTCResolutionProcedure.getFullURN(String.format(Locale.US, "OEM:%1$d/Variant%2$d", Long.valueOf(unsignedInt2), Long.valueOf(unsignedInt3)), j2));
                    }
                    builder.setOccurrences(next.getValue().getOccurrences());
                    builder.setSourceNode(next.getValue().getSourceNode());
                    builder.setToken(next.getKey());
                    CareLog.d(TAG, "%s", builder);
                    ArrayList arrayList4 = arrayList;
                    arrayList4.add(builder.build());
                    arrayList3 = arrayList4;
                    localDTCResolutionProcedure2 = localDTCResolutionProcedure;
                    it2 = it;
                    localeArr2 = localeArr;
                    i = 0;
                } else {
                    it = it2;
                    localeArr = localeArr2;
                    arrayList = arrayList3;
                    j2 = unsignedInt;
                }
            }
            z = false;
            if (!z) {
            }
            builder.setOccurrences(next.getValue().getOccurrences());
            builder.setSourceNode(next.getValue().getSourceNode());
            builder.setToken(next.getKey());
            CareLog.d(TAG, "%s", builder);
            ArrayList arrayList42 = arrayList;
            arrayList42.add(builder.build());
            arrayList3 = arrayList42;
            localDTCResolutionProcedure2 = localDTCResolutionProcedure;
            it2 = it;
            localeArr2 = localeArr;
            i = 0;
        }
        ArrayList arrayList5 = arrayList3;
        localDTCResolutionProcedure2.mDTCCache.update(arrayList5, localeArr2, new GenericAdapter() { // from class: com.texa.carelib.care.vehicletroubles.LocalDTCResolutionProcedure$$ExternalSyntheticLambda0
            @Override // com.texa.carelib.core.utils.GenericAdapter
            public final Object adaptee(Object obj) {
                return ((DTC) obj).getID();
            }
        });
        vehicleTroubles.updateDTC(arrayList5, j, null);
    }

    private String getFullURN(String str, long j) {
        StringBuilder sb = new StringBuilder();
        if (!str.startsWith("urn:")) {
            sb.append("urn:");
        }
        sb.append(str);
        sb.append("/");
        sb.append(String.format("%08X", Long.valueOf(j)));
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Context getApplicationContext() {
        return this.mContext;
    }

    private class DTCDBAdapter {
        private File mExtDTCFile;

        DTCDBAdapter(File file) {
            this.mExtDTCFile = file;
        }

        Cursor getDTCInfo(long j, long j2, long j3) {
            LocalDTCResolutionProcedure localDTCResolutionProcedure = LocalDTCResolutionProcedure.this;
            return localDTCResolutionProcedure.new DTCDBHelper(localDTCResolutionProcedure.getApplicationContext(), this.mExtDTCFile).getReadableDatabase().rawQuery("SELECT E.ECU_URN, E.ECUType, D.DTC_PCODE FROM TblECU E INNER JOIN TblDTC D ON E.ECU_URN=D.ECU_URN AND E.SysID = ? AND E.TblID = ? AND DTC_RCODE = ?", new String[]{"" + j, "" + j2, "" + j3});
        }

        Cursor getDTCTranslations(String str, long j, List<Locale> list) {
            LocalDTCResolutionProcedure localDTCResolutionProcedure = LocalDTCResolutionProcedure.this;
            SQLiteDatabase readableDatabase = localDTCResolutionProcedure.new DTCDBHelper(localDTCResolutionProcedure.getApplicationContext(), this.mExtDTCFile).getReadableDatabase();
            StringBuilder sb = new StringBuilder();
            sb.append("SELECT Lang, Description from TblDTCTranslations WHERE ECU_URN=? AND DTC_RCODE=?");
            ArrayList arrayList = new ArrayList();
            arrayList.add(str);
            arrayList.add("" + j);
            if (!list.isEmpty()) {
                sb.append(" AND Lang IN(");
                int i = 0;
                while (i < list.size()) {
                    Locale locale = list.get(i);
                    sb.append(i == 0 ? "?" : ",?");
                    arrayList.add(locale.getLanguage());
                    if (!locale.getCountry().isEmpty()) {
                        sb.append(",?");
                        arrayList.add(LocaleHelper.toRFC3066(locale));
                    }
                    i++;
                }
                sb.append(")");
            }
            String[] strArr = new String[arrayList.size()];
            arrayList.toArray(strArr);
            return readableDatabase.rawQuery(sb.toString(), strArr);
        }

        boolean supportsTranslations() {
            return hasTable("TblDTCTranslations");
        }

        private boolean hasTable(String str) {
            LocalDTCResolutionProcedure localDTCResolutionProcedure = LocalDTCResolutionProcedure.this;
            SQLiteDatabase readableDatabase = localDTCResolutionProcedure.new DTCDBHelper(localDTCResolutionProcedure.getApplicationContext(), this.mExtDTCFile).getReadableDatabase();
            if (readableDatabase == null || !readableDatabase.isOpen()) {
                return false;
            }
            Cursor cursorRawQuery = readableDatabase.rawQuery("SELECT COUNT(*) FROM sqlite_master WHERE type = ? AND name = ?", new String[]{"table", str});
            if (!cursorRawQuery.moveToFirst()) {
                return false;
            }
            int i = cursorRawQuery.getInt(0);
            cursorRawQuery.close();
            return i > 0;
        }
    }

    private class DTCDBHelper extends SQLiteOpenHelper {
        private final File mDatabaseFile;

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        }

        DTCDBHelper(Context context, File file) {
            super(context, "", (SQLiteDatabase.CursorFactory) null, 1);
            this.mDatabaseFile = file;
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public SQLiteDatabase getReadableDatabase() {
            return SQLiteDatabase.openDatabase(this.mDatabaseFile.getAbsolutePath(), null, 1);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public SQLiteDatabase getWritableDatabase() {
            return SQLiteDatabase.openDatabase(this.mDatabaseFile.getAbsolutePath(), null, 0);
        }
    }
}
