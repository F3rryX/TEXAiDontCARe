package com.texa.carelib.communication.internal;

import android.R;
import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.texa.carelib.communication.DeviceInfo;
import com.texa.carelib.communication.KnownDeviceHistory;
import com.texa.carelib.communication.KnownDeviceHistoryListener;
import com.texa.carelib.communication.events.DeviceHistoryChangedEvent;
import com.texa.carelib.core.logging.CareLog;
import java.util.ArrayList;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.List;
import java.util.TimeZone;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class SharedPreferenceKnownDeviceHistory implements KnownDeviceHistory {
    private static final String DEVICE_HISTORY_KEY = "selection-history";
    private static final int MAX_SIZE_DEFAULT = 5;
    private static final String TAG = "SharedPreferenceKnownDeviceHistory";
    private final List<DeviceInfo> mHistory;
    private KnownDeviceHistoryListener mKnownDeviceHistoryListener;
    private int mMaxSize;
    private final SharedPreferences mPreferences;

    public SharedPreferenceKnownDeviceHistory(Context context) {
        this(context, 5);
    }

    public SharedPreferenceKnownDeviceHistory(Context context, int i) {
        this.mMaxSize = i;
        this.mHistory = new ArrayList(this.mMaxSize);
        this.mPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        try {
            restore();
        } catch (Exception e) {
            CareLog.w(TAG, "Could not restore the history data. Clearing cache.", e);
            clear();
        }
    }

    @Override // com.texa.carelib.communication.KnownDeviceHistory
    public void add(DeviceInfo deviceInfo) {
        if (this.mHistory.contains(deviceInfo)) {
            this.mHistory.remove(deviceInfo);
        }
        DeviceInfo.Builder builder = new DeviceInfo.Builder(deviceInfo);
        builder.setLastConnectionDateTime(GregorianCalendar.getInstance(TimeZone.getTimeZone("UTC")).getTime());
        CareLog.d(TAG, "Adding device: %s", deviceInfo.toString());
        this.mHistory.add(0, builder.build());
        deleteExceededDevices();
        save();
        fireDeviceHistoryChanged();
    }

    private void deleteExceededDevices() {
        while (this.mHistory.size() > 0 && this.mHistory.size() > this.mMaxSize) {
            CareLog.v(TAG, "Queue getCacheSize exceeded. Removing older connected device.", new Object[0]);
            this.mHistory.remove(r0.size() - 1);
        }
    }

    @Override // com.texa.carelib.communication.KnownDeviceHistory
    public void setMaxSize(int i) {
        this.mMaxSize = i;
        deleteExceededDevices();
    }

    @Override // com.texa.carelib.communication.KnownDeviceHistory
    public void setKnownDeviceHistoryListener(KnownDeviceHistoryListener knownDeviceHistoryListener) {
        this.mKnownDeviceHistoryListener = knownDeviceHistoryListener;
    }

    @Override // com.texa.carelib.communication.KnownDeviceHistory
    public void clear() {
        this.mHistory.clear();
        this.mPreferences.edit().remove(DEVICE_HISTORY_KEY).apply();
        CareLog.w(TAG, "Connection device history cleared!", new Object[0]);
    }

    public static void clear(Context context) {
        PreferenceManager.getDefaultSharedPreferences(context).edit().remove(DEVICE_HISTORY_KEY).apply();
        CareLog.w(TAG, "Connection device history cleared!", new Object[0]);
    }

    private void fireDeviceHistoryChanged() {
        KnownDeviceHistoryListener knownDeviceHistoryListener = this.mKnownDeviceHistoryListener;
        if (knownDeviceHistoryListener != null) {
            knownDeviceHistoryListener.onDeviceHistoryChanged(new DeviceHistoryChangedEvent(this, getItems()));
        }
    }

    @Override // com.texa.carelib.communication.KnownDeviceHistory
    public DeviceInfo get(int i) {
        return this.mHistory.get(i);
    }

    @Override // com.texa.carelib.communication.KnownDeviceHistory
    public List<DeviceInfo> getItems() {
        return new ArrayList(this.mHistory);
    }

    @Override // com.texa.carelib.communication.KnownDeviceHistory
    public int indexOf(DeviceInfo deviceInfo) {
        Iterator<DeviceInfo> it = this.mHistory.iterator();
        int i = -1;
        while (it.hasNext()) {
            i++;
            if (it.next().getAddress().equals(deviceInfo.getAddress())) {
                return i;
            }
        }
        return -1;
    }

    void restore() {
        String string = this.mPreferences.getString(DEVICE_HISTORY_KEY, "");
        if (TextUtils.isEmpty(string)) {
            CareLog.w(TAG, "no saved data", new Object[0]);
        } else {
            DeviceInfoJsonSerializer deviceInfoJsonSerializer = new DeviceInfoJsonSerializer();
            try {
                JSONArray jSONArray = new JSONArray(string);
                ArrayList arrayList = new ArrayList(jSONArray.length());
                for (int i = 0; i < jSONArray.length(); i++) {
                    try {
                        DeviceInfo deviceInfoDeserialize = deviceInfoJsonSerializer.deserialize(jSONArray.getJSONObject(i));
                        if (deviceInfoDeserialize != null) {
                            arrayList.add(deviceInfoDeserialize);
                        }
                    } catch (JSONException e) {
                        CareLog.e(TAG, e, "Could not restore data.", new Object[0]);
                    }
                }
                this.mHistory.clear();
                if (arrayList.size() > 0) {
                    this.mHistory.addAll(arrayList);
                }
                CareLog.v(TAG, "Restored data=%s", string);
            } catch (JSONException e2) {
                CareLog.e(TAG, e2, "Could not restore data.", new Object[0]);
            }
        }
        fireDeviceHistoryChanged();
    }

    protected void save() {
        List<DeviceInfo> items = getItems();
        if (items.size() > 0) {
            DeviceInfoJsonSerializer deviceInfoJsonSerializer = new DeviceInfoJsonSerializer();
            try {
                JSONArray jSONArray = new JSONArray();
                Iterator<DeviceInfo> it = items.iterator();
                while (it.hasNext()) {
                    jSONArray.put(new JSONObject(deviceInfoJsonSerializer.serialize(it.next())));
                }
                this.mPreferences.edit().putString(DEVICE_HISTORY_KEY, jSONArray.toString()).apply();
                CareLog.v(TAG, "Saved data=%s", Integer.valueOf(R.attr.data));
            } catch (Exception e) {
                CareLog.e(TAG, e, "Could not save device history", new Object[0]);
            }
        }
    }

    @Override // com.texa.carelib.communication.KnownDeviceHistory
    public int size() {
        return this.mHistory.size();
    }

    private static class DeviceInfoJsonSerializer {
        private static final String JSON_FIELD_ADDRESS = "address";
        private static final String JSON_FIELD_BOND_STATE = "bond_state";
        private static final String JSON_FIELD_LAST_CONNECTION_TIME = "last_connection_time";
        private static final String JSON_FIELD_NAME = "name";
        private static final String JSON_FIELD_RSSI = "rssi";
        private static final String JSON_FIELD_TYPE = "type";
        private static final String TAG = "DeviceInfoJsonSerializer";

        private DeviceInfoJsonSerializer() {
        }

        public String serialize(DeviceInfo deviceInfo) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(JSON_FIELD_ADDRESS, deviceInfo.getAddress());
                jSONObject.put(JSON_FIELD_BOND_STATE, deviceInfo.getBondState());
                jSONObject.put("type", deviceInfo.getType());
                if (deviceInfo.getRSSI() != null) {
                    jSONObject.put(JSON_FIELD_RSSI, deviceInfo.getRSSI());
                } else {
                    jSONObject.put(JSON_FIELD_RSSI, JSONObject.NULL);
                }
                if (deviceInfo.getName() != null) {
                    jSONObject.put("name", deviceInfo.getName());
                } else {
                    jSONObject.put("name", JSONObject.NULL);
                }
                if (deviceInfo.getLastConnectionDateTime() != null) {
                    jSONObject.put(JSON_FIELD_LAST_CONNECTION_TIME, deviceInfo.getLastConnectionDateTime().getTime());
                } else {
                    jSONObject.put(JSON_FIELD_LAST_CONNECTION_TIME, JSONObject.NULL);
                }
            } catch (JSONException e) {
                CareLog.e(TAG, e, "Could not convert object to json string.", new Object[0]);
            }
            return jSONObject.toString();
        }

        DeviceInfo deserialize(String str) throws JSONException {
            return deserialize(new JSONObject(str));
        }

        DeviceInfo deserialize(JSONObject jSONObject) throws JSONException {
            if (!jSONObject.has(JSON_FIELD_ADDRESS) || jSONObject.isNull(JSON_FIELD_ADDRESS)) {
                throw new JSONException("\"address\" field is is null or missing.");
            }
            DeviceInfo.Builder builder = new DeviceInfo.Builder(jSONObject.getString(JSON_FIELD_ADDRESS));
            if (jSONObject.has(JSON_FIELD_BOND_STATE) && !jSONObject.isNull(JSON_FIELD_BOND_STATE)) {
                builder.setBondState(jSONObject.getInt(JSON_FIELD_BOND_STATE));
            }
            if (jSONObject.has("type") && !jSONObject.isNull("type")) {
                builder.setType(jSONObject.getInt("type"));
            }
            if (jSONObject.has(JSON_FIELD_RSSI) && !jSONObject.isNull(JSON_FIELD_RSSI)) {
                builder.setRSSI(Integer.valueOf(jSONObject.getInt(JSON_FIELD_RSSI)));
            }
            if (jSONObject.has("name") && !jSONObject.isNull("name")) {
                builder.setName(jSONObject.getString("name"));
            }
            if (jSONObject.has(JSON_FIELD_LAST_CONNECTION_TIME) && !jSONObject.isNull(JSON_FIELD_LAST_CONNECTION_TIME)) {
                builder.setLastConnectionDateTime(new Date(jSONObject.getLong(JSON_FIELD_LAST_CONNECTION_TIME)));
            }
            return builder.build();
        }
    }
}
