.class public Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;
.super Lcom/texa/care/navigation/Screen;
.source "InstallationHelpScreen.java"


# instance fields
.field private final INSTALLATION_HELPER_FILE_NAME:Ljava/lang/String;

.field private hasSkipped:Z

.field private mActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mCareApplication:Lcom/texa/careapp/CareApplication;

.field mCommunication:Lcom/texa/carelib/communication/Communication;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mDongleModel:Lcom/texa/careapp/model/DongleModel;

.field protected mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mPreferences:Landroid/content/SharedPreferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private shouldUnregister:Z

.field private wasUserNotified:Z


# direct methods
.method public constructor <init>(Lcom/texa/careapp/CareApplication;Lcom/texa/careapp/app/onboarding/OnBoardingActivity;Z)V
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    const-string v0, "Installation_helper.pdf"

    .line 51
    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;->INSTALLATION_HELPER_FILE_NAME:Ljava/lang/String;

    .line 62
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 72
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;->mCareApplication:Lcom/texa/careapp/CareApplication;

    .line 73
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;)V

    .line 74
    iput-object p2, p0, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;->mActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    .line 75
    iput-boolean p3, p0, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;->hasSkipped:Z

    return-void
.end method

.method private copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 175
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 176
    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getCorrectUri(Ljava/io/File;)Landroid/net/Uri;
    .locals 2

    .line 181
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.texa.care.provider"

    invoke-static {v0, v1, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 185
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "TEXA CARe/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Installation_helper.pdf"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private handleNextStep()V
    .locals 5

    .line 96
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isCareConnected(Lcom/texa/carelib/communication/Communication;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;->wasUserNotified:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/onboarding/StartEngineScreen;

    iget-object v2, p0, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;->mActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    invoke-direct {v1, v2}, Lcom/texa/careapp/app/onboarding/StartEngineScreen;-><init>(Lcom/texa/careapp/app/onboarding/OnBoardingActivity;)V

    invoke-virtual {v0, v1}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    goto :goto_1

    .line 97
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;

    iget-object v2, p0, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;->mCareApplication:Lcom/texa/careapp/CareApplication;

    iget-object v3, p0, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;->mActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    iget-boolean v4, p0, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;->hasSkipped:Z

    invoke-direct {v1, v2, v3, v4}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;-><init>(Lcom/texa/careapp/CareApplication;Lcom/texa/careapp/app/onboarding/OnBoardingActivity;Z)V

    invoke-virtual {v0, v1}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    :goto_1
    return-void
.end method

.method private isStoragePermissionGranted()Z
    .locals 4

    .line 158
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    .line 159
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 163
    iput-boolean v0, p0, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;->shouldUnregister:Z

    .line 164
    iget-object v3, p0, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;->mActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return v0

    :cond_1
    return v1
.end method

.method private onNextClicked()V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;->handleNextStep()V

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/onboarding/dialogs/EnableBluetoothScreenDialog;

    iget-object v2, p0, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;->mCareApplication:Lcom/texa/careapp/CareApplication;

    invoke-direct {v1, v2}, Lcom/texa/careapp/app/onboarding/dialogs/EnableBluetoothScreenDialog;-><init>(Lcom/texa/careapp/CareApplication;)V

    invoke-virtual {v0, v1}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    :goto_0
    return-void
.end method

.method private openPdfHelper()V
    .locals 6

    .line 119
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;->isStoragePermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "TEXA CARe"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 126
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    .line 127
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "CREATE DIR --> %s"

    invoke-static {v4, v3}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    new-instance v3, Ljava/io/File;

    const-string v4, "Installation_helper.pdf"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 131
    :try_start_0
    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 132
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 133
    invoke-direct {p0, v0, v2}, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 135
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 136
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 137
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 139
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    const-string v0, "tag"

    invoke-static {v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-direct {p0, v3}, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;->getCorrectUri(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/pdf"

    .line 144
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 147
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 148
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 149
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v3, v1, v5}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_1

    :cond_0
    const/high16 v1, 0x10000000

    .line 152
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 153
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0a038c

    .line 80
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a038f

    .line 81
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {p1}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    .line 84
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "error_vehicle_already_configured"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;->wasUserNotified:Z

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 210
    const-class v0, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00cc

    return v0
.end method

.method public synthetic lambda$afterViewInjection$0$com-texa-careapp-app-onboarding-InstallationHelpScreen(Landroid/view/View;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;->onNextClicked()V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$1$com-texa-careapp-app-onboarding-InstallationHelpScreen(Landroid/view/View;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;->openPdfHelper()V

    return-void
.end method

.method public onEvent(Lcom/texa/careapp/app/onboarding/OnBoardingActivity$WritingPermissionEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 192
    invoke-virtual {p1}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity$WritingPermissionEvent;->isStatus()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 193
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;->openPdfHelper()V

    :cond_0
    return-void
.end method

.method public onEvent(Lcom/texa/careapp/app/onboarding/dialogs/EnableBluetoothScreenDialog$BluetoothEnabledEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 200
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;->handleNextStep()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 113
    iget-boolean v0, p0, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;->shouldUnregister:Z

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 115
    :cond_0
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;->shouldUnregister:Z

    .line 108
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onResume()V

    return-void
.end method
