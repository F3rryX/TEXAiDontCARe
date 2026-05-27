package com.texa.carelib.care.vehicle.internal;

import com.texa.carelib.core.utils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class DataIDFormatter {
    public static String toString(Long l) {
        return String.format("0x%8s", Long.toHexString(l.longValue())).replace(" ", "0");
    }

    public static String toString(Long... lArr) {
        return toString(Arrays.asList(lArr));
    }

    public static String toString(Collection<Long> collection) {
        ArrayList arrayList = new ArrayList();
        Iterator<Long> it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add(toString(it.next()));
        }
        return StringUtils.join(arrayList, ",");
    }
}
