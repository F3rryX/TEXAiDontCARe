.class public Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;
.super Lcom/texa/care/navigation/Screen;
.source "UpdateFirmwareDialog.java"


# instance fields
.field mAccessory:Lcom/texa/carelib/care/accessory/Accessory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mActivity:Landroid/app/Activity;

.field private mBtnOk:Landroid/widget/TextView;

.field private mBtnUndo:Landroid/widget/TextView;

.field mCareObserver:Lcom/texa/careapp/carelib/ICareObserver;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mDescription:Landroid/widget/TextView;

.field mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mDongleModel:Lcom/texa/careapp/model/DongleModel;

.field mFirmwareUpdateController:Lcom/texa/careapp/app/update/FirmwareUpdateController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mLine:Landroid/view/View;

.field private mNavigator:Lcom/texa/care/navigation/Navigator;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field mTexaService:Lcom/texa/carelib/webservices/TexaService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$bM5mXl4s5HFPw8gTADQlgcwPojU(Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->checkForUpdatesOnServer(Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;)V

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method private checkForUpdatesOnServer(Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;)V
    .locals 5

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->mTexaService:Lcom/texa/carelib/webservices/TexaService;

    invoke-interface {v0}, Lcom/texa/carelib/webservices/TexaService;->getFirmwareInfoProcedure()Lcom/texa/carelib/webservices/ServiceFirmwareInfo;

    move-result-object v0

    iget-object v1, p1, Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;->serialNumber:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;->getCurrentMainAppVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object v2

    invoke-virtual {p1}, Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;->getCurrentServiceAppVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object v3

    new-instance v4, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, p1}, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog$$ExternalSyntheticLambda3;-><init>(Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;)V

    .line 124
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/texa/carelib/webservices/ServiceFirmwareInfo;->loadFirmwareInfo(Ljava/lang/String;Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/Callback;)V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 138
    invoke-virtual {p1}, Lcom/texa/carelib/core/CareLibException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private isCareReadyForFirmwareUpdate()Z
    .locals 5

    .line 115
    iget-object v0, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-interface {v0}, Lcom/texa/carelib/care/accessory/Accessory;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 116
    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->readableAccessoryStatus(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "accessory status= %s"

    invoke-static {v3, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    if-eq v2, v0, :cond_1

    const/4 v2, 0x3

    if-eq v2, v0, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method static synthetic lambda$afterViewInjection$0(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "error observing updates from server"

    .line 106
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private parseServerResponse(Lcom/texa/carelib/webservices/ServiceFirmwareInfoLoadedEvent;Lcom/texa/careapp/model/DongleModel;Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;)V
    .locals 5

    .line 145
    invoke-virtual {p1}, Lcom/texa/carelib/webservices/ServiceFirmwareInfoLoadedEvent;->getMainAppVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object v0

    .line 146
    invoke-virtual {p1}, Lcom/texa/carelib/webservices/ServiceFirmwareInfoLoadedEvent;->getServiceAppVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object p1

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v4, "Latest MAIN APP version: %s"

    .line 148
    invoke-static {v4, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const-string v2, "Latest SERVICE APP version: %s"

    .line 149
    invoke-static {v2, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    invoke-virtual {p2, v0}, Lcom/texa/careapp/model/DongleModel;->setMainAppVersionUpdate(Lcom/texa/carelib/core/utils/FirmwareVersion;)V

    .line 152
    invoke-virtual {p2, p1}, Lcom/texa/careapp/model/DongleModel;->setServiceAppVersionUpdate(Lcom/texa/carelib/core/utils/FirmwareVersion;)V

    .line 154
    invoke-virtual {p0, p2}, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->save(Lcom/texa/careapp/model/DongleModel;)Z

    .line 156
    invoke-direct {p0}, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->isCareReadyForFirmwareUpdate()Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, v3, [Ljava/lang/Object;

    const-string p2, "care is connected, starting update now"

    .line 157
    invoke-static {p2, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    iget-object p1, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->mActivity:Landroid/app/Activity;

    new-instance p2, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0, p3}, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog$$ExternalSyntheticLambda6;-><init>(Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private updateMainAppIfNeeded(Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;)Z
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->getMainAppVersionUpdate()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object v0

    .line 185
    invoke-virtual {p1}, Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;->getCurrentMainAppVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 187
    new-instance v1, Lcom/texa/carelib/core/utils/FirmwareVersion;

    invoke-direct {v1}, Lcom/texa/carelib/core/utils/FirmwareVersion;-><init>()V

    invoke-virtual {v1, v0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 188
    invoke-virtual {v0, p1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private updateServiceAppIfNeeded(Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;)Z
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->getServiceAppVersionUpdate()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object v0

    .line 193
    invoke-virtual {p1}, Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;->getCurrentServiceAppVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 194
    new-instance v1, Lcom/texa/carelib/core/utils/FirmwareVersion;

    invoke-direct {v1}, Lcom/texa/carelib/core/utils/FirmwareVersion;-><init>()V

    invoke-virtual {v1, v0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    invoke-virtual {v0, p1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->equals(Ljava/lang/Object;)Z

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
    .locals 6

    .line 74
    invoke-virtual {p0}, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->mNavigator:Lcom/texa/care/navigation/Navigator;

    .line 75
    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/CareApplication;

    .line 76
    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;)V

    .line 78
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/DialogUpdateFirmwareBinding;

    .line 79
    iget-object v0, p1, Lcom/texa/careapp/databinding/DialogUpdateFirmwareBinding;->dialogUpdateFirmwareProgress:Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->mProgressBar:Landroid/widget/ProgressBar;

    .line 80
    iget-object v0, p1, Lcom/texa/careapp/databinding/DialogUpdateFirmwareBinding;->dialogUpdateFirmwareDescription:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->mDescription:Landroid/widget/TextView;

    .line 81
    iget-object v0, p1, Lcom/texa/careapp/databinding/DialogUpdateFirmwareBinding;->dialogUpdateFirmwareUndo:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->mBtnUndo:Landroid/widget/TextView;

    .line 82
    iget-object v0, p1, Lcom/texa/careapp/databinding/DialogUpdateFirmwareBinding;->dialogUpdateFirmwareOk:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->mBtnOk:Landroid/widget/TextView;

    .line 83
    iget-object p1, p1, Lcom/texa/careapp/databinding/DialogUpdateFirmwareBinding;->dialogUpdateFirmwareLine:Landroid/view/View;

    iput-object p1, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->mLine:Landroid/view/View;

    .line 85
    iget-object p1, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->mBtnUndo:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    iget-object p1, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->mBtnOk:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    iget-object p1, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->mLine:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 89
    invoke-direct {p0}, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->isCareReadyForFirmwareUpdate()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 90
    iget-object p1, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {p1}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "mDongleModel is null"

    .line 93
    invoke-static {v1, p1}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    invoke-virtual {p0}, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f11095d

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 95
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 96
    iget-object p1, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->mNavigator:Lcom/texa/care/navigation/Navigator;

    invoke-virtual {p1}, Lcom/texa/care/navigation/Navigator;->goBack()Z

    .line 99
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->mCareObserver:Lcom/texa/careapp/carelib/ICareObserver;

    .line 100
    invoke-interface {p1}, Lcom/texa/careapp/carelib/ICareObserver;->observeAccessorySerialNumber()Lio/reactivex/Observable;

    move-result-object v0

    iget-object p1, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->mCareObserver:Lcom/texa/careapp/carelib/ICareObserver;

    .line 101
    invoke-interface {p1}, Lcom/texa/careapp/carelib/ICareObserver;->observeAccessoryMainAppVersion()Lio/reactivex/Observable;

    move-result-object v1

    iget-object p1, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->mCareObserver:Lcom/texa/careapp/carelib/ICareObserver;

    .line 102
    invoke-interface {p1}, Lcom/texa/careapp/carelib/ICareObserver;->observeAccessoryMainAppVersionPending()Lio/reactivex/Observable;

    move-result-object v2

    iget-object p1, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->mCareObserver:Lcom/texa/careapp/carelib/ICareObserver;

    .line 103
    invoke-interface {p1}, Lcom/texa/careapp/carelib/ICareObserver;->observeAccessoryServiceAppVersion()Lio/reactivex/Observable;

    move-result-object v3

    iget-object p1, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->mCareObserver:Lcom/texa/careapp/carelib/ICareObserver;

    .line 104
    invoke-interface {p1}, Lcom/texa/careapp/carelib/ICareObserver;->observeAccessoryServiceAppVersionPending()Lio/reactivex/Observable;

    move-result-object v4

    sget-object v5, Lcom/texa/careapp/app/update/FirmwareUpdateController$$ExternalSyntheticLambda4;->INSTANCE:Lcom/texa/careapp/app/update/FirmwareUpdateController$$ExternalSyntheticLambda4;

    .line 99
    invoke-static/range {v0 .. v5}, Lio/reactivex/Observable;->zip(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/Function5;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog$$ExternalSyntheticLambda4;-><init>(Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;)V

    sget-object v1, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog$$ExternalSyntheticLambda5;->INSTANCE:Lcom/texa/careapp/app/utils/UpdateFirmwareDialog$$ExternalSyntheticLambda5;

    .line 106
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 108
    :cond_1
    invoke-virtual {p0}, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f1108b3

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 109
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 110
    iget-object p1, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->mNavigator:Lcom/texa/care/navigation/Navigator;

    invoke-virtual {p1}, Lcom/texa/care/navigation/Navigator;->goBack()Z

    :goto_0
    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "dialog_update_firmware"

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d007f

    return v0
.end method

.method public getType()Lcom/texa/care/navigation/ScreenType;
    .locals 1

    .line 222
    sget-object v0, Lcom/texa/care/navigation/ScreenType;->DIALOG:Lcom/texa/care/navigation/ScreenType;

    return-object v0
.end method

.method public synthetic lambda$checkForUpdatesOnServer$1$com-texa-careapp-app-utils-UpdateFirmwareDialog(Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;Lcom/texa/carelib/webservices/ServiceFirmwareInfoLoadedEvent;)V
    .locals 1

    .line 127
    invoke-virtual {p2}, Lcom/texa/carelib/webservices/ServiceFirmwareInfoLoadedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "loadFirmwareInfo error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/texa/carelib/core/CareError;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    invoke-virtual {p0}, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f11095d

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 131
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 132
    iget-object p1, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->mNavigator:Lcom/texa/care/navigation/Navigator;

    invoke-virtual {p1}, Lcom/texa/care/navigation/Navigator;->goBack()Z

    goto :goto_0

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    invoke-direct {p0, p2, v0, p1}, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->parseServerResponse(Lcom/texa/carelib/webservices/ServiceFirmwareInfoLoadedEvent;Lcom/texa/careapp/model/DongleModel;Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$parseServerResponse$2$com-texa-careapp-app-utils-UpdateFirmwareDialog(Landroid/view/View;)V
    .locals 0

    .line 168
    iget-object p1, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->mNavigator:Lcom/texa/care/navigation/Navigator;

    invoke-virtual {p1}, Lcom/texa/care/navigation/Navigator;->goBack()Z

    return-void
.end method

.method public synthetic lambda$parseServerResponse$3$com-texa-careapp-app-utils-UpdateFirmwareDialog(Landroid/view/View;)V
    .locals 0

    .line 173
    iget-object p1, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->mNavigator:Lcom/texa/care/navigation/Navigator;

    invoke-virtual {p1}, Lcom/texa/care/navigation/Navigator;->goBack()Z

    return-void
.end method

.method public synthetic lambda$parseServerResponse$4$com-texa-careapp-app-utils-UpdateFirmwareDialog(Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;Landroid/view/View;)V
    .locals 0

    .line 175
    iget-object p2, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->mFirmwareUpdateController:Lcom/texa/careapp/app/update/FirmwareUpdateController;

    invoke-virtual {p2, p1}, Lcom/texa/careapp/app/update/FirmwareUpdateController;->doUpdateInner(Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;)V

    return-void
.end method

.method public synthetic lambda$parseServerResponse$5$com-texa-careapp-app-utils-UpdateFirmwareDialog(Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;)V
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->mBtnOk:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->mLine:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 165
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->updateMainAppIfNeeded(Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->updateServiceAppIfNeeded(Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object p1, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->mDescription:Landroid/widget/TextView;

    const v0, 0x7f11095c

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 167
    iget-object p1, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->mBtnOk:Landroid/widget/TextView;

    const v0, 0x7f110960

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 168
    iget-object p1, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->mBtnOk:Landroid/widget/TextView;

    new-instance v0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->mBtnUndo:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->mDescription:Landroid/widget/TextView;

    const v1, 0x7f11095b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 172
    iget-object v0, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->mBtnUndo:Landroid/widget/TextView;

    const v1, 0x7f110961

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 173
    iget-object v0, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->mBtnUndo:Landroid/widget/TextView;

    new-instance v1, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v0, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->mBtnOk:Landroid/widget/TextView;

    const v1, 0x7f11095f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 175
    iget-object v0, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->mBtnOk:Landroid/widget/TextView;

    new-instance v1, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method protected save(Lcom/texa/careapp/model/DongleModel;)Z
    .locals 3

    .line 201
    :try_start_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Could not save dongle model in database."

    .line 204
    invoke-static {p1, v2, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method
