package com.texa.careapp.app.settings;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import androidx.databinding.DataBindingUtil;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.careapp.CareApplication;
import com.texa.careapp.carelib.CommunicationObservable;
import com.texa.careapp.databinding.ScreenSettingsLayoutBinding;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.DongleModel;
import com.texa.careapp.model.ISettingsModel;
import com.texa.careapp.model.UserModel;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.networking.response.UserResponse;
import com.texa.careapp.utils.FirebaseAnalyticsEventManager;
import com.texa.careapp.utils.LoginHelperRx;
import com.texa.careapp.utils.SettingsUtils;
import com.texa.careapp.utils.UserDataManager;
import com.texa.careapp.utils.Utils;
import com.texa.careapp.utils.VehicleDataManager;
import com.texa.careapp.utils.VehicleObserver;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.webservices.TexaService;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.schedulers.Schedulers;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class SettingsScreen extends Screen {
    private boolean goToServices;
    private boolean isDisposed;
    private Activity mActivity;
    private SettingsAdapter mAdapter;

    @Inject
    protected CommunicationObservable mCommunicationObservable;

    @Inject
    protected Context mContext;

    @Inject
    protected DongleDataManager mDongleDataManager;

    @Inject
    protected EventBus mEventBus;

    @Inject
    protected LoginHelperRx mLoginHelperRx;

    @Inject
    protected Profile mProfile;
    private List<ISettingsModel> mSettings = new ArrayList();

    @Inject
    protected TexaCareApiServiceUser mTexaCareApiServiceUser;

    @Inject
    protected TexaService mTexaService;
    private UserModel mUser;
    private Disposable mUserDataDisposable;

    @Inject
    protected UserDataManager mUserDataManager;

    @Inject
    protected VehicleDataManager mVehicleDataManager;
    private List<VehicleModel> mVehicleList;

    @Inject
    protected VehicleObserver mVehicleObserver;

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return "SettingsScreen";
    }

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.screen_settings_layout;
    }

    @Override // com.texa.care.navigation.Screen
    public int getTitle() {
        return R.string.settings;
    }

    public SettingsAdapter getAdapter() {
        return this.mAdapter;
    }

    @Override // com.texa.care.navigation.Screen
    public void onPause() {
        super.onPause();
        Utils.safeDispose(this.mUserDataDisposable);
        this.isDisposed = false;
    }

    @Override // com.texa.care.navigation.Screen
    public void onResume() {
        super.onResume();
        DongleModel dongleModel = this.mDongleDataManager.getDongleModel();
        if (this.mUserDataDisposable != null && !this.isDisposed) {
            this.mUserDataDisposable = setUserData();
            this.isDisposed = true;
        }
        if (dongleModel == null) {
            Timber.w("mDongleModel is null", new Object[0]);
        }
    }

    SettingsScreen(Activity activity, boolean z) {
        this.mActivity = activity;
        this.goToServices = z;
    }

    @Override // com.texa.care.navigation.Screen
    public void onDestroyView() {
        super.onDestroyView();
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        ((CareApplication) getNavigator().getApplication()).component().inject(this);
        ScreenSettingsLayoutBinding screenSettingsLayoutBinding = (ScreenSettingsLayoutBinding) DataBindingUtil.bind(view);
        FirebaseAnalytics.getInstance(getContext()).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_OPENED_SETTINGS_SCREEN.getTag(), null);
        screenSettingsLayoutBinding.settingsRecycler.setNestedScrollingEnabled(false);
        if (!this.isDisposed) {
            this.mUserDataDisposable = setUserData();
            this.isDisposed = true;
        }
        this.mVehicleList = this.mVehicleDataManager.getAllVehicles();
        screenSettingsLayoutBinding.settingsRecycler.setLayoutManager(getLayoutManager());
        addHeaders();
        this.mAdapter = new SettingsAdapter(this.mActivity, this.mSettings, getNavigator());
        screenSettingsLayoutBinding.settingsRecycler.setAdapter(this.mAdapter);
        if (this.goToServices) {
            screenSettingsLayoutBinding.settingsRecycler.scrollToPosition(this.mVehicleList.size() + 4);
        }
    }

    private RecyclerView.LayoutManager getLayoutManager() {
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this.mContext);
        linearLayoutManager.setOrientation(1);
        return linearLayoutManager;
    }

    private void addHeaders() {
        this.mSettings.add(SettingsUtils.getSettingsUserTopHeader(this.mContext));
        this.mSettings.add(SettingsUtils.getSettingUserItem(this.mContext, this.mUser));
        this.mSettings.add(SettingsUtils.getSettingsVehicleTopHeader(this.mContext));
        this.mSettings.add(SettingsUtils.getSettingsVehicleItem(this.mVehicleList));
        this.mSettings.add(SettingsUtils.getSettingsAddVehicleItem(this.mContext, this.mVehicleList.size()));
        this.mSettings.add(SettingsUtils.getSettingsServicesTopHeader(this.mContext));
        this.mSettings.add(SettingsUtils.getSettingsServicesItem(this.mContext));
        this.mSettings.add(SettingsUtils.getSettingsServicesContactsItem(this.mContext));
        this.mSettings.add(SettingsUtils.getSettingsInfoTopHeader(this.mContext));
        this.mSettings.add(SettingsUtils.getSettingsSwFwVersionItem(this.mContext));
        this.mSettings.add(SettingsUtils.getSettingsTroubleShootingItem(this.mContext));
        this.mSettings.add(SettingsUtils.getSettingsCompanyInfoItem(this.mContext));
        this.mSettings.add(SettingsUtils.getSettingsPrivacyPolicyItem(this.mContext));
        this.mSettings.add(SettingsUtils.getSettingsTermsServiceItem(this.mContext));
        this.mSettings.add(SettingsUtils.getSettingsTermsSOSItem(this.mContext));
        this.mSettings.add(SettingsUtils.getSettingsThirdPartsLicenseItem(this.mContext));
        this.mSettings.add(SettingsUtils.getSettingsConfigurationTopHeader(this.mContext));
        this.mSettings.add(SettingsUtils.getSettingsGeneralSettingsItem(this.mContext));
        this.mSettings.add(SettingsUtils.getSettingsFabricResetItem(this.mContext));
    }

    private Observable<UserModel> observeUser() {
        final UserModel userCached = this.mUserDataManager.getUserCached();
        Observable<UserResponse> userObservable = this.mTexaCareApiServiceUser.getUserObservable();
        if (userCached == null) {
            return userObservable.subscribeOn(Schedulers.io()).flatMap(new Function() { // from class: com.texa.careapp.app.settings.SettingsScreen$$ExternalSyntheticLambda3
                @Override // io.reactivex.functions.Function
                public final Object apply(Object obj) {
                    return this.f$0.m391x9cd14b7((UserResponse) obj);
                }
            });
        }
        if (userCached.isSyncNeeded()) {
            return Observable.just(userCached);
        }
        return Observable.concat(Observable.just(userCached), userObservable.flatMap(new Function() { // from class: com.texa.careapp.app.settings.SettingsScreen$$ExternalSyntheticLambda4
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f$0.m392xc344a256(userCached, (UserResponse) obj);
            }
        }));
    }

    /* JADX INFO: renamed from: lambda$observeUser$0$com-texa-careapp-app-settings-SettingsScreen, reason: not valid java name */
    public /* synthetic */ ObservableSource m391x9cd14b7(UserResponse userResponse) throws Exception {
        Objects.requireNonNull(userResponse, "userResponse cannot be null");
        UserModel userModelFrom = UserModel.from(userResponse.userData);
        try {
            Utils.safeModelSave(userModelFrom, getContext());
            return Observable.just(userModelFrom);
        } catch (DatabaseIOException e) {
            throw Exceptions.propagate(e);
        }
    }

    /* JADX INFO: renamed from: lambda$observeUser$1$com-texa-careapp-app-settings-SettingsScreen, reason: not valid java name */
    public /* synthetic */ ObservableSource m392xc344a256(UserModel userModel, UserResponse userResponse) throws Exception {
        userModel.updateFrom(userResponse.userData);
        try {
            Utils.safeModelSave(userModel, getContext());
            return Observable.just(userModel);
        } catch (DatabaseIOException e) {
            throw Exceptions.propagate(e);
        }
    }

    private Disposable setUserData() {
        return observeUser().doOnError(new Consumer() { // from class: com.texa.careapp.app.settings.SettingsScreen$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.e((Throwable) obj, "displayUserData() throws exception.", new Object[0]);
            }
        }).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.texa.careapp.app.settings.SettingsScreen$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                this.f$0.setNameSurname((UserModel) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.settings.SettingsScreen$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                ((Throwable) obj).printStackTrace();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setNameSurname(UserModel userModel) {
        if (userModel == null || Utils.isEmpty(userModel.getFirstName()) || Utils.isEmpty(userModel.getLastName())) {
            return;
        }
        this.mUser = userModel;
        SettingsAdapter settingsAdapter = this.mAdapter;
        if (settingsAdapter != null) {
            settingsAdapter.refreshUserItem(1, userModel);
        }
    }
}
