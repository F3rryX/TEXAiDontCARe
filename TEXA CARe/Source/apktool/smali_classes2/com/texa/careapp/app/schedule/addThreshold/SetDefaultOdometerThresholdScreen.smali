.class public Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultOdometerThresholdScreen;
.super Lcom/texa/care/navigation/Screen;
.source "SetDefaultOdometerThresholdScreen.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SetDefaultOdometerThresholdScreen"


# instance fields
.field protected mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mNewExpirationOdoEditText:Landroid/widget/EditText;

.field protected mScheduleDataManager:Lcom/texa/careapp/model/ScheduleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mThreshold:Lcom/texa/careapp/model/ThresholdModel;

.field private final mVehicle:Lcom/texa/careapp/model/VehicleModel;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/careapp/model/ThresholdModel;Lcom/texa/careapp/model/VehicleModel;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultOdometerThresholdScreen;->mThreshold:Lcom/texa/careapp/model/ThresholdModel;

    .line 51
    iput-object p2, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultOdometerThresholdScreen;->mVehicle:Lcom/texa/careapp/model/VehicleModel;

    return-void
.end method

.method private addNewScheduleConfirmed()V
    .locals 4

    .line 92
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultOdometerThresholdScreen;->mNewExpirationOdoEditText:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->getValue(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultOdometerThresholdScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110ab3

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultOdometerThresholdScreen;->mScheduleDataManager:Lcom/texa/careapp/model/ScheduleDataManager;

    iget-object v1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultOdometerThresholdScreen;->mThreshold:Lcom/texa/careapp/model/ThresholdModel;

    iget-object v2, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultOdometerThresholdScreen;->mVehicle:Lcom/texa/careapp/model/VehicleModel;

    iget-object v3, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultOdometerThresholdScreen;->mNewExpirationOdoEditText:Landroid/widget/EditText;

    invoke-static {v3}, Lcom/texa/careapp/utils/Utils;->getValue(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/texa/careapp/model/ScheduleDataManager;->setScheduleFromThreshold(Lcom/texa/careapp/model/ThresholdModel;Lcom/texa/careapp/model/VehicleModel;Ljava/lang/Integer;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 2

    .line 56
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultOdometerThresholdScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/CareApplication;

    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultOdometerThresholdScreen;)V

    .line 57
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScreenSetDefaultOdometerThresholdBinding;

    .line 58
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenSetDefaultOdometerThresholdBinding;->editTextViewNewExp:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultOdometerThresholdScreen;->mNewExpirationOdoEditText:Landroid/widget/EditText;

    .line 59
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenSetDefaultOdometerThresholdBinding;->layoutAddConfirmed:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultOdometerThresholdScreen$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultOdometerThresholdScreen$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultOdometerThresholdScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenSetDefaultOdometerThresholdBinding;->thresholdTitol:Landroid/widget/TextView;

    sget-object v0, Lcom/texa/careapp/model/ThresholdModel;->TYPE_DESCRIPTION:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultOdometerThresholdScreen;->mThreshold:Lcom/texa/careapp/model/ThresholdModel;

    invoke-virtual {v1}, Lcom/texa/careapp/model/ThresholdModel;->getType()Lcom/texa/careapp/model/ThresholdModel$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public dismissProgressDialogScreen()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultOdometerThresholdScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lcom/texa/careapp/app/events/CancelProgressEvent;

    invoke-direct {v1}, Lcom/texa/careapp/app/events/CancelProgressEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 88
    sget-object v0, Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultOdometerThresholdScreen;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00dc

    return v0
.end method

.method public synthetic lambda$afterViewInjection$0$com-texa-careapp-app-schedule-addThreshold-SetDefaultOdometerThresholdScreen(Landroid/view/View;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultOdometerThresholdScreen;->addNewScheduleConfirmed()V

    return-void
.end method

.method public onEvent(Lcom/texa/careapp/app/events/UserUpdatedEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string/jumbo v0, "user Sync completed"

    .line 76
    invoke-static {v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultOdometerThresholdScreen;->dismissProgressDialogScreen()V

    .line 78
    iget-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultOdometerThresholdScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

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

    .line 69
    invoke-static {v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultOdometerThresholdScreen;->dismissProgressDialogScreen()V

    .line 71
    iget-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultOdometerThresholdScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v0, Lcom/texa/careapp/app/events/CloseActivityEvent;

    const-class v1, Lcom/texa/careapp/app/schedule/addThreshold/AddNewThresholdActivity;

    invoke-direct {v0, v1}, Lcom/texa/careapp/app/events/CloseActivityEvent;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
