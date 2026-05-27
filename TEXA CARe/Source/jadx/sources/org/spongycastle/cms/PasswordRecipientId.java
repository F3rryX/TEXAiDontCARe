package org.spongycastle.cms;

/* JADX INFO: loaded from: classes2.dex */
public class PasswordRecipientId extends RecipientId {
    public int hashCode() {
        return 3;
    }

    public PasswordRecipientId() {
        super(3);
    }

    public boolean equals(Object obj) {
        return obj instanceof PasswordRecipientId;
    }

    @Override // org.spongycastle.cms.RecipientId, org.spongycastle.util.Selector
    public Object clone() {
        return new PasswordRecipientId();
    }

    @Override // org.spongycastle.util.Selector
    public boolean match(Object obj) {
        return obj instanceof PasswordRecipientInformation;
    }
}
