.class public Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultDateThresholdScreen;
.super Lcom/texa/care/navigation/Screen;
.source "SetDefaultDateThresholdScreen.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SetDefaultDateThresholdScreen"


# instance fields
.field protected mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mNewExpirationDatePicker:Lcom/texa/careapp/views/EditableDateView;

.field protected mScheduleDataManager:Lcom/texa/careapp/model/ScheduleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mThreshold:Lcom/texa/careapp/model/ThresholdModel;

.field private mThresholdTitleView:Landroid/widget/TextView;

.field private final mUser:Lcom/texa/careapp/model/UserModel;

.field private final mVehicle:Lcom/texa/careapp/model/VehicleModel;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/texa/careapp/model/ThresholdModel;Lcom/texa/careapp/model/VehicleModel;Lcom/texa/careapp/model/UserModel;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultDateThresholdScreen;->mThreshold:Lcom/texa/careapp/model/ThresholdModel;

    .line 55
    iput-object p2, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultDateThresholdScreen;->mVehicle:Lcom/texa/careapp/model/VehicleModel;

    .line 56
    iput-object p3, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultDateThresholdScreen;->mUser:Lcom/texa/careapp/model/UserModel;

    return-void
.end method

.method private addNewScheduleConfirmed()V
    .locals 4

    .line 119
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultDateThresholdScreen;->mNewExpirationDatePicker:Lcom/texa/careapp/views/EditableDateView;

    invoke-virtual {v0}, Lcom/texa/careapp/views/EditableDateView;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultDateThresholdScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110ab3

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultDateThresholdScreen;->mScheduleDataManager:Lcom/texa/careapp/model/ScheduleDataManager;

    iget-object v1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultDateThresholdScreen;->mThreshold:Lcom/texa/careapp/model/ThresholdModel;

    iget-object v2, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultDateThresholdScreen;->mVehicle:Lcom/texa/careapp/model/VehicleModel;

    iget-object v3, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultDateThresholdScreen;->mNewExpirationDatePicker:Lcom/texa/careapp/views/EditableDateView;

    invoke-virtual {v3}, Lcom/texa/careapp/views/EditableDateView;->getDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/texa/careapp/model/ScheduleDataManager;->setScheduleFromThreshold(Lcom/texa/careapp/model/ThresholdModel;Lcom/texa/careapp/model/VehicleModel;Ljava/util/Date;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 2

    .line 61
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultDateThresholdScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/CareApplication;

    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultDateThresholdScreen;)V

    .line 62
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScreenSetDefaultDataThresholdBinding;

    .line 63
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenSetDefaultDataThresholdBinding;->thresholdTitol:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultDateThresholdScreen;->mThresholdTitleView:Landroid/widget/TextView;

    .line 64
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenSetDefaultDataThresholdBinding;->editDateViewNewThreshold:Lcom/texa/careapp/views/EditableDateView;

    iput-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultDateThresholdScreen;->mNewExpirationDatePicker:Lcom/texa/careapp/views/EditableDateView;

    .line 65
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenSetDefaultDataThresholdBinding;->layoutAddConfirmed:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultDateThresholdScreen$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultDateThresholdScreen$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultDateThresholdScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenSetDefaultDataThresholdBinding;->layoutNewExpDate:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultDateThresholdScreen$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultDateThresholdScreen$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultDateThresholdScreen;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultDateThresholdScreen;->mThresholdTitleView:Landroid/widget/TextView;

    sget-object v0, Lcom/texa/careapp/model/ThresholdModel;->TYPE_DESCRIPTION:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultDateThresholdScreen;->mThreshold:Lcom/texa/careapp/model/ThresholdModel;

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

    .line 99
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultDateThresholdScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lcom/texa/careapp/app/events/CancelProgressEvent;

    invoke-direct {v1}, Lcom/texa/careapp/app/events/CancelProgressEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 77
    sget-object v0, Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultDateThresholdScreen;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00db

    return v0
.end method

.method public synthetic lambda$afterViewInjection$0$com-texa-careapp-app-schedule-addThreshold-SetDefaultDateThresholdScreen(Landroid/view/View;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultDateThresholdScreen;->addNewScheduleConfirmed()V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$1$com-texa-careapp-app-schedule-addThreshold-SetDefaultDateThresholdScreen(Landroid/view/View;)V
    .locals 0

    .line 66
    iget-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultDateThresholdScreen;->mNewExpirationDatePicker:Lcom/texa/careapp/views/EditableDateView;

    invoke-virtual {p1}, Lcom/texa/careapp/views/EditableDateView;->showDatePicker()V

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 94
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultDateThresholdScreen;->goBack()V

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

    .line 112
    invoke-static {v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultDateThresholdScreen;->dismissProgressDialogScreen()V

    .line 115
    iget-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultDateThresholdScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

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

    .line 104
    invoke-static {v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultDateThresholdScreen;->dismissProgressDialogScreen()V

    .line 107
    iget-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultDateThresholdScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v0, Lcom/texa/careapp/app/events/CloseActivityEvent;

    const-class v1, Lcom/texa/careapp/app/schedule/addThreshold/AddNewThresholdActivity;

    invoke-direct {v0, v1}, Lcom/texa/careapp/app/events/CloseActivityEvent;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 88
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onPause()V

    .line 89
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultDateThresholdScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 82
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onResume()V

    .line 83
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultDateThresholdScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method
