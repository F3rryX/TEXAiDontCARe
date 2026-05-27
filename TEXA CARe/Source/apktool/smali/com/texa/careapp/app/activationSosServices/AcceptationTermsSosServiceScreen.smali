.class public abstract Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;
.super Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;
.source "AcceptationTermsSosServiceScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$ActivationCompletedEvent;
    }
.end annotation


# instance fields
.field caReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private disposable:Lio/reactivex/disposables/Disposable;

.field dongleDataManager:Lcom/texa/careapp/model/DongleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private guardianAngelAreAvailable:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private haveToCheck:Z

.field private mDongleCached:Lcom/texa/careapp/model/DongleModel;

.field mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mSharedPreferences:Landroid/content/SharedPreferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mUserCached:Lcom/texa/careapp/model/UserModel;

.field private phoneNumberValidated:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private service:Lcom/texa/careapp/model/ServiceDataModel;

.field private sosServicePurchased:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lcom/texa/careapp/model/PurchaseData;",
            ">;"
        }
    .end annotation
.end field

.field userDataManager:Lcom/texa/careapp/utils/UserDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$F3fyBpEAHygwBlarqbo83ijcOoM(Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;)Lio/reactivex/Observable;
    .locals 0

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->observePlayStorePurchase(Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$R57aWt1_bYLx0dFjamGyXYfTN1A(Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;Lcom/texa/careapp/model/PurchaseData;)Lio/reactivex/Observable;
    .locals 0

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->observeSendReceipt(Lcom/texa/careapp/model/PurchaseData;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gQvw30P8e5SSpvKqAnhqmT0Vpvk(Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;)Lio/reactivex/Observable;
    .locals 0

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->changeLockStatusIntoPermanent(Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/texa/careapp/model/ServiceDataModel;)V
    .locals 1

    .line 90
    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->getContractUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->haveToCheck:Z

    .line 91
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->service:Lcom/texa/careapp/model/ServiceDataModel;

    .line 92
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->guardianAngelAreAvailable:Lio/reactivex/subjects/PublishSubject;

    .line 93
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->sosServicePurchased:Lio/reactivex/subjects/PublishSubject;

    .line 94
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->phoneNumberValidated:Lio/reactivex/subjects/PublishSubject;

    return-void
.end method

.method private changeLockStatus(Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;",
            ">;"
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-virtual {p1}, Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;->getTicket()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->changeLockStatus(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 248
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 249
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda7;->INSTANCE:Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda7;

    .line 250
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda28;

    invoke-direct {v1, p2}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda28;-><init>(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda17;

    invoke-direct {v1, p1}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda17;-><init>(Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;)V

    .line 252
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda29;

    invoke-direct {v0, p2}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda29;-><init>(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private changeLockStatusIntoPermanent(Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;",
            ">;"
        }
    .end annotation

    const-string v0, "permanent"

    .line 236
    invoke-direct {p0, p1, v0}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->changeLockStatus(Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private changeLockStatusIntoTemporary(Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;",
            ">;"
        }
    .end annotation

    const-string v0, "temporary"

    .line 242
    invoke-direct {p0, p1, v0}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->changeLockStatus(Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private checkLockResourceAvailable()Lio/reactivex/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;",
            ">;"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    new-instance v1, Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockEntity;

    iget-object v2, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->service:Lcom/texa/careapp/model/ServiceDataModel;

    invoke-virtual {v2}, Lcom/texa/careapp/model/ServiceDataModel;->getIdType()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->mDongleCached:Lcom/texa/careapp/model/DongleModel;

    .line 221
    invoke-virtual {v3}, Lcom/texa/careapp/model/DongleModel;->getHwid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v4}, Lcom/texa/careapp/utils/Utils;->getUniqueDeviceId(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-interface {v0, v1}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->checkLockStatus(Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockEntity;)Lio/reactivex/Observable;

    move-result-object v0

    .line 222
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 223
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda8;->INSTANCE:Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda8;

    .line 224
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda30;->INSTANCE:Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda30;

    .line 225
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda19;->INSTANCE:Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda19;

    .line 230
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Observable;->firstElement()Lio/reactivex/Maybe;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Maybe;->toObservable()Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda1;->INSTANCE:Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda1;

    .line 231
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$changeLockStatus$17(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "Impossible contact the server"

    .line 250
    invoke-static {v0, p0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$changeLockStatus$18(Ljava/lang/String;Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, p1, v0

    const-string p0, "PLUS OBSERVABLE changeLockStatusInto -> %s doOnNext"

    .line 251
    invoke-static {p0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$changeLockStatus$19(Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 252
    invoke-static {p0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$changeLockStatus$20(Ljava/lang/String;Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, p1, v0

    const-string p0, "PLUS OBSERVABLE changeLockStatusInto -> %s onSubscribe"

    .line 253
    invoke-static {p0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$checkLockResourceAvailable$13(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "Impossible contact the server"

    .line 224
    invoke-static {v0, p0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$checkLockResourceAvailable$14(Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 226
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;->getTicket()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "PLUS OBSERVABLE checkLockResourceAvailable doOnNext ticket -> %s"

    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;->isAlreadyPending()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 228
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Lcom/texa/carelib/core/OperationAlreadyRunningException;

    const-string v1, "Lock Resource is already pending"

    invoke-direct {v0, v1}, Lcom/texa/carelib/core/OperationAlreadyRunningException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method static synthetic lambda$checkLockResourceAvailable$15(Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 230
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;->isAlreadyPending()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic lambda$checkLockResourceAvailable$16(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "PLUS OBSERVABLE checkLockResourceAvailable onSubscribe"

    .line 231
    invoke-static {v0, p0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$observeGuardianAngelContacts$8(Ljava/lang/Boolean;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 197
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$observeGuardianAngelContacts$9(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "PLUS OBSERVABLE observeGuardianAngelContacts onSubscribe"

    .line 198
    invoke-static {v0, p0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$observePhoneNumberValidation$11(Ljava/lang/Boolean;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 214
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$observePhoneNumberValidation$12(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "observePhoneNumberValidation onSubscribe"

    .line 215
    invoke-static {v0, p0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$observePlayStorePurchase$21(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PLUS OBSERVABLE observePlayStorePurchase doOnError"

    .line 268
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$observePlayStorePurchase$24(Ljava/lang/Object;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 288
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "PLUS OBSERVABLE purchase failed"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$observePlayStorePurchase$26(Lcom/texa/careapp/model/PurchaseData;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$observePlayStorePurchase$27(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "PLUS OBSERVABLE observePlayStorePurchase onSubscribe"

    .line 291
    invoke-static {v0, p0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$observeSendReceipt$5(Lcom/texa/careapp/model/PurchaseData;Lcom/texa/careapp/networking/response/ServerResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "PLUS OBSERVABLE observeSendReceipt onNext"

    .line 177
    invoke-static {v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    invoke-virtual {p0}, Lcom/texa/careapp/model/PurchaseData;->delete()V

    return-void
.end method

.method static synthetic lambda$observeSendReceipt$6(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "PLUS OBSERVABLE observeSendReceipt onSubscribe"

    .line 180
    invoke-static {v0, p0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$observerForPlusActivation$1(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "PLUS OBSERVABLE GLOBAL onSubscribe"

    .line 131
    invoke-static {v0, p0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private observeGuardianAngelContacts()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->guardianAngelAreAvailable:Lio/reactivex/subjects/PublishSubject;

    .line 186
    invoke-virtual {v0}, Lio/reactivex/subjects/PublishSubject;->hide()Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->mUserCached:Lcom/texa/careapp/model/UserModel;

    .line 187
    invoke-virtual {v1}, Lcom/texa/careapp/model/UserModel;->getGuardianAngelContacts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda22;-><init>(Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;)V

    .line 189
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda21;->INSTANCE:Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda21;

    .line 197
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Observable;->firstElement()Lio/reactivex/Maybe;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Maybe;->toObservable()Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda2;->INSTANCE:Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda2;

    .line 198
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private observePhoneNumberValidation()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->phoneNumberValidated:Lio/reactivex/subjects/PublishSubject;

    .line 204
    invoke-virtual {v0}, Lio/reactivex/subjects/PublishSubject;->hide()Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->mUserCached:Lcom/texa/careapp/model/UserModel;

    .line 205
    invoke-static {v1}, Lcom/texa/careapp/utils/Utils;->isValidatedUserPhoneNumber(Lcom/texa/careapp/model/UserModel;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda24;-><init>(Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;)V

    .line 206
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda23;->INSTANCE:Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda23;

    .line 214
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Observable;->firstElement()Lio/reactivex/Maybe;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Maybe;->toObservable()Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda3;->INSTANCE:Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda3;

    .line 215
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private observePlayStorePurchase(Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;)Lio/reactivex/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/model/PurchaseData;",
            ">;"
        }
    .end annotation

    .line 258
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/model/PurchaseData;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/PurchaseData;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "observePlayStorePurchase purchase data == null -> startInApp Activity "

    .line 260
    invoke-static {v3, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 262
    invoke-virtual {p1}, Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;->getTicket()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->service:Lcom/texa/careapp/model/ServiceDataModel;

    invoke-virtual {v4}, Lcom/texa/careapp/model/ServiceDataModel;->getSku()Ljava/lang/String;

    move-result-object v4

    .line 261
    invoke-static {v2, v3, v4}, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->buildIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 263
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "startInApp Activity"

    .line 264
    invoke-static {v2, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    :cond_0
    iget-object v1, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->sosServicePurchased:Lio/reactivex/subjects/PublishSubject;

    if-nez v0, :cond_1

    .line 267
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lio/reactivex/subjects/PublishSubject;->startWith(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda9;->INSTANCE:Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda9;

    .line 268
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0, p1}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda25;-><init>(Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;)V

    .line 269
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, p1}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda16;-><init>(Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;)V

    .line 280
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda20;->INSTANCE:Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda20;

    .line 290
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Observable;->firstElement()Lio/reactivex/Maybe;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Maybe;->toObservable()Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda4;->INSTANCE:Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda4;

    .line 291
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private observeSendReceipt(Lcom/texa/careapp/model/PurchaseData;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/model/PurchaseData;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/networking/response/ServerResponse;",
            ">;"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-interface {v0, p1}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->sendReceipt(Lcom/texa/careapp/model/PurchaseData;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda15;-><init>(Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;)V

    .line 172
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda27;

    invoke-direct {v1, p1}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda27;-><init>(Lcom/texa/careapp/model/PurchaseData;)V

    .line 176
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda5;->INSTANCE:Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda5;

    .line 180
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private replaceServiceDataInDb(Lcom/texa/careapp/model/ServiceDataModel;Lcom/texa/careapp/model/ServiceDataModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/careapp/exceptions/DatabaseIOException;
        }
    .end annotation

    .line 322
    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->getDongle()Lcom/texa/careapp/model/DongleModel;

    move-result-object v0

    .line 323
    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->getUser()Lcom/texa/careapp/model/UserModel;

    move-result-object v1

    .line 325
    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->delete()V

    .line 326
    invoke-virtual {p2, v0}, Lcom/texa/careapp/model/ServiceDataModel;->setDongle(Lcom/texa/careapp/model/DongleModel;)V

    .line 327
    invoke-virtual {p2, v1}, Lcom/texa/careapp/model/ServiceDataModel;->setUser(Lcom/texa/careapp/model/UserModel;)V

    .line 328
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J

    return-void
.end method

.method private scheduleSyncChangeLockStatusTask(Ljava/lang/String;)V
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->caReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/sync/CAReWorkerManager;->scheduleChangeLockStatus(Ljava/lang/String;)V

    return-void
.end method

.method private scheduleSyncReceiptDataTask()V
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->caReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-virtual {v0}, Lcom/texa/careapp/sync/CAReWorkerManager;->schedulePurchaseDataSync()V

    return-void
.end method


# virtual methods
.method protected activationService()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/model/ServiceDataModel;",
            ">;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    iget-object v1, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->service:Lcom/texa/careapp/model/ServiceDataModel;

    invoke-interface {v0, v1}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->activationService(Lcom/texa/careapp/model/ServiceDataModel;)Lio/reactivex/Observable;

    move-result-object v0

    .line 144
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 145
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda14;-><init>(Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;)V

    .line 146
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public afterViewInjection(Landroid/view/View;)V
    .locals 0

    .line 99
    invoke-super {p0, p1}, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;->afterViewInjection(Landroid/view/View;)V

    .line 100
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/care/navigation/Navigator;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/CareApplication;

    .line 101
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;)V

    .line 102
    iget-object p1, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->userDataManager:Lcom/texa/careapp/utils/UserDataManager;

    invoke-virtual {p1}, Lcom/texa/careapp/utils/UserDataManager;->getUserCached()Lcom/texa/careapp/model/UserModel;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->mUserCached:Lcom/texa/careapp/model/UserModel;

    .line 103
    iget-object p1, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->dongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {p1}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->mDongleCached:Lcom/texa/careapp/model/DongleModel;

    .line 105
    iget-object p1, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public getDisposable()Lio/reactivex/disposables/Disposable;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->disposable:Lio/reactivex/disposables/Disposable;

    return-object v0
.end method

.method public getService()Lcom/texa/careapp/model/ServiceDataModel;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->service:Lcom/texa/careapp/model/ServiceDataModel;

    return-object v0
.end method

.method public synthetic lambda$activationService$3$com-texa-careapp-app-activationSosServices-AcceptationTermsSosServiceScreen(Lcom/texa/careapp/networking/response/ServiceListResponse;)Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 147
    invoke-virtual {p1}, Lcom/texa/careapp/networking/response/ServiceListResponse;->getList()Ljava/util/List;

    move-result-object p1

    .line 155
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/ServiceDataModel;

    .line 156
    iget-object v1, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->service:Lcom/texa/careapp/model/ServiceDataModel;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ServiceDataModel;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    :try_start_0
    iget-object v1, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->service:Lcom/texa/careapp/model/ServiceDataModel;

    invoke-direct {p0, v1, v0}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->replaceServiceDataInDb(Lcom/texa/careapp/model/ServiceDataModel;Lcom/texa/careapp/model/ServiceDataModel;)V

    .line 159
    iput-object v0, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->service:Lcom/texa/careapp/model/ServiceDataModel;
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 161
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 165
    :cond_1
    iget-object p1, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->service:Lcom/texa/careapp/model/ServiceDataModel;

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$observeGuardianAngelContacts$7$com-texa-careapp-app-activationSosServices-AcceptationTermsSosServiceScreen(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v2, "PLUS OBSERVABLE observeGuardianAngelContacts onNext aBoolean == %s"

    .line 190
    invoke-static {v2, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 193
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactActivity;->buildIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 192
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "observeGuardianAngelContacts -> startContactActivity"

    .line 194
    invoke-static {v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observePhoneNumberValidation$10$com-texa-careapp-app-activationSosServices-AcceptationTermsSosServiceScreen(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v2, "observePhoneNumberValidation onNext aBoolean == %s"

    .line 207
    invoke-static {v2, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 210
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/app/activationSosServices/phone/ActivationPhoneNumberActivity;->buildIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 209
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "observePhoneNumberValidation -> startActivity"

    .line 211
    invoke-static {v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observePlayStorePurchase$22$com-texa-careapp-app-activationSosServices-AcceptationTermsSosServiceScreen(Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;Lcom/texa/careapp/model/PurchaseData;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "PLUS OBSERVABLE observePlayStorePurchase doOnNext"

    .line 270
    invoke-static {v2, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p2, :cond_0

    new-array p2, v0, [Ljava/lang/Object;

    const-string v1, "observePlayStorePurchase purchase data == null -> startInApp Activity "

    .line 273
    invoke-static {v1, p2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 275
    invoke-virtual {p1}, Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;->getTicket()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->service:Lcom/texa/careapp/model/ServiceDataModel;

    invoke-virtual {v1}, Lcom/texa/careapp/model/ServiceDataModel;->getSku()Ljava/lang/String;

    move-result-object v1

    .line 274
    invoke-static {p2, p1, v1}, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->buildIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 276
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "startInApp Activity"

    .line 277
    invoke-static {p2, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observePlayStorePurchase$23$com-texa-careapp-app-activationSosServices-AcceptationTermsSosServiceScreen(Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 286
    invoke-virtual {p1}, Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;->getTicket()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->scheduleSyncChangeLockStatusTask(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$observePlayStorePurchase$25$com-texa-careapp-app-activationSosServices-AcceptationTermsSosServiceScreen(Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;Ljava/lang/Throwable;)Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PLUS OBSERVABLE observePlayStorePurchase onError -> release LOCK"

    .line 281
    invoke-static {p2, v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->changeLockStatusIntoTemporary(Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;)Lio/reactivex/Observable;

    move-result-object p2

    .line 283
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p2

    .line 284
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p2

    new-instance v0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0, p1}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda26;-><init>(Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;)V

    .line 285
    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object p2, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda18;->INSTANCE:Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda18;

    .line 287
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$observeSendReceipt$4$com-texa-careapp-app-activationSosServices-AcceptationTermsSosServiceScreen(Ljava/lang/Throwable;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "PLUS OBSERVABLE observeSendReceipt onError"

    .line 173
    invoke-static {v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    invoke-direct {p0}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->scheduleSyncReceiptDataTask()V

    .line 175
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$observerForLightActivation$0$com-texa-careapp-app-activationSosServices-AcceptationTermsSosServiceScreen(Lcom/texa/careapp/model/ServiceDataModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 121
    new-instance v0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;

    invoke-direct {v0, p1}, Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;-><init>(Lcom/texa/careapp/model/ServiceDataModel;)V

    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->goTo(Lcom/texa/care/navigation/Screen;)V

    .line 122
    iget-object p1, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$ActivationCompletedEvent;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$ActivationCompletedEvent;-><init>(Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$observerForPlusTrialActivation$2$com-texa-careapp-app-activationSosServices-AcceptationTermsSosServiceScreen(Lcom/texa/careapp/model/ServiceDataModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 137
    new-instance v0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;

    invoke-direct {v0, p1}, Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;-><init>(Lcom/texa/careapp/model/ServiceDataModel;)V

    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->goTo(Lcom/texa/care/navigation/Screen;)V

    .line 138
    iget-object p1, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$ActivationCompletedEvent;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$ActivationCompletedEvent;-><init>(Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method observerForLightActivation()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 117
    invoke-direct {p0}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->observePhoneNumberValidation()Lio/reactivex/Observable;

    move-result-object v0

    .line 118
    invoke-direct {p0}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->observeGuardianAngelContacts()Lio/reactivex/Observable;

    move-result-object v1

    .line 119
    invoke-direct {p0}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->checkLockResourceAvailable()Lio/reactivex/Observable;

    move-result-object v2

    .line 116
    invoke-static {v0, v1, v2}, Lio/reactivex/Observable;->concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    .line 120
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->activationService()Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->concatWith(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method observerForPlusActivation()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 127
    invoke-direct {p0}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->observePhoneNumberValidation()Lio/reactivex/Observable;

    move-result-object v0

    invoke-direct {p0}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->checkLockResourceAvailable()Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda12;-><init>(Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;)V

    .line 128
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda10;-><init>(Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;)V

    .line 129
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda13;-><init>(Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;)V

    .line 130
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    .line 127
    invoke-static {v0, v1}, Lio/reactivex/Observable;->concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda6;->INSTANCE:Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda6;

    .line 131
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method observerForPlusTrialActivation()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 135
    invoke-direct {p0}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->observePhoneNumberValidation()Lio/reactivex/Observable;

    move-result-object v0

    invoke-direct {p0}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->checkLockResourceAvailable()Lio/reactivex/Observable;

    move-result-object v1

    invoke-static {v0, v1}, Lio/reactivex/Observable;->concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    .line 136
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->activationService()Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda11;-><init>(Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->concatWith(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()Z
    .locals 1

    .line 333
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->goBack()V

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyView()V
    .locals 1

    .line 110
    invoke-super {p0}, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;->onDestroyView()V

    .line 111
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 112
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->disposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onEventMainThread(Lcom/texa/careapp/app/activationSosServices/HaveToCheckConsistentData;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 339
    invoke-virtual {p1}, Lcom/texa/careapp/app/activationSosServices/HaveToCheckConsistentData;->isHaveToCheck()Z

    move-result p1

    iput-boolean p1, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->haveToCheck:Z

    if-eqz p1, :cond_2

    .line 340
    iget-object p1, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->sosServicePurchased:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p1}, Lio/reactivex/subjects/PublishSubject;->hasObservers()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->sosServicePurchased:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p1}, Lio/reactivex/subjects/PublishSubject;->hasComplete()Z

    move-result p1

    if-nez p1, :cond_2

    .line 341
    iget-object p1, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->phoneNumberValidated:Lio/reactivex/subjects/PublishSubject;

    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->mUserCached:Lcom/texa/careapp/model/UserModel;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isValidatedUserPhoneNumber(Lcom/texa/careapp/model/UserModel;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 342
    iget-object p1, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->guardianAngelAreAvailable:Lio/reactivex/subjects/PublishSubject;

    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->mUserCached:Lcom/texa/careapp/model/UserModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/UserModel;->getGuardianAngelContacts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 344
    new-instance p1, Lcom/activeandroid/query/Select;

    invoke-direct {p1}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v0, Lcom/texa/careapp/model/PurchaseData;

    invoke-virtual {p1, v0}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object p1

    invoke-virtual {p1}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/model/PurchaseData;

    if-eqz p1, :cond_1

    .line 346
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->sosServicePurchased:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    goto :goto_1

    .line 348
    :cond_1
    iget-object p1, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->sosServicePurchased:Lio/reactivex/subjects/PublishSubject;

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "User doesn\'t complete the purchase"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/PublishSubject;->onError(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method scheduleSyncServiceDataTask()V
    .locals 3

    .line 299
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->caReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/texa/careapp/sync/CAReWorkerManager;->scheduleOneOffJob(ILjava/lang/String;)V

    return-void
.end method

.method public setDisposable(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->disposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method
