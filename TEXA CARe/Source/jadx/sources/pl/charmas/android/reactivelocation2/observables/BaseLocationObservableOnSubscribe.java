package pl.charmas.android.reactivelocation2.observables;

import com.google.android.gms.location.LocationServices;

/* JADX INFO: loaded from: classes3.dex */
public abstract class BaseLocationObservableOnSubscribe<T> extends BaseObservableOnSubscribe<T> {
    protected BaseLocationObservableOnSubscribe(ObservableContext observableContext) {
        super(observableContext, LocationServices.API);
    }
}
