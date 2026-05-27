package com.texa.careapp.remotelogger;

import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.BatteryManager;
import android.os.Build;
import android.telephony.TelephonyManager;
import com.activeandroid.Cache;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.texa.careapp.carelib.CommunicationObservable;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.model.ContactModel;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.DongleModel;
import com.texa.careapp.model.ServerLogModel;
import com.texa.careapp.model.UserModel;
import com.texa.careapp.sync.CAReWorkerManager;
import com.texa.careapp.utils.Devices;
import com.texa.careapp.utils.UserDataManager;
import com.texa.careapp.utils.Utils;
import com.texa.carelib.care.accessory.Accessory;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class LoggerManager {
    private Accessory mAccessory;
    private CAReWorkerManager mCAReWorkerManager;
    private CommunicationObservable mCommunicationObservable;
    private Context mContext;
    private DongleDataManager mDongleDataManager;
    private SharedPreferences mSharedPreferences;
    private UserDataManager mUserDataManager;

    public LoggerManager(UserDataManager userDataManager, DongleDataManager dongleDataManager, Context context, CommunicationObservable communicationObservable, SharedPreferences sharedPreferences, Accessory accessory, CAReWorkerManager cAReWorkerManager) {
        this.mUserDataManager = userDataManager;
        this.mDongleDataManager = dongleDataManager;
        this.mContext = context;
        this.mCommunicationObservable = communicationObservable;
        this.mAccessory = accessory;
        this.mSharedPreferences = sharedPreferences;
        this.mCAReWorkerManager = cAReWorkerManager;
    }

    public ServerLogModel log(ServerLogModel.LogEvent logEvent, ServerLogModel.ResultForLog resultForLog, String str) {
        ServerLogModel serverLogModel = new ServerLogModel(logEvent, resultForLog, str);
        serverLogModel.setUserId(createUserId());
        serverLogModel.setTst(System.currentTimeMillis());
        serverLogModel.setDeviceId(createDeviceID());
        serverLogModel.setAppV(createAppVersion());
        serverLogModel.setFwV(createFWVersion());
        serverLogModel.setHwid(createHwid());
        serverLogModel.setOs(createOsVersion());
        serverLogModel.setDeviceM(Devices.getDeviceName());
        serverLogModel.setSnapshot(createSnapshot());
        serverLogModel.setStatus(createAccessoryStatus());
        try {
            Utils.safeModelSave(serverLogModel, Cache.getContext());
            Timber.d(serverLogModel.toString(), new Object[0]);
            scheduleLogSyncTask();
        } catch (DatabaseIOException e) {
            Timber.e(e, "Could not save log entry in database.", new Object[0]);
        }
        return serverLogModel;
    }

    private int createAccessoryStatus() {
        return this.mAccessory.getStatus();
    }

    private void scheduleLogSyncTask() {
        this.mCAReWorkerManager.scheduleLogSend();
    }

    private String createOsVersion() {
        return "Android " + Build.VERSION.RELEASE;
    }

    private String createHwid() {
        DongleModel dongleModel = this.mDongleDataManager.getDongleModel();
        return dongleModel == null ? "dongle == null" : dongleModel.getHwid();
    }

    private String createFWVersion() {
        DongleModel dongleModel = this.mDongleDataManager.getDongleModel();
        return dongleModel == null ? "dongle == null" : dongleModel.getMainAppVersionFormatted();
    }

    private String createAppVersion() {
        return Utils.getAppVersion(this.mContext.getApplicationContext());
    }

    private String createDeviceID() {
        return Utils.getUniqueDeviceId(this.mSharedPreferences);
    }

    private String createUserId() {
        UserModel userCached = this.mUserDataManager.getUserCached();
        return userCached == null ? "no userCatched" : userCached.getUid();
    }

    private ServerLogModel.Snapshot createSnapshot() {
        ServerLogModel.Snapshot snapshot = new ServerLogModel.Snapshot();
        snapshot.setBt(isBluetoothEnable());
        snapshot.setBtConn(isBluetoothConnected());
        snapshot.setGps(isGPSEnable());
        snapshot.setWan(isWanEnable());
        snapshot.setWanReach(isWanReached());
        snapshot.setSim(isSimEnable());
        snapshot.setSimValid(isSimValid());
        snapshot.setBattPct(createBatteryPercentage());
        return snapshot;
    }

    private boolean isBluetoothConnected() {
        return this.mCommunicationObservable.getCurrentStatus() == CommunicationObservable.Status.CARE_CONNECTED;
    }

    private boolean isBluetoothEnable() {
        try {
            return BluetoothAdapter.getDefaultAdapter().isEnabled();
        } catch (Exception e) {
            Timber.w(e, "#isBluetoothEnable() Exception", new Object[0]);
            return false;
        }
    }

    private boolean isGPSEnable() {
        try {
            return ((LocationManager) this.mContext.getApplicationContext().getSystemService(FirebaseAnalytics.Param.LOCATION)).isProviderEnabled("gps");
        } catch (Exception e) {
            Timber.w(e, "#isGPSEnable() Exception", new Object[0]);
            return false;
        }
    }

    private boolean isWanEnable() {
        try {
            return ((ConnectivityManager) this.mContext.getApplicationContext().getSystemService("connectivity")).getActiveNetworkInfo() != null;
        } catch (Exception e) {
            Timber.w(e, "#isWanEnable() Exception", new Object[0]);
            return false;
        }
    }

    private boolean isWanReached() {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.mContext.getApplicationContext().getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                return activeNetworkInfo.isConnected();
            }
            return false;
        } catch (Exception e) {
            Timber.w(e, "#isWanReached() Exception", new Object[0]);
            return false;
        }
    }

    private boolean isSimEnable() {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) this.mContext.getApplicationContext().getSystemService("phone");
            telephonyManager.getSimState();
            return telephonyManager.getSimState() == 5;
        } catch (Exception e) {
            Timber.w(e, "#isSimEnable() Exception", new Object[0]);
            return false;
        }
    }

    private boolean isSimValid() {
        ContactModel userCellPhoneContact;
        UserModel userCached = this.mUserDataManager.getUserCached();
        return (userCached == null || (userCellPhoneContact = userCached.getUserCellPhoneContact()) == null || Utils.isEmpty(userCellPhoneContact.getPhoneNumber())) ? false : true;
    }

    private int createBatteryPercentage() {
        if (Build.VERSION.SDK_INT >= 21) {
            return ((BatteryManager) this.mContext.getApplicationContext().getSystemService("batterymanager")).getIntProperty(4);
        }
        Intent intentRegisterReceiver = this.mContext.getApplicationContext().registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        int intExtra = intentRegisterReceiver.getIntExtra(FirebaseAnalytics.Param.LEVEL, -1);
        double intExtra2 = intentRegisterReceiver.getIntExtra("scale", -1);
        if (intExtra < 0 || intExtra2 <= 0.0d) {
            return -1;
        }
        return (int) ((((double) intExtra) / intExtra2) * 100.0d);
    }
}
