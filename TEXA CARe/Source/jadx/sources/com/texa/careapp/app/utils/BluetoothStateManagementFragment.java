package com.texa.careapp.app.utils;

import android.R;
import android.app.Activity;
import android.bluetooth.BluetoothAdapter;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import androidx.appcompat.app.AlertDialog;
import androidx.fragment.app.Fragment;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.texa.careapp.Constants;

/* JADX INFO: loaded from: classes2.dex */
public class BluetoothStateManagementFragment extends Fragment {
    public static final String TAG = "BluetoothStateManagementFragment";
    private Activity mActivity;
    private AlertDialog mAlertDialog = null;
    private BroadcastReceiver onNotice = new BroadcastReceiver() { // from class: com.texa.careapp.app.utils.BluetoothStateManagementFragment.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (!intent.hasExtra(Constants.Actions.CHECK_BLUETOOTH_STATE) || !intent.getExtras().containsKey(Constants.EXTRA_BLUETOOTH_STATE)) {
                if (BluetoothStateManagementFragment.this.mAlertDialog == null || !BluetoothStateManagementFragment.this.mAlertDialog.isShowing()) {
                    return;
                }
                BluetoothStateManagementFragment.this.mAlertDialog.dismiss();
                BluetoothStateManagementFragment.this.mAlertDialog = null;
                return;
            }
            int intExtra = intent.getIntExtra(Constants.EXTRA_BLUETOOTH_STATE, Integer.MIN_VALUE);
            if (intExtra == 10 || intExtra == 13) {
                BluetoothStateManagementFragment bluetoothStateManagementFragment = BluetoothStateManagementFragment.this;
                bluetoothStateManagementFragment.showAlertDialog(bluetoothStateManagementFragment.mActivity, "Internet Connection", "No internet connection available.\n\nPlease check your internet connection and try again.");
            }
        }
    };

    public static BluetoothStateManagementFragment newInstance() {
        return new BluetoothStateManagementFragment();
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setRetainInstance(true);
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        if (context instanceof Activity) {
            this.mActivity = (Activity) context;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        LocalBroadcastManager.getInstance(this.mActivity).registerReceiver(this.onNotice, new IntentFilter(Constants.Actions.CHECK_BLUETOOTH_STATE));
        if (Boolean.FALSE.equals(isBluetoothEnabled())) {
            showAlertDialog(this.mActivity, "Bluetooth Connection", "No Bluetooth connection available.\n\nPlease check your bluetooth adapted status try again.");
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        LocalBroadcastManager.getInstance(this.mActivity).unregisterReceiver(this.onNotice);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.mActivity = null;
    }

    public void showAlertDialog(Context context, String str, String str2) {
        AlertDialog alertDialog = this.mAlertDialog;
        if (alertDialog == null || !alertDialog.isShowing()) {
            AlertDialog alertDialog2 = this.mAlertDialog;
            if (alertDialog2 != null) {
                alertDialog2.dismiss();
                this.mAlertDialog = null;
            }
            AlertDialog alertDialogCreate = new AlertDialog.Builder(context).create();
            this.mAlertDialog = alertDialogCreate;
            alertDialogCreate.setTitle(str);
            this.mAlertDialog.setMessage(str2);
            this.mAlertDialog.setButton(-1, getString(R.string.ok), new DialogInterface.OnClickListener() { // from class: com.texa.careapp.app.utils.BluetoothStateManagementFragment$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.f$0.m503x4b2c4054(dialogInterface, i);
                }
            });
            this.mAlertDialog.show();
        }
    }

    /* JADX INFO: renamed from: lambda$showAlertDialog$0$com-texa-careapp-app-utils-BluetoothStateManagementFragment, reason: not valid java name */
    public /* synthetic */ void m503x4b2c4054(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        this.mAlertDialog = null;
    }

    public static Boolean isBluetoothEnabled() {
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        if (defaultAdapter == null) {
            return null;
        }
        int state = defaultAdapter.getState();
        return Boolean.valueOf(12 == state || 11 == state);
    }
}
