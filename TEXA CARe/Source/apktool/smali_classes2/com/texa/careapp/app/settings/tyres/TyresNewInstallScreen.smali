.class public Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;
.super Lcom/texa/care/navigation/Screen;
.source "TyresNewInstallScreen.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TyresNewInstallScreen"


# instance fields
.field protected mCAReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mTyreTypeSpinner:Landroid/widget/Spinner;

.field private mTyresFittingKm:Landroid/widget/EditText;

.field private final mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

.field private tyresFitting:Lcom/texa/careapp/model/ThresholdModel;


# direct methods
.method public static synthetic $r8$lambda$DydPdRE1fcCRywQ5LDQjA0Az_t0(Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;->onConfirmClicked(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/texa/careapp/model/VehicleModel;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    return-void
.end method

.method private initTyresFitting()V
    .locals 4

    .line 66
    iget-object v0, p0, Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    sget-object v1, Lcom/texa/careapp/model/ThresholdModel$Type;->TYRES_FITTING:Lcom/texa/careapp/model/ThresholdModel$Type;

    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/texa/careapp/model/VehicleModel;->getThreshold(Lcom/texa/careapp/model/ThresholdModel$Type;Landroid/content/Context;)Lcom/texa/careapp/model/ThresholdModel;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;->tyresFitting:Lcom/texa/careapp/model/ThresholdModel;

    .line 67
    invoke-virtual {v0}, Lcom/texa/careapp/model/ThresholdModel;->getOdometer()Ljava/lang/Integer;

    move-result-object v0

    .line 69
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;->mTyresFittingKm:Landroid/widget/EditText;

    invoke-static {v1, v2}, Lcom/texa/careapp/utils/Utils;->setOdoTextWatcher(Landroid/content/Context;Landroid/widget/EditText;)V

    if-eqz v0, :cond_0

    .line 71
    iget-object v1, p0, Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;->mTyresFittingKm:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "."

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;->mTyresFittingKm:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method private initTyresType()V
    .locals 4

    .line 77
    new-instance v0, Lcom/texa/careapp/utils/TyresTypeAdapter;

    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 78
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/texa/careapp/utils/TyresTypeAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;->mTyreTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 81
    iget-object v0, p0, Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleModel;->getTyresTypeId()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;->mTyreTypeSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v1}, Lcom/texa/careapp/model/VehicleModel;->getTyresTypeId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_0
    return-void
.end method

.method private isTyresTypeChanged()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/careapp/exceptions/DatabaseIOException;
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;->mTyreTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    .line 131
    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleModel;->getTyresTypeId()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;->mTyreTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    iget-object v1, p0, Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v1}, Lcom/texa/careapp/model/VehicleModel;->getTyresTypeId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;->mTyreTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/VehicleModel;->setTyresTypeId(Ljava/lang/Integer;)V

    .line 133
    iget-object v0, p0, Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/VehicleModel;->setSyncNeeded(Z)V

    .line 134
    iget-object v0, p0, Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private onConfirmClicked(Landroid/view/View;)V
    .locals 4

    .line 93
    iget-object p1, p0, Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;->mTyresFittingKm:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    const-string v0, "%s ThresholdValue not changed !"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->getOdometer()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v3, p0, Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;->mTyresFittingKm:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le p1, v3, :cond_4

    .line 96
    iget-object p1, p0, Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;->tyresFitting:Lcom/texa/careapp/model/ThresholdModel;

    iget-object v3, p0, Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;->mTyresFittingKm:Landroid/widget/EditText;

    invoke-static {p1, v3}, Lcom/texa/careapp/utils/Utils;->isSetThresholdValuesFromEditText(Lcom/texa/careapp/model/ThresholdModel;Landroid/widget/EditText;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;->TAG:Ljava/lang/String;

    aput-object v0, p1, v1

    const-string v0, "%s ThresholdValue changed !"

    invoke-static {v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    sget-boolean p1, Lcom/texa/careapp/app/settings/tyres/SettingsTyresActivity;->blockSyncThresholds:Z

    if-nez p1, :cond_1

    .line 100
    invoke-direct {p0}, Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;->scheduleThresoldSyncTask()V

    goto :goto_0

    :cond_0
    new-array p1, v2, [Ljava/lang/Object;

    .line 103
    sget-object v3, Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;->TAG:Ljava/lang/String;

    aput-object v3, p1, v1

    invoke-static {v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    :cond_1
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;->isTyresTypeChanged()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "%s Tyres type changed !"

    new-array v0, v2, [Ljava/lang/Object;

    .line 109
    sget-object v3, Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;->TAG:Ljava/lang/String;

    aput-object v3, v0, v1

    invoke-static {p1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const-string p1, "%s Tyres type not changed !"

    new-array v0, v2, [Ljava/lang/Object;

    .line 111
    sget-object v3, Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;->TAG:Ljava/lang/String;

    aput-object v3, v0, v1

    invoke-static {p1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    :goto_1
    sget-boolean p1, Lcom/texa/careapp/app/settings/tyres/SettingsTyresActivity;->blockSyncVehicleData:Z

    if-nez p1, :cond_3

    .line 115
    invoke-direct {p0}, Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;->scheduleVehicleSyncTask()V

    .line 117
    :cond_3
    iget-object p1, p0, Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v0, Lcom/texa/careapp/app/events/TyresConfigurationCompletedEvent;

    invoke-direct {v0}, Lcom/texa/careapp/app/events/TyresConfigurationCompletedEvent;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 119
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f110a24

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Could not save tyre type."

    .line 120
    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    new-array p1, v2, [Ljava/lang/Object;

    .line 123
    sget-object v2, Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;->TAG:Ljava/lang/String;

    aput-object v2, p1, v1

    invoke-static {v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    iget-object p1, p0, Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;->mTyresFittingKm:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110ab7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method private scheduleThresoldSyncTask()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;->mCAReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-virtual {v0}, Lcom/texa/careapp/sync/CAReWorkerManager;->scheduleThreshold()V

    return-void
.end method

.method private scheduleVehicleSyncTask()V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;->mCAReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-virtual {v0}, Lcom/texa/careapp/sync/CAReWorkerManager;->scheduleVehicleSync()V

    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/CareApplication;

    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;)V

    .line 56
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->updateTitle()V

    .line 57
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScreenTyresNewInstallBinding;

    .line 58
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenTyresNewInstallBinding;->editTextExpTyresFittingNewInstall:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;->mTyresFittingKm:Landroid/widget/EditText;

    .line 59
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenTyresNewInstallBinding;->tyresTypeSpinnerNewInstall:Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;->mTyreTypeSpinner:Landroid/widget/Spinner;

    .line 60
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenTyresNewInstallBinding;->buttonTyresNewInstallConfirm:Landroid/widget/TextView;

    new-instance v0, Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    invoke-direct {p0}, Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;->initTyresFitting()V

    .line 62
    invoke-direct {p0}, Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;->initTyresType()V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 156
    sget-object v0, Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00e9

    return v0
.end method

.method public getTitle()I
    .locals 1

    const v0, 0x7f110d00

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .line 88
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;->goBack()V

    const/4 v0, 0x1

    return v0
.end method
