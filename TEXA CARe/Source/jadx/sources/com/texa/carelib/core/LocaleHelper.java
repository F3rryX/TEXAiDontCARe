package com.texa.carelib.core;

import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class LocaleHelper {
    public static Locale fromRFC3066(String str) {
        if (str.isEmpty()) {
            throw new IllegalArgumentException("rfc3066 parameter cannot be empty.");
        }
        String[] strArrSplit = str.split("-");
        if (strArrSplit.length > 1) {
            return new Locale(strArrSplit[0], strArrSplit[1]);
        }
        return new Locale(strArrSplit[0]);
    }

    public static String toRFC3066(Locale locale) {
        String country = locale.getCountry();
        String language = locale.getLanguage();
        String variant = locale.getVariant();
        if ("iw".equals(language)) {
            language = "he";
        }
        StringBuilder sb = new StringBuilder();
        if (language.isEmpty()) {
            throw new IllegalStateException("Language part cannot be empty.");
        }
        sb.append(language);
        if (!country.isEmpty()) {
            sb.append("-");
            sb.append(country);
        }
        if (!variant.isEmpty()) {
            sb.append("-");
            sb.append(variant);
        }
        return sb.toString();
    }
}
