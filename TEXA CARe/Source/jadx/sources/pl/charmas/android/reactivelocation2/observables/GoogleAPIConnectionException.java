package pl.charmas.android.reactivelocation2.observables;

import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: loaded from: classes3.dex */
public class GoogleAPIConnectionException extends RuntimeException {
    private final ConnectionResult connectionResult;

    GoogleAPIConnectionException(String str, ConnectionResult connectionResult) {
        super(str);
        this.connectionResult = connectionResult;
    }

    public ConnectionResult getConnectionResult() {
        return this.connectionResult;
    }
}
