package com.texa.careapp.utils;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AccountManagerCallback;
import android.accounts.AccountManagerFuture;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.util.Log;
import com.activeandroid.ActiveAndroid;
import com.activeandroid.Cache;
import com.activeandroid.query.Delete;
import com.activeandroid.query.Select;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.texa.careapp.CareApplication;
import com.texa.careapp.Constants;
import com.texa.careapp.FlavorDelegator;
import com.texa.careapp.app.service.CareService;
import com.texa.careapp.app.update.FirmwareUpdateService;
import com.texa.careapp.app.walkthrough.WalkthroughActivityLastStep;
import com.texa.careapp.dagger.AuthenticationClient;
import com.texa.careapp.dagger.AuthenticationUser;
import com.texa.careapp.dagger.ClientId;
import com.texa.careapp.dagger.ClientSecret;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.fcm.FcmConstants;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.TermsModel;
import com.texa.careapp.model.TermsModelsEntity;
import com.texa.careapp.model.UserModel;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.networking.AuthorizationHeader;
import com.texa.careapp.networking.RegistrationInfo;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.networking.TexaCareAuthService;
import com.texa.careapp.networking.response.ServerResponse;
import com.texa.careapp.networking.response.UserResponse;
import com.texa.careapp.networking.response.UserVehicleListResponse;
import com.texa.careapp.networking.response.VehicleResponse;
import com.texa.careapp.sync.CAReWorkerManager;
import com.texa.careapp.utils.FirebaseAnalyticsEventManager;
import com.texa.careapp.utils.authentication.AccessToken;
import com.texa.careapp.utils.authentication.AccessTokenPersistenceManager;
import dagger.Lazy;
import io.reactivex.Completable;
import io.reactivex.CompletableEmitter;
import io.reactivex.CompletableOnSubscribe;
import io.reactivex.CompletableSource;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.functions.Predicate;
import io.reactivex.schedulers.Schedulers;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.concurrent.Callable;
import javax.inject.Inject;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class LoginHelperRx {
    public static String ACCOUNT_TYPE = "com.texa.care";
    private static final String TAG = "LoginHelperRx";

    @Inject
    @AuthenticationClient
    protected AccessTokenPersistenceManager mAccessTokenPersistenceManagerClient;

    @Inject
    @AuthenticationUser
    protected AccessTokenPersistenceManager mAccessTokenPersistenceManagerUser;

    @Inject
    protected AccountManager mAccountManager;

    @Inject
    protected CAReWorkerManager mCAReWorkerManager;

    @Inject
    @ClientId
    protected String mClientId;

    @Inject
    @ClientSecret
    protected String mClientSecret;

    @Inject
    protected Context mContext;

    @Inject
    protected Lazy<CrashlyticsHelper> mCrashlyticsHelper;

    @Inject
    protected DongleDataManager mDongleDataManager;

    @Inject
    protected FlavorDelegator mFlavorDelegator;
    private String mPassword;

    @Inject
    protected ServiceDataManager mServiceDataManager;

    @Inject
    protected SharedPreferences mSharedPreferences;

    @Inject
    TexaCareApiServiceUser mTexaCareApiService;

    @Inject
    protected TexaCareApiServiceUser mTexaCareApiServiceUser;

    @Inject
    protected TexaCareAuthService mTexaCareAuthService;

    @Inject
    protected UserDataManager mUserDataManager;
    private String mUsername;

    @Inject
    protected VehicleDataManager mVehicleDataManager;

    @Inject
    protected VehicleObserver mVehicleObserver;
    protected final Function<AccessToken, Observable<UserResponse>> mStoreAccountFunction = new Function<AccessToken, Observable<UserResponse>>() { // from class: com.texa.careapp.utils.LoginHelperRx.1
        @Override // io.reactivex.functions.Function
        public Observable<UserResponse> apply(AccessToken accessToken) {
            LoginHelperRx loginHelperRx = LoginHelperRx.this;
            loginHelperRx.storeCredentialsAndAccessToken(loginHelperRx.mAccountManager, LoginHelperRx.this.mUsername, LoginHelperRx.this.mPassword, accessToken);
            return LoginHelperRx.this.mTexaCareApiServiceUser.getUserObservable();
        }
    };
    protected Consumer<Throwable> mDeleteAccountFunction = new Consumer<Throwable>() { // from class: com.texa.careapp.utils.LoginHelperRx.2
        @Override // io.reactivex.functions.Consumer
        public void accept(Throwable th) {
            Utils.removeAccount(LoginHelperRx.this.mAccountManager);
        }
    };

    protected LoginHelperRx() {
    }

    public LoginHelperRx(CareApplication careApplication) {
        careApplication.component().inject(this);
    }

    public LoginHelperRx(CareApplication.ApplicationComponent applicationComponent) {
        applicationComponent.inject(this);
    }

    public Observable<?> doLogin(String str, String str2) {
        this.mUsername = str;
        this.mPassword = str2;
        return Observable.concat(getAccessToken(this.mClientId, this.mClientSecret, str, str2).subscribeOn(Schedulers.io()).doOnError(new LoginHelperRx$$ExternalSyntheticLambda2(this)).doOnNext(new Consumer() { // from class: com.texa.careapp.utils.LoginHelperRx$$ExternalSyntheticLambda24
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m642lambda$doLogin$0$comtexacareapputilsLoginHelperRx((AccessToken) obj);
            }
        }).flatMap(new Function() { // from class: com.texa.careapp.utils.LoginHelperRx$$ExternalSyntheticLambda10
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f$0.m643lambda$doLogin$1$comtexacareapputilsLoginHelperRx((AccessToken) obj);
            }
        }).flatMap(new Function() { // from class: com.texa.careapp.utils.LoginHelperRx$$ExternalSyntheticLambda6
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f$0.m644lambda$doLogin$2$comtexacareapputilsLoginHelperRx((UserResponse) obj);
            }
        }).doOnNext(new Consumer() { // from class: com.texa.careapp.utils.LoginHelperRx$$ExternalSyntheticLambda20
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m645lambda$doLogin$3$comtexacareapputilsLoginHelperRx((UserModel) obj);
            }
        }).doOnNext(new Consumer() { // from class: com.texa.careapp.utils.LoginHelperRx$$ExternalSyntheticLambda21
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m646lambda$doLogin$6$comtexacareapputilsLoginHelperRx((UserModel) obj);
            }
        }), userVehiclesObservable(), startSyncServiceDongle()).doOnError(this.mDeleteAccountFunction).doOnError(new LoginHelperRx$$ExternalSyntheticLambda2(this));
    }

    /* JADX INFO: renamed from: lambda$doLogin$0$com-texa-careapp-utils-LoginHelperRx, reason: not valid java name */
    public /* synthetic */ void m642lambda$doLogin$0$comtexacareapputilsLoginHelperRx(AccessToken accessToken) throws Exception {
        storeCredentialsAndAccessToken(this.mAccountManager, this.mUsername, this.mPassword, accessToken);
    }

    /* JADX INFO: renamed from: lambda$doLogin$1$com-texa-careapp-utils-LoginHelperRx, reason: not valid java name */
    public /* synthetic */ ObservableSource m643lambda$doLogin$1$comtexacareapputilsLoginHelperRx(AccessToken accessToken) throws Exception {
        return this.mTexaCareApiServiceUser.getUserObservable().observeOn(AndroidSchedulers.mainThread());
    }

    /* JADX INFO: renamed from: lambda$doLogin$2$com-texa-careapp-utils-LoginHelperRx, reason: not valid java name */
    public /* synthetic */ ObservableSource m644lambda$doLogin$2$comtexacareapputilsLoginHelperRx(UserResponse userResponse) throws Exception {
        try {
            return this.mFlavorDelegator.persistUserData(userResponse.userData);
        } catch (DatabaseIOException e) {
            throw new RuntimeException(e);
        }
    }

    /* JADX INFO: renamed from: lambda$doLogin$3$com-texa-careapp-utils-LoginHelperRx, reason: not valid java name */
    public /* synthetic */ void m645lambda$doLogin$3$comtexacareapputilsLoginHelperRx(UserModel userModel) throws Exception {
        this.mCrashlyticsHelper.get().setUser(userModel);
    }

    /* JADX INFO: renamed from: lambda$doLogin$6$com-texa-careapp-utils-LoginHelperRx, reason: not valid java name */
    public /* synthetic */ void m646lambda$doLogin$6$comtexacareapputilsLoginHelperRx(final UserModel userModel) throws Exception {
        ArrayList arrayList = new ArrayList();
        final TermsModel termsModel = new TermsModel(Constants.TERM_OF_SERVICES_NAME_PRIVACY, 2, new Date());
        arrayList.add(termsModel);
        this.mTexaCareApiService.acceptTerms(new TermsModelsEntity(arrayList)).observeOn(Schedulers.computation()).subscribeOn(Schedulers.computation()).subscribe(new Action() { // from class: com.texa.careapp.utils.LoginHelperRx$$ExternalSyntheticLambda19
            @Override // io.reactivex.functions.Action
            public final void run() throws Exception {
                LoginHelperRx.lambda$doLogin$4(termsModel, userModel);
            }
        }, new Consumer() { // from class: com.texa.careapp.utils.LoginHelperRx$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.e((Throwable) obj, "ERROR CALL TERMS ACCEPTANCE", new Object[0]);
            }
        });
    }

    static /* synthetic */ void lambda$doLogin$4(TermsModel termsModel, UserModel userModel) throws Exception {
        termsModel.setUser(userModel);
        try {
            Utils.safeModelSave(termsModel, Cache.getContext());
        } catch (DatabaseIOException e) {
            throw new RuntimeException(e);
        }
    }

    protected Observable<VehicleModel> userVehiclesObservable() {
        Observable observableObserveOn = this.mTexaCareApiServiceUser.getUserVehicleList().subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).flatMap(new Function() { // from class: com.texa.careapp.utils.LoginHelperRx$$ExternalSyntheticLambda15
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return Observable.fromIterable(((UserVehicleListResponse) obj).userVehicleDataList);
            }
        }).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).filter(new Predicate() { // from class: com.texa.careapp.utils.LoginHelperRx$$ExternalSyntheticLambda16
            @Override // io.reactivex.functions.Predicate
            public final boolean test(Object obj) {
                return this.f$0.m656x9655e35b((UserVehicleListResponse.UserVehicleData) obj);
            }
        }).flatMap(new Function() { // from class: com.texa.careapp.utils.LoginHelperRx$$ExternalSyntheticLambda9
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f$0.m657xf7a87ffa((UserVehicleListResponse.UserVehicleData) obj);
            }
        }).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread());
        VehicleDataManager vehicleDataManager = this.mVehicleDataManager;
        java.util.Objects.requireNonNull(vehicleDataManager);
        return observableObserveOn.flatMap(new LoginHelperRx$$ExternalSyntheticLambda13(vehicleDataManager)).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).doOnError(new LoginHelperRx$$ExternalSyntheticLambda2(this));
    }

    /* JADX INFO: renamed from: lambda$userVehiclesObservable$8$com-texa-careapp-utils-LoginHelperRx, reason: not valid java name */
    public /* synthetic */ boolean m656x9655e35b(UserVehicleListResponse.UserVehicleData userVehicleData) throws Exception {
        return isDongleInDb(userVehicleData.hwid);
    }

    /* JADX INFO: renamed from: lambda$userVehiclesObservable$9$com-texa-careapp-utils-LoginHelperRx, reason: not valid java name */
    public /* synthetic */ ObservableSource m657xf7a87ffa(UserVehicleListResponse.UserVehicleData userVehicleData) throws Exception {
        return this.mTexaCareApiServiceUser.getVehicleDetailsObservable(userVehicleData.vehicleId);
    }

    public Observable<VehicleModel> getUserVehicles() {
        Observable observableFlatMap = this.mTexaCareApiServiceUser.getUserVehicleList().subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).flatMap(new Function() { // from class: com.texa.careapp.utils.LoginHelperRx$$ExternalSyntheticLambda14
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return Observable.fromIterable(((UserVehicleListResponse) obj).userVehicleDataList);
            }
        }).flatMap(new Function() { // from class: com.texa.careapp.utils.LoginHelperRx$$ExternalSyntheticLambda8
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f$0.m655lambda$getUserVehicles$11$comtexacareapputilsLoginHelperRx((UserVehicleListResponse.UserVehicleData) obj);
            }
        });
        final VehicleDataManager vehicleDataManager = this.mVehicleDataManager;
        java.util.Objects.requireNonNull(vehicleDataManager);
        return observableFlatMap.flatMap(new Function() { // from class: com.texa.careapp.utils.LoginHelperRx$$ExternalSyntheticLambda12
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return vehicleDataManager.getVehicleObservable((VehicleResponse) obj);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$getUserVehicles$11$com-texa-careapp-utils-LoginHelperRx, reason: not valid java name */
    public /* synthetic */ ObservableSource m655lambda$getUserVehicles$11$comtexacareapputilsLoginHelperRx(UserVehicleListResponse.UserVehicleData userVehicleData) throws Exception {
        return this.mTexaCareApiServiceUser.getVehicleDetailsObservable(userVehicleData.vehicleId);
    }

    private boolean isDongleInDb(String str) {
        return this.mDongleDataManager.isDongleInDb(str);
    }

    public Observable<?> doRegistration(RegistrationInfo registrationInfo) {
        this.mUsername = registrationInfo.getUsername();
        this.mPassword = registrationInfo.getPassword();
        String str = new AuthorizationHeader(this.mAccessTokenPersistenceManagerClient.getAccessToken()).get();
        Observable<AccessToken> observableDoOnNext = this.mTexaCareAuthService.getClientToken(TexaCareAuthService.GRANT_TYPE_CLIENT_CREDENTIALS, this.mClientId, this.mClientSecret).doOnNext(new Consumer() { // from class: com.texa.careapp.utils.LoginHelperRx$$ExternalSyntheticLambda25
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m649lambda$doRegistration$12$comtexacareapputilsLoginHelperRx((AccessToken) obj);
            }
        });
        Observable observableDoOnNext2 = this.mTexaCareApiServiceUser.signUpObservable(str, registrationInfo).flatMap(new Function() { // from class: com.texa.careapp.utils.LoginHelperRx$$ExternalSyntheticLambda7
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f$0.m650lambda$doRegistration$13$comtexacareapputilsLoginHelperRx((UserResponse) obj);
            }
        }).doOnNext(new Consumer() { // from class: com.texa.careapp.utils.LoginHelperRx$$ExternalSyntheticLambda22
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m651lambda$doRegistration$14$comtexacareapputilsLoginHelperRx((UserModel) obj);
            }
        }).flatMap(new Function() { // from class: com.texa.careapp.utils.LoginHelperRx$$ExternalSyntheticLambda5
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f$0.m652lambda$doRegistration$15$comtexacareapputilsLoginHelperRx((UserModel) obj);
            }
        }).flatMap(this.mStoreAccountFunction).doOnNext(new Consumer() { // from class: com.texa.careapp.utils.LoginHelperRx$$ExternalSyntheticLambda23
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m653lambda$doRegistration$18$comtexacareapputilsLoginHelperRx((UserResponse) obj);
            }
        });
        if (this.mAccessTokenPersistenceManagerClient.getAccessToken() == null || ((long) (this.mAccessTokenPersistenceManagerClient.getAccessToken().expires_in.intValue() * 1000)) + this.mAccessTokenPersistenceManagerClient.getAccessToken().timestamp.longValue() < new Date().getTime()) {
            return Observable.concat(observableDoOnNext, observableDoOnNext2, userVehiclesObservable(), startSyncServiceDongle()).doOnError(this.mDeleteAccountFunction).doOnError(new LoginHelperRx$$ExternalSyntheticLambda2(this));
        }
        return Observable.concat(observableDoOnNext2, userVehiclesObservable(), startSyncServiceDongle()).doOnError(this.mDeleteAccountFunction).doOnError(new LoginHelperRx$$ExternalSyntheticLambda2(this));
    }

    /* JADX INFO: renamed from: lambda$doRegistration$12$com-texa-careapp-utils-LoginHelperRx, reason: not valid java name */
    public /* synthetic */ void m649lambda$doRegistration$12$comtexacareapputilsLoginHelperRx(AccessToken accessToken) throws Exception {
        this.mAccessTokenPersistenceManagerClient.persist(accessToken);
    }

    /* JADX INFO: renamed from: lambda$doRegistration$13$com-texa-careapp-utils-LoginHelperRx, reason: not valid java name */
    public /* synthetic */ ObservableSource m650lambda$doRegistration$13$comtexacareapputilsLoginHelperRx(UserResponse userResponse) throws Exception {
        try {
            return this.mFlavorDelegator.persistUserData(userResponse.userData);
        } catch (DatabaseIOException e) {
            throw new RuntimeException(e);
        }
    }

    /* JADX INFO: renamed from: lambda$doRegistration$14$com-texa-careapp-utils-LoginHelperRx, reason: not valid java name */
    public /* synthetic */ void m651lambda$doRegistration$14$comtexacareapputilsLoginHelperRx(UserModel userModel) throws Exception {
        this.mCrashlyticsHelper.get().setUser(userModel);
    }

    /* JADX INFO: renamed from: lambda$doRegistration$15$com-texa-careapp-utils-LoginHelperRx, reason: not valid java name */
    public /* synthetic */ ObservableSource m652lambda$doRegistration$15$comtexacareapputilsLoginHelperRx(UserModel userModel) throws Exception {
        return getAccessToken(this.mClientId, this.mClientSecret, this.mUsername, this.mPassword);
    }

    /* JADX INFO: renamed from: lambda$doRegistration$18$com-texa-careapp-utils-LoginHelperRx, reason: not valid java name */
    public /* synthetic */ void m653lambda$doRegistration$18$comtexacareapputilsLoginHelperRx(UserResponse userResponse) throws Exception {
        ArrayList arrayList = new ArrayList();
        final TermsModel termsModel = new TermsModel(Constants.TERM_OF_SERVICES_NAME_PRIVACY, 2, new Date());
        arrayList.add(termsModel);
        this.mTexaCareApiService.acceptTerms(new TermsModelsEntity(arrayList)).subscribe(new Action() { // from class: com.texa.careapp.utils.LoginHelperRx$$ExternalSyntheticLambda18
            @Override // io.reactivex.functions.Action
            public final void run() throws Exception {
                LoginHelperRx.lambda$doRegistration$16(termsModel);
            }
        }, new Consumer() { // from class: com.texa.careapp.utils.LoginHelperRx$$ExternalSyntheticLambda4
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.e((Throwable) obj, "ERROR CALL TERMS ACCEPTANCE", new Object[0]);
            }
        });
    }

    static /* synthetic */ void lambda$doRegistration$16(TermsModel termsModel) throws Exception {
        termsModel.setUser((UserModel) new Select().from(UserModel.class).executeSingle());
        try {
            Utils.safeModelSave(termsModel, Cache.getContext());
        } catch (DatabaseIOException e) {
            throw new RuntimeException(e);
        }
    }

    protected Observable<AccessToken> getAccessToken(String str, String str2, String str3, String str4) {
        return this.mTexaCareAuthService.getAccessTokenObservable("password", str, str2, str3, str4);
    }

    protected void storeCredentialsAndAccessToken(AccountManager accountManager, String str, String str2, AccessToken accessToken) {
        addOrFindAccount(accountManager, str, str2);
        this.mAccessTokenPersistenceManagerUser.persist(accessToken);
    }

    protected static Account addOrFindAccount(AccountManager accountManager, String str, String str2) {
        for (Account account : accountManager.getAccountsByType(Constants.ACCOUNT_TYPE)) {
            if (account.name.equalsIgnoreCase(str)) {
                accountManager.setPassword(account, str2);
                return account;
            }
        }
        Account account2 = new Account(str, Constants.ACCOUNT_TYPE);
        accountManager.addAccountExplicitly(account2, str2, null);
        return account2;
    }

    public boolean isUserLogged() {
        return Utils.isUserLogged(this.mAccountManager, this.mUserDataManager);
    }

    public Observable<AccessToken> getAccessTokenAndPersist(String str, String str2) {
        this.mUsername = str;
        this.mPassword = str2;
        return this.mTexaCareAuthService.getAccessTokenObservable("password", this.mClientId, this.mClientSecret, str, str2).doOnNext(new Consumer() { // from class: com.texa.careapp.utils.LoginHelperRx$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m654x10f7da4e((AccessToken) obj);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$getAccessTokenAndPersist$19$com-texa-careapp-utils-LoginHelperRx, reason: not valid java name */
    public /* synthetic */ void m654x10f7da4e(AccessToken accessToken) throws Exception {
        storeCredentialsAndAccessToken(this.mAccountManager, this.mUsername, this.mPassword, accessToken);
    }

    protected Observable<ServerResponse> getUserDongleObservable() {
        return this.mTexaCareApiServiceUser.userDongleAssociation().doOnError(new LoginHelperRx$$ExternalSyntheticLambda2(this));
    }

    protected Observable<Object> startSyncServiceDongle() {
        this.mCAReWorkerManager.scheduleOneOffJob(FcmConstants.ID_SERVICE_SOS_INFO_ALERT_NOTIFICATION, null);
        return Observable.empty();
    }

    protected void logException(Throwable th) {
        Timber.w(th, "login exception", new Object[0]);
    }

    public void doLogOut(boolean z) {
        Intent intent;
        Context context = this.mContext;
        context.stopService(CareService.buildDefaultIntent(context));
        Context context2 = this.mContext;
        context2.stopService(FirmwareUpdateService.buildDefaultIntent(context2));
        deleteAccount();
        try {
            try {
                Thread.sleep(1000L);
                deleteAllSharedPreferences();
                if (!deleteAllDBData()) {
                    Log.wtf(TAG, "DB Not cleared.");
                }
                this.mVehicleObserver.resetVehicleObserver();
                FirebaseAnalytics.getInstance(Cache.getContext()).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_OUT_OF_THE_BOX_ACCESS_SING_UP.getTag(), null);
            } catch (Exception e) {
                Timber.w(e, "#doLogOut()", new Object[0]);
                deleteAllSharedPreferences();
                if (!deleteAllDBData()) {
                    Log.wtf(TAG, "DB Not cleared.");
                }
                this.mVehicleObserver.resetVehicleObserver();
                FirebaseAnalytics.getInstance(Cache.getContext()).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_OUT_OF_THE_BOX_ACCESS_SING_UP.getTag(), null);
                if (!z) {
                    return;
                } else {
                    intent = new Intent(this.mContext, (Class<?>) WalkthroughActivityLastStep.class);
                }
            }
            if (z) {
                intent = new Intent(this.mContext, (Class<?>) WalkthroughActivityLastStep.class);
                intent.addFlags(268468224);
                this.mContext.startActivity(intent);
            }
        } catch (Throwable th) {
            deleteAllSharedPreferences();
            if (!deleteAllDBData()) {
                Log.wtf(TAG, "DB Not cleared.");
            }
            this.mVehicleObserver.resetVehicleObserver();
            FirebaseAnalytics.getInstance(Cache.getContext()).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_OUT_OF_THE_BOX_ACCESS_SING_UP.getTag(), null);
            if (z) {
                Intent intent2 = new Intent(this.mContext, (Class<?>) WalkthroughActivityLastStep.class);
                intent2.addFlags(268468224);
                this.mContext.startActivity(intent2);
            }
            throw th;
        }
    }

    public Completable doLogoutCompletable(final boolean z) {
        return Completable.defer(new Callable() { // from class: com.texa.careapp.utils.LoginHelperRx$$ExternalSyntheticLambda17
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f$0.m648x3b9822b2(z);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$doLogoutCompletable$21$com-texa-careapp-utils-LoginHelperRx, reason: not valid java name */
    public /* synthetic */ CompletableSource m648x3b9822b2(final boolean z) throws Exception {
        return Completable.create(new CompletableOnSubscribe() { // from class: com.texa.careapp.utils.LoginHelperRx$$ExternalSyntheticLambda11
            @Override // io.reactivex.CompletableOnSubscribe
            public final void subscribe(CompletableEmitter completableEmitter) throws Exception {
                this.f$0.m647xda458613(z, completableEmitter);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$doLogoutCompletable$20$com-texa-careapp-utils-LoginHelperRx, reason: not valid java name */
    public /* synthetic */ void m647xda458613(boolean z, CompletableEmitter completableEmitter) throws Exception {
        doLogOut(z);
        completableEmitter.onComplete();
    }

    public void refreshDataSignInStep() {
        deleteAccount();
        new Delete().from(UserModel.class).execute();
    }

    public boolean deleteAllDBData() {
        if (Cache.getContext().getDatabasePath("care.db").exists() && Cache.getContext().deleteDatabase("care.db")) {
            ActiveAndroid.dispose();
            ActiveAndroid.initialize(Cache.getContext());
        }
        return Cache.getContext().getDatabasePath("care.db").exists();
    }

    public void deleteAllSharedPreferences() {
        SharedPreferences.Editor editorEdit = this.mSharedPreferences.edit();
        editorEdit.clear();
        editorEdit.apply();
    }

    private void deleteAccount() {
        for (Account account : this.mAccountManager.getAccounts()) {
            Timber.d("%s %s != %s ", TAG, account.type, ACCOUNT_TYPE);
            if (account.type.equals(ACCOUNT_TYPE)) {
                this.mAccountManager.removeAccount(account, new AccountManagerCallback() { // from class: com.texa.careapp.utils.LoginHelperRx$$ExternalSyntheticLambda0
                    @Override // android.accounts.AccountManagerCallback
                    public final void run(AccountManagerFuture accountManagerFuture) {
                        LoginHelperRx.lambda$deleteAccount$22(accountManagerFuture);
                    }
                }, null);
            }
        }
    }

    static /* synthetic */ void lambda$deleteAccount$22(AccountManagerFuture accountManagerFuture) {
        try {
            if (((Boolean) accountManagerFuture.getResult()).booleanValue()) {
                Timber.d("%s account deleted", TAG);
            } else {
                StringBuilder sb = new StringBuilder();
                String str = TAG;
                sb.append(str);
                sb.append("%s account NOT deleted");
                Timber.d(sb.toString(), str);
            }
        } catch (AuthenticatorException | OperationCanceledException | IOException e) {
            Timber.w(e, "%s account not deleted ", TAG);
        }
    }
}
