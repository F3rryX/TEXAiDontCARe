.class public Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;
.super Lcom/texa/care/navigation/Screen;
.source "SetTyresOdometerScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen$TyresAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SetTyresOdometerScreen"


# instance fields
.field protected mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mNewExpirationOdoEditText:Landroid/widget/EditText;

.field private mOdometerLabelTextView:Landroid/widget/TextView;

.field protected mScheduleDataManager:Lcom/texa/careapp/model/ScheduleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mThreshold:Lcom/texa/careapp/model/ThresholdModel;

.field private mTyreTypeSpinner:Landroid/widget/Spinner;

.field private final mVehicle:Lcom/texa/careapp/model/VehicleModel;


# direct methods
.method public static synthetic $r8$lambda$wFJ_HiziGNAYmLAcrIltJvZhCJg(Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;->onConfirmClicked(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/careapp/model/ThresholdModel;Lcom/texa/careapp/model/VehicleModel;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;->mThreshold:Lcom/texa/careapp/model/ThresholdModel;

    .line 65
    iput-object p2, p0, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;->mVehicle:Lcom/texa/careapp/model/VehicleModel;

    return-void
.end method

.method private initTyresType()V
    .locals 4

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 97
    iget-object v1, p0, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;->mTyreTypeSpinner:Landroid/widget/Spinner;

    new-instance v2, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen$TyresAdapter;

    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0}, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen$TyresAdapter;-><init>(Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 99
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;->mVehicle:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleModel;->getTyresTypeId()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;->mTyreTypeSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;->mVehicle:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v1}, Lcom/texa/careapp/model/VehicleModel;->getTyresTypeId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;->mTyreTypeSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    :goto_0
    return-void
.end method

.method private intiEditText()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;->mThreshold:Lcom/texa/careapp/model/ThresholdModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/ThresholdModel;->getType()Lcom/texa/careapp/model/ThresholdModel$Type;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/model/ThresholdModel$Type;->TYRES_SWAP:Lcom/texa/careapp/model/ThresholdModel$Type;

    if-ne v0, v1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;->mOdometerLabelTextView:Landroid/widget/TextView;

    const v1, 0x7f110ac1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 85
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;->mNewExpirationOdoEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    goto :goto_0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;->mThreshold:Lcom/texa/careapp/model/ThresholdModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/ThresholdModel;->getType()Lcom/texa/careapp/model/ThresholdModel$Type;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/model/ThresholdModel$Type;->TYRES_FITTING:Lcom/texa/careapp/model/ThresholdModel$Type;

    if-ne v0, v1, :cond_1

    .line 87
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;->mOdometerLabelTextView:Landroid/widget/TextView;

    const v1, 0x7f110ac0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 88
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;->mNewExpirationOdoEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 92
    :goto_0
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;->mNewExpirationOdoEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;->mVehicle:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v1}, Lcom/texa/careapp/model/VehicleModel;->getOdometer()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 90
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Page Reserved for TyresSwap or TyresFitting threshold"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private onConfirmClicked(Landroid/view/View;)V
    .locals 5

    const/4 v0, 0x0

    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;->mVehicle:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v1}, Lcom/texa/careapp/model/VehicleModel;->getTyresTypeId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, -0x1

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "mVehicle.getTyresTypeId() == NULL"

    .line 158
    invoke-static {v1, v4, v3}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, -0x1

    .line 161
    :goto_0
    iget-object v2, p0, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;->mTyreTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;->mVehicle:Lcom/texa/careapp/model/VehicleModel;

    iget-object v2, p0, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;->mTyreTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/careapp/model/VehicleModel;->setTyresTypeId(Ljava/lang/Integer;)V

    .line 163
    iget-object v1, p0, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;->mVehicle:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v1, v3}, Lcom/texa/careapp/model/VehicleModel;->setSyncNeeded(Z)V

    .line 165
    :try_start_1
    iget-object v1, p0, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;->mVehicle:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J
    :try_end_1
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 167
    iget-object v4, p0, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;->mThreshold:Lcom/texa/careapp/model/ThresholdModel;

    invoke-virtual {v4}, Lcom/texa/careapp/model/ThresholdModel;->getType()Lcom/texa/careapp/model/ThresholdModel$Type;

    move-result-object v4

    aput-object v4, v2, v0

    const-string v0, "Could not save threshold from database. ThresholdType = %s"

    invoke-static {v1, v0, v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f110a24

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 173
    :cond_0
    :goto_1
    iget-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;->mNewExpirationOdoEditText:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->getValue(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;->mNewExpirationOdoEditText:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->isValidIntegerValuesFromEditText(Landroid/widget/EditText;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_2

    .line 176
    :cond_1
    iget-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;->mScheduleDataManager:Lcom/texa/careapp/model/ScheduleDataManager;

    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;->mThreshold:Lcom/texa/careapp/model/ThresholdModel;

    iget-object v1, p0, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;->mVehicle:Lcom/texa/careapp/model/VehicleModel;

    iget-object v2, p0, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;->mNewExpirationOdoEditText:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/texa/careapp/utils/Utils;->getValue(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/texa/careapp/model/ScheduleDataManager;->setScheduleFromThreshold(Lcom/texa/careapp/model/ThresholdModel;Lcom/texa/careapp/model/VehicleModel;Ljava/lang/Integer;)V

    goto :goto_3

    .line 174
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f110ab3

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_3
    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 3

    .line 70
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/CareApplication;

    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;)V

    .line 71
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScreenSetTyresOdometerThresholdBinding;

    .line 72
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenSetTyresOdometerThresholdBinding;->editTextViewNewExp:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;->mNewExpirationOdoEditText:Landroid/widget/EditText;

    .line 73
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenSetTyresOdometerThresholdBinding;->tyresTypeSpinnerNewInstall:Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;->mTyreTypeSpinner:Landroid/widget/Spinner;

    .line 74
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenSetTyresOdometerThresholdBinding;->vehicleLabel:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;->mOdometerLabelTextView:Landroid/widget/TextView;

    .line 76
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenSetTyresOdometerThresholdBinding;->thresholdTitol:Landroid/widget/TextView;

    sget-object v1, Lcom/texa/careapp/model/ThresholdModel;->TYPE_DESCRIPTION:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;->mThreshold:Lcom/texa/careapp/model/ThresholdModel;

    invoke-virtual {v2}, Lcom/texa/careapp/model/ThresholdModel;->getType()Lcom/texa/careapp/model/ThresholdModel$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 77
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenSetTyresOdometerThresholdBinding;->layoutAddConfirmed:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    invoke-direct {p0}, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;->intiEditText()V

    .line 79
    invoke-direct {p0}, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;->initTyresType()V

    return-void
.end method

.method public dismissProgressDialogScreen()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lcom/texa/careapp/app/events/CancelProgressEvent;

    invoke-direct {v1}, Lcom/texa/careapp/app/events/CancelProgressEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 119
    sget-object v0, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00df

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .line 108
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;->goBack()V

    const/4 v0, 0x1

    return v0
.end method

.method public onEvent(Lcom/texa/careapp/app/events/UserUpdatedEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string/jumbo v0, "user Sync completed"

    .line 147
    invoke-static {v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;->dismissProgressDialogScreen()V

    .line 149
    iget-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v0, Lcom/texa/careapp/app/events/CloseActivityEvent;

    const-class v1, Lcom/texa/careapp/app/schedule/addThreshold/AddNewThresholdActivity;

    invoke-direct {v0, v1}, Lcom/texa/careapp/app/events/CloseActivityEvent;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onEvent(Lcom/texa/careapp/utils/VehicleObserver$VehicleChangedEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string/jumbo v0, "vehicle Sync completed"

    .line 140
    invoke-static {v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;->dismissProgressDialogScreen()V

    .line 142
    iget-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v0, Lcom/texa/careapp/app/events/CloseActivityEvent;

    const-class v1, Lcom/texa/careapp/app/schedule/addThreshold/AddNewThresholdActivity;

    invoke-direct {v0, v1}, Lcom/texa/careapp/app/events/CloseActivityEvent;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 130
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onPause()V

    .line 131
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 124
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onResume()V

    .line 125
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method
