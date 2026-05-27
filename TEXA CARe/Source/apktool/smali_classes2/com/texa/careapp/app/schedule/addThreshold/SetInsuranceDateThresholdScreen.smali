.class public Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;
.super Lcom/texa/care/navigation/Screen;
.source "SetInsuranceDateThresholdScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen$InsuranceInterval;,
        Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen$InsuranceDurationAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SetInsuranceDateThresholdScreen"


# instance fields
.field private insuranceDurationAdapter:Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen$InsuranceDurationAdapter;

.field private mApplication:Lcom/texa/careapp/CareApplication;

.field protected mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mInsurance:Lcom/texa/careapp/app/schedule/addThreshold/Insurance;

.field private mInsuranceDurationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen$InsuranceInterval;",
            ">;"
        }
    .end annotation
.end field

.field private mInsuranceDurationSpinner:Landroid/widget/Spinner;

.field private mNavigator:Lcom/texa/care/navigation/Navigator;

.field private mNewExpirationDatePicker:Lcom/texa/careapp/views/EditableDateView;

.field protected mScheduleDataManager:Lcom/texa/careapp/model/ScheduleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mThreshold:Lcom/texa/careapp/model/ThresholdModel;

.field private mVehicle:Lcom/texa/careapp/model/VehicleModel;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/careapp/model/ThresholdModel;Lcom/texa/careapp/app/schedule/addThreshold/Insurance;Lcom/texa/careapp/model/VehicleModel;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;->mInsuranceDurationList:Ljava/util/List;

    .line 67
    iput-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;->mThreshold:Lcom/texa/careapp/model/ThresholdModel;

    .line 68
    iput-object p3, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;->mVehicle:Lcom/texa/careapp/model/VehicleModel;

    .line 69
    iput-object p2, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;->mInsurance:Lcom/texa/careapp/app/schedule/addThreshold/Insurance;

    .line 70
    invoke-direct {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;->initInsuranceDurationList()V

    return-void
.end method

.method private initInsuranceDurationList()V
    .locals 4

    .line 74
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;->mInsuranceDurationList:Ljava/util/List;

    new-instance v1, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen$InsuranceInterval;

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Annuale"

    invoke-direct {v1, p0, v2, v3}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen$InsuranceInterval;-><init>(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;->mInsuranceDurationList:Ljava/util/List;

    new-instance v1, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen$InsuranceInterval;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Semestrale"

    invoke-direct {v1, p0, v2, v3}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen$InsuranceInterval;-><init>(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private setExtraDataToThreshold()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;->mInsuranceDurationSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen$InsuranceInterval;

    .line 126
    iget-object v1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;->mThreshold:Lcom/texa/careapp/model/ThresholdModel;

    invoke-virtual {v0}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen$InsuranceInterval;->getMonthValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/texa/careapp/model/ThresholdModel;->setDateInterval(Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public addNewScheduleConfirmed()V
    .locals 4

    .line 116
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;->mNewExpirationDatePicker:Lcom/texa/careapp/views/EditableDateView;

    invoke-virtual {v0}, Lcom/texa/careapp/views/EditableDateView;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110ab3

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 119
    :cond_0
    invoke-direct {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;->setExtraDataToThreshold()V

    .line 120
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;->mScheduleDataManager:Lcom/texa/careapp/model/ScheduleDataManager;

    iget-object v1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;->mThreshold:Lcom/texa/careapp/model/ThresholdModel;

    iget-object v2, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;->mVehicle:Lcom/texa/careapp/model/VehicleModel;

    iget-object v3, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;->mNewExpirationDatePicker:Lcom/texa/careapp/views/EditableDateView;

    invoke-virtual {v3}, Lcom/texa/careapp/views/EditableDateView;->getDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/texa/careapp/model/ScheduleDataManager;->setScheduleFromThreshold(Lcom/texa/careapp/model/ThresholdModel;Lcom/texa/careapp/model/VehicleModel;Ljava/util/Date;)V

    :goto_0
    return-void
.end method

.method public afterViewInjection(Landroid/view/View;)V
    .locals 3

    .line 80
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;->mNavigator:Lcom/texa/care/navigation/Navigator;

    .line 81
    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/CareApplication;

    iput-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;->mApplication:Lcom/texa/careapp/CareApplication;

    .line 82
    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;)V

    .line 83
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScreenSetInsuranceDataThresholdBinding;

    .line 84
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenSetInsuranceDataThresholdBinding;->insuranceDurationSpinner:Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;->mInsuranceDurationSpinner:Landroid/widget/Spinner;

    .line 85
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenSetInsuranceDataThresholdBinding;->editDateViewNewThreshold:Lcom/texa/careapp/views/EditableDateView;

    iput-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;->mNewExpirationDatePicker:Lcom/texa/careapp/views/EditableDateView;

    .line 86
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenSetInsuranceDataThresholdBinding;->thresholdTitol:Landroid/widget/TextView;

    sget-object v1, Lcom/texa/careapp/model/ThresholdModel;->TYPE_DESCRIPTION:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;->mThreshold:Lcom/texa/careapp/model/ThresholdModel;

    invoke-virtual {v2}, Lcom/texa/careapp/model/ThresholdModel;->getType()Lcom/texa/careapp/model/ThresholdModel$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 87
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenSetInsuranceDataThresholdBinding;->layoutAddConfirmed:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenSetInsuranceDataThresholdBinding;->layoutNewExpDate:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    new-instance p1, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen$InsuranceDurationAdapter;

    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;->mInsuranceDurationList:Ljava/util/List;

    invoke-direct {p1, p0, v0, v1}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen$InsuranceDurationAdapter;-><init>(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;->insuranceDurationAdapter:Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen$InsuranceDurationAdapter;

    .line 90
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;->mInsuranceDurationSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public dismissProgressDialogScreen()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lcom/texa/careapp/app/events/CancelProgressEvent;

    invoke-direct {v1}, Lcom/texa/careapp/app/events/CancelProgressEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 100
    sget-object v0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00de

    return v0
.end method

.method public synthetic lambda$afterViewInjection$0$com-texa-careapp-app-schedule-addThreshold-SetInsuranceDateThresholdScreen(Landroid/view/View;)V
    .locals 0

    .line 87
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;->addNewScheduleConfirmed()V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$1$com-texa-careapp-app-schedule-addThreshold-SetInsuranceDateThresholdScreen(Landroid/view/View;)V
    .locals 0

    .line 88
    iget-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;->mNewExpirationDatePicker:Lcom/texa/careapp/views/EditableDateView;

    invoke-virtual {p1}, Lcom/texa/careapp/views/EditableDateView;->showDatePicker()V

    return-void
.end method

.method public onEvent(Lcom/texa/careapp/app/events/UserUpdatedEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string/jumbo v0, "user Sync completed"

    .line 143
    invoke-static {v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;->dismissProgressDialogScreen()V

    .line 145
    iget-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

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

    .line 135
    invoke-static {v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;->dismissProgressDialogScreen()V

    .line 138
    iget-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v0, Lcom/texa/careapp/app/events/CloseActivityEvent;

    const-class v1, Lcom/texa/careapp/app/schedule/addThreshold/AddNewThresholdActivity;

    invoke-direct {v0, v1}, Lcom/texa/careapp/app/events/CloseActivityEvent;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 111
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onPause()V

    .line 112
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 105
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onResume()V

    .line 106
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method
