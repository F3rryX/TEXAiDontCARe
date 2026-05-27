.class public Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;
.super Lcom/texa/care/navigation/Screen;
.source "SosPrerequisiteScreen.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private clickOnBluetooth:Landroid/view/View$OnClickListener;

.field private clickOnGPS:Landroid/view/View$OnClickListener;

.field private clickOnNetwork:Landroid/view/View$OnClickListener;

.field private clickOnPhoneNumber:Landroid/view/View$OnClickListener;

.field private filter:Landroid/content/IntentFilter;

.field private mActivity:Lcom/texa/careapp/app/sos/SosPrerequisiteActivity;

.field private mBluetoothImg:Landroid/widget/ImageView;

.field private mBtLayout:Landroid/widget/LinearLayout;

.field private mCheckGps:Lcom/texa/careapp/checks/Check;

.field private mCheckNetworkConnection:Lcom/texa/careapp/checks/Check;

.field protected mChecksFactory:Lcom/texa/careapp/checks/ChecksFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mCommunication:Lcom/texa/carelib/communication/Communication;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mConnectionImg:Landroid/widget/ImageView;

.field protected mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mGPSImg:Landroid/widget/ImageView;

.field private mGPSLayout:Landroid/widget/LinearLayout;

.field private mGpsDisposable:Lio/reactivex/disposables/Disposable;

.field private mNetworkDispoasable:Lio/reactivex/disposables/Disposable;

.field private mNetworkImg:Landroid/widget/ImageView;

.field private mNetworkLayout:Landroid/widget/LinearLayout;

.field private mPhoneNumberImg:Landroid/widget/ImageView;

.field private mPhoneNumberLayout:Landroid/widget/LinearLayout;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mService:Lcom/texa/careapp/model/ServiceDataModel;

.field protected mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mTermsOfService:Landroid/widget/LinearLayout;

.field private mTermsOfServiceImg:Landroid/widget/ImageView;

.field mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/texa/careapp/model/ServiceDataModel;Lcom/texa/careapp/app/sos/SosPrerequisiteActivity;)V
    .locals 2

    .line 78
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    const-string v0, "SosPrerequisiteScreen"

    .line 50
    iput-object v0, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->TAG:Ljava/lang/String;

    .line 114
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->filter:Landroid/content/IntentFilter;

    .line 115
    sget-object v0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen$$ExternalSyntheticLambda4;->INSTANCE:Lcom/texa/careapp/app/sos/SosPrerequisiteScreen$$ExternalSyntheticLambda4;

    iput-object v0, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->clickOnBluetooth:Landroid/view/View$OnClickListener;

    .line 121
    new-instance v0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen$1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen$1;-><init>(Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;)V

    iput-object v0, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 128
    new-instance v0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;)V

    iput-object v0, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->clickOnPhoneNumber:Landroid/view/View$OnClickListener;

    .line 133
    new-instance v0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;)V

    iput-object v0, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->clickOnNetwork:Landroid/view/View$OnClickListener;

    .line 139
    new-instance v0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;)V

    iput-object v0, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->clickOnGPS:Landroid/view/View$OnClickListener;

    .line 79
    iput-object p1, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mService:Lcom/texa/careapp/model/ServiceDataModel;

    .line 80
    iput-object p2, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mActivity:Lcom/texa/careapp/app/sos/SosPrerequisiteActivity;

    return-void
.end method

.method static synthetic access$000(Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;)Z
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->isBluetoothEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;)Z
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->isCareConnected()Z

    move-result p0

    return p0
.end method

.method private checkTermsAccepted()V
    .locals 3

    .line 249
    iget-object v0, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mService:Lcom/texa/careapp/model/ServiceDataModel;

    const/4 v1, 0x0

    const v2, 0x7f0800fd

    if-nez v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mTermsOfServiceImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 251
    iget-object v0, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mTermsOfService:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 253
    :cond_0
    invoke-virtual {v0}, Lcom/texa/careapp/model/ServiceDataModel;->isTermsAccepted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mTermsOfServiceImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 255
    iget-object v0, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mTermsOfService:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mTermsOfServiceImg:Landroid/widget/ImageView;

    const v1, 0x7f0800fc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 258
    iget-object v0, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mTermsOfService:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mService:Lcom/texa/careapp/model/ServiceDataModel;

    invoke-direct {p0, v1}, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->clickOnTermsOfService(Lcom/texa/careapp/model/ServiceDataModel;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method private clickOnTermsOfService(Lcom/texa/careapp/model/ServiceDataModel;)Landroid/view/View$OnClickListener;
    .locals 1

    .line 151
    new-instance v0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen$$ExternalSyntheticLambda3;-><init>(Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;Lcom/texa/careapp/model/ServiceDataModel;)V

    return-object v0
.end method

.method private initSOSPrerequisite()V
    .locals 0

    .line 241
    invoke-direct {p0}, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->isBluetoothEnabled()Z

    .line 242
    invoke-direct {p0}, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->isPhoneNumberValid()Z

    .line 243
    invoke-direct {p0}, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->checkTermsAccepted()V

    .line 244
    invoke-direct {p0}, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->isCareConnected()Z

    return-void
.end method

.method private isBluetoothEnabled()Z
    .locals 3

    .line 291
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 295
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    iget-object v1, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mBluetoothImg:Landroid/widget/ImageView;

    const v2, 0x7f0800f3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 298
    iget-object v1, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mBtLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 300
    :cond_1
    iget-object v1, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mBluetoothImg:Landroid/widget/ImageView;

    const v2, 0x7f0800f2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 301
    iget-object v1, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mBtLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->clickOnBluetooth:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return v0
.end method

.method private isCareConnected()Z
    .locals 10

    .line 322
    iget-object v0, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0800f4

    if-nez v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mConnectionImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    return v1

    .line 328
    :cond_0
    iget-object v3, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-static {v3}, Lcom/texa/careapp/utils/Utils;->isCareConnected(Lcom/texa/carelib/communication/Communication;)Z

    move-result v3

    const/4 v4, 0x1

    const v5, 0x7f0800f5

    if-eqz v3, :cond_1

    .line 329
    iget-object v0, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mConnectionImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    return v4

    .line 335
    :cond_1
    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->getLastConnection()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_2

    .line 337
    iget-object v0, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mConnectionImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    return v1

    .line 341
    :cond_2
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/32 v8, 0x927c0

    invoke-static {v6, v7, v8, v9}, Lcom/texa/careapp/utils/Utils;->isTimeElapsed(JJ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 344
    iget-object v0, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mConnectionImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    return v1

    .line 347
    :cond_3
    iget-object v0, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mConnectionImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    return v4
.end method

.method private isPhoneNumberValid()Z
    .locals 3

    .line 269
    iget-object v0, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/UserDataManager;->getUserCached()Lcom/texa/careapp/model/UserModel;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 273
    :cond_0
    invoke-virtual {v0}, Lcom/texa/careapp/model/UserModel;->getUserCellPhoneContact()Lcom/texa/careapp/model/ContactModel;

    move-result-object v0

    .line 274
    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->isCellPhoneNumberNotEmpty(Lcom/texa/careapp/model/ContactModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    iget-object v1, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mPhoneNumberImg:Landroid/widget/ImageView;

    const v2, 0x7f0800fb

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 277
    iget-object v1, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mPhoneNumberLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 279
    :cond_1
    iget-object v1, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mPhoneNumberImg:Landroid/widget/ImageView;

    const v2, 0x7f0800fa

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 280
    iget-object v1, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mPhoneNumberLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->clickOnPhoneNumber:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return v0
.end method

.method static synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    .line 116
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    .line 117
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    :cond_0
    return-void
.end method

.method static synthetic lambda$observeNetwork$8(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "error observing network"

    .line 222
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private observeGps()Lio/reactivex/disposables/Disposable;
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mCheckGps:Lcom/texa/careapp/checks/Check;

    invoke-interface {v0}, Lcom/texa/careapp/checks/Check;->check()Lio/reactivex/Observable;

    move-result-object v0

    .line 195
    invoke-static {}, Lcom/texa/careapp/utils/Utils;->applySchedulers()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen$$ExternalSyntheticLambda5;-><init>(Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;)V

    new-instance v2, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen$$ExternalSyntheticLambda7;-><init>(Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;)V

    .line 196
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    return-object v0
.end method

.method private observeNetwork()Lio/reactivex/disposables/Disposable;
    .locals 3

    .line 212
    iget-object v0, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mCheckNetworkConnection:Lcom/texa/careapp/checks/Check;

    invoke-interface {v0}, Lcom/texa/careapp/checks/Check;->check()Lio/reactivex/Observable;

    move-result-object v0

    .line 213
    invoke-static {}, Lcom/texa/careapp/utils/Utils;->applySchedulers()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen$$ExternalSyntheticLambda6;-><init>(Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;)V

    sget-object v2, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen$$ExternalSyntheticLambda8;->INSTANCE:Lcom/texa/careapp/app/sos/SosPrerequisiteScreen$$ExternalSyntheticLambda8;

    .line 214
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    return-object v0
.end method

.method private replaceServiceDataInDb(Lcom/texa/careapp/model/ServiceDataModel;Lcom/texa/careapp/model/ServiceDataModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/careapp/exceptions/DatabaseIOException;
        }
    .end annotation

    .line 173
    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->getDongle()Lcom/texa/careapp/model/DongleModel;

    move-result-object v0

    .line 174
    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->getUser()Lcom/texa/careapp/model/UserModel;

    move-result-object v1

    .line 176
    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->delete()V

    .line 177
    invoke-virtual {p2, v0}, Lcom/texa/careapp/model/ServiceDataModel;->setDongle(Lcom/texa/careapp/model/DongleModel;)V

    .line 178
    invoke-virtual {p2, v1}, Lcom/texa/careapp/model/ServiceDataModel;->setUser(Lcom/texa/careapp/model/UserModel;)V

    .line 179
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J

    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 1

    .line 85
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/CareApplication;

    .line 86
    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;)V

    .line 87
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScreenSosPrerequisiteBinding;

    .line 88
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenSosPrerequisiteBinding;->sosPrerequisiteBtImg:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mBluetoothImg:Landroid/widget/ImageView;

    .line 89
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenSosPrerequisiteBinding;->sosPrerequisitePhoneNumberImg:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mPhoneNumberImg:Landroid/widget/ImageView;

    .line 90
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenSosPrerequisiteBinding;->sosPrerequisiteTermsofserviceImg:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mTermsOfServiceImg:Landroid/widget/ImageView;

    .line 91
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenSosPrerequisiteBinding;->sosPrerequisiteNetworkImg:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mNetworkImg:Landroid/widget/ImageView;

    .line 92
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenSosPrerequisiteBinding;->sosPrerequisiteGpsImg:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mGPSImg:Landroid/widget/ImageView;

    .line 93
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenSosPrerequisiteBinding;->sosPrerequisiteConnectionImg:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mConnectionImg:Landroid/widget/ImageView;

    .line 94
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenSosPrerequisiteBinding;->sosPrerequisiteBt:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mBtLayout:Landroid/widget/LinearLayout;

    .line 95
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenSosPrerequisiteBinding;->sosPrerequisitePhoneNumber:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mPhoneNumberLayout:Landroid/widget/LinearLayout;

    .line 96
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenSosPrerequisiteBinding;->sosPrerequisiteTermsofservice:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mTermsOfService:Landroid/widget/LinearLayout;

    .line 97
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenSosPrerequisiteBinding;->sosPrerequisiteNetwork:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mNetworkLayout:Landroid/widget/LinearLayout;

    .line 98
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenSosPrerequisiteBinding;->sosPrerequisiteGps:Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mGPSLayout:Landroid/widget/LinearLayout;

    .line 100
    iget-object p1, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mChecksFactory:Lcom/texa/careapp/checks/ChecksFactory;

    invoke-virtual {p1}, Lcom/texa/careapp/checks/ChecksFactory;->newCheckNetworkConnection()Lcom/texa/careapp/checks/Check;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mCheckNetworkConnection:Lcom/texa/careapp/checks/Check;

    .line 101
    iget-object p1, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mChecksFactory:Lcom/texa/careapp/checks/ChecksFactory;

    invoke-virtual {p1}, Lcom/texa/careapp/checks/ChecksFactory;->newCheckGps()Lcom/texa/careapp/checks/Check;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mCheckGps:Lcom/texa/careapp/checks/Check;

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00e5

    return v0
.end method

.method protected isCellPhoneNumberNotEmpty(Lcom/texa/careapp/model/ContactModel;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 309
    invoke-virtual {p1}, Lcom/texa/careapp/model/ContactModel;->getPhoneNumber()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 310
    iget-object p1, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mPhoneNumberImg:Landroid/widget/ImageView;

    const v0, 0x7f0800fb

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p1, 0x1

    return p1

    .line 313
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mPhoneNumberImg:Landroid/widget/ImageView;

    const v0, 0x7f0800fa

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p1, 0x0

    return p1
.end method

.method public synthetic lambda$clickOnTermsOfService$4$com-texa-careapp-app-sos-SosPrerequisiteScreen(Lcom/texa/careapp/model/ServiceDataModel;Landroid/view/View;)V
    .locals 0

    .line 151
    new-instance p2, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen$2;

    invoke-direct {p2, p0, p1, p1}, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen$2;-><init>(Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;Lcom/texa/careapp/model/ServiceDataModel;Lcom/texa/careapp/model/ServiceDataModel;)V

    invoke-virtual {p0, p2}, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->goTo(Lcom/texa/care/navigation/Screen;)V

    return-void
.end method

.method public synthetic lambda$new$1$com-texa-careapp-app-sos-SosPrerequisiteScreen(Landroid/view/View;)V
    .locals 1

    .line 129
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/app/activationSosServices/phone/ActivationPhoneNumberActivity;->buildIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 130
    iget-object p1, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mActivity:Lcom/texa/careapp/app/sos/SosPrerequisiteActivity;

    invoke-virtual {p1}, Lcom/texa/careapp/app/sos/SosPrerequisiteActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$new$2$com-texa-careapp-app-sos-SosPrerequisiteScreen(Landroid/view/View;)V
    .locals 1

    .line 134
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.DATA_ROAMING_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    .line 135
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 136
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$new$3$com-texa-careapp-app-sos-SosPrerequisiteScreen(Landroid/view/View;)V
    .locals 1

    .line 140
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    .line 141
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 142
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$observeGps$5$com-texa-careapp-app-sos-SosPrerequisiteScreen(Lcom/texa/careapp/checks/Check$Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 197
    sget-object v0, Lcom/texa/careapp/checks/Check$Result;->OK:Lcom/texa/careapp/checks/Check$Result;

    if-ne p1, v0, :cond_0

    .line 198
    iget-object p1, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mGPSImg:Landroid/widget/ImageView;

    const v0, 0x7f0800f7

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 199
    iget-object p1, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mGPSLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 201
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mGPSImg:Landroid/widget/ImageView;

    const v0, 0x7f0800f6

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 202
    iget-object p1, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mGPSLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->clickOnGPS:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$observeGps$6$com-texa-careapp-app-sos-SosPrerequisiteScreen(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "error observing gps"

    .line 205
    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    iget-object p1, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mGPSImg:Landroid/widget/ImageView;

    const v0, 0x7f0800f6

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 207
    iget-object p1, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mGPSLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->clickOnGPS:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic lambda$observeNetwork$7$com-texa-careapp-app-sos-SosPrerequisiteScreen(Lcom/texa/careapp/checks/Check$Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 215
    sget-object v0, Lcom/texa/careapp/checks/Check$Result;->OK:Lcom/texa/careapp/checks/Check$Result;

    if-ne p1, v0, :cond_0

    .line 216
    iget-object p1, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mNetworkImg:Landroid/widget/ImageView;

    const v0, 0x7f0800f9

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 217
    iget-object p1, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mNetworkLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 219
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mNetworkImg:Landroid/widget/ImageView;

    const v0, 0x7f0800f8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 220
    iget-object p1, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mNetworkLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->clickOnNetwork:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 227
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onPause()V

    .line 228
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 229
    iget-object v0, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mNetworkDispoasable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 230
    iget-object v0, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mGpsDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 185
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onResume()V

    .line 186
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 187
    invoke-direct {p0}, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->initSOSPrerequisite()V

    .line 189
    invoke-direct {p0}, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->observeNetwork()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mNetworkDispoasable:Lio/reactivex/disposables/Disposable;

    .line 190
    invoke-direct {p0}, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->observeGps()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mGpsDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method
