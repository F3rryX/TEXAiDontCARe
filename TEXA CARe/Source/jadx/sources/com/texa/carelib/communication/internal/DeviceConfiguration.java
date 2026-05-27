package com.texa.carelib.communication.internal;

import com.texa.carelib.core.logging.CareLog;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
class DeviceConfiguration {
    private static final String TAG = "DeviceConfiguration";
    private boolean mHasBeacon;
    private String mPIN;

    private DeviceConfiguration() {
        this.mHasBeacon = false;
    }

    public boolean hasBeacon() {
        return this.mHasBeacon;
    }

    public String getPIN() {
        return this.mPIN;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setHasBeacon(boolean z) {
        this.mHasBeacon = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPIN(String str) {
        this.mPIN = str;
    }

    public static DeviceConfiguration fromJson(String str) {
        Builder builder = new Builder();
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("pin") && !jSONObject.isNull("pin")) {
                builder.setPIN(jSONObject.getString("pin"));
            }
            if (jSONObject.has("has_beacon") && !jSONObject.isNull("has_beacon")) {
                builder.setHasBeacon(jSONObject.getBoolean("has_beacon"));
            }
        } catch (JSONException e) {
            CareLog.e(TAG, e, "Could not convert json string to object.", new Object[0]);
        }
        return builder.build();
    }

    public static String toJson(DeviceConfiguration deviceConfiguration) {
        JSONObject jSONObject = new JSONObject();
        try {
            if (deviceConfiguration.getPIN() != null) {
                jSONObject.put("pin", deviceConfiguration.getPIN());
            } else {
                jSONObject.put("pin", JSONObject.NULL);
            }
            jSONObject.put("has_beacon", deviceConfiguration.hasBeacon());
        } catch (JSONException e) {
            CareLog.e(TAG, e, "Could not convert object to json string.", new Object[0]);
        }
        return jSONObject.toString();
    }

    public static class Builder {
        private DeviceConfiguration mDeviceConfiguration;

        public Builder() {
            this(new DeviceConfiguration());
        }

        public Builder(DeviceConfiguration deviceConfiguration) {
            this.mDeviceConfiguration = deviceConfiguration;
        }

        public DeviceConfiguration build() {
            return this.mDeviceConfiguration;
        }

        public Builder setHasBeacon(boolean z) {
            this.mDeviceConfiguration.setHasBeacon(z);
            return this;
        }

        public Builder setPIN(String str) {
            this.mDeviceConfiguration.setPIN(str);
            return this;
        }
    }
}
