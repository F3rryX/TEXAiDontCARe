package com.texa.carelib.webservices.internal;

import com.texa.carelib.core.utils.internal.Utils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class HttpHeaderAcceptBuilder {
    private final List<String> mAcceptFragments = new ArrayList();

    public void putFragment(String str) {
        if (this.mAcceptFragments.contains(str)) {
            return;
        }
        this.mAcceptFragments.add(str);
    }

    public String build() {
        if (Utils.isEmpty(this.mAcceptFragments)) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        Iterator<String> it = this.mAcceptFragments.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            sb.append(",");
        }
        return sb.toString().substring(0, r0.length() - 1);
    }
}
