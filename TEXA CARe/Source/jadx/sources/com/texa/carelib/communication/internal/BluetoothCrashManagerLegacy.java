package com.texa.carelib.communication.internal;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.SystemClock;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.core.utils.internal.FileUtils;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
class BluetoothCrashManagerLegacy {
    private static final int CRASH_RISK_DEVICE_COUNT = 1590;
    private static final long MIN_TIME_BETWEEN_STATE_SAVES_MILLIS = 60000;
    private static final boolean PREEMPTIVE_ACTION_ENABLED = true;
    private static final String TAG = "BluetoothCrashManagerLegacy";
    private final BluetoothCrashManagerProxy mBluetoothCrashManagerProxy;
    private BluetoothCrashManagerState mState;
    private final BroadcastReceiver mBroadcastReceiver = new BroadcastReceiver() { // from class: com.texa.carelib.communication.internal.BluetoothCrashManagerLegacy.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) throws Throwable {
            String action = intent.getAction();
            if ("android.bluetooth.adapter.action.DISCOVERY_FINISHED".equals(action)) {
                if (BluetoothCrashManagerLegacy.this.mIsRecoveryInProgress) {
                    CareLog.d(BluetoothCrashManagerLegacy.TAG, "Bluetooth discovery finished", new Object[0]);
                    BluetoothCrashManagerLegacy.this.finishRecovery();
                    return;
                } else {
                    CareLog.d(BluetoothCrashManagerLegacy.TAG, "Bluetooth discovery finished (external)", new Object[0]);
                    return;
                }
            }
            if ("android.bluetooth.adapter.action.DISCOVERY_STARTED".equals(action)) {
                if (BluetoothCrashManagerLegacy.this.mIsRecoveryInProgress) {
                    BluetoothCrashManagerLegacy.this.mDiscoveryStartConfirmed = true;
                    CareLog.d(BluetoothCrashManagerLegacy.TAG, "Bluetooth discovery started", new Object[0]);
                    return;
                } else {
                    CareLog.d(BluetoothCrashManagerLegacy.TAG, "Bluetooth discovery started (external)", new Object[0]);
                    return;
                }
            }
            if ("android.bluetooth.adapter.action.STATE_CHANGED".equals(action)) {
                int intExtra = intent.getIntExtra("android.bluetooth.adapter.extra.STATE", Integer.MIN_VALUE);
                if (intExtra != Integer.MIN_VALUE) {
                    switch (intExtra) {
                        case 10:
                            CareLog.d(BluetoothCrashManagerLegacy.TAG, "Bluetooth state is OFF", new Object[0]);
                            BluetoothCrashManagerLegacy.this.mLastBluetoothOffTime = SystemClock.elapsedRealtime();
                            break;
                        case 11:
                            BluetoothCrashManagerLegacy.this.mLastBluetoothTurningOnTime = SystemClock.elapsedRealtime();
                            CareLog.d(BluetoothCrashManagerLegacy.TAG, "Bluetooth state is TURNING_ON", new Object[0]);
                            break;
                        case 12:
                            CareLog.d(BluetoothCrashManagerLegacy.TAG, "Bluetooth state is ON", new Object[0]);
                            CareLog.d(BluetoothCrashManagerLegacy.TAG, "Bluetooth was turned off for %d milliseconds", Long.valueOf(BluetoothCrashManagerLegacy.this.mLastBluetoothTurningOnTime - BluetoothCrashManagerLegacy.this.mLastBluetoothOffTime));
                            if (BluetoothCrashManagerLegacy.this.mLastBluetoothTurningOnTime - BluetoothCrashManagerLegacy.this.mLastBluetoothOffTime < 600) {
                                BluetoothCrashManagerLegacy.this.onCrashDetected();
                            }
                            break;
                    }
                }
                CareLog.d(BluetoothCrashManagerLegacy.TAG, "Bluetooth state is ERROR", new Object[0]);
            }
        }
    };
    private boolean mIsRecoveryInProgress = false;
    private boolean mDiscoveryStartConfirmed = false;
    private long mLastBluetoothOffTime = 0;
    private long mLastBluetoothTurningOnTime = 0;
    private long mLastStateSaveTime = 0;
    private final String CFG_FILE_NAME = "bt_crash_manager.cfg";

    interface BluetoothCrashManagerProxy {
        Context getContext();

        void stopScan();
    }

    BluetoothCrashManagerLegacy(BluetoothCrashManagerProxy bluetoothCrashManagerProxy) {
        this.mBluetoothCrashManagerProxy = bluetoothCrashManagerProxy;
        loadState(bluetoothCrashManagerProxy.getContext());
    }

    void deviceFound(BluetoothDevice bluetoothDevice, BluetoothAdapter.LeScanCallback leScanCallback) throws Throwable {
        int size = this.mState.mDistinctBluetoothAddresses.size();
        synchronized (this.mState.mDistinctBluetoothAddresses) {
            this.mState.mDistinctBluetoothAddresses.add(bluetoothDevice.getAddress());
        }
        int size2 = this.mState.mDistinctBluetoothAddresses.size();
        if (size != size2 && size2 % 100 == 0) {
            CareLog.d(TAG, "Distinct Bluetooth devices seen: %d", Integer.valueOf(this.mState.mDistinctBluetoothAddresses.size()));
        }
        if (this.mState.mDistinctBluetoothAddresses.size() <= CRASH_RISK_DEVICE_COUNT || this.mIsRecoveryInProgress) {
            return;
        }
        String str = TAG;
        CareLog.w(str, "Large number of Bluetooth devices detected: %d Proactively attempting to clear out address list to prevent a crash.", Integer.valueOf(this.mState.mDistinctBluetoothAddresses.size()));
        CareLog.w(str, "Stopping LE Scan", new Object[0]);
        BluetoothAdapter.getDefaultAdapter().stopLeScan(leScanCallback);
        startRecovery();
        persistStateIfNeeded(this.mBluetoothCrashManagerProxy.getContext());
    }

    public void start() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.bluetooth.adapter.action.STATE_CHANGED");
        intentFilter.addAction("android.bluetooth.adapter.action.DISCOVERY_STARTED");
        intentFilter.addAction("android.bluetooth.adapter.action.DISCOVERY_FINISHED");
        this.mBluetoothCrashManagerProxy.getContext().registerReceiver(this.mBroadcastReceiver, intentFilter);
        CareLog.d(TAG, "Start listening on Bluetooth events...", new Object[0]);
    }

    public void stop() throws Throwable {
        this.mBluetoothCrashManagerProxy.getContext().unregisterReceiver(this.mBroadcastReceiver);
        CareLog.d(TAG, "Stop listening on Bluetooth events.", new Object[0]);
        persistState(this.mBluetoothCrashManagerProxy.getContext(), this.mState);
    }

    private void cancelDiscovery() {
        try {
            Thread.sleep(5000L);
            if (!this.mDiscoveryStartConfirmed) {
                CareLog.w(TAG, "BluetoothAdapter.ACTION_DISCOVERY_STARTED never received.  Recovery may fail.", new Object[0]);
            }
            BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
            if (defaultAdapter.isDiscovering()) {
                CareLog.d(TAG, "Cancelling discovery.", new Object[0]);
                defaultAdapter.cancelDiscovery();
            } else {
                CareLog.d(TAG, "Discovery not running.  Won't cancel it", new Object[0]);
            }
        } catch (InterruptedException unused) {
            CareLog.d(TAG, "DiscoveryCanceller sleep interrupted.", new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishRecovery() {
        CareLog.w(TAG, "Recovery attempt finished.", new Object[0]);
        synchronized (this.mState.mDistinctBluetoothAddresses) {
            this.mState.mDistinctBluetoothAddresses.clear();
        }
        this.mIsRecoveryInProgress = false;
    }

    private void loadState(Context context) {
        FileInputStream fileInputStreamOpenFileInput = null;
        try {
            try {
                fileInputStreamOpenFileInput = context.openFileInput("bt_crash_manager.cfg");
                this.mState = BluetoothCrashManagerState.fromJson(FileUtils.readAll(fileInputStreamOpenFileInput));
                if (fileInputStreamOpenFileInput == null) {
                    return;
                }
            } catch (IOException e) {
                CareLog.e(TAG, e, "Could not restore state from persisted data.", new Object[0]);
                this.mState = new BluetoothCrashManagerState();
                if (fileInputStreamOpenFileInput == null) {
                    return;
                }
            }
            try {
                fileInputStreamOpenFileInput.close();
            } catch (IOException unused) {
            }
        } catch (Throwable th) {
            if (fileInputStreamOpenFileInput != null) {
                try {
                    fileInputStreamOpenFileInput.close();
                } catch (IOException unused2) {
                }
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onCrashDetected() throws Throwable {
        if (Build.VERSION.SDK_INT < 18) {
            CareLog.d(TAG, "Ignoring crashes before API 18, because BLE is unsupported.", new Object[0]);
            return;
        }
        String str = TAG;
        CareLog.w(str, "BluetoothService crash detected", new Object[0]);
        if (this.mState.mDistinctBluetoothAddresses.size() > 0) {
            CareLog.d(str, "Distinct Bluetooth devices seen at crash: %d", Integer.valueOf(this.mState.mDistinctBluetoothAddresses.size()));
        }
        this.mState.mLastBluetoothCrashDetectionTime = SystemClock.elapsedRealtime();
        this.mState.mDetectedCrashCount++;
        if (this.mIsRecoveryInProgress) {
            CareLog.d(str, "Ignoring Bluetooth crash because recovery is already in progress.", new Object[0]);
        } else {
            startRecovery();
        }
        persistStateIfNeeded(this.mBluetoothCrashManagerProxy.getContext());
    }

    private void persistState(Context context, BluetoothCrashManagerState bluetoothCrashManagerState) throws Throwable {
        OutputStreamWriter outputStreamWriter;
        this.mLastStateSaveTime = SystemClock.elapsedRealtime();
        OutputStreamWriter outputStreamWriter2 = null;
        try {
            try {
                try {
                    outputStreamWriter = new OutputStreamWriter(context.openFileOutput("bt_crash_manager.cfg", 0));
                } catch (IOException e) {
                    e = e;
                }
            } catch (Throwable th) {
                th = th;
            }
            try {
                outputStreamWriter.write(BluetoothCrashManagerState.toJson(bluetoothCrashManagerState));
                outputStreamWriter.flush();
                outputStreamWriter.close();
            } catch (IOException e2) {
                e = e2;
                outputStreamWriter2 = outputStreamWriter;
                CareLog.e(TAG, e, "Persist state has failed.", new Object[0]);
                if (outputStreamWriter2 == null) {
                } else {
                    outputStreamWriter2.close();
                }
            } catch (Throwable th2) {
                th = th2;
                outputStreamWriter2 = outputStreamWriter;
                if (outputStreamWriter2 != null) {
                    try {
                        outputStreamWriter2.close();
                    } catch (IOException unused) {
                    }
                }
                throw th;
            }
        } catch (IOException unused2) {
        }
    }

    private void persistStateIfNeeded(Context context) throws Throwable {
        if (SystemClock.elapsedRealtime() - this.mLastStateSaveTime > MIN_TIME_BETWEEN_STATE_SAVES_MILLIS) {
            persistState(context, this.mState);
        }
    }

    private void startRecovery() {
        this.mState.mRecoveryAttemptCount++;
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        String str = TAG;
        CareLog.d(str, "about to check if discovery is active", new Object[0]);
        if (!defaultAdapter.isDiscovering()) {
            CareLog.w(str, "Recovery attempt started", new Object[0]);
            this.mIsRecoveryInProgress = true;
            this.mDiscoveryStartConfirmed = false;
            CareLog.d(str, "about to command discovery", new Object[0]);
            if (!defaultAdapter.startDiscovery()) {
                CareLog.w(str, "Can't start discovery.  Is Bluetooth turned on?", new Object[0]);
            }
            CareLog.d(str, "startDiscovery commanded.  isDiscovering()=%s", Boolean.valueOf(defaultAdapter.isDiscovering()));
            CareLog.d(str, "We will be cancelling this discovery in %d milliseconds.", 5000);
            cancelDiscovery();
            return;
        }
        CareLog.w(str, "Already discovering.  Recovery attempt abandoned.", new Object[0]);
    }

    private static class BluetoothCrashManagerState {
        private long mLastBluetoothCrashDetectionTime = 0;
        private long mDetectedCrashCount = 0;
        private int mRecoveryAttemptCount = 0;
        private boolean mLastRecoverySucceeded = false;
        private final Set<String> mDistinctBluetoothAddresses = new HashSet();

        BluetoothCrashManagerState() {
        }

        public static String toJson(BluetoothCrashManagerState bluetoothCrashManagerState) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("last_bluetooth_crash_detection_time", bluetoothCrashManagerState.mLastBluetoothCrashDetectionTime);
                jSONObject.put("detected_crash_count", bluetoothCrashManagerState.mDetectedCrashCount);
                jSONObject.put("recovery_attempt_count", bluetoothCrashManagerState.mRecoveryAttemptCount);
                jSONObject.put("last_recovery_succeeded", bluetoothCrashManagerState.mLastRecoverySucceeded);
                JSONArray jSONArray = new JSONArray();
                for (String str : bluetoothCrashManagerState.mDistinctBluetoothAddresses) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("address", str);
                    jSONArray.put(jSONObject2);
                }
                jSONObject.put("remote_device_list", jSONArray);
            } catch (JSONException e) {
                CareLog.e(BluetoothCrashManagerLegacy.TAG, e, "Could not convert object to Json.", new Object[0]);
            }
            return jSONObject.toString();
        }

        public static BluetoothCrashManagerState fromJson(String str) {
            BluetoothCrashManagerState bluetoothCrashManagerState = new BluetoothCrashManagerState();
            if (!str.isEmpty()) {
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    if (jSONObject.has("last_bluetooth_crash_detection_time")) {
                        bluetoothCrashManagerState.mLastBluetoothCrashDetectionTime = jSONObject.getLong("last_bluetooth_crash_detection_time");
                    }
                    if (jSONObject.has("detected_crash_count")) {
                        bluetoothCrashManagerState.mDetectedCrashCount = jSONObject.getLong("detected_crash_count");
                    }
                    if (jSONObject.has("recovery_attempt_count")) {
                        bluetoothCrashManagerState.mRecoveryAttemptCount = jSONObject.getInt("recovery_attempt_count");
                    }
                    if (jSONObject.has("last_recovery_succeeded")) {
                        bluetoothCrashManagerState.mLastRecoverySucceeded = jSONObject.getBoolean("last_recovery_succeeded");
                    }
                    if (jSONObject.has("remote_device_list")) {
                        JSONArray jSONArray = jSONObject.getJSONArray("remote_device_list");
                        for (int i = 0; i < jSONArray.length(); i++) {
                            JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                            if (jSONObject2.has("address")) {
                                bluetoothCrashManagerState.mDistinctBluetoothAddresses.add(jSONObject2.getString("address"));
                            }
                        }
                    }
                } catch (JSONException e) {
                    CareLog.e(BluetoothCrashManagerLegacy.TAG, e, "Could not convert json to object.", new Object[0]);
                }
            }
            return bluetoothCrashManagerState;
        }
    }
}
