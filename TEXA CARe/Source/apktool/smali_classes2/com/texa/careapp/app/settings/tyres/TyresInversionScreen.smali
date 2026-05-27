.class public Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;
.super Lcom/texa/care/navigation/Screen;
.source "TyresInversionScreen.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TyresInversionScreen"


# instance fields
.field protected mCAReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mDisposables:Lio/reactivex/disposables/CompositeDisposable;

.field protected mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mTyreTypeSpinner:Landroid/widget/Spinner;

.field private mTyresSwapKm:Landroid/widget/EditText;

.field private final mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

.field private tyresSwap:Lcom/texa/careapp/model/ThresholdModel;


# direct methods
.method public static synthetic $r8$lambda$1b8ZazFKAEPXguw5S5JfUfL_Y1s(Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->onConfirmClicked(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/texa/careapp/model/VehicleModel;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    .line 53
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    .line 59
    iput-object p1, p0, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    return-void
.end method

.method private onConfirmClicked(Landroid/view/View;)V
    .locals 3

    .line 101
    iget-object p1, p0, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->mTyresSwapKm:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    const-string v0, "ThresholdValue not changed !"

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    .line 102
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->getOdometer()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v2, p0, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->mTyresSwapKm:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le p1, v2, :cond_1

    .line 104
    iget-object p1, p0, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->tyresSwap:Lcom/texa/careapp/model/ThresholdModel;

    iget-object v2, p0, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->mTyresSwapKm:Landroid/widget/EditText;

    invoke-static {p1, v2}, Lcom/texa/careapp/utils/Utils;->isSetThresholdValuesFromEditText(Lcom/texa/careapp/model/ThresholdModel;Landroid/widget/EditText;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "ThresholdValue changed !"

    .line 105
    invoke-static {v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    .line 107
    invoke-static {v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "Tyres type changed !"

    .line 111
    invoke-static {v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    new-instance p1, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;)V

    invoke-static {p1}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 134
    iget-object v0, p0, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    new-instance v1, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen$$ExternalSyntheticLambda4;-><init>(Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 136
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 137
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-wide/16 v1, 0x1

    .line 138
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v1, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;)V

    new-instance v2, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen$$ExternalSyntheticLambda3;-><init>(Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;)V

    .line 139
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 134
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    goto :goto_1

    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    .line 165
    invoke-static {v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    iget-object p1, p0, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->mTyresSwapKm:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110ab7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private scheduleThresholdSyncTask()V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->mCAReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-virtual {v0}, Lcom/texa/careapp/sync/CAReWorkerManager;->scheduleThreshold()V

    return-void
.end method

.method private scheduleVehicleSyncTask()V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->mCAReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-virtual {v0}, Lcom/texa/careapp/sync/CAReWorkerManager;->scheduleVehicleSync()V

    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/CareApplication;

    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;)V

    .line 65
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->updateTitle()V

    .line 66
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScreenTyresInversionBinding;

    .line 67
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenTyresInversionBinding;->editTextExpTyresSwapInversion:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->mTyresSwapKm:Landroid/widget/EditText;

    .line 68
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenTyresInversionBinding;->tyresTypeSpinnerInversion:Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->mTyreTypeSpinner:Landroid/widget/Spinner;

    .line 69
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenTyresInversionBinding;->buttonTyresInversionConfirm:Landroid/widget/TextView;

    new-instance v0, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->initTyresSwapKm()V

    .line 71
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->initTyresType()V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 220
    sget-object v0, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00e8

    return v0
.end method

.method public getTitle()I
    .locals 1

    const v0, 0x7f110cff

    return v0
.end method

.method public initTyresSwapKm()V
    .locals 4

    .line 75
    iget-object v0, p0, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    sget-object v1, Lcom/texa/careapp/model/ThresholdModel$Type;->TYRES_SWAP:Lcom/texa/careapp/model/ThresholdModel$Type;

    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/texa/careapp/model/VehicleModel;->getThreshold(Lcom/texa/careapp/model/ThresholdModel$Type;Landroid/content/Context;)Lcom/texa/careapp/model/ThresholdModel;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->tyresSwap:Lcom/texa/careapp/model/ThresholdModel;

    .line 76
    invoke-virtual {v0}, Lcom/texa/careapp/model/ThresholdModel;->getOdometer()Ljava/lang/Integer;

    move-result-object v0

    .line 77
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->mTyresSwapKm:Landroid/widget/EditText;

    invoke-static {v1, v2}, Lcom/texa/careapp/utils/Utils;->setOdoTextWatcher(Landroid/content/Context;Landroid/widget/EditText;)V

    if-eqz v0, :cond_0

    .line 79
    iget-object v1, p0, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->mTyresSwapKm:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "."

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->mTyresSwapKm:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method public initTyresType()V
    .locals 4

    .line 85
    new-instance v0, Lcom/texa/careapp/utils/TyresTypeAdapter;

    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 86
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/texa/careapp/utils/TyresTypeAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->mTyreTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 89
    iget-object v0, p0, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleModel;->getTyresTypeId()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->mTyreTypeSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v1}, Lcom/texa/careapp/model/VehicleModel;->getTyresTypeId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public isTyresTypeChanged()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/careapp/exceptions/DatabaseIOException;
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->mTyreTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleModel;->getTyresTypeId()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->mTyreTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    iget-object v1, p0, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v1}, Lcom/texa/careapp/model/VehicleModel;->getTyresTypeId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->mTyreTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/VehicleModel;->setTyresTypeId(Ljava/lang/Integer;)V

    .line 173
    iget-object v0, p0, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/VehicleModel;->setSyncNeeded(Z)V

    .line 174
    iget-object v0, p0, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isValueChanged()Z
    .locals 4

    const/4 v0, 0x1

    .line 189
    :try_start_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->isTyresTypeChanged()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    sget-object v2, Lcom/texa/careapp/model/ThresholdModel$Type;->TYRES_SWAP:Lcom/texa/careapp/model/ThresholdModel$Type;

    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/texa/careapp/model/VehicleModel;->getThreshold(Lcom/texa/careapp/model/ThresholdModel$Type;Landroid/content/Context;)Lcom/texa/careapp/model/ThresholdModel;

    move-result-object v1

    .line 193
    invoke-virtual {v1}, Lcom/texa/careapp/model/ThresholdModel;->getOdometer()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_1

    return v0

    .line 196
    :cond_1
    invoke-virtual {v1}, Lcom/texa/careapp/model/ThresholdModel;->getOdometer()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->mTyresSwapKm:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    .line 200
    invoke-virtual {v1}, Lcom/texa/careapp/exceptions/DatabaseIOException;->printStackTrace()V

    return v0
.end method

.method public synthetic lambda$onConfirmClicked$0$com-texa-careapp-app-settings-tyres-TyresInversionScreen(Lio/reactivex/ObservableEmitter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleModel;->getUnsyncedThresholds()Lcom/texa/careapp/model/ThresholdModelList;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Lcom/texa/careapp/model/ThresholdModelList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v2, "try to upload thresholds : %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    .line 116
    invoke-static {v2, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    iget-object v2, p0, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    iget-object v3, p0, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v3}, Lcom/texa/careapp/model/VehicleModel;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->putThresholdsBlocking(Ljava/lang/String;Lcom/texa/careapp/model/ThresholdModelList;)Lretrofit2/Call;

    move-result-object v2

    invoke-interface {v2}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v2

    invoke-virtual {v2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 118
    invoke-virtual {v0}, Lcom/texa/careapp/model/ThresholdModelList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/careapp/model/ThresholdModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 120
    :try_start_1
    invoke-virtual {v2}, Lcom/texa/careapp/model/ThresholdModel;->markAsSynced()V
    :try_end_1
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "Could not save threshold in database"

    new-array v4, v1, [Ljava/lang/Object;

    .line 122
    invoke-static {v2, v3, v4}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "thresholds sync success"

    new-array v2, v1, [Ljava/lang/Object;

    .line 125
    invoke-static {v0, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "thresholds sync error"

    .line 128
    invoke-static {v0, v2, v1}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public synthetic lambda$onConfirmClicked$1$com-texa-careapp-app-settings-tyres-TyresInversionScreen(Lcom/texa/careapp/model/VehicleModel;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->getUid()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->getVehicleDetailsObservable(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$onConfirmClicked$2$com-texa-careapp-app-settings-tyres-TyresInversionScreen(Lcom/texa/careapp/networking/response/VehicleResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 140
    iget-object p1, p1, Lcom/texa/careapp/networking/response/VehicleResponse;->vehicle:Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;

    iget-object p1, p1, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;->deadlines:Ljava/util/List;

    .line 141
    iget-object v0, p0, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleModel;->deleteSchedules()V

    .line 142
    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/response/VehicleResponse$Deadline;

    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v1, v0}, Lcom/texa/careapp/model/VehicleModel;->updateSchedule(Lcom/texa/careapp/networking/response/VehicleResponse$Deadline;)V
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 147
    invoke-virtual {v0}, Lcom/texa/careapp/exceptions/DatabaseIOException;->printStackTrace()V

    goto :goto_0

    .line 151
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J

    .line 152
    invoke-direct {p0}, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->scheduleVehicleSyncTask()V

    .line 153
    iget-object p1, p0, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v0, Lcom/texa/careapp/app/events/TyresConfigurationCompletedEvent;

    invoke-direct {v0}, Lcom/texa/careapp/app/events/TyresConfigurationCompletedEvent;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 154
    invoke-direct {p0}, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->scheduleThresholdSyncTask()V

    return-void
.end method

.method public synthetic lambda$onConfirmClicked$3$com-texa-careapp-app-settings-tyres-TyresInversionScreen(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 156
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 157
    iget-object p1, p0, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v0, Lcom/texa/careapp/app/events/TyresConfigurationCompletedEvent;

    invoke-direct {v0}, Lcom/texa/careapp/app/events/TyresConfigurationCompletedEvent;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 158
    invoke-direct {p0}, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->scheduleThresholdSyncTask()V

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 96
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->goBack()V

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyView()V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 184
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onDestroyView()V

    return-void
.end method
