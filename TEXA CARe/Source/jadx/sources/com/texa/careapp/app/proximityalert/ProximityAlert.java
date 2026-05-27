package com.texa.careapp.app.proximityalert;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.location.LocationManager;
import android.os.Build;
import androidx.core.app.ActivityCompat;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.gson.Gson;
import com.texa.careapp.Constants;
import com.texa.careapp.utils.broadcastreceiver.ProximityIntentReceiver;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class ProximityAlert {
    private static final String TAG = "ProximityAlert";
    private Context context;
    private SharedPreferences.Editor editor;
    private String intentFilterKey;
    public LocationManager locationManager;
    private SharedPreferences mSharedPreferences;
    private ProximityIntentReceiver proximityIntentReceiver;
    private final int HISTORY_MAX_SIZE = 20;
    private PendingIntent proximityIntent = null;
    private List<PendingIntent> pendingIntentList = new ArrayList();
    private List<String> latitudes = new ArrayList();
    private List<String> longitudes = new ArrayList();
    private Intent intent = null;
    private List<ProximityIntentReceiver> proximityIntentReceiverList = new ArrayList();
    private Gson gson = new Gson();

    public LocationManager getLocationManager() {
        return this.locationManager;
    }

    public ProximityAlert(Context context) {
        this.context = context;
        this.mSharedPreferences = context.getSharedPreferences(Constants.PREFS_KEY_PROXIMITY_POSITION_REGISTER, 0);
        this.locationManager = (LocationManager) this.context.getSystemService(FirebaseAnalytics.Param.LOCATION);
        if (this.mSharedPreferences != null) {
            shouldRestoreProximity();
        }
    }

    public void addProximityAlert(double d, double d2) {
        if (ActivityCompat.checkSelfPermission(this.context, "android.permission.ACCESS_FINE_LOCATION") != 0 && ActivityCompat.checkSelfPermission(this.context, "android.permission.ACCESS_COARSE_LOCATION") != 0) {
            Timber.e(TAG, "permissions not granted adding POI");
            return;
        }
        this.intentFilterKey = Constants.PROX_ALERT_INTENT + String.valueOf(System.currentTimeMillis());
        this.intent = new Intent(this.intentFilterKey);
        this.proximityIntent = PendingIntent.getBroadcast(this.context, 0, this.intent, Build.VERSION.SDK_INT >= 31 ? 301989888 : 268435456);
        if (this.pendingIntentList.size() < 20) {
            this.pendingIntentList.add(this.proximityIntent);
        } else {
            removePOI(this.pendingIntentList.get(0));
            this.pendingIntentList.remove(0);
            this.pendingIntentList.add(this.proximityIntent);
            updateKnownPosition();
        }
        if (this.mSharedPreferences != null) {
            addKnownPointOfInterest(d, d2);
        }
        this.locationManager.addProximityAlert(d, d2, 100.0f, -1L, this.proximityIntent);
        IntentFilter intentFilter = new IntentFilter(this.intentFilterKey);
        ProximityIntentReceiver proximityIntentReceiver = new ProximityIntentReceiver();
        this.proximityIntentReceiver = proximityIntentReceiver;
        this.proximityIntentReceiverList.add(proximityIntentReceiver);
        this.context.registerReceiver(this.proximityIntentReceiver, intentFilter);
    }

    public void removePOI(PendingIntent pendingIntent) {
        if (ActivityCompat.checkSelfPermission(this.context, "android.permission.ACCESS_FINE_LOCATION") != 0 && ActivityCompat.checkSelfPermission(this.context, "android.permission.ACCESS_COARSE_LOCATION") != 0) {
            Timber.e(TAG, "permissions not granted removing POI");
        } else {
            this.locationManager.removeProximityAlert(pendingIntent);
        }
    }

    public void removeLastPOI() {
        if (ActivityCompat.checkSelfPermission(this.context, "android.permission.ACCESS_FINE_LOCATION") != 0 && ActivityCompat.checkSelfPermission(this.context, "android.permission.ACCESS_COARSE_LOCATION") != 0) {
            Timber.e(TAG, "permissions not granted removing POI");
            return;
        }
        if (this.pendingIntentList.size() > 0) {
            LocationManager locationManager = this.locationManager;
            List<PendingIntent> list = this.pendingIntentList;
            locationManager.removeProximityAlert(list.get(list.size() - 1));
            List<PendingIntent> list2 = this.pendingIntentList;
            list2.remove(list2.size() - 1);
        }
    }

    private void addKnownPointOfInterest(double d, double d2) {
        this.editor = this.mSharedPreferences.edit();
        if (d2 == 0.0d || d == 0.0d) {
            return;
        }
        this.latitudes.add(String.valueOf(d));
        this.longitudes.add(String.valueOf(d2));
        String json = this.gson.toJson(this.latitudes);
        String json2 = this.gson.toJson(this.longitudes);
        this.editor.putString(Constants.PREFS_KEY_PROXIMITY_LAST_KNOWN_POSITION_LAT, json);
        this.editor.putString(Constants.PREFS_KEY_PROXIMITY_LAST_KNOWN_POSITION_LONG, json2);
        this.editor.putBoolean(Constants.PREFS_KEY_CHECK_PROXIMITY_SET, true);
        this.editor.commit();
    }

    private void updateKnownPosition() {
        this.latitudes.remove(0);
        this.longitudes.remove(0);
        String json = this.gson.toJson(this.latitudes);
        String json2 = this.gson.toJson(this.longitudes);
        this.editor.putString(Constants.PREFS_KEY_PROXIMITY_LAST_KNOWN_POSITION_LAT, json);
        this.editor.putString(Constants.PREFS_KEY_PROXIMITY_LAST_KNOWN_POSITION_LONG, json2);
        this.editor.commit();
    }

    private void shouldRestoreProximity() {
        if (this.mSharedPreferences.getBoolean(Constants.PREFS_KEY_CHECK_PROXIMITY_SET, false)) {
            String string = this.mSharedPreferences.getString(Constants.PREFS_KEY_PROXIMITY_LAST_KNOWN_POSITION_LAT, "");
            String string2 = this.mSharedPreferences.getString(Constants.PREFS_KEY_PROXIMITY_LAST_KNOWN_POSITION_LONG, "");
            List list = (List) this.gson.fromJson(string, List.class);
            List list2 = (List) this.gson.fromJson(string2, List.class);
            if (string.equals("") || string2.equals("")) {
                return;
            }
            for (int i = 0; i < list.size(); i++) {
                addProximityAlert(Double.parseDouble((String) list.get(i)), Double.parseDouble((String) list2.get(i)));
            }
        }
    }

    public void unregisterReceivers() {
        if (this.proximityIntentReceiverList.size() != 0) {
            Iterator<ProximityIntentReceiver> it = this.proximityIntentReceiverList.iterator();
            while (it.hasNext()) {
                try {
                    this.context.unregisterReceiver(it.next());
                } catch (Exception unused) {
                    Timber.e("Error unregistering proximity intent receiver", new Object[0]);
                }
            }
        }
    }
}
