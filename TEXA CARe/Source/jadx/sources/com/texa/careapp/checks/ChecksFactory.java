package com.texa.careapp.checks;

import android.content.Context;
import com.texa.careapp.carelib.CommunicationObservable;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.utils.ServiceDataManager;
import com.texa.careapp.utils.UserDataManager;
import pl.charmas.android.reactivelocation2.ReactiveLocationProvider;

/* JADX INFO: loaded from: classes2.dex */
public class ChecksFactory {
    private CommunicationObservable mCommunicationObservable;
    private Context mContext;
    private DongleDataManager mDongleDataManager;
    private ReactiveLocationProvider mReactiveLocationProvider;
    private ServiceDataManager mServiceDataManager;
    private UserDataManager mUserDataManager;

    public enum CheckType {
        CHECK_USER_PHONE_NUMBER,
        CHECK_GPS,
        CHECK_CARE_CONNECTION,
        CHECK_CURRENT_SERVICE,
        CHECK_NETWORK,
        CHECK_BLUETOOTH
    }

    public ChecksFactory(Context context, UserDataManager userDataManager, CommunicationObservable communicationObservable, DongleDataManager dongleDataManager, ReactiveLocationProvider reactiveLocationProvider, ServiceDataManager serviceDataManager) {
        this.mContext = context;
        this.mUserDataManager = userDataManager;
        this.mCommunicationObservable = communicationObservable;
        this.mDongleDataManager = dongleDataManager;
        this.mReactiveLocationProvider = reactiveLocationProvider;
        this.mServiceDataManager = serviceDataManager;
    }

    /* JADX INFO: renamed from: com.texa.careapp.checks.ChecksFactory$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$careapp$checks$ChecksFactory$CheckType;

        static {
            int[] iArr = new int[CheckType.values().length];
            $SwitchMap$com$texa$careapp$checks$ChecksFactory$CheckType = iArr;
            try {
                iArr[CheckType.CHECK_USER_PHONE_NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$texa$careapp$checks$ChecksFactory$CheckType[CheckType.CHECK_GPS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$texa$careapp$checks$ChecksFactory$CheckType[CheckType.CHECK_CARE_CONNECTION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$texa$careapp$checks$ChecksFactory$CheckType[CheckType.CHECK_CURRENT_SERVICE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$texa$careapp$checks$ChecksFactory$CheckType[CheckType.CHECK_NETWORK.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$texa$careapp$checks$ChecksFactory$CheckType[CheckType.CHECK_BLUETOOTH.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public Check getCheck(CheckType checkType) {
        switch (AnonymousClass1.$SwitchMap$com$texa$careapp$checks$ChecksFactory$CheckType[checkType.ordinal()]) {
            case 1:
                return new CheckPhoneNumber(this.mUserDataManager.getUserCached());
            case 2:
                return new CheckGps(this.mContext);
            case 3:
                return new CheckCareConnection(this.mCommunicationObservable, this.mDongleDataManager);
            case 4:
                return new CheckCurrentService(this.mDongleDataManager, this.mServiceDataManager);
            case 5:
                return new CheckNetworkConnection(this.mContext);
            case 6:
                return new CheckBluetooth(this.mContext);
            default:
                throw new IllegalArgumentException("checkType not valid");
        }
    }

    public Check newCheckPhoneNumber() {
        return new CheckPhoneNumber(this.mUserDataManager.getUserCached());
    }

    public Check newCheckGps() {
        return new CheckGps(this.mContext);
    }

    public Check newCheckCareConnection() {
        return new CheckCareConnection(this.mCommunicationObservable, this.mDongleDataManager);
    }

    public Check newCheckCurrentService() {
        return new CheckCurrentService(this.mDongleDataManager, this.mServiceDataManager);
    }

    public Check newCheckNetworkConnection() {
        return new CheckNetworkConnection(this.mContext);
    }

    public Check newCheckBluetooth() {
        return new CheckBluetooth(this.mContext);
    }
}
