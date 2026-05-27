package pl.charmas.android.reactivelocation2.observables.activity;

import com.google.android.gms.location.ActivityRecognition;
import pl.charmas.android.reactivelocation2.observables.BaseObservableOnSubscribe;
import pl.charmas.android.reactivelocation2.observables.ObservableContext;

/* JADX INFO: loaded from: classes3.dex */
abstract class BaseActivityObservableOnSubscribe<T> extends BaseObservableOnSubscribe<T> {
    BaseActivityObservableOnSubscribe(ObservableContext observableContext) {
        super(observableContext, ActivityRecognition.API);
    }
}
