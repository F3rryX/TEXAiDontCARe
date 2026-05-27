package com.texa.careapp.utils;

import android.content.Context;
import at.favre.lib.armadillo.ArmadilloSharedPreferences;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.DongleModel;
import com.texa.carelib.communication.DeviceInfo;
import com.texa.carelib.profile.ProfileDelegate;
import com.texa.securepreferences.SecurePreferences;
import java.util.List;
import org.spongycastle.math.ec.Tnaf;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class TexaProfileDelegate extends ProfileDelegate {
    public static byte[] AUTHENTICATION_SHARED_SECRET = {96, 61, -21, Tnaf.POW_2_WIDTH, 43, 115, -82, -16, -123, 125, 119, -127, 31, 53, 44, 7, 59, 97, 8, -41, 27, -33, -82, -12, 85, 126, -93, 9, 36, 20, 47, 28};
    private Context context;
    private ArmadilloSharedPreferences mArmadilloSharedPreferences;
    private DongleDataManager mDongleDataManager;
    private SecurePreferences mSecurePreferences;
    private String password;

    @Override // com.texa.carelib.profile.ProfileDelegate
    public String getUser() {
        return null;
    }

    @Override // com.texa.carelib.profile.ProfileDelegate
    public boolean shouldAuthenticate() {
        return true;
    }

    public TexaProfileDelegate(Context context, DongleDataManager dongleDataManager, SecurePreferences securePreferences, ArmadilloSharedPreferences armadilloSharedPreferences) {
        this.context = context;
        this.mDongleDataManager = dongleDataManager;
        this.mSecurePreferences = securePreferences;
        this.mArmadilloSharedPreferences = armadilloSharedPreferences;
    }

    @Override // com.texa.carelib.profile.ProfileDelegate
    public Context getApplicationContext() {
        return this.context;
    }

    @Override // com.texa.carelib.profile.ProfileDelegate
    public String getPassword(DeviceInfo deviceInfo) {
        String passwordFromMac = getPasswordFromMac(deviceInfo.getAddress());
        if (!Utils.isEmpty(passwordFromMac)) {
            return passwordFromMac;
        }
        String passwordFromHwid = getPasswordFromHwid(deviceInfo.getName());
        return Utils.isEmpty(passwordFromHwid) ? this.password : passwordFromHwid;
    }

    private String getPasswordFromMac(String str) {
        try {
            if (!Utils.isEmpty(str)) {
                List<DongleModel> dongleByMacAddress = this.mDongleDataManager.getDongleByMacAddress(str);
                if (!dongleByMacAddress.isEmpty() && dongleByMacAddress.get(0).getPin(this.mSecurePreferences, this.mArmadilloSharedPreferences) != null) {
                    Timber.i("getPassword macAddress from securePref %s", dongleByMacAddress.get(0).getPin(this.mSecurePreferences, this.mArmadilloSharedPreferences));
                    return dongleByMacAddress.get(0).getPin(this.mSecurePreferences, this.mArmadilloSharedPreferences);
                }
            }
            Timber.i("getPassword with macAddress from local %s", this.password);
            return null;
        } catch (Exception e) {
            Timber.e(e, "getPassword with macAddress thrown an exception.", new Object[0]);
            return null;
        }
    }

    private String getPasswordFromHwid(String str) {
        try {
            if (!Utils.isEmpty(str)) {
                List<DongleModel> dongleByHwid = this.mDongleDataManager.getDongleByHwid(str);
                if (!dongleByHwid.isEmpty() && dongleByHwid.get(0).getPin(this.mSecurePreferences, this.mArmadilloSharedPreferences) != null) {
                    Timber.i("getPassword hwid from securePref %s", dongleByHwid.get(0).getPin(this.mSecurePreferences, this.mArmadilloSharedPreferences));
                    return dongleByHwid.get(0).getPin(this.mSecurePreferences, this.mArmadilloSharedPreferences);
                }
            }
            Timber.i("getPassword with hwid from local %s", this.password);
            return null;
        } catch (Exception e) {
            Timber.e(e, "getPassword with hwid thrown an exception.", new Object[0]);
            return null;
        }
    }

    public void setPassword(String str) {
        this.password = str;
    }

    @Override // com.texa.carelib.profile.ProfileDelegate
    public byte[] getSharedSecret() {
        return AUTHENTICATION_SHARED_SECRET;
    }
}
