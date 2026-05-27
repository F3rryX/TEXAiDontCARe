package org.spongycastle.cert.cmp;

/* JADX INFO: loaded from: classes2.dex */
public class CMPException extends Exception {
    private Throwable cause;

    public CMPException(String str, Throwable th) {
        super(str);
        this.cause = th;
    }

    public CMPException(String str) {
        super(str);
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }
}
