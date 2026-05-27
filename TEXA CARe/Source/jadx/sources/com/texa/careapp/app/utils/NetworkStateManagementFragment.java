package com.texa.careapp.app.utils;

import android.R;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Bundle;
import androidx.appcompat.app.AlertDialog;
import androidx.fragment.app.Fragment;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.texa.careapp.Constants;

/* JADX INFO: loaded from: classes2.dex */
public class NetworkStateManagementFragment extends Fragment {
    public static final String TAG = "NetworkStateManagementFragment";
    private Activity mActivity;
    private AlertDialog mAlertDialog = null;
    private BroadcastReceiver onNotice = new BroadcastReceiver() { // from class: com.texa.careapp.app.utils.NetworkStateManagementFragment.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (!intent.hasExtra(Constants.Actions.CHECK_INTERNET_STATE) || intent.getBooleanExtra(Constants.EXTRA_INTERNET_STATE, true)) {
                if (NetworkStateManagementFragment.this.mAlertDialog == null || !NetworkStateManagementFragment.this.mAlertDialog.isShowing()) {
                    return;
                }
                NetworkStateManagementFragment.this.mAlertDialog.dismiss();
                NetworkStateManagementFragment.this.mAlertDialog = null;
                return;
            }
            NetworkStateManagementFragment networkStateManagementFragment = NetworkStateManagementFragment.this;
            networkStateManagementFragment.showAlertDialog(networkStateManagementFragment.mActivity, "Internet Connection", "No internet connection available.\n\nPlease check your internet connection and try again.");
        }
    };

    public static NetworkStateManagementFragment newInstance() {
        return new NetworkStateManagementFragment();
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
        LocalBroadcastManager.getInstance(this.mActivity).registerReceiver(this.onNotice, new IntentFilter(Constants.Actions.CHECK_INTERNET_STATE));
        if (isInternetConnected(this.mActivity)) {
            return;
        }
        showAlertDialog(this.mActivity, "Internet Connection", "No internet connection available.\n\nPlease check your internet connection and try again.");
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
            this.mAlertDialog.setButton(-1, getString(R.string.ok), new DialogInterface.OnClickListener() { // from class: com.texa.careapp.app.utils.NetworkStateManagementFragment$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.f$0.m504x7ef15054(dialogInterface, i);
                }
            });
            this.mAlertDialog.show();
        }
    }

    /* JADX INFO: renamed from: lambda$showAlertDialog$0$com-texa-careapp-app-utils-NetworkStateManagementFragment, reason: not valid java name */
    public /* synthetic */ void m504x7ef15054(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        this.mAlertDialog = null;
    }

    public static boolean isInternetConnected(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (Build.VERSION.SDK_INT >= 21) {
            return isMobileDataConnected(context) || isWifiConnected(context);
        }
        NetworkInfo networkInfo = connectivityManager.getNetworkInfo(1);
        NetworkInfo networkInfo2 = connectivityManager.getNetworkInfo(0);
        if (networkInfo == null || !networkInfo.isConnected()) {
            return networkInfo2 != null && networkInfo2.isConnected();
        }
        return true;
    }

    public static boolean isNetworkConnected(Context context, int i) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        for (Network network : connectivityManager.getAllNetworks()) {
            NetworkInfo networkInfo = connectivityManager.getNetworkInfo(network);
            if (networkInfo == null) {
                return false;
            }
            if (networkInfo.getState() == NetworkInfo.State.CONNECTED && networkInfo.getType() == i) {
                return true;
            }
        }
        return false;
    }

    public static boolean isWifiConnected(Context context) {
        return isNetworkConnected(context, 1);
    }

    public static boolean isMobileDataConnected(Context context) {
        return isNetworkConnected(context, 0);
    }
}
