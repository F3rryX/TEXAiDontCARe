package com.texa.careapp.app.onboarding.dialogs;

import android.bluetooth.BluetoothAdapter;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.view.View;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.care.navigation.ScreenType;
import com.texa.careapp.CareApplication;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public class EnableBluetoothScreenDialog extends Screen {

    @Inject
    protected EventBus mEventBus;
    private BluetoothAdapter mBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
    private IntentFilter filter = new IntentFilter("android.bluetooth.adapter.action.STATE_CHANGED");
    private final BroadcastReceiver mReceiver = new BroadcastReceiver() { // from class: com.texa.careapp.app.onboarding.dialogs.EnableBluetoothScreenDialog.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            EnableBluetoothScreenDialog.this.getNavigator().onBackPressed();
        }
    };

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.dialog_enable_bluetooth;
    }

    public EnableBluetoothScreenDialog(CareApplication careApplication) {
        careApplication.component().inject(this);
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        view.findViewById(R.id.dialog_enable_bluetooth_btn).setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.onboarding.dialogs.EnableBluetoothScreenDialog$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m321xfb242d36(view2);
            }
        });
        getContext().registerReceiver(this.mReceiver, this.filter);
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$0$com-texa-careapp-app-onboarding-dialogs-EnableBluetoothScreenDialog, reason: not valid java name */
    public /* synthetic */ void m321xfb242d36(View view) {
        enableBluetooth();
    }

    @Override // com.texa.care.navigation.Screen
    public void onResume() {
        super.onResume();
        getContext().registerReceiver(this.mReceiver, this.filter);
    }

    @Override // com.texa.care.navigation.Screen
    public void onPause() {
        super.onPause();
        getContext().unregisterReceiver(this.mReceiver);
    }

    private void enableBluetooth() {
        this.mBluetoothAdapter.enable();
        goBack();
        this.mEventBus.post(new BluetoothEnabledEvent());
    }

    @Override // com.texa.care.navigation.Screen
    public ScreenType getType() {
        return ScreenType.DIALOG;
    }

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return EnableBluetoothScreenDialog.class.getName();
    }

    public class BluetoothEnabledEvent {
        public BluetoothEnabledEvent() {
        }
    }
}
