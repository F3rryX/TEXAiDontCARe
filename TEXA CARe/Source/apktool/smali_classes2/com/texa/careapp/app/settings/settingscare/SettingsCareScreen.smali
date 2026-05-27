.class public Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;
.super Lcom/texa/care/navigation/Screen;
.source "SettingsCareScreen.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingsCareScreen"


# instance fields
.field private accessorySub:Lio/reactivex/disposables/Disposable;

.field private infoSub:Lio/reactivex/disposables/Disposable;

.field protected mAccessory:Lcom/texa/carelib/care/accessory/Accessory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mCareObserver:Lcom/texa/careapp/carelib/ICareObserver;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mTexaService:Lcom/texa/carelib/webservices/TexaService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private settingAccessoryGroup:Landroid/widget/LinearLayout;

.field private settingsCareAccessoryStatus:Landroid/widget/TextView;

.field private settingsCareAppLatestMain:Landroid/widget/TextView;

.field private settingsCareAppLatestService:Landroid/widget/TextView;

.field private settingsCareAppVersion:Landroid/widget/TextView;

.field private settingsCareAppVersionMain:Landroid/widget/TextView;

.field private settingsCareAppVersionService:Landroid/widget/TextView;

.field private settingsCareLibraryVersion:Landroid/widget/TextView;

.field private settingsCareSerialNumber:Landroid/widget/TextView;

.field private settingsMainAppLatestgroup:Landroid/widget/LinearLayout;

.field private settingsServiceAppLatestGroup:Landroid/widget/LinearLayout;

.field private settingsUpdateConfiguration:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    return-void
.end method

.method private displayMainAppVersion(Lcom/texa/carelib/core/utils/FirmwareVersion;)V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->settingsCareAppVersionMain:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/texa/carelib/core/utils/VersionFormatter;->formatLong(Lcom/texa/carelib/core/utils/FirmwareVersion;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private displaySerialNumber(Ljava/lang/String;)V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->settingsCareSerialNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private displayServiceAppVersion(Lcom/texa/carelib/core/utils/FirmwareVersion;)V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->settingsCareAppVersionService:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/texa/carelib/core/utils/VersionFormatter;->formatLong(Lcom/texa/carelib/core/utils/FirmwareVersion;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private displayUpdateInfos(Lcom/texa/careapp/model/DongleModel;)V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->settingsCareAppLatestMain:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 193
    new-instance v1, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;Lcom/texa/careapp/model/DongleModel;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->settingsCareAppLatestService:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 198
    new-instance v1, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;Lcom/texa/careapp/model/DongleModel;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method static synthetic lambda$updateAccessoryStatusTextView$6(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "mCareObserver#observeCareStatus onError"

    .line 160
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$updateAccessoryStatusTextView$8(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "exception in observeCareStatus"

    .line 161
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$updateCareInfos$3(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Could not save dongle model to database"

    .line 150
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$updateCareInfos$5(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "exception in observerFirmwareVersion"

    .line 155
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private loadUpdateInfos(Lcom/texa/careapp/model/DongleModel;)V
    .locals 5

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->mTexaService:Lcom/texa/carelib/webservices/TexaService;

    invoke-interface {v0}, Lcom/texa/carelib/webservices/TexaService;->getFirmwareInfoProcedure()Lcom/texa/carelib/webservices/ServiceFirmwareInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/texa/careapp/model/DongleModel;->getHwid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/model/DongleModel;->getMainAppVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object v2

    invoke-virtual {p1}, Lcom/texa/careapp/model/DongleModel;->getServiceAppVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object v3

    new-instance v4, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0, p1}, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen$$ExternalSyntheticLambda4;-><init>(Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;Lcom/texa/careapp/model/DongleModel;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/texa/carelib/webservices/ServiceFirmwareInfo;->loadFirmwareInfo(Ljava/lang/String;Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/Callback;)V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 185
    invoke-virtual {p1}, Lcom/texa/carelib/core/CareLibException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setupViews(Z)V
    .locals 4

    .line 204
    iget-object v0, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->settingAccessoryGroup:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->settingsServiceAppLatestGroup:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->settingsMainAppLatestgroup:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    const/16 v3, 0x8

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->settingsUpdateConfiguration:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    const/16 v1, 0x8

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private updateAccessoryStatusTextView()V
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->mCareObserver:Lcom/texa/careapp/carelib/ICareObserver;

    invoke-interface {v0}, Lcom/texa/careapp/carelib/ICareObserver;->observeCareStatus()Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen$$ExternalSyntheticLambda8;->INSTANCE:Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen$$ExternalSyntheticLambda8;

    .line 160
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen$$ExternalSyntheticLambda7;-><init>(Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;)V

    sget-object v2, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen$$ExternalSyntheticLambda9;->INSTANCE:Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen$$ExternalSyntheticLambda9;

    .line 161
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->accessorySub:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private updateAppVersion()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->settingsCareAppVersion:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/texa/careapp/utils/Utils;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateCareInfos(Lcom/texa/careapp/model/DongleModel;)V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->mCareObserver:Lcom/texa/careapp/carelib/ICareObserver;

    invoke-virtual {p1, v0}, Lcom/texa/careapp/model/DongleModel;->observerFirmwareVersion(Lcom/texa/careapp/carelib/ICareObserver;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen$$ExternalSyntheticLambda6;-><init>(Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;)V

    .line 149
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen$$ExternalSyntheticLambda10;->INSTANCE:Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen$$ExternalSyntheticLambda10;

    .line 150
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen$$ExternalSyntheticLambda5;-><init>(Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;)V

    sget-object v1, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen$$ExternalSyntheticLambda11;->INSTANCE:Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen$$ExternalSyntheticLambda11;

    .line 151
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->infoSub:Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 2

    .line 97
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/CareApplication;

    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;)V

    .line 98
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/SettingsCareScreenBinding;

    .line 99
    iget-object v0, p1, Lcom/texa/careapp/databinding/SettingsCareScreenBinding;->settingsAppVersion:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->settingsCareAppVersion:Landroid/widget/TextView;

    .line 100
    iget-object v0, p1, Lcom/texa/careapp/databinding/SettingsCareScreenBinding;->settingsSerialNumber:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->settingsCareSerialNumber:Landroid/widget/TextView;

    .line 101
    iget-object v0, p1, Lcom/texa/careapp/databinding/SettingsCareScreenBinding;->settingsLibraryVersion:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->settingsCareLibraryVersion:Landroid/widget/TextView;

    .line 102
    iget-object v0, p1, Lcom/texa/careapp/databinding/SettingsCareScreenBinding;->settingsAccessoryStatus:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->settingsCareAccessoryStatus:Landroid/widget/TextView;

    .line 103
    iget-object v0, p1, Lcom/texa/careapp/databinding/SettingsCareScreenBinding;->settingsMainAppVersion:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->settingsCareAppVersionMain:Landroid/widget/TextView;

    .line 104
    iget-object v0, p1, Lcom/texa/careapp/databinding/SettingsCareScreenBinding;->settingsServiceAppVersion:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->settingsCareAppVersionService:Landroid/widget/TextView;

    .line 105
    iget-object v0, p1, Lcom/texa/careapp/databinding/SettingsCareScreenBinding;->settingsMainAppLatest:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->settingsCareAppLatestMain:Landroid/widget/TextView;

    .line 106
    iget-object v0, p1, Lcom/texa/careapp/databinding/SettingsCareScreenBinding;->settingsServiceAppLatest:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->settingsCareAppLatestService:Landroid/widget/TextView;

    .line 108
    iget-object v0, p1, Lcom/texa/careapp/databinding/SettingsCareScreenBinding;->settingsAccessoryGroup:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->settingAccessoryGroup:Landroid/widget/LinearLayout;

    .line 109
    iget-object v0, p1, Lcom/texa/careapp/databinding/SettingsCareScreenBinding;->settingsServiceAppLatestGroup:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->settingsServiceAppLatestGroup:Landroid/widget/LinearLayout;

    .line 110
    iget-object v0, p1, Lcom/texa/careapp/databinding/SettingsCareScreenBinding;->settingsMainAppLatestGroup:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->settingsMainAppLatestgroup:Landroid/widget/LinearLayout;

    .line 111
    iget-object v0, p1, Lcom/texa/careapp/databinding/SettingsCareScreenBinding;->settingsUpdateConfiguation:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->settingsUpdateConfiguration:Landroid/widget/TextView;

    .line 112
    new-instance v1, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object p1, p1, Lcom/texa/careapp/databinding/SettingsCareScreenBinding;->settingsUpdateFirmware:Landroid/widget/TextView;

    new-instance v0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen$$ExternalSyntheticLambda3;-><init>(Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object p1, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {p1}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "mDongleModel is null"

    .line 117
    invoke-static {v0, p1}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {p1}, Lcom/texa/careapp/model/DongleModel;->getHwid()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->displaySerialNumber(Ljava/lang/String;)V

    .line 120
    invoke-direct {p0}, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->updateAppVersion()V

    .line 121
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->updateCareInfos(Lcom/texa/careapp/model/DongleModel;)V

    .line 122
    invoke-direct {p0}, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->updateAccessoryStatusTextView()V

    :goto_0
    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 133
    sget-object v0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00f0

    return v0
.end method

.method public synthetic lambda$afterViewInjection$0$com-texa-careapp-app-settings-settingscare-SettingsCareScreen(Landroid/view/View;)V
    .locals 1

    .line 112
    iget-object p1, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->buildDefaultIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$1$com-texa-careapp-app-settings-settingscare-SettingsCareScreen(Landroid/view/View;)V
    .locals 1

    .line 113
    iget-object p1, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/texa/careapp/app/update/FirmwareUpdateService;->buildDefaultIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public synthetic lambda$displayUpdateInfos$10$com-texa-careapp-app-settings-settingscare-SettingsCareScreen(Lcom/texa/careapp/model/DongleModel;)V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->settingsCareAppLatestMain:Landroid/widget/TextView;

    .line 194
    invoke-virtual {p1}, Lcom/texa/careapp/model/DongleModel;->getMainAppVersionUpdate()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object p1

    invoke-static {p1}, Lcom/texa/carelib/core/utils/VersionFormatter;->formatLong(Lcom/texa/carelib/core/utils/FirmwareVersion;)Ljava/lang/String;

    move-result-object p1

    .line 193
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$displayUpdateInfos$11$com-texa-careapp-app-settings-settingscare-SettingsCareScreen(Lcom/texa/careapp/model/DongleModel;)V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->settingsCareAppLatestService:Landroid/widget/TextView;

    .line 199
    invoke-virtual {p1}, Lcom/texa/careapp/model/DongleModel;->getServiceAppVersionUpdate()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object p1

    invoke-static {p1}, Lcom/texa/carelib/core/utils/VersionFormatter;->formatLong(Lcom/texa/carelib/core/utils/FirmwareVersion;)Ljava/lang/String;

    move-result-object p1

    .line 198
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$loadUpdateInfos$9$com-texa-careapp-app-settings-settingscare-SettingsCareScreen(Lcom/texa/careapp/model/DongleModel;Lcom/texa/carelib/webservices/ServiceFirmwareInfoLoadedEvent;)V
    .locals 2

    .line 167
    invoke-virtual {p2}, Lcom/texa/carelib/webservices/ServiceFirmwareInfoLoadedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    sget-object p1, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/texa/carelib/core/CareError;->getException()Ljava/lang/Throwable;

    move-result-object p2

    const-string v0, "loadFirmwareInfo error: "

    invoke-static {p1, v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 173
    :cond_0
    invoke-virtual {p2}, Lcom/texa/carelib/webservices/ServiceFirmwareInfoLoadedEvent;->getMainAppVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/texa/careapp/model/DongleModel;->setMainAppVersionUpdate(Lcom/texa/carelib/core/utils/FirmwareVersion;)V

    .line 174
    invoke-virtual {p2}, Lcom/texa/carelib/webservices/ServiceFirmwareInfoLoadedEvent;->getServiceAppVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/texa/careapp/model/DongleModel;->setServiceAppVersionUpdate(Lcom/texa/carelib/core/utils/FirmwareVersion;)V

    .line 177
    :try_start_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    :goto_0
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->displayUpdateInfos(Lcom/texa/careapp/model/DongleModel;)V

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_0
    move-exception p2

    :try_start_1
    const-string v0, "Could not save updated dongle info on database."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 179
    invoke-static {p2, v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 181
    :goto_2
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->displayUpdateInfos(Lcom/texa/careapp/model/DongleModel;)V

    .line 182
    throw p2
.end method

.method public synthetic lambda$updateAccessoryStatusTextView$7$com-texa-careapp-app-settings-settingscare-SettingsCareScreen(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->settingsCareAccessoryStatus:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->readableAccessoryStatus(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$updateCareInfos$2$com-texa-careapp-app-settings-settingscare-SettingsCareScreen(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 149
    iget-object p1, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-interface {p1}, Lcom/texa/carelib/care/accessory/Accessory;->loadAccessoryInfo()V

    return-void
.end method

.method public synthetic lambda$updateCareInfos$4$com-texa-careapp-app-settings-settingscare-SettingsCareScreen(Lcom/texa/careapp/model/DongleModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 152
    invoke-virtual {p1}, Lcom/texa/careapp/model/DongleModel;->getMainAppVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->displayMainAppVersion(Lcom/texa/carelib/core/utils/FirmwareVersion;)V

    .line 153
    invoke-virtual {p1}, Lcom/texa/careapp/model/DongleModel;->getServiceAppVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->displayServiceAppVersion(Lcom/texa/carelib/core/utils/FirmwareVersion;)V

    .line 154
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->loadUpdateInfos(Lcom/texa/careapp/model/DongleModel;)V

    return-void
.end method

.method public onEvent(Lcom/texa/careapp/app/update/FirmwareUpdateController$FirmwareUpdateStatus;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 225
    new-instance v0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareFwUpdateScreenDialog;

    invoke-virtual {p1}, Lcom/texa/careapp/app/update/FirmwareUpdateController$FirmwareUpdateStatus;->getStatus()I

    move-result p1

    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/care/navigation/Navigator;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/CareApplication;

    invoke-direct {v0, p1, v1}, Lcom/texa/careapp/app/settings/settingscare/SettingsCareFwUpdateScreenDialog;-><init>(ILcom/texa/careapp/CareApplication;)V

    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->goTo(Lcom/texa/care/navigation/Screen;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 89
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onPause()V

    .line 90
    iget-object v0, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->accessorySub:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 92
    iget-object v0, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->infoSub:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 138
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onResume()V

    .line 139
    iget-object v0, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 140
    invoke-direct {p0, v0}, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->setupViews(Z)V

    return-void
.end method
