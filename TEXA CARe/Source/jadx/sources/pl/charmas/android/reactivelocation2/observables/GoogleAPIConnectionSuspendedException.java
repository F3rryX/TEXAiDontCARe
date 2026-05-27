package pl.charmas.android.reactivelocation2.observables;

/* JADX INFO: loaded from: classes3.dex */
public class GoogleAPIConnectionSuspendedException extends RuntimeException {
    private final int cause;

    GoogleAPIConnectionSuspendedException(int i) {
        this.cause = i;
    }

    public int getErrorCause() {
        return this.cause;
    }
}
