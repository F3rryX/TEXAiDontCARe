.class public Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;
.super Lcom/texa/care/navigation/Screen;
.source "ResetExpiredScheduleScreen.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ResetExpiredScheduleScreen"


# instance fields
.field df:Ljava/text/DateFormat;

.field protected mContext:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mNewExpirationDate:Lcom/texa/careapp/views/EditableDateView;

.field private mNewExpirationOdo:Landroid/widget/EditText;

.field private mSchedule:Lcom/texa/careapp/model/IScheduleModel;

.field protected mScheduleDataManager:Lcom/texa/careapp/model/ScheduleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/careapp/model/IScheduleModel;)V
    .locals 3

    .line 65
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    .line 63
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "dd/MM/yyyy"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;->df:Ljava/text/DateFormat;

    .line 66
    iput-object p1, p0, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;->mSchedule:Lcom/texa/careapp/model/IScheduleModel;

    return-void
.end method

.method private expirationDateButtonClicked()V
    .locals 4

    .line 121
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;->mNewExpirationDate:Lcom/texa/careapp/views/EditableDateView;

    invoke-virtual {v0}, Lcom/texa/careapp/views/EditableDateView;->getDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v1, p0, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;->mScheduleDataManager:Lcom/texa/careapp/model/ScheduleDataManager;

    iget-object v2, p0, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;->mSchedule:Lcom/texa/careapp/model/IScheduleModel;

    iget-object v3, p0, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    invoke-virtual {v3}, Lcom/texa/careapp/utils/VehicleObserver;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/texa/careapp/model/ScheduleDataManager;->setSchedule(Lcom/texa/careapp/model/IScheduleModel;Lcom/texa/careapp/model/VehicleModel;Ljava/util/Date;)Z

    goto :goto_0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;->mContext:Landroid/content/Context;

    const v1, 0x7f110ab7

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private expirationOdometerButtonClicked()V
    .locals 4

    .line 112
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;->mNewExpirationOdo:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isValidIntegerValuesFromEditText(Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;->mNewExpirationOdo:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;->mScheduleDataManager:Lcom/texa/careapp/model/ScheduleDataManager;

    iget-object v2, p0, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;->mSchedule:Lcom/texa/careapp/model/IScheduleModel;

    iget-object v3, p0, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    invoke-virtual {v3}, Lcom/texa/careapp/utils/VehicleObserver;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/texa/careapp/model/ScheduleDataManager;->setSchedule(Lcom/texa/careapp/model/IScheduleModel;Lcom/texa/careapp/model/VehicleModel;Ljava/lang/Integer;)Z

    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;->mContext:Landroid/content/Context;

    const v1, 0x7f110ab7

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 3

    .line 71
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/CareApplication;

    .line 72
    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;)V

    .line 73
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScreenResetExpireScheduleBinding;

    .line 74
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenResetExpireScheduleBinding;->editDateViewNewExp:Lcom/texa/careapp/views/EditableDateView;

    iput-object v0, p0, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;->mNewExpirationDate:Lcom/texa/careapp/views/EditableDateView;

    .line 75
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenResetExpireScheduleBinding;->editTextViewNewExp:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;->mNewExpirationOdo:Landroid/widget/EditText;

    .line 77
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;->mSchedule:Lcom/texa/careapp/model/IScheduleModel;

    invoke-interface {v0}, Lcom/texa/careapp/model/IScheduleModel;->getExpireDate()Ljava/util/Date;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenResetExpireScheduleBinding;->layoutExpiredData:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 80
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenResetExpireScheduleBinding;->layoutNewExpOdo:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 81
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenResetExpireScheduleBinding;->textNewExp:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;->mSchedule:Lcom/texa/careapp/model/IScheduleModel;

    iget-object v2, p0, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/texa/careapp/utils/Utils;->getScheduleTitle(Lcom/texa/careapp/model/IScheduleModel;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenResetExpireScheduleBinding;->oldExpValue:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;->df:Ljava/text/DateFormat;

    iget-object v2, p0, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;->mSchedule:Lcom/texa/careapp/model/IScheduleModel;

    invoke-interface {v2}, Lcom/texa/careapp/model/IScheduleModel;->getExpireDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;->mNewExpirationDate:Lcom/texa/careapp/views/EditableDateView;

    iget-object v1, p0, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;->mSchedule:Lcom/texa/careapp/model/IScheduleModel;

    invoke-interface {v1}, Lcom/texa/careapp/model/IScheduleModel;->getExpireDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/views/EditableDateView;->setDate(Ljava/util/Date;)V

    .line 84
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenResetExpireScheduleBinding;->newExpConfirmButton:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object p1, p0, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;->mNewExpirationDate:Lcom/texa/careapp/views/EditableDateView;

    const/4 v0, 0x1

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1}, Lcom/texa/careapp/views/EditableDateView;->setTextSize(II)V

    goto :goto_0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;->mSchedule:Lcom/texa/careapp/model/IScheduleModel;

    invoke-interface {v0}, Lcom/texa/careapp/model/IScheduleModel;->getExpireOdo()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenResetExpireScheduleBinding;->layoutExpiredData:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 89
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenResetExpireScheduleBinding;->layoutNewExpDate:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 90
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenResetExpireScheduleBinding;->layoutNewExpOdo:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 92
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenResetExpireScheduleBinding;->floatabelLabelNewExpOdo:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;->mSchedule:Lcom/texa/careapp/model/IScheduleModel;

    iget-object v2, p0, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/texa/careapp/utils/Utils;->getScheduleTitle(Lcom/texa/careapp/model/IScheduleModel;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 93
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenResetExpireScheduleBinding;->newExpConfirmButton:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, " schedule havn\'t valid expiration data"

    .line 95
    invoke-static {v0, p1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public createProgressDialogScreen()V
    .locals 2

    .line 147
    new-instance v0, Lcom/texa/careapp/app/events/ShowProgressEvent;

    invoke-direct {v0}, Lcom/texa/careapp/app/events/ShowProgressEvent;-><init>()V

    const-string v1, "message"

    .line 148
    invoke-virtual {v0, v1}, Lcom/texa/careapp/app/events/ShowProgressEvent;->setMessage(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v1, p0, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public dismissProgressDialogScreen()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lcom/texa/careapp/app/events/CancelProgressEvent;

    invoke-direct {v1}, Lcom/texa/careapp/app/events/CancelProgressEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 137
    sget-object v0, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00d6

    return v0
.end method

.method public synthetic lambda$afterViewInjection$0$com-texa-careapp-app-schedule-ResetExpiredScheduleScreen(Landroid/view/View;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;->expirationDateButtonClicked()V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$1$com-texa-careapp-app-schedule-ResetExpiredScheduleScreen(Landroid/view/View;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;->expirationOdometerButtonClicked()V

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 142
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;->goBack()V

    const/4 v0, 0x1

    return v0
.end method

.method public onEvent(Lcom/texa/careapp/app/events/UserUpdatedEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string/jumbo v0, "user Sync completed"

    .line 165
    invoke-static {v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;->dismissProgressDialogScreen()V

    .line 167
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/care/navigation/Navigator;->goBack()Z

    return-void
.end method

.method public onEvent(Lcom/texa/careapp/utils/VehicleObserver$VehicleChangedEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string/jumbo v0, "vehicle Sync completed"

    .line 158
    invoke-static {v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;->dismissProgressDialogScreen()V

    .line 160
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/care/navigation/Navigator;->goBack()Z

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 107
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onPause()V

    .line 108
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 101
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onResume()V

    .line 102
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method
