package com.texa.carelib.core.utils.internal;

import android.os.Bundle;
import com.texa.careapp.utils.DateTypeAdapter;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collection;
import java.util.Comparator;
import java.util.Date;
import java.util.Enumeration;
import java.util.GregorianCalendar;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes2.dex */
public class Utils {
    public static <T> T coalesce(T t, T t2) {
        return t == null ? t2 : t;
    }

    public static <T> T coalesce(T t, T t2, T t3) {
        return t != null ? t : t2 != null ? t2 : t3;
    }

    public static <T> T coalesce(T t, T t2, T t3, T t4) {
        return t != null ? t : t2 != null ? t2 : t3 != null ? t3 : t4;
    }

    public static <T> T coalesce(T t, T t2, T t3, T t4, T t5) {
        return t != null ? t : t2 != null ? t2 : t3 != null ? t3 : t4 != null ? t4 : t5;
    }

    @SafeVarargs
    public static <T> T coalesce(T... tArr) {
        for (T t : tArr) {
            if (t != null) {
                return t;
            }
        }
        return null;
    }

    public static <T> int compare(T t, T t2, Comparator<? super T> comparator) {
        if (t == t2) {
            return 0;
        }
        return comparator.compare(t, t2);
    }

    public static boolean equals(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static boolean equalBundles(Bundle bundle, Bundle bundle2) {
        if (bundle.size() != bundle2.size()) {
            return false;
        }
        HashSet<String> hashSet = new HashSet(bundle.keySet());
        hashSet.addAll(bundle2.keySet());
        for (String str : hashSet) {
            if (!bundle2.containsKey(str)) {
                return false;
            }
            Object obj = bundle.get(str);
            Object obj2 = bundle2.get(str);
            if ((obj instanceof Bundle) && (obj2 instanceof Bundle) && !equalBundles((Bundle) obj, (Bundle) obj2)) {
                return false;
            }
            if (obj == null) {
                if (obj2 != null) {
                    return false;
                }
            } else if (!obj.equals(obj2)) {
                return false;
            }
        }
        return true;
    }

    public static int hashCode(Object... objArr) {
        if (objArr == null) {
            return 0;
        }
        return Arrays.hashCode(objArr);
    }

    public static String toString(Object obj) {
        return toString(obj, "null");
    }

    public static String toString(Object obj, String str) {
        return obj == null ? str : obj.toString();
    }

    public static void reverse(byte[] bArr) {
        int length = bArr.length - 1;
        for (int i = 0; length > i; i++) {
            byte b = bArr[length];
            bArr[length] = bArr[i];
            bArr[i] = b;
            length--;
        }
    }

    public static <T> T getValueOrDefault(T t, T t2) {
        return (T) coalesce(t, t2);
    }

    public static <T> boolean equalsArrayList(List<T> list, List<T> list2) {
        ArrayList arrayList = new ArrayList(list);
        ArrayList arrayList2 = new ArrayList(list2);
        arrayList.removeAll(list2);
        arrayList2.removeAll(list);
        return arrayList.isEmpty() && arrayList2.isEmpty();
    }

    public static Date getUTCNow() {
        return GregorianCalendar.getInstance(TimeZone.getTimeZone("UTC")).getTime();
    }

    public static Date today() {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeZone(TimeZone.getTimeZone("UTC"));
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        return calendar.getTime();
    }

    public static Date addDays(Date date, int i) {
        return new Date(date.getTime() + ((long) (i * 24 * 60 * 60 * 1000)));
    }

    public static String getISO8601Date(Date date) {
        if (date == null) {
            return "";
        }
        TimeZone timeZone = TimeZone.getTimeZone("UTC");
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(DateTypeAdapter.TIMESTAMP_PATTERN, Locale.US);
        simpleDateFormat.setTimeZone(timeZone);
        return simpleDateFormat.format(date);
    }

    public static boolean isEmpty(Object obj) {
        if (obj == null) {
            return true;
        }
        if (obj instanceof Collection) {
            return ((Collection) obj).isEmpty();
        }
        if (obj instanceof Map) {
            return ((Map) obj).isEmpty();
        }
        if (obj instanceof Object[]) {
            return ((Object[]) obj).length == 0;
        }
        if (obj instanceof Iterator) {
            return !((Iterator) obj).hasNext();
        }
        if (obj instanceof Enumeration) {
            return !((Enumeration) obj).hasMoreElements();
        }
        if (obj instanceof String) {
            throw new IllegalArgumentException("Unsupported object type: " + obj.getClass().getName() + ". Use StringUtils.isEmpty() instead.");
        }
        try {
            return Array.getLength(obj) == 0;
        } catch (IllegalArgumentException unused) {
            throw new IllegalArgumentException("Unsupported object type: " + obj.getClass().getName());
        }
    }

    public static boolean isNotEmpty(Object obj) {
        return !isEmpty(obj);
    }

    public static boolean exists(File file) {
        return file != null && file.exists();
    }

    public static <T extends Serializable> T deepClone(T t) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            new ObjectOutputStream(byteArrayOutputStream).writeObject(t);
            return (T) new ObjectInputStream(new ByteArrayInputStream(byteArrayOutputStream.toByteArray())).readObject();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
