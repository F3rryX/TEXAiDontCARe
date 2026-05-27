package pl.charmas.android.reactivelocation2.observables.geocode;

import android.content.Context;
import android.location.Address;
import android.location.Geocoder;
import com.google.android.gms.maps.model.LatLngBounds;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import java.io.IOException;
import java.util.List;
import java.util.Locale;
import pl.charmas.android.reactivelocation2.observables.ObservableFactory;

/* JADX INFO: loaded from: classes3.dex */
public class GeocodeObservable implements ObservableOnSubscribe<List<Address>> {
    private final LatLngBounds bounds;
    private final Context ctx;
    private final Locale locale;
    private final String locationName;
    private final int maxResults;

    public static Observable<List<Address>> createObservable(Context context, ObservableFactory observableFactory, String str, int i, LatLngBounds latLngBounds, Locale locale) {
        return observableFactory.createObservable(new GeocodeObservable(context, str, i, latLngBounds, locale));
    }

    private GeocodeObservable(Context context, String str, int i, LatLngBounds latLngBounds, Locale locale) {
        this.ctx = context;
        this.locationName = str;
        this.maxResults = i;
        this.bounds = latLngBounds;
        this.locale = locale;
    }

    @Override // io.reactivex.ObservableOnSubscribe
    public void subscribe(ObservableEmitter<List<Address>> observableEmitter) throws Exception {
        try {
            List<Address> addresses = getAddresses(createGeocoder());
            if (observableEmitter.isDisposed()) {
                return;
            }
            observableEmitter.onNext(addresses);
            observableEmitter.onComplete();
        } catch (IOException e) {
            if (observableEmitter.isDisposed()) {
                return;
            }
            observableEmitter.onError(e);
        }
    }

    private List<Address> getAddresses(Geocoder geocoder) throws IOException {
        LatLngBounds latLngBounds = this.bounds;
        if (latLngBounds != null) {
            return geocoder.getFromLocationName(this.locationName, this.maxResults, latLngBounds.southwest.latitude, this.bounds.southwest.longitude, this.bounds.northeast.latitude, this.bounds.northeast.longitude);
        }
        return geocoder.getFromLocationName(this.locationName, this.maxResults);
    }

    private Geocoder createGeocoder() {
        return this.locale != null ? new Geocoder(this.ctx, this.locale) : new Geocoder(this.ctx);
    }
}
