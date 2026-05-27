package pl.charmas.android.reactivelocation2.observables.geocode;

import android.content.Context;
import android.location.Address;
import android.location.Geocoder;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.schedulers.Schedulers;
import java.io.IOException;
import java.util.List;
import java.util.Locale;
import pl.charmas.android.reactivelocation2.observables.ObservableEmitterWrapper;
import pl.charmas.android.reactivelocation2.observables.ObservableFactory;

/* JADX INFO: loaded from: classes3.dex */
public class ReverseGeocodeObservable implements ObservableOnSubscribe<List<Address>> {
    private final Context ctx;
    private final double latitude;
    private final Locale locale;
    private final double longitude;
    private final int maxResults;

    public static Observable<List<Address>> createObservable(Context context, ObservableFactory observableFactory, Locale locale, double d, double d2, int i) {
        return observableFactory.createObservable(new ReverseGeocodeObservable(context, locale, d, d2, i));
    }

    private ReverseGeocodeObservable(Context context, Locale locale, double d, double d2, int i) {
        this.ctx = context;
        this.latitude = d;
        this.longitude = d2;
        this.maxResults = i;
        this.locale = locale;
    }

    @Override // io.reactivex.ObservableOnSubscribe
    public void subscribe(ObservableEmitter<List<Address>> observableEmitter) throws Exception {
        try {
            List<Address> fromLocation = new Geocoder(this.ctx, this.locale).getFromLocation(this.latitude, this.longitude, this.maxResults);
            if (observableEmitter.isDisposed()) {
                return;
            }
            observableEmitter.onNext(fromLocation);
            observableEmitter.onComplete();
        } catch (IOException unused) {
            if (observableEmitter.isDisposed()) {
                return;
            }
            Observable.create(new FallbackReverseGeocodeObservable(this.locale, this.latitude, this.longitude, this.maxResults)).subscribeOn(Schedulers.io()).subscribe(new ObservableEmitterWrapper(observableEmitter));
        }
    }
}
