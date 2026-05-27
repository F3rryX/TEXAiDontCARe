package com.texa.carelib.core.utils.internal;

/* JADX INFO: loaded from: classes2.dex */
public class StringUtils {
    public static boolean equals(String str, String str2) {
        return str == str2 || !(str == null || str2 == null || !str.equals(str2));
    }

    public static boolean isNullOrEmpty(String str) {
        return str == null || str.trim().isEmpty();
    }

    public static String join(Object[] objArr, String str) {
        return join(objArr, str, 0, objArr.length);
    }

    public static String join(Object[] objArr, String str, int i, int i2) {
        if (objArr.length == 0) {
            return "";
        }
        if (i > i2) {
            throw new IllegalArgumentException("startIndex greater than endIndex");
        }
        StringBuilder sb = new StringBuilder((i2 - i) * 16);
        for (int i3 = i; i3 < Math.min(i2, objArr.length); i3++) {
            if (i3 > i) {
                sb.append(str);
            }
            if (objArr[i3] != null) {
                sb.append(objArr[i3]);
            }
        }
        return sb.toString();
    }

    public static String join(int[] iArr, String str) {
        return join(iArr, str, 0, iArr.length);
    }

    public static String join(int[] iArr, String str, int i, int i2) {
        if (iArr.length == 0) {
            return "";
        }
        if (i >= i2) {
            throw new IllegalArgumentException("startIndex greater than endIndex");
        }
        StringBuilder sb = new StringBuilder();
        while (i < i2) {
            if (sb.length() > 0) {
                sb.append(str);
            }
            sb.append(iArr[i]);
            i++;
        }
        return sb.toString();
    }

    public static <T> String join(Iterable<T> iterable, String str) {
        StringBuilder sb = new StringBuilder();
        for (T t : iterable) {
            if (sb.length() > 0) {
                sb.append(str);
            }
            sb.append(t.toString());
        }
        return sb.toString();
    }

    public static boolean startsWith(String str, String str2) {
        return startsWith(str, str2, 0);
    }

    public static boolean startsWith(String str, String str2, int i) {
        return !isNullOrEmpty(str) && i >= 0 && i < str.length() && str.startsWith(str2, i);
    }

    public static boolean isEmpty(CharSequence charSequence) {
        return charSequence == null || charSequence.toString().trim().isEmpty();
    }

    public static boolean isAlphanumeric(String str) {
        if (isNullOrEmpty(str)) {
            return false;
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isLetterOrDigit(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static boolean isNotEmpty(String str) {
        return !isNullOrEmpty(str);
    }
}
