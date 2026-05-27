package com.texa.careapp.app.activationSosServices;

import android.content.SharedPreferences;
import android.view.View;
import com.activeandroid.query.Select;
import com.texa.careapp.CareApplication;
import com.texa.careapp.app.activationSosServices.contact.ActivationServiceContactActivity;
import com.texa.careapp.app.activationSosServices.entity.PurchaseLockEntity;
import com.texa.careapp.app.activationSosServices.entity.PurchaseLockResponseEntity;
import com.texa.careapp.app.activationSosServices.phone.ActivationPhoneNumberActivity;
import com.texa.careapp.app.ecodriving.AcceptationTermsScreen;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.DongleModel;
import com.texa.careapp.model.PurchaseData;
import com.texa.careapp.model.ServiceDataModel;
import com.texa.careapp.model.UserModel;
import com.texa.careapp.networking.ServiceLockStatus;
import com.texa.careapp.networking.response.ServerResponse;
import com.texa.careapp.networking.response.ServiceListResponse;
import com.texa.careapp.sync.CAReWorkerManager;
import com.texa.careapp.utils.UserDataManager;
import com.texa.careapp.utils.Utils;
import com.texa.carelib.core.OperationAlreadyRunningException;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.functions.Predicate;
import io.reactivex.schedulers.Schedulers;
import io.reactivex.subjects.PublishSubject;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import timber.log.Timber;

/* JADX INFO: loaded from: classes.dex */
public abstract class AcceptationTermsSosServiceScreen extends AcceptationTermsScreen {

    @Inject
    CAReWorkerManager caReWorkerManager;
    private Disposable disposable;

    @Inject
    DongleDataManager dongleDataManager;
    private PublishSubject<Boolean> guardianAngelAreAvailable;
    private boolean haveToCheck;
    private DongleModel mDongleCached;

    @Inject
    EventBus mEventBus;

    @Inject
    SharedPreferences mSharedPreferences;
    private UserModel mUserCached;
    private PublishSubject<Boolean> phoneNumberValidated;
    private ServiceDataModel service;
    private PublishSubject<PurchaseData> sosServicePurchased;

    @Inject
    UserDataManager userDataManager;

    static /* synthetic */ boolean lambda$observePlayStorePurchase$26(PurchaseData purchaseData) throws Exception {
        return purchaseData != null;
    }

    public void setDisposable(Disposable disposable) {
        this.disposable = disposable;
    }

    public Disposable getDisposable() {
        return this.disposable;
    }

    public ServiceDataModel getService() {
        return this.service;
    }

    public AcceptationTermsSosServiceScreen(ServiceDataModel serviceDataModel) {
        super(serviceDataModel.getContractUrl());
        this.haveToCheck = true;
        this.service = serviceDataModel;
        this.guardianAngelAreAvailable = PublishSubject.create();
        this.sosServicePurchased = PublishSubject.create();
        this.phoneNumberValidated = PublishSubject.create();
    }

    @Override // com.texa.careapp.app.ecodriving.AcceptationTermsScreen, com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        super.afterViewInjection(view);
        ((CareApplication) getNavigator().getApplication()).component().inject(this);
        this.mUserCached = this.userDataManager.getUserCached();
        this.mDongleCached = this.dongleDataManager.getDongleModel();
        this.mEventBus.register(this);
    }

    @Override // com.texa.care.navigation.Screen
    public void onDestroyView() {
        super.onDestroyView();
        this.mEventBus.unregister(this);
        Utils.safeDispose(this.disposable);
    }

    Observable<Object> observerForLightActivation() {
        return Observable.concat(observePhoneNumberValidation(), observeGuardianAngelContacts(), checkLockResourceAvailable()).concatWith(activationService().doOnNext(new Consumer() { // from class: com.texa.careapp.app.activationSosServices.AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m117x36a92f80((ServiceDataModel) obj);
            }
        }));
    }

    /* JADX INFO: renamed from: lambda$observerForLightActivation$0$com-texa-careapp-app-activationSosServices-AcceptationTermsSosServiceScreen, reason: not valid java name */
    public /* synthetic */ void m117x36a92f80(ServiceDataModel serviceDataModel) throws Exception {
        goTo(new ActivationServiceCompletedScreen(serviceDataModel));
        this.mEventBus.post(new ActivationCompletedEvent());
    }

    Observable<Object> observerForPlusActivation() {
        return Observable.concat(observePhoneNumberValidation(), checkLockResourceAvailable().flatMap(new Function() { // from class: com.texa.careapp.app.activationSosServices.AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda12
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f$0.changeLockStatusIntoPermanent((PurchaseLockResponseEntity) obj);
            }
        }).flatMap(new Function() { // from class: com.texa.careapp.app.activationSosServices.AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda10
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f$0.observePlayStorePurchase((PurchaseLockResponseEntity) obj);
            }
        }).flatMap(new Function() { // from class: com.texa.careapp.app.activationSosServices.AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda13
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f$0.observeSendReceipt((PurchaseData) obj);
            }
        })).doOnSubscribe(new Consumer() { // from class: com.texa.careapp.app.activationSosServices.AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda6
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.d("PLUS OBSERVABLE GLOBAL onSubscribe", new Object[0]);
            }
        });
    }

    Observable<Object> observerForPlusTrialActivation() {
        return Observable.concat(observePhoneNumberValidation(), checkLockResourceAvailable()).concatWith(activationService().doOnNext(new Consumer() { // from class: com.texa.careapp.app.activationSosServices.AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda11
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m118x55019208((ServiceDataModel) obj);
            }
        }));
    }

    /* JADX INFO: renamed from: lambda$observerForPlusTrialActivation$2$com-texa-careapp-app-activationSosServices-AcceptationTermsSosServiceScreen, reason: not valid java name */
    public /* synthetic */ void m118x55019208(ServiceDataModel serviceDataModel) throws Exception {
        goTo(new ActivationServiceCompletedScreen(serviceDataModel));
        this.mEventBus.post(new ActivationCompletedEvent());
    }

    protected Observable<ServiceDataModel> activationService() {
        return this.mTexaCareApiService.activationService(this.service).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).flatMap(new Function() { // from class: com.texa.careapp.app.activationSosServices.AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda14
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f$0.m110x8781bbef((ServiceListResponse) obj);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$activationService$3$com-texa-careapp-app-activationSosServices-AcceptationTermsSosServiceScreen, reason: not valid java name */
    public /* synthetic */ ObservableSource m110x8781bbef(ServiceListResponse serviceListResponse) throws Exception {
        for (ServiceDataModel serviceDataModel : serviceListResponse.getList()) {
            if (serviceDataModel.equals(this.service)) {
                try {
                    replaceServiceDataInDb(this.service, serviceDataModel);
                    this.service = serviceDataModel;
                } catch (DatabaseIOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return Observable.just(this.service);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Observable<ServerResponse> observeSendReceipt(final PurchaseData purchaseData) {
        return this.mTexaCareApiService.sendReceipt(purchaseData).subscribeOn(Schedulers.newThread()).onErrorResumeNext(new Function() { // from class: com.texa.careapp.app.activationSosServices.AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda15
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f$0.m116xc523dddf((Throwable) obj);
            }
        }).doOnNext(new Consumer() { // from class: com.texa.careapp.app.activationSosServices.AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda27
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                AcceptationTermsSosServiceScreen.lambda$observeSendReceipt$5(purchaseData, (ServerResponse) obj);
            }
        }).doOnSubscribe(new Consumer() { // from class: com.texa.careapp.app.activationSosServices.AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda5
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.d("PLUS OBSERVABLE observeSendReceipt onSubscribe", new Object[0]);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$observeSendReceipt$4$com-texa-careapp-app-activationSosServices-AcceptationTermsSosServiceScreen, reason: not valid java name */
    public /* synthetic */ ObservableSource m116xc523dddf(Throwable th) throws Exception {
        Timber.d("PLUS OBSERVABLE observeSendReceipt onError", new Object[0]);
        scheduleSyncReceiptDataTask();
        return Observable.empty();
    }

    static /* synthetic */ void lambda$observeSendReceipt$5(PurchaseData purchaseData, ServerResponse serverResponse) throws Exception {
        Timber.d("PLUS OBSERVABLE observeSendReceipt onNext", new Object[0]);
        purchaseData.delete();
    }

    private Observable<Boolean> observeGuardianAngelContacts() {
        return this.guardianAngelAreAvailable.hide().startWith(Boolean.valueOf(this.mUserCached.getGuardianAngelContacts().size() >= 1)).doOnNext(new Consumer() { // from class: com.texa.careapp.app.activationSosServices.AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda22
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m111x59bdaab5((Boolean) obj);
            }
        }).filter(new Predicate() { // from class: com.texa.careapp.app.activationSosServices.AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda21
            @Override // io.reactivex.functions.Predicate
            public final boolean test(Object obj) {
                return ((Boolean) obj).booleanValue();
            }
        }).firstElement().toObservable().doOnSubscribe(new Consumer() { // from class: com.texa.careapp.app.activationSosServices.AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.d("PLUS OBSERVABLE observeGuardianAngelContacts onSubscribe", new Object[0]);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$observeGuardianAngelContacts$7$com-texa-careapp-app-activationSosServices-AcceptationTermsSosServiceScreen, reason: not valid java name */
    public /* synthetic */ void m111x59bdaab5(Boolean bool) throws Exception {
        Timber.d("PLUS OBSERVABLE observeGuardianAngelContacts onNext aBoolean == %s", bool);
        if (bool.booleanValue()) {
            return;
        }
        getContext().startActivity(ActivationServiceContactActivity.buildIntent(getContext()));
        Timber.d("observeGuardianAngelContacts -> startContactActivity", new Object[0]);
    }

    private Observable<Boolean> observePhoneNumberValidation() {
        return this.phoneNumberValidated.hide().startWith(Boolean.valueOf(Utils.isValidatedUserPhoneNumber(this.mUserCached))).doOnNext(new Consumer() { // from class: com.texa.careapp.app.activationSosServices.AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda24
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m112xe3f8f6b0((Boolean) obj);
            }
        }).filter(new Predicate() { // from class: com.texa.careapp.app.activationSosServices.AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda23
            @Override // io.reactivex.functions.Predicate
            public final boolean test(Object obj) {
                return ((Boolean) obj).booleanValue();
            }
        }).firstElement().toObservable().doOnSubscribe(new Consumer() { // from class: com.texa.careapp.app.activationSosServices.AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.d("observePhoneNumberValidation onSubscribe", new Object[0]);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$observePhoneNumberValidation$10$com-texa-careapp-app-activationSosServices-AcceptationTermsSosServiceScreen, reason: not valid java name */
    public /* synthetic */ void m112xe3f8f6b0(Boolean bool) throws Exception {
        Timber.d("observePhoneNumberValidation onNext aBoolean == %s", bool);
        if (bool.booleanValue()) {
            return;
        }
        getContext().startActivity(ActivationPhoneNumberActivity.buildIntent(getContext()));
        Timber.d("observePhoneNumberValidation -> startActivity", new Object[0]);
    }

    private Observable<PurchaseLockResponseEntity> checkLockResourceAvailable() {
        return this.mTexaCareApiService.checkLockStatus(new PurchaseLockEntity(this.service.getIdType().name(), this.mDongleCached.getHwid(), Utils.getUniqueDeviceId(this.mSharedPreferences))).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).doOnError(new Consumer() { // from class: com.texa.careapp.app.activationSosServices.AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda8
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.d("Impossible contact the server", new Object[0]);
            }
        }).doOnNext(new Consumer() { // from class: com.texa.careapp.app.activationSosServices.AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda30
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                AcceptationTermsSosServiceScreen.lambda$checkLockResourceAvailable$14((PurchaseLockResponseEntity) obj);
            }
        }).filter(new Predicate() { // from class: com.texa.careapp.app.activationSosServices.AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda19
            @Override // io.reactivex.functions.Predicate
            public final boolean test(Object obj) {
                return AcceptationTermsSosServiceScreen.lambda$checkLockResourceAvailable$15((PurchaseLockResponseEntity) obj);
            }
        }).firstElement().toObservable().doOnSubscribe(new Consumer() { // from class: com.texa.careapp.app.activationSosServices.AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.d("PLUS OBSERVABLE checkLockResourceAvailable onSubscribe", new Object[0]);
            }
        });
    }

    static /* synthetic */ void lambda$checkLockResourceAvailable$14(PurchaseLockResponseEntity purchaseLockResponseEntity) throws Exception {
        Timber.d("PLUS OBSERVABLE checkLockResourceAvailable doOnNext ticket -> %s", purchaseLockResponseEntity.getTicket());
        if (purchaseLockResponseEntity.isAlreadyPending()) {
            throw new RuntimeException(new OperationAlreadyRunningException("Lock Resource is already pending"));
        }
    }

    static /* synthetic */ boolean lambda$checkLockResourceAvailable$15(PurchaseLockResponseEntity purchaseLockResponseEntity) throws Exception {
        return !purchaseLockResponseEntity.isAlreadyPending();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Observable<PurchaseLockResponseEntity> changeLockStatusIntoPermanent(PurchaseLockResponseEntity purchaseLockResponseEntity) {
        return changeLockStatus(purchaseLockResponseEntity, ServiceLockStatus.PERMANENT);
    }

    private Observable<PurchaseLockResponseEntity> changeLockStatusIntoTemporary(PurchaseLockResponseEntity purchaseLockResponseEntity) {
        return changeLockStatus(purchaseLockResponseEntity, ServiceLockStatus.TEMPORARY);
    }

    private Observable<PurchaseLockResponseEntity> changeLockStatus(final PurchaseLockResponseEntity purchaseLockResponseEntity, final String str) {
        return this.mTexaCareApiService.changeLockStatus(purchaseLockResponseEntity.getTicket(), str).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).doOnError(new Consumer() { // from class: com.texa.careapp.app.activationSosServices.AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda7
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.d("Impossible contact the server", new Object[0]);
            }
        }).doOnNext(new Consumer() { // from class: com.texa.careapp.app.activationSosServices.AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda28
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.d("PLUS OBSERVABLE changeLockStatusInto -> %s doOnNext", str);
            }
        }).flatMap(new Function() { // from class: com.texa.careapp.app.activationSosServices.AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda17
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return Observable.just(purchaseLockResponseEntity);
            }
        }).doOnSubscribe(new Consumer() { // from class: com.texa.careapp.app.activationSosServices.AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda29
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.d("PLUS OBSERVABLE changeLockStatusInto -> %s onSubscribe", str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Observable<PurchaseData> observePlayStorePurchase(final PurchaseLockResponseEntity purchaseLockResponseEntity) {
        PurchaseData purchaseData = (PurchaseData) new Select().from(PurchaseData.class).executeSingle();
        if (purchaseData == null) {
            Timber.d("observePlayStorePurchase purchase data == null -> startInApp Activity ", new Object[0]);
            getContext().startActivity(SosInAppBillingSubscription.buildIntent(getContext(), purchaseLockResponseEntity.getTicket(), this.service.getSku()));
            Timber.d("startInApp Activity", new Object[0]);
        }
        return this.sosServicePurchased.startWith(purchaseData == null ? Observable.empty() : Observable.just(purchaseData)).doOnError(new Consumer() { // from class: com.texa.careapp.app.activationSosServices.AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda9
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.d((Throwable) obj, "PLUS OBSERVABLE observePlayStorePurchase doOnError", new Object[0]);
            }
        }).doOnNext(new Consumer() { // from class: com.texa.careapp.app.activationSosServices.AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda25
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m113x4f2b7513(purchaseLockResponseEntity, (PurchaseData) obj);
            }
        }).onErrorResumeNext(new Function() { // from class: com.texa.careapp.app.activationSosServices.AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda16
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f$0.m115x5196f096(purchaseLockResponseEntity, (Throwable) obj);
            }
        }).filter(new Predicate() { // from class: com.texa.careapp.app.activationSosServices.AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda20
            @Override // io.reactivex.functions.Predicate
            public final boolean test(Object obj) {
                return AcceptationTermsSosServiceScreen.lambda$observePlayStorePurchase$26((PurchaseData) obj);
            }
        }).firstElement().toObservable().doOnSubscribe(new Consumer() { // from class: com.texa.careapp.app.activationSosServices.AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda4
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.d("PLUS OBSERVABLE observePlayStorePurchase onSubscribe", new Object[0]);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$observePlayStorePurchase$22$com-texa-careapp-app-activationSosServices-AcceptationTermsSosServiceScreen, reason: not valid java name */
    public /* synthetic */ void m113x4f2b7513(PurchaseLockResponseEntity purchaseLockResponseEntity, PurchaseData purchaseData) throws Exception {
        Timber.d("PLUS OBSERVABLE observePlayStorePurchase doOnNext", new Object[0]);
        if (purchaseData == null) {
            Timber.d("observePlayStorePurchase purchase data == null -> startInApp Activity ", new Object[0]);
            getContext().startActivity(SosInAppBillingSubscription.buildIntent(getContext(), purchaseLockResponseEntity.getTicket(), this.service.getSku()));
            Timber.d("startInApp Activity", new Object[0]);
        }
    }

    /* JADX INFO: renamed from: lambda$observePlayStorePurchase$25$com-texa-careapp-app-activationSosServices-AcceptationTermsSosServiceScreen, reason: not valid java name */
    public /* synthetic */ ObservableSource m115x5196f096(final PurchaseLockResponseEntity purchaseLockResponseEntity, Throwable th) throws Exception {
        Timber.d(th, "PLUS OBSERVABLE observePlayStorePurchase onError -> release LOCK", new Object[0]);
        return changeLockStatusIntoTemporary(purchaseLockResponseEntity).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).doOnError(new Consumer() { // from class: com.texa.careapp.app.activationSosServices.AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda26
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m114x4ff9f394(purchaseLockResponseEntity, (Throwable) obj);
            }
        }).flatMap(new Function() { // from class: com.texa.careapp.app.activationSosServices.AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda18
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return Observable.error(new Exception("PLUS OBSERVABLE purchase failed"));
            }
        });
    }

    /* JADX INFO: renamed from: lambda$observePlayStorePurchase$23$com-texa-careapp-app-activationSosServices-AcceptationTermsSosServiceScreen, reason: not valid java name */
    public /* synthetic */ void m114x4ff9f394(PurchaseLockResponseEntity purchaseLockResponseEntity, Throwable th) throws Exception {
        scheduleSyncChangeLockStatusTask(purchaseLockResponseEntity.getTicket());
    }

    void scheduleSyncServiceDataTask() {
        this.caReWorkerManager.scheduleOneOffJob(-1, null);
    }

    private void scheduleSyncReceiptDataTask() {
        this.caReWorkerManager.schedulePurchaseDataSync();
    }

    private void scheduleSyncChangeLockStatusTask(String str) throws Throwable {
        this.caReWorkerManager.scheduleChangeLockStatus(str);
    }

    private void replaceServiceDataInDb(ServiceDataModel serviceDataModel, ServiceDataModel serviceDataModel2) throws DatabaseIOException {
        DongleModel dongle = serviceDataModel.getDongle();
        UserModel user = serviceDataModel.getUser();
        serviceDataModel.delete();
        serviceDataModel2.setDongle(dongle);
        serviceDataModel2.setUser(user);
        Utils.safeModelSave(serviceDataModel2, getContext());
    }

    @Override // com.texa.care.navigation.Screen
    public boolean onBackPressed() {
        goBack();
        return true;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(HaveToCheckConsistentData haveToCheckConsistentData) {
        boolean zIsHaveToCheck = haveToCheckConsistentData.isHaveToCheck();
        this.haveToCheck = zIsHaveToCheck;
        if (zIsHaveToCheck && this.sosServicePurchased.hasObservers() && !this.sosServicePurchased.hasComplete()) {
            this.phoneNumberValidated.onNext(Boolean.valueOf(Utils.isValidatedUserPhoneNumber(this.mUserCached)));
            this.guardianAngelAreAvailable.onNext(Boolean.valueOf(this.mUserCached.getGuardianAngelContacts().size() >= 1));
            PurchaseData purchaseData = (PurchaseData) new Select().from(PurchaseData.class).executeSingle();
            if (purchaseData != null) {
                this.sosServicePurchased.onNext(purchaseData);
            } else {
                this.sosServicePurchased.onError(new Exception("User doesn't complete the purchase"));
            }
        }
    }

    class ActivationCompletedEvent {
        ActivationCompletedEvent() {
        }
    }
}
