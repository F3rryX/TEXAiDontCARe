package pl.charmas.android.reactivelocation2.observables.geocode;

import android.location.Address;
import android.text.TextUtils;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
class FallbackReverseGeocodeObservable implements ObservableOnSubscribe<List<Address>> {
    private final double latitude;
    private final Locale locale;
    private final double longitude;
    private final int maxResults;

    FallbackReverseGeocodeObservable(Locale locale, double d, double d2, int i) {
        this.locale = locale;
        this.latitude = d;
        this.longitude = d2;
        this.maxResults = i;
    }

    @Override // io.reactivex.ObservableOnSubscribe
    public void subscribe(ObservableEmitter<List<Address>> observableEmitter) throws Exception {
        try {
            List<Address> listAlternativeReverseGeocodeQuery = alternativeReverseGeocodeQuery();
            if (observableEmitter.isDisposed()) {
                return;
            }
            observableEmitter.onNext(listAlternativeReverseGeocodeQuery);
            observableEmitter.onComplete();
        } catch (Exception e) {
            if (observableEmitter.isDisposed()) {
                return;
            }
            observableEmitter.onError(e);
        }
    }

    private List<Address> alternativeReverseGeocodeQuery() throws JSONException, IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(String.format(Locale.ENGLISH, "http://maps.googleapis.com/maps/api/geocode/json?latlng=%1$f,%2$f&sensor=true&language=%3$s", Double.valueOf(this.latitude), Double.valueOf(this.longitude), this.locale.getLanguage())).openConnection();
        StringBuilder sb = new StringBuilder();
        ArrayList arrayList = new ArrayList();
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream(), "UTF-8"));
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                sb.append(line);
            }
            JSONObject jSONObject = new JSONObject(sb.toString());
            if ("ZERO_RESULTS".equalsIgnoreCase(jSONObject.getString("status"))) {
                return Collections.emptyList();
            }
            if (!"OK".equalsIgnoreCase(jSONObject.getString("status"))) {
                throw new RuntimeException("Wrong API response");
            }
            JSONArray jSONArray = jSONObject.getJSONArray("results");
            for (int i = 0; i < jSONArray.length() && i < this.maxResults; i++) {
                Address address = new Address(Locale.getDefault());
                String str = "";
                JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                JSONArray jSONArray2 = jSONObject2.getJSONArray("address_components");
                for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                    String string = jSONArray2.getJSONObject(i2).getString("long_name");
                    String string2 = jSONArray2.getJSONObject(i2).getString("short_name");
                    String string3 = jSONArray2.getJSONObject(i2).getJSONArray("types").getString(0);
                    if (!TextUtils.isEmpty(string)) {
                        if (string3.equalsIgnoreCase("street_number")) {
                            str = TextUtils.isEmpty(str) ? string : str + " " + string;
                        } else if (string3.equalsIgnoreCase("route")) {
                            if (!TextUtils.isEmpty(str)) {
                                str = string + " " + str;
                            }
                        } else if (string3.equalsIgnoreCase("sublocality")) {
                            address.setSubLocality(string);
                        } else if (string3.equalsIgnoreCase("locality")) {
                            address.setLocality(string);
                        } else if (string3.equalsIgnoreCase("administrative_area_level_2")) {
                            address.setSubAdminArea(string);
                        } else if (string3.equalsIgnoreCase("administrative_area_level_1")) {
                            address.setAdminArea(string);
                        } else if (string3.equalsIgnoreCase("country")) {
                            address.setCountryName(string);
                            address.setCountryCode(string2);
                        } else if (string3.equalsIgnoreCase("postal_code")) {
                            address.setPostalCode(string);
                        }
                    }
                }
                String string4 = jSONObject2.getString("formatted_address");
                if (!TextUtils.isEmpty(string4)) {
                    String[] strArrSplit = string4.split(",");
                    for (int i3 = 0; i3 < strArrSplit.length; i3++) {
                        address.setAddressLine(i3, strArrSplit[i3].trim());
                    }
                } else if (!TextUtils.isEmpty(str)) {
                    address.setAddressLine(0, str);
                }
                arrayList.add(address);
            }
            httpURLConnection.disconnect();
            return Collections.unmodifiableList(arrayList);
        } finally {
            httpURLConnection.disconnect();
        }
    }
}
