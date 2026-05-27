package org.spongycastle.cert.dane;

import org.spongycastle.util.Selector;

/* JADX INFO: loaded from: classes2.dex */
public class DANEEntrySelector implements Selector {
    private final String domainName;

    @Override // org.spongycastle.util.Selector
    public Object clone() {
        return this;
    }

    DANEEntrySelector(String str) {
        this.domainName = str;
    }

    @Override // org.spongycastle.util.Selector
    public boolean match(Object obj) {
        return ((DANEEntry) obj).getDomainName().equals(this.domainName);
    }

    public String getDomainName() {
        return this.domainName;
    }
}
