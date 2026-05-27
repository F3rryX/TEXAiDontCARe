package com.texa.carelib.communication.internal;

import android.bluetooth.BluetoothAdapter;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.SparseArray;
import com.texa.carelib.core.logging.CareLog;
import java.util.EventListener;

/* JADX INFO: loaded from: classes2.dex */
public class BluetoothAdapterStateMonitor {
    private static final SparseArray<String> BT_STATE_NAMES;
    private static final String TAG = "BluetoothAdapterStateMonitor";
    private BluetoothAdapterStateListener mBluetoothAdapterStateListener;
    private BroadcastReceiver mBluetoothStateBroadcastReceiver;
    private final Context mContext;
    private int mState = BluetoothAdapter.getDefaultAdapter().getState();

    public interface BluetoothAdapterStateListener extends EventListener {
        void onBluetoothAdapterStateChanged(int i);
    }

    BluetoothAdapterStateMonitor(Context context) {
        this.mContext = context;
        registerBroadcastReceiver(context);
    }

    protected void finalize() throws Throwable {
        super.finalize();
        unregisterBroadcastReceiver();
    }

    public int getState() {
        return this.mState;
    }

    public void setBluetoothAdapterStateListener(BluetoothAdapterStateListener bluetoothAdapterStateListener) {
        synchronized (this.mContext) {
            this.mBluetoothAdapterStateListener = bluetoothAdapterStateListener;
        }
    }

    protected void onBluetoothStateChanged(int i) {
        this.mState = i;
        CareLog.d(TAG, "Current bluetooth state has changed. New state is: %s", BT_STATE_NAMES.get(i, "N.A."));
        fireStateChanged(this.mState);
    }

    protected void fireStateChanged(int i) {
        synchronized (this.mContext) {
            BluetoothAdapterStateListener bluetoothAdapterStateListener = this.mBluetoothAdapterStateListener;
            if (bluetoothAdapterStateListener != null) {
                bluetoothAdapterStateListener.onBluetoothAdapterStateChanged(i);
            }
        }
    }

    private void registerBroadcastReceiver(Context context) {
        if (this.mBluetoothStateBroadcastReceiver == null) {
            this.mBluetoothStateBroadcastReceiver = new BroadcastReceiver() { // from class: com.texa.carelib.communication.internal.BluetoothAdapterStateMonitor.1
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context2, Intent intent) {
                    String action = intent.getAction();
                    CareLog.d(BluetoothAdapterStateMonitor.TAG, "Received action: %s", action);
                    if ("android.bluetooth.adapter.action.STATE_CHANGED".equals(action)) {
                        BluetoothAdapterStateMonitor.this.onBluetoothStateChanged(intent.getIntExtra("android.bluetooth.adapter.extra.STATE", -1));
                    }
                }
            };
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.bluetooth.adapter.action.STATE_CHANGED");
        try {
            context.registerReceiver(this.mBluetoothStateBroadcastReceiver, intentFilter);
        } catch (Exception e) {
            CareLog.e(TAG, e, "Could not register broadcast receiver.", new Object[0]);
        }
    }

    private void unregisterBroadcastReceiver() {
        try {
            BroadcastReceiver broadcastReceiver = this.mBluetoothStateBroadcastReceiver;
            if (broadcastReceiver != null) {
                this.mContext.unregisterReceiver(broadcastReceiver);
            }
        } catch (Exception unused) {
            CareLog.e(TAG, "Cannot unregister the broadcast receiver.", new Object[0]);
        }
    }

    static {
        SparseArray<String> sparseArray = new SparseArray<>();
        BT_STATE_NAMES = sparseArray;
        sparseArray.put(2, "STATE_CONNECTED");
        sparseArray.put(1, "STATE_CONNECTING");
        sparseArray.put(0, "STATE_DISCONNECTED");
        sparseArray.put(3, "STATE_DISCONNECTING");
        sparseArray.put(12, "STATE_ON");
        sparseArray.put(10, "STATE_OFF");
        sparseArray.put(13, "STATE_TURNING_OFF");
        sparseArray.put(11, "STATE_TURNING_ON");
        sparseArray.put(2, "STATE_CONNECTED");
        sparseArray.put(2, "STATE_CONNECTED");
    }
}
