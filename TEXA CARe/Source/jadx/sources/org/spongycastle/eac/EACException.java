package org.spongycastle.eac;

/* JADX INFO: loaded from: classes3.dex */
public class EACException extends Exception {
    private Throwable cause;

    public EACException(String str, Throwable th) {
        super(str);
        this.cause = th;
    }

    public EACException(String str) {
        super(str);
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }
}
