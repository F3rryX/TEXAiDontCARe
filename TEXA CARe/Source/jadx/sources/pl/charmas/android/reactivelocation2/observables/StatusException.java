package pl.charmas.android.reactivelocation2.observables;

import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: classes3.dex */
public class StatusException extends Throwable {
    private final Status status;

    public StatusException(Status status) {
        super(status.getStatusCode() + ": " + status.getStatusMessage());
        this.status = status;
    }

    public Status getStatus() {
        return this.status;
    }
}
