package com.texa.careapp;

import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import at.favre.lib.armadillo.ArmadilloSharedPreferences;
import com.activeandroid.Cache;
import com.texa.careapp.emergency.ContactType;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.model.ContactModel;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.TermsModel;
import com.texa.careapp.model.UserModel;
import com.texa.careapp.networking.response.UserResponse;
import com.texa.careapp.utils.TexaProfileDelegate;
import com.texa.careapp.utils.Utils;
import com.texa.careapp.utils.exceptions.CareException;
import com.texa.carelib.communication.Communication;
import com.texa.carelib.communication.DeviceInfo;
import com.texa.carelib.core.CareLibException;
import com.texa.securepreferences.SecurePreferences;
import io.reactivex.Observable;
import java.util.List;
import timber.log.Timber;

/* JADX INFO: loaded from: classes.dex */
public abstract class DefaultFlavorDelegator {
    protected Context mContext;

    DefaultFlavorDelegator(Context context) {
        this.mContext = context;
    }

    public Observable<UserModel> persistUserData(UserResponse.UserData userData) throws DatabaseIOException {
        UserModel userModelFrom = UserModel.from(userData);
        Utils.safeModelSave(userModelFrom, Cache.getContext());
        for (ContactModel contactModel : userData.contactModelList) {
            if (!isUserCellphone(contactModel)) {
                contactModel.setUser(userModelFrom);
                Utils.safeModelSave(contactModel, Cache.getContext());
            }
        }
        for (TermsModel termsModel : userData.termsModelList) {
            termsModel.setUser(userModelFrom);
            Utils.safeModelSave(termsModel, Cache.getContext());
        }
        return Observable.just(userModelFrom);
    }

    private boolean isUserCellphone(ContactModel contactModel) {
        return contactModel.getType() != null && ContactType.USER_CELLPHONE.toString().equals(contactModel.getType());
    }

    public void connectToDongle(DongleDataManager dongleDataManager, Communication communication, Context context) throws CareException {
        if (Utils.isCareConnected(communication)) {
            Timber.d("Already connected", new Object[0]);
            return;
        }
        if (dongleDataManager.count() < 1) {
            throw new CareException(context.getString(com.texa.care.R.string.exception_no_dongle_in_db));
        }
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        if (defaultAdapter == null || !defaultAdapter.isEnabled()) {
            return;
        }
        reconnect(communication, dongleDataManager, 0);
    }

    private void reconnect(Communication communication, DongleDataManager dongleDataManager, int i) {
        List<DeviceInfo> listBuildDeviceInfoList = dongleDataManager.buildDeviceInfoList();
        try {
            Timber.w("Communication status: %s", communication.getStatus());
            communication.reconnectToDevices(listBuildDeviceInfoList);
        } catch (CareLibException e) {
            e.printStackTrace();
        }
    }

    public TexaProfileDelegate provideTexaProfileDelegate(Context context, DongleDataManager dongleDataManager, SecurePreferences securePreferences, ArmadilloSharedPreferences armadilloSharedPreferences) {
        return new TexaProfileDelegate(context, dongleDataManager, securePreferences, armadilloSharedPreferences);
    }
}
