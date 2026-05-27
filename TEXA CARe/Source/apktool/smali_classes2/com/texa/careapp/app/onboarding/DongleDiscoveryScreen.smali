.class public Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;
.super Lcom/texa/care/navigation/Screen;
.source "DongleDiscoveryScreen.java"


# static fields
.field private static isConfigured:Z = false


# instance fields
.field private communicationSub:Lio/reactivex/disposables/Disposable;

.field private deviceInfo:Lcom/texa/carelib/communication/DeviceInfo;

.field private deviceInfoExtHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/texa/careapp/app/onboarding/DeviceInfoExt;",
            ">;"
        }
    .end annotation
.end field

.field private dongleSummarySub:Lio/reactivex/disposables/Disposable;

.field private hasSkipped:Z

.field private isOperationFinished:Z

.field private isProgressDialogShown:Z

.field private mApplication:Lcom/texa/careapp/CareApplication;

.field private mAtLeastOnScanHasStarted:Z

.field private mCareImage:Landroid/widget/ImageView;

.field protected mCommunication:Lcom/texa/carelib/communication/Communication;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mCommunicationChangeListener:Ljava/beans/PropertyChangeListener;

.field protected mCommunicationObservable:Lcom/texa/careapp/carelib/CommunicationObservable;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mDeviceDiscoveryListener:Lcom/texa/carelib/communication/DeviceDiscoveryListener;

.field private mDiscoveryDescription:Landroid/widget/TextView;

.field private mDiscoveryEmpty:Landroid/widget/RelativeLayout;

.field private mDiscoveryStartButton:Landroid/widget/RelativeLayout;

.field private mDongleAdapter:Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter;

.field protected mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mDongleList:Landroidx/recyclerview/widget/RecyclerView;

.field private mDongles:Lcom/texa/careapp/utils/UniqueList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/texa/careapp/utils/UniqueList<",
            "Lcom/texa/careapp/app/onboarding/DeviceInfoExt;",
            ">;"
        }
    .end annotation
.end field

.field protected mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mListTitle:Landroid/widget/TextView;

.field private mNoDevicesDescription:Landroid/widget/TextView;

.field private mNoDevicesLabel:Landroid/widget/TextView;

.field private mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

.field private final mOnClickRetryConnection:Landroid/view/View$OnClickListener;

.field private mParentRelativeLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field private mProgressDialogFragment:Lcom/texa/careapp/utils/ProgressDialogFragment;

.field private mProgressLayout:Landroid/widget/RelativeLayout;

.field protected mRetrofitErrorParser:Lcom/texa/careapp/utils/RetrofitErrorParser;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mSharedPreferences:Landroid/content/SharedPreferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mStartDiscoveryTextView:Landroid/widget/TextView;

.field protected mTexaCareApiServiceClient:Lcom/texa/careapp/networking/TexaCareApiServiceClient;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mTexaProfileDelegate:Lcom/texa/careapp/utils/TexaProfileDelegate;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private scanSub:Lio/reactivex/disposables/Disposable;

.field private timerDisposable:Lio/reactivex/disposables/Disposable;


# direct methods
.method public static synthetic $r8$lambda$in17IFcqWfEW51TPx33P92jOxwk(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->startScanForDevices(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/careapp/CareApplication;Lcom/texa/careapp/app/onboarding/OnBoardingActivity;Z)V
    .locals 1

    .line 185
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    .line 115
    new-instance v0, Lcom/texa/careapp/utils/UniqueList;

    invoke-direct {v0}, Lcom/texa/careapp/utils/UniqueList;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mDongles:Lcom/texa/careapp/utils/UniqueList;

    const/4 v0, 0x0

    .line 116
    iput-boolean v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mAtLeastOnScanHasStarted:Z

    .line 120
    iput-boolean v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->isProgressDialogShown:Z

    .line 121
    iput-boolean v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->isOperationFinished:Z

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->deviceInfoExtHashMap:Ljava/util/HashMap;

    .line 133
    new-instance v0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$1;-><init>(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;)V

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mDeviceDiscoveryListener:Lcom/texa/carelib/communication/DeviceDiscoveryListener;

    .line 150
    new-instance v0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$2;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$2;-><init>(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;)V

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mOnClickRetryConnection:Landroid/view/View$OnClickListener;

    .line 160
    new-instance v0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$3;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$3;-><init>(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;)V

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mCommunicationChangeListener:Ljava/beans/PropertyChangeListener;

    .line 186
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;)V

    .line 187
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mApplication:Lcom/texa/careapp/CareApplication;

    .line 188
    iput-object p2, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    .line 189
    iput-boolean p3, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->hasSkipped:Z

    return-void
.end method

.method static synthetic access$000(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mDongleList:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;Lcom/texa/carelib/communication/DeviceInfo;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->onDeviceNameChanged(Lcom/texa/carelib/communication/DeviceInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;Lcom/texa/carelib/communication/DeviceInfo;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->onDeviceFound(Lcom/texa/carelib/communication/DeviceInfo;)V

    return-void
.end method

.method static synthetic access$300(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;)Lcom/texa/carelib/communication/DeviceInfo;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->deviceInfo:Lcom/texa/carelib/communication/DeviceInfo;

    return-object p0
.end method

.method static synthetic access$400(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;Lcom/texa/carelib/communication/DeviceInfo;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->onDeviceSelected(Lcom/texa/carelib/communication/DeviceInfo;)V

    return-void
.end method

.method static synthetic access$500(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->onScanCompleted()V

    return-void
.end method

.method static synthetic access$600(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;)V
    .locals 0

    .line 79
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->goBack()V

    return-void
.end method

.method private createProgressDialogScreen()V
    .locals 3

    .line 647
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mProgressDialogFragment:Lcom/texa/careapp/utils/ProgressDialogFragment;

    if-nez v0, :cond_0

    .line 648
    new-instance v0, Lcom/texa/careapp/utils/ProgressDialogFragment;

    invoke-direct {v0}, Lcom/texa/careapp/utils/ProgressDialogFragment;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mProgressDialogFragment:Lcom/texa/careapp/utils/ProgressDialogFragment;

    .line 649
    :cond_0
    iget-boolean v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->isProgressDialogShown:Z

    if-nez v0, :cond_1

    .line 650
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mProgressDialogFragment:Lcom/texa/careapp/utils/ProgressDialogFragment;

    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/care/navigation/Navigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "progress"

    invoke-virtual {v0, v1, v2}, Lcom/texa/careapp/utils/ProgressDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 651
    iput-boolean v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->isProgressDialogShown:Z

    :cond_1
    return-void
.end method

.method private dismissProgressDialogScreen()V
    .locals 1

    .line 656
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mProgressDialogFragment:Lcom/texa/careapp/utils/ProgressDialogFragment;

    if-eqz v0, :cond_1

    .line 657
    invoke-virtual {v0}, Lcom/texa/careapp/utils/ProgressDialogFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mProgressDialogFragment:Lcom/texa/careapp/utils/ProgressDialogFragment;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/ProgressDialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    const/4 v0, 0x0

    .line 660
    iput-boolean v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->isProgressDialogShown:Z

    :cond_1
    return-void
.end method

.method private getDongleByHwId(Ljava/util/List;Ljava/lang/String;)Lcom/texa/careapp/app/onboarding/DeviceInfoExt;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/onboarding/DeviceInfoExt;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/texa/careapp/app/onboarding/DeviceInfoExt;"
        }
    .end annotation

    .line 249
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/app/onboarding/DeviceInfoExt;

    .line 250
    invoke-virtual {v0}, Lcom/texa/careapp/app/onboarding/DeviceInfoExt;->getDeviceInfo()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/communication/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public static isConfigured()Z
    .locals 1

    .line 127
    sget-boolean v0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->isConfigured:Z

    return v0
.end method

.method private isScanning()Z
    .locals 2

    .line 484
    sget-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->SCANNING:Lcom/texa/carelib/communication/CommunicationStatus;

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-interface {v1}, Lcom/texa/carelib/communication/Communication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$removeBond$7(Lcom/texa/carelib/communication/DeviceInfo;Lio/reactivex/ObservableEmitter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 348
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 351
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 352
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 353
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 354
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/texa/carelib/communication/DeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :cond_2
    if-eqz v3, :cond_3

    .line 362
    :try_start_0
    invoke-virtual {p0}, Lcom/texa/carelib/communication/DeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    const-string v1, "android.bluetooth.BluetoothDevice"

    .line 363
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "removeBond"

    new-array v4, v2, [Ljava/lang/Class;

    .line 364
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    .line 365
    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 366
    invoke-interface {p1, p0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 374
    invoke-interface {p1, p0}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "3.got exception"

    .line 375
    invoke-static {p0, v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catch_1
    move-exception p0

    .line 371
    invoke-interface {p1, p0}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "2.got exception"

    .line 372
    invoke-static {p0, v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catch_2
    move-exception p0

    .line 368
    invoke-interface {p1, p0}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "1.got exception"

    .line 369
    invoke-static {p0, v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 378
    :cond_3
    invoke-interface {p1, p0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    goto :goto_1

    .line 381
    :cond_4
    new-instance p0, Ljava/lang/Throwable;

    const-string v0, "defaultAdapter is null"

    invoke-direct {p0, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method static synthetic lambda$startTimer$10(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 522
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private onDeviceConnected()V
    .locals 6

    .line 542
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mDongles:Lcom/texa/careapp/utils/UniqueList;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/UniqueList;->clear()V

    .line 543
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->timerDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    const/4 v0, 0x1

    .line 544
    iput-boolean v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->isOperationFinished:Z

    .line 546
    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->deviceInfoExtHashMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->deviceInfo:Lcom/texa/carelib/communication/DeviceInfo;

    invoke-virtual {v2}, Lcom/texa/carelib/communication/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/app/onboarding/DeviceInfoExt;

    .line 547
    invoke-direct {p0, v1}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->validateDeviceInfo(Lcom/texa/careapp/app/onboarding/DeviceInfoExt;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 548
    iget-object v2, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    invoke-virtual {v2}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    invoke-virtual {v2}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->getPlate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 549
    invoke-virtual {v1}, Lcom/texa/careapp/app/onboarding/DeviceInfoExt;->getVehicleModelFormatted()Ljava/lang/String;

    move-result-object v2

    .line 550
    iget-object v3, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    invoke-virtual {v3, v2}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->setDescription(Ljava/lang/String;)V

    const-string/jumbo v3, "||"

    .line 551
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 552
    invoke-static {v3}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 553
    iget-object v3, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    aget-object v4, v2, v5

    invoke-virtual {v3, v4}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->setBrand(Ljava/lang/String;)V

    .line 554
    iget-object v3, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    aget-object v0, v2, v0

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->formatVehicleModel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->setModel(Ljava/lang/String;)V

    goto :goto_0

    .line 556
    :cond_0
    invoke-static {v2}, Lcom/texa/careapp/model/SelectionModel;->getSelections(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 557
    iget-object v2, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/texa/careapp/model/SelectionModel;

    invoke-virtual {v4}, Lcom/texa/careapp/model/SelectionModel;->getBrand()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->setBrand(Ljava/lang/String;)V

    .line 558
    iget-object v2, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/texa/careapp/model/SelectionModel;

    invoke-virtual {v4}, Lcom/texa/careapp/model/SelectionModel;->getModel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->setModel(Ljava/lang/String;)V

    .line 559
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/texa/careapp/model/SelectionModel;

    invoke-virtual {v4}, Lcom/texa/careapp/model/SelectionModel;->getBrand()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/SelectionModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/SelectionModel;->getModel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 560
    iget-object v2, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    invoke-virtual {v2, v0}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->setDescription(Ljava/lang/String;)V

    .line 563
    :goto_0
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    invoke-virtual {v1}, Lcom/texa/careapp/app/onboarding/DeviceInfoExt;->getPlate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->setPlate(Ljava/lang/String;)V

    .line 567
    :cond_1
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->dongleSummarySub:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 568
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->communicationSub:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 569
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->scanSub:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 570
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->dismissProgressDialogScreen()V

    .line 571
    new-instance v0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    iget-object v2, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->deviceInfo:Lcom/texa/carelib/communication/DeviceInfo;

    invoke-direct {v0, v1, v2}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;-><init>(Landroid/app/Activity;Lcom/texa/carelib/communication/DeviceInfo;)V

    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->goTo(Lcom/texa/care/navigation/Screen;)V

    return-void
.end method

.method private onDeviceFound(Lcom/texa/carelib/communication/DeviceInfo;)V
    .locals 3

    .line 604
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mDiscoveryDescription:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110bcc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 606
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mCareImage:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->hide(Landroid/view/View;)V

    .line 607
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mListTitle:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->show(Landroid/view/View;)V

    .line 608
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mDongleList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->show(Landroid/view/View;)V

    .line 609
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mDiscoveryEmpty:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->hide(Landroid/view/View;)V

    .line 610
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mNoDevicesLabel:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->hide(Landroid/view/View;)V

    .line 611
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mNoDevicesDescription:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->hide(Landroid/view/View;)V

    .line 613
    new-instance v0, Lcom/texa/careapp/app/onboarding/DeviceInfoExt;

    invoke-direct {v0}, Lcom/texa/careapp/app/onboarding/DeviceInfoExt;-><init>()V

    .line 614
    invoke-virtual {v0, p1}, Lcom/texa/careapp/app/onboarding/DeviceInfoExt;->setDeviceInfo(Lcom/texa/carelib/communication/DeviceInfo;)V

    .line 617
    invoke-virtual {v0}, Lcom/texa/careapp/app/onboarding/DeviceInfoExt;->getDeviceInfo()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/communication/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 618
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mDongles:Lcom/texa/careapp/utils/UniqueList;

    invoke-virtual {p1, v0}, Lcom/texa/careapp/utils/UniqueList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 619
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mDongles:Lcom/texa/careapp/utils/UniqueList;

    invoke-virtual {p1, v0}, Lcom/texa/careapp/utils/UniqueList;->add(Ljava/lang/Object;)Z

    .line 620
    invoke-virtual {v0}, Lcom/texa/careapp/app/onboarding/DeviceInfoExt;->getDeviceInfo()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/communication/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->requestAdditionalData(Ljava/lang/String;)V

    .line 621
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mDongleAdapter:Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter;

    invoke-virtual {p1}, Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private onDeviceNameChanged(Lcom/texa/carelib/communication/DeviceInfo;)V
    .locals 2

    .line 633
    new-instance v0, Lcom/texa/careapp/app/onboarding/DeviceInfoExt;

    invoke-direct {v0}, Lcom/texa/careapp/app/onboarding/DeviceInfoExt;-><init>()V

    .line 634
    invoke-virtual {v0, p1}, Lcom/texa/careapp/app/onboarding/DeviceInfoExt;->setDeviceInfo(Lcom/texa/carelib/communication/DeviceInfo;)V

    .line 636
    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mDongles:Lcom/texa/careapp/utils/UniqueList;

    invoke-virtual {v1, v0}, Lcom/texa/careapp/utils/UniqueList;->remove(Ljava/lang/Object;)Z

    .line 637
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->onDeviceFound(Lcom/texa/carelib/communication/DeviceInfo;)V

    return-void
.end method

.method private onDeviceSelected(Lcom/texa/carelib/communication/DeviceInfo;)V
    .locals 4

    .line 262
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->createProgressDialogScreen()V

    .line 263
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->deviceInfo:Lcom/texa/carelib/communication/DeviceInfo;

    .line 264
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mTexaProfileDelegate:Lcom/texa/careapp/utils/TexaProfileDelegate;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/texa/careapp/utils/TexaProfileDelegate;->setPassword(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->timerDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 271
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->removeBond(Lcom/texa/carelib/communication/DeviceInfo;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    .line 272
    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/Observable;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;Lcom/texa/carelib/communication/DeviceInfo;)V

    .line 273
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    .line 274
    invoke-virtual {p1, v1, v2, v0}, Lio/reactivex/Observable;->timeout(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$$ExternalSyntheticLambda6;-><init>(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;)V

    new-instance v1, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$$ExternalSyntheticLambda8;-><init>(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;)V

    .line 275
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->communicationSub:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private onScanCompleted()V
    .locals 3

    .line 428
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mDiscoveryStartButton:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->show(Landroid/view/View;)V

    .line 429
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mStartDiscoveryTextView:Landroid/widget/TextView;

    const v1, 0x7f110cf6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 431
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mDongles:Lcom/texa/careapp/utils/UniqueList;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_OUT_OF_THE_BOX_NO_DEVICE:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 434
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mDiscoveryDescription:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f11096c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mDongleList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->hide(Landroid/view/View;)V

    .line 436
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mDiscoveryEmpty:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->show(Landroid/view/View;)V

    .line 437
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mCareImage:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->show(Landroid/view/View;)V

    .line 438
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mNoDevicesLabel:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->show(Landroid/view/View;)V

    .line 439
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mNoDevicesDescription:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->show(Landroid/view/View;)V

    .line 440
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mListTitle:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->hide(Landroid/view/View;)V

    .line 441
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mProgressLayout:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->hide(Landroid/view/View;)V

    .line 442
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mNoDevicesLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110bd0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mDiscoveryDescription:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110bcc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mDongleList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->show(Landroid/view/View;)V

    .line 446
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mDiscoveryEmpty:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->hide(Landroid/view/View;)V

    .line 447
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mNoDevicesLabel:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->hide(Landroid/view/View;)V

    .line 448
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mNoDevicesDescription:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->hide(Landroid/view/View;)V

    .line 449
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mCareImage:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->hide(Landroid/view/View;)V

    .line 450
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mProgressLayout:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->hide(Landroid/view/View;)V

    .line 451
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mListTitle:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->show(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private parseAdditionalData(Lcom/texa/careapp/networking/HardwareIdList;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/networking/HardwareIdList;",
            "Ljava/util/List<",
            "Lcom/texa/careapp/networking/response/DongleListResponse$DongleVehicleDetails;",
            ">;)V"
        }
    .end annotation

    .line 217
    invoke-static {p2}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v2

    const-string p1, "DongleListResponse is empty for: %s"

    .line 218
    invoke-static {p1, p2}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 222
    :cond_0
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/networking/response/DongleListResponse$DongleVehicleDetails;

    .line 223
    iget-object p2, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mDongles:Lcom/texa/careapp/utils/UniqueList;

    iget-object v0, p1, Lcom/texa/careapp/networking/response/DongleListResponse$DongleVehicleDetails;->hwid:Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->getDongleByHwId(Ljava/util/List;Ljava/lang/String;)Lcom/texa/careapp/app/onboarding/DeviceInfoExt;

    move-result-object p2

    if-nez p2, :cond_1

    new-array p2, v1, [Ljava/lang/Object;

    .line 226
    iget-object p1, p1, Lcom/texa/careapp/networking/response/DongleListResponse$DongleVehicleDetails;->hwid:Ljava/lang/String;

    aput-object p1, p2, v2

    const-string p1, "DeviceInfoExt not found with hwId= %s"

    invoke-static {p1, p2}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->deviceInfoExtHashMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/texa/careapp/app/onboarding/DeviceInfoExt;->getDeviceInfo()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/carelib/communication/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object v0, p1, Lcom/texa/careapp/networking/response/DongleListResponse$DongleVehicleDetails;->selectionData:Lcom/texa/careapp/networking/response/SelectionDataResponse;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->formatVehicleModel(Lcom/texa/careapp/networking/response/SelectionDataResponse;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/texa/careapp/app/onboarding/DeviceInfoExt;->setVehicleModelFormatted(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p2}, Lcom/texa/careapp/app/onboarding/DeviceInfoExt;->getVehicleModelFormatted()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 232
    iget-object v0, p1, Lcom/texa/careapp/networking/response/DongleListResponse$DongleVehicleDetails;->description:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/texa/careapp/app/onboarding/DeviceInfoExt;->setVehicleModelFormatted(Ljava/lang/String;)V

    .line 234
    :cond_2
    iget-object p1, p1, Lcom/texa/careapp/networking/response/DongleListResponse$DongleVehicleDetails;->plate:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/texa/careapp/app/onboarding/DeviceInfoExt;->setPlate(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2, v1}, Lcom/texa/careapp/app/onboarding/DeviceInfoExt;->setSelectable(Z)V

    .line 237
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    new-instance p2, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;)V

    invoke-virtual {p1, p2}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private removeBond(Lcom/texa/carelib/communication/DeviceInfo;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/communication/DeviceInfo;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/texa/carelib/communication/DeviceInfo;",
            ">;"
        }
    .end annotation

    .line 347
    new-instance v0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$$ExternalSyntheticLambda4;-><init>(Lcom/texa/carelib/communication/DeviceInfo;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private requestAdditionalData(Ljava/lang/String;)V
    .locals 3

    .line 198
    new-instance v0, Lcom/texa/careapp/networking/HardwareIdList;

    invoke-direct {v0, p1}, Lcom/texa/careapp/networking/HardwareIdList;-><init>(Ljava/lang/String;)V

    .line 200
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mTexaCareApiServiceClient:Lcom/texa/careapp/networking/TexaCareApiServiceClient;

    invoke-interface {p1, v0}, Lcom/texa/careapp/networking/TexaCareApiServiceClient;->getDongleSummary(Lcom/texa/careapp/networking/HardwareIdList;)Lio/reactivex/Observable;

    move-result-object p1

    .line 201
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 202
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-wide/16 v1, 0x1

    .line 203
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v1, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, v0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$$ExternalSyntheticLambda10;-><init>(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;Lcom/texa/careapp/networking/HardwareIdList;)V

    new-instance v0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$$ExternalSyntheticLambda9;-><init>(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;)V

    .line 204
    invoke-virtual {p1, v1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->dongleSummarySub:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private resetDongleList()V
    .locals 3

    .line 318
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mDongleList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 319
    new-instance v0, Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter;

    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mDongles:Lcom/texa/careapp/utils/UniqueList;

    invoke-direct {v0, v1, v2}, Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter;-><init>(Landroid/content/Context;Lcom/texa/careapp/utils/UniqueList;)V

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mDongleAdapter:Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter;

    .line 320
    new-instance v1, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$$ExternalSyntheticLambda3;-><init>(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;)V

    invoke-virtual {v0, v1}, Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 334
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mDongleList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mDongleAdapter:Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 335
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mDongleAdapter:Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter;

    invoke-virtual {v0}, Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private setupViewsDefault()V
    .locals 3

    .line 591
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mDiscoveryStartButton:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->show(Landroid/view/View;)V

    .line 592
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mDiscoveryEmpty:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->hide(Landroid/view/View;)V

    .line 593
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mProgressLayout:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->hide(Landroid/view/View;)V

    .line 594
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mDiscoveryDescription:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110bcc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private startScanDevicesInner()V
    .locals 1

    .line 493
    :try_start_0
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-interface {v0}, Lcom/texa/carelib/communication/Communication;->startScan()V

    const/4 v0, 0x1

    .line 494
    iput-boolean v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mAtLeastOnScanHasStarted:Z

    .line 495
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->startTimer()V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 497
    :catch_0
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->onScanCompleted()V

    :goto_0
    return-void
.end method

.method private startScanForDevices(Landroid/view/View;)V
    .locals 2

    .line 395
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    sget-object v0, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_OUT_OF_THE_BOX_BLUETOOTH_SCANNING:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 397
    :try_start_0
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-interface {p1}, Lcom/texa/carelib/communication/Communication;->stopScan()V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 399
    invoke-virtual {p1}, Lcom/texa/carelib/core/CareLibException;->printStackTrace()V

    .line 401
    :goto_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/texa/careapp/utils/permission/CorePermission;->USE_ACCESS_LOCATION:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/Utils;->isPermissionEnabled(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 402
    new-instance p1, Lcom/texa/careapp/utils/UniqueList;

    invoke-direct {p1}, Lcom/texa/careapp/utils/UniqueList;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mDongles:Lcom/texa/careapp/utils/UniqueList;

    .line 403
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->resetDongleList()V

    .line 405
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mCommunicationObservable:Lcom/texa/careapp/carelib/CommunicationObservable;

    invoke-virtual {p1}, Lcom/texa/careapp/carelib/CommunicationObservable;->prepareForScan()Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$$ExternalSyntheticLambda7;-><init>(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;)V

    .line 406
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->scanSub:Lio/reactivex/disposables/Disposable;

    .line 408
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mProgressLayout:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->show(Landroid/view/View;)V

    .line 409
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mDongleList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->show(Landroid/view/View;)V

    .line 410
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mDiscoveryStartButton:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->hide(Landroid/view/View;)V

    .line 411
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mDiscoveryEmpty:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->show(Landroid/view/View;)V

    .line 412
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mCareImage:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->show(Landroid/view/View;)V

    .line 413
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mNoDevicesLabel:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->show(Landroid/view/View;)V

    .line 414
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mNoDevicesDescription:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->hide(Landroid/view/View;)V

    .line 415
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mListTitle:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->hide(Landroid/view/View;)V

    .line 416
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mNoDevicesLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f11096d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mDiscoveryDescription:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110bcc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 419
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    invoke-virtual {p1}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->requestLocationPermission()V

    :goto_1
    return-void
.end method

.method private startTimer()V
    .locals 3

    .line 516
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-static {v1, v2, v0}, Lio/reactivex/Completable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Completable;

    move-result-object v0

    .line 517
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    .line 518
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$$ExternalSyntheticLambda5;-><init>(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;)V

    sget-object v2, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$$ExternalSyntheticLambda11;->INSTANCE:Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$$ExternalSyntheticLambda11;

    .line 519
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->timerDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private synchronizeDiscoveredDevices()V
    .locals 2

    .line 472
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-interface {v0}, Lcom/texa/carelib/communication/Communication;->getDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/carelib/communication/DeviceInfo;

    .line 473
    invoke-direct {p0, v1}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->onDeviceFound(Lcom/texa/carelib/communication/DeviceInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private validateDeviceInfo(Lcom/texa/careapp/app/onboarding/DeviceInfoExt;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 577
    invoke-virtual {p1}, Lcom/texa/careapp/app/onboarding/DeviceInfoExt;->getVehicleModelFormatted()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 578
    invoke-virtual {p1}, Lcom/texa/careapp/app/onboarding/DeviceInfoExt;->getPlate()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 579
    invoke-virtual {p1}, Lcom/texa/careapp/app/onboarding/DeviceInfoExt;->getVehicleModelFormatted()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 580
    invoke-virtual {p1}, Lcom/texa/careapp/app/onboarding/DeviceInfoExt;->getPlate()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 2

    .line 295
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScreenDongleDiscoveryBinding;

    .line 296
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenDongleDiscoveryBinding;->discoveryDongleList:Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mDongleList:Landroidx/recyclerview/widget/RecyclerView;

    .line 297
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenDongleDiscoveryBinding;->screenDongleDiscoveryStart:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mDiscoveryStartButton:Landroid/widget/RelativeLayout;

    .line 298
    new-instance v1, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenDongleDiscoveryBinding;->screenDongleDiscoveryEmptyLayout:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mDiscoveryEmpty:Landroid/widget/RelativeLayout;

    .line 300
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenDongleDiscoveryBinding;->screenDongleDiscoveryBtnStart:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mStartDiscoveryTextView:Landroid/widget/TextView;

    .line 301
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenDongleDiscoveryBinding;->screenDongleDiscoveryDescription:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mDiscoveryDescription:Landroid/widget/TextView;

    .line 302
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenDongleDiscoveryBinding;->parentCoordinator:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mParentRelativeLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 303
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenDongleDiscoveryBinding;->screenDongleDiscoveryImageView:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mCareImage:Landroid/widget/ImageView;

    .line 304
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenDongleDiscoveryBinding;->screenDongleDiscoveryNoDevicesLabel:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mNoDevicesLabel:Landroid/widget/TextView;

    .line 305
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenDongleDiscoveryBinding;->screenDongleDiscoveryNoDevicesDescription:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mNoDevicesDescription:Landroid/widget/TextView;

    .line 306
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenDongleDiscoveryBinding;->screenDongleDiscoveryListTitle:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mListTitle:Landroid/widget/TextView;

    .line 307
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenDongleDiscoveryBinding;->dongleSearchProgressLayout:Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mProgressLayout:Landroid/widget/RelativeLayout;

    .line 309
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->resetDongleList()V

    .line 310
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->setupViewsDefault()V

    .line 311
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mDiscoveryStartButton:Landroid/widget/RelativeLayout;

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->startScanForDevices(Landroid/view/View;)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "DongleDiscoveryScreen"

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00bc

    return v0
.end method

.method public getTitle()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$onDeviceSelected$3$com-texa-careapp-app-onboarding-DongleDiscoveryScreen(Lcom/texa/carelib/communication/DeviceInfo;Lcom/texa/carelib/communication/DeviceInfo;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 273
    iget-object p2, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mCommunicationObservable:Lcom/texa/careapp/carelib/CommunicationObservable;

    invoke-virtual {p2, p1}, Lcom/texa/careapp/carelib/CommunicationObservable;->connect(Lcom/texa/carelib/communication/DeviceInfo;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$onDeviceSelected$4$com-texa-careapp-app-onboarding-DongleDiscoveryScreen(Lcom/texa/carelib/communication/Communication;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, " communication= %s"

    .line 276
    invoke-static {p1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->onDeviceConnected()V

    return-void
.end method

.method public synthetic lambda$onDeviceSelected$5$com-texa-careapp-app-onboarding-DongleDiscoveryScreen(Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 279
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->dismissProgressDialogScreen()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, " exception while connecting."

    .line 280
    invoke-static {p1, v2, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-interface {p1}, Lcom/texa/carelib/communication/Communication;->stopReconnect()V

    .line 283
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mParentRelativeLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz p1, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110076

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 285
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1100aa

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mOnClickRetryConnection:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 286
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$parseAdditionalData$2$com-texa-careapp-app-onboarding-DongleDiscoveryScreen()V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mDongleAdapter:Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter;

    invoke-virtual {v0}, Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public synthetic lambda$requestAdditionalData$0$com-texa-careapp-app-onboarding-DongleDiscoveryScreen(Lcom/texa/careapp/networking/HardwareIdList;Lcom/texa/careapp/networking/response/DongleListResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 204
    iget-object p2, p2, Lcom/texa/careapp/networking/response/DongleListResponse;->list:Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->parseAdditionalData(Lcom/texa/careapp/networking/HardwareIdList;Ljava/util/List;)V

    return-void
.end method

.method public synthetic lambda$requestAdditionalData$1$com-texa-careapp-app-onboarding-DongleDiscoveryScreen(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "getDongleSummary exception."

    .line 205
    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mRetrofitErrorParser:Lcom/texa/careapp/utils/RetrofitErrorParser;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/utils/RetrofitErrorParser;->parse(Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic lambda$resetDongleList$6$com-texa-careapp-app-onboarding-DongleDiscoveryScreen(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 321
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mDongles:Lcom/texa/careapp/utils/UniqueList;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/texa/careapp/utils/UniqueList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mDongles:Lcom/texa/careapp/utils/UniqueList;

    invoke-virtual {p1, p3}, Lcom/texa/careapp/utils/UniqueList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/app/onboarding/DeviceInfoExt;

    invoke-virtual {p1}, Lcom/texa/careapp/app/onboarding/DeviceInfoExt;->isSelectable()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 322
    sput-boolean p1, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->isConfigured:Z

    .line 323
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mDongles:Lcom/texa/careapp/utils/UniqueList;

    invoke-virtual {p1, p3}, Lcom/texa/careapp/utils/UniqueList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/app/onboarding/DeviceInfoExt;

    invoke-virtual {p1}, Lcom/texa/careapp/app/onboarding/DeviceInfoExt;->getDeviceInfo()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->onDeviceSelected(Lcom/texa/carelib/communication/DeviceInfo;)V

    goto :goto_1

    .line 325
    :cond_0
    iget-boolean p1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->hasSkipped:Z

    if-eqz p1, :cond_1

    .line 326
    new-instance p1, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;

    iget-object p2, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mApplication:Lcom/texa/careapp/CareApplication;

    iget-object p3, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mOnBoardingActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    invoke-direct {p1, p2, p3}, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;-><init>(Lcom/texa/careapp/CareApplication;Lcom/texa/careapp/app/onboarding/OnBoardingActivity;)V

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->goTo(Lcom/texa/care/navigation/Screen;)V

    goto :goto_0

    .line 329
    :cond_1
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mDongles:Lcom/texa/careapp/utils/UniqueList;

    invoke-virtual {p1, p3}, Lcom/texa/careapp/utils/UniqueList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/app/onboarding/DeviceInfoExt;

    invoke-virtual {p1}, Lcom/texa/careapp/app/onboarding/DeviceInfoExt;->getDeviceInfo()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->onDeviceSelected(Lcom/texa/carelib/communication/DeviceInfo;)V

    :goto_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Device is not configured"

    .line 331
    invoke-static {p2, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public synthetic lambda$startScanForDevices$8$com-texa-careapp-app-onboarding-DongleDiscoveryScreen(Lcom/texa/carelib/communication/Communication;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 406
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->startScanDevicesInner()V

    return-void
.end method

.method public synthetic lambda$startTimer$9$com-texa-careapp-app-onboarding-DongleDiscoveryScreen()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 520
    iget-boolean v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->isOperationFinished:Z

    if-nez v0, :cond_0

    .line 521
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->onScanCompleted()V

    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 643
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onDestroyView()V
    .locals 1

    .line 585
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onDestroyView()V

    .line 586
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->timerDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    const/4 v0, 0x1

    .line 587
    iput-boolean v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->isOperationFinished:Z

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 503
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->resetDongleList()V

    .line 505
    :try_start_0
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-interface {v0}, Lcom/texa/carelib/communication/Communication;->stopScan()V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 507
    invoke-virtual {v0}, Lcom/texa/carelib/core/CareLibException;->printStackTrace()V

    .line 509
    :goto_0
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mCommunication:Lcom/texa/carelib/communication/Communication;

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mDeviceDiscoveryListener:Lcom/texa/carelib/communication/DeviceDiscoveryListener;

    invoke-interface {v0, v1}, Lcom/texa/carelib/communication/Communication;->removeDeviceDiscoveryListener(Lcom/texa/carelib/communication/DeviceDiscoveryListener;)V

    .line 510
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mCommunication:Lcom/texa/carelib/communication/Communication;

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mCommunicationChangeListener:Ljava/beans/PropertyChangeListener;

    invoke-interface {v0, v1}, Lcom/texa/carelib/communication/Communication;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 457
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mCommunication:Lcom/texa/carelib/communication/Communication;

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mDeviceDiscoveryListener:Lcom/texa/carelib/communication/DeviceDiscoveryListener;

    invoke-interface {v0, v1}, Lcom/texa/carelib/communication/Communication;->addDeviceDiscoveryListener(Lcom/texa/carelib/communication/DeviceDiscoveryListener;)Lcom/texa/carelib/communication/DeviceDiscoveryListener;

    .line 458
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->synchronizeDiscoveredDevices()V

    const/4 v0, 0x0

    .line 459
    iput-boolean v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->isOperationFinished:Z

    .line 460
    iget-boolean v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mAtLeastOnScanHasStarted:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->isScanning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 461
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->onScanCompleted()V

    :cond_0
    return-void
.end method
