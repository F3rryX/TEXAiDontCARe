package com.activeandroid.util;

import android.database.Cursor;
import android.os.Build;
import android.text.TextUtils;
import androidx.room.util.TableInfo;
import com.activeandroid.Cache;
import com.activeandroid.Model;
import com.activeandroid.TableInfo;
import com.activeandroid.annotation.Column;
import com.activeandroid.serializer.TypeSerializer;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class SQLiteUtils {
    public static final boolean FOREIGN_KEYS_SUPPORTED;
    private static final HashMap<Class<?>, SQLiteType> TYPE_MAP;
    private static HashMap<String, List<String>> sIndexGroupMap;
    private static HashMap<String, Column.ConflictAction> sOnUniqueConflictsMap;
    private static HashMap<String, List<String>> sUniqueGroupMap;

    public enum SQLiteType {
        INTEGER,
        REAL,
        TEXT,
        BLOB
    }

    static {
        FOREIGN_KEYS_SUPPORTED = Build.VERSION.SDK_INT >= 8;
        TYPE_MAP = new HashMap<Class<?>, SQLiteType>() { // from class: com.activeandroid.util.SQLiteUtils.1
            {
                put(Byte.TYPE, SQLiteType.INTEGER);
                put(Short.TYPE, SQLiteType.INTEGER);
                put(Integer.TYPE, SQLiteType.INTEGER);
                put(Long.TYPE, SQLiteType.INTEGER);
                put(Float.TYPE, SQLiteType.REAL);
                put(Double.TYPE, SQLiteType.REAL);
                put(Boolean.TYPE, SQLiteType.INTEGER);
                put(Character.TYPE, SQLiteType.TEXT);
                put(byte[].class, SQLiteType.BLOB);
                put(Byte.class, SQLiteType.INTEGER);
                put(Short.class, SQLiteType.INTEGER);
                put(Integer.class, SQLiteType.INTEGER);
                put(Long.class, SQLiteType.INTEGER);
                put(Float.class, SQLiteType.REAL);
                put(Double.class, SQLiteType.REAL);
                put(Boolean.class, SQLiteType.INTEGER);
                put(Character.class, SQLiteType.TEXT);
                put(String.class, SQLiteType.TEXT);
                put(Byte[].class, SQLiteType.BLOB);
            }
        };
    }

    public static void execSql(String str) {
        Cache.openDatabase().execSQL(str);
    }

    public static void execSql(String str, Object[] objArr) {
        Cache.openDatabase().execSQL(str, objArr);
    }

    public static <T extends Model> List<T> rawQuery(Class<? extends Model> cls, String str, String[] strArr) {
        Cursor cursorRawQuery = Cache.openDatabase().rawQuery(str, strArr);
        List<T> listProcessCursor = processCursor(cls, cursorRawQuery);
        cursorRawQuery.close();
        return listProcessCursor;
    }

    public static int intQuery(String str, String[] strArr) {
        Cursor cursorRawQuery = Cache.openDatabase().rawQuery(str, strArr);
        int iProcessIntCursor = processIntCursor(cursorRawQuery);
        cursorRawQuery.close();
        return iProcessIntCursor;
    }

    public static <T extends Model> T rawQuerySingle(Class<? extends Model> cls, String str, String[] strArr) {
        List listRawQuery = rawQuery(cls, str, strArr);
        if (listRawQuery.size() > 0) {
            return (T) listRawQuery.get(0);
        }
        return null;
    }

    public static ArrayList<String> createUniqueDefinition(TableInfo tableInfo) {
        ArrayList<String> arrayList = new ArrayList<>();
        sUniqueGroupMap = new HashMap<>();
        sOnUniqueConflictsMap = new HashMap<>();
        Iterator<Field> it = tableInfo.getFields().iterator();
        while (it.hasNext()) {
            createUniqueColumnDefinition(tableInfo, it.next());
        }
        if (sUniqueGroupMap.isEmpty()) {
            return arrayList;
        }
        for (String str : sUniqueGroupMap.keySet()) {
            arrayList.add(String.format("UNIQUE (%s) ON CONFLICT %s", TextUtils.join(", ", sUniqueGroupMap.get(str)), sOnUniqueConflictsMap.get(str).toString()));
        }
        return arrayList;
    }

    public static void createUniqueColumnDefinition(TableInfo tableInfo, Field field) {
        String columnName = tableInfo.getColumnName(field);
        Column column = (Column) field.getAnnotation(Column.class);
        if (field.getName().equals("mId")) {
            return;
        }
        String[] strArrUniqueGroups = column.uniqueGroups();
        Column.ConflictAction[] conflictActionArrOnUniqueConflicts = column.onUniqueConflicts();
        if (strArrUniqueGroups.length != conflictActionArrOnUniqueConflicts.length) {
            return;
        }
        for (int i = 0; i < strArrUniqueGroups.length; i++) {
            String str = strArrUniqueGroups[i];
            Column.ConflictAction conflictAction = conflictActionArrOnUniqueConflicts[i];
            if (!TextUtils.isEmpty(str)) {
                List<String> arrayList = sUniqueGroupMap.get(str);
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                }
                arrayList.add(columnName);
                sUniqueGroupMap.put(str, arrayList);
                sOnUniqueConflictsMap.put(str, conflictAction);
            }
        }
    }

    public static String[] createIndexDefinition(TableInfo tableInfo) {
        ArrayList arrayList = new ArrayList();
        sIndexGroupMap = new HashMap<>();
        Iterator<Field> it = tableInfo.getFields().iterator();
        while (it.hasNext()) {
            createIndexColumnDefinition(tableInfo, it.next());
        }
        if (sIndexGroupMap.isEmpty()) {
            return new String[0];
        }
        for (Map.Entry<String, List<String>> entry : sIndexGroupMap.entrySet()) {
            arrayList.add(String.format("CREATE INDEX IF NOT EXISTS %s on %s(%s);", TableInfo.Index.DEFAULT_PREFIX + tableInfo.getTableName() + "_" + entry.getKey(), tableInfo.getTableName(), TextUtils.join(", ", entry.getValue())));
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static void createIndexColumnDefinition(com.activeandroid.TableInfo tableInfo, Field field) {
        String columnName = tableInfo.getColumnName(field);
        Column column = (Column) field.getAnnotation(Column.class);
        if (field.getName().equals("mId")) {
            return;
        }
        if (column.index()) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(columnName);
            sIndexGroupMap.put(columnName, arrayList);
        }
        for (String str : column.indexGroups()) {
            if (!TextUtils.isEmpty(str)) {
                List<String> arrayList2 = sIndexGroupMap.get(str);
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList<>();
                }
                arrayList2.add(columnName);
                sIndexGroupMap.put(str, arrayList2);
            }
        }
    }

    public static String createTableDefinition(com.activeandroid.TableInfo tableInfo) {
        ArrayList arrayList = new ArrayList();
        Iterator<Field> it = tableInfo.getFields().iterator();
        while (it.hasNext()) {
            String strCreateColumnDefinition = createColumnDefinition(tableInfo, it.next());
            if (!TextUtils.isEmpty(strCreateColumnDefinition)) {
                arrayList.add(strCreateColumnDefinition);
            }
        }
        arrayList.addAll(createUniqueDefinition(tableInfo));
        return String.format("CREATE TABLE IF NOT EXISTS %s (%s);", tableInfo.getTableName(), TextUtils.join(", ", arrayList));
    }

    public static String createColumnDefinition(com.activeandroid.TableInfo tableInfo, Field field) {
        StringBuilder sb = new StringBuilder();
        Class<?> type = field.getType();
        String columnName = tableInfo.getColumnName(field);
        TypeSerializer parserForType = Cache.getParserForType(field.getType());
        Column column = (Column) field.getAnnotation(Column.class);
        if (parserForType != null) {
            type = parserForType.getSerializedType();
        }
        HashMap<Class<?>, SQLiteType> map = TYPE_MAP;
        if (map.containsKey(type)) {
            sb.append(columnName);
            sb.append(" ");
            sb.append(map.get(type).toString());
        } else if (ReflectionUtils.isModel(type)) {
            sb.append(columnName);
            sb.append(" ");
            sb.append(SQLiteType.INTEGER.toString());
        } else if (ReflectionUtils.isSubclassOf(type, Enum.class)) {
            sb.append(columnName);
            sb.append(" ");
            sb.append(SQLiteType.TEXT.toString());
        }
        if (!TextUtils.isEmpty(sb)) {
            if (columnName.equals(tableInfo.getIdName())) {
                sb.append(" PRIMARY KEY AUTOINCREMENT");
            } else if (column != null) {
                if (column.length() > -1) {
                    sb.append("(");
                    sb.append(column.length());
                    sb.append(")");
                }
                if (column.notNull()) {
                    sb.append(" NOT NULL ON CONFLICT ");
                    sb.append(column.onNullConflict().toString());
                }
                if (column.unique()) {
                    sb.append(" UNIQUE ON CONFLICT ");
                    sb.append(column.onUniqueConflict().toString());
                }
            }
            if (FOREIGN_KEYS_SUPPORTED && ReflectionUtils.isModel(type)) {
                sb.append(" REFERENCES ");
                sb.append(Cache.getTableInfo(type).getTableName());
                sb.append("(" + tableInfo.getIdName() + ")");
                sb.append(" ON DELETE ");
                sb.append(column.onDelete().toString().replace("_", " "));
                sb.append(" ON UPDATE ");
                sb.append(column.onUpdate().toString().replace("_", " "));
            }
        } else {
            Log.e("No type mapping for: " + type.toString());
        }
        return sb.toString();
    }

    public static <T extends Model> List<T> processCursor(Class<? extends Model> cls, Cursor cursor) {
        String idName = Cache.getTableInfo(cls).getIdName();
        ArrayList arrayList = new ArrayList();
        try {
            Constructor<? extends Model> constructor = cls.getConstructor(new Class[0]);
            if (cursor.moveToFirst()) {
                ArrayList arrayList2 = new ArrayList(Arrays.asList(cursor.getColumnNames()));
                do {
                    Model entity = Cache.getEntity(cls, cursor.getLong(arrayList2.indexOf(idName)));
                    if (entity == null) {
                        entity = constructor.newInstance(new Object[0]);
                    }
                    entity.loadFromCursor(cursor);
                    arrayList.add(entity);
                } while (cursor.moveToNext());
            }
        } catch (NoSuchMethodException unused) {
            throw new RuntimeException("Your model " + cls.getName() + " does not define a default constructor. The default constructor is required for now in ActiveAndroid models, as the process to populate the ORM model is : 1. instantiate default model 2. populate fields");
        } catch (Exception e) {
            Log.e("Failed to process cursor.", e);
        }
        return arrayList;
    }

    private static int processIntCursor(Cursor cursor) {
        if (cursor.moveToFirst()) {
            return cursor.getInt(0);
        }
        return 0;
    }

    public static List<String> lexSqlScript(String str) {
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder(100);
        boolean z = false;
        boolean z2 = false;
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == ';' && !z && !z2) {
                arrayList.add(sb.toString());
                sb = new StringBuilder(100);
                z = false;
                z2 = false;
            } else {
                if (cCharAt == '\'' && !z2) {
                    z = !z;
                }
                z2 = cCharAt == '\\' && !z2;
                sb.append(cCharAt);
            }
        }
        if (sb.length() > 0) {
            arrayList.add(sb.toString());
        }
        return arrayList;
    }
}
