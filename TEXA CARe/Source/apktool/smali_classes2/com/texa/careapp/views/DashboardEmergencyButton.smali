.class public Lcom/texa/careapp/views/DashboardEmergencyButton;
.super Landroid/widget/FrameLayout;
.source "DashboardEmergencyButton.java"


# instance fields
.field private mAlertIcon:Lcom/texa/careapp/views/AlertImageView;

.field private mDisposable:Lio/reactivex/disposables/Disposable;

.field private mServiceStatusText:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-direct {p0, p1}, Lcom/texa/careapp/views/DashboardEmergencyButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-direct {p0, p1}, Lcom/texa/careapp/views/DashboardEmergencyButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    invoke-direct {p0, p1}, Lcom/texa/careapp/views/DashboardEmergencyButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 50
    invoke-direct {p0, p1}, Lcom/texa/careapp/views/DashboardEmergencyButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0d0058

    .line 54
    invoke-static {p1, v0, p0}, Lcom/texa/careapp/views/DashboardEmergencyButton;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a01d8

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/texa/careapp/views/DashboardEmergencyButton;->mServiceStatusText:Landroidx/appcompat/widget/AppCompatTextView;

    const v0, 0x7f0a01d7

    .line 56
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/views/AlertImageView;

    iput-object p1, p0, Lcom/texa/careapp/views/DashboardEmergencyButton;->mAlertIcon:Lcom/texa/careapp/views/AlertImageView;

    return-void
.end method

.method static synthetic lambda$bindTo$2(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "error observing sos checks"

    .line 86
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$showAlertIcon$0(Lorg/greenrobot/eventbus/EventBus;Landroid/view/View;)V
    .locals 0

    .line 66
    new-instance p1, Lcom/texa/careapp/app/events/StartSosPrerequisiteActivityEvent;

    invoke-direct {p1}, Lcom/texa/careapp/app/events/StartSosPrerequisiteActivityEvent;-><init>()V

    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bindTo(Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;Lorg/greenrobot/eventbus/EventBus;)V
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/texa/careapp/views/DashboardEmergencyButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;->getSosServiceStatusDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/careapp/views/DashboardEmergencyButton;->updateServiceStatusText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-interface {p1}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;->shouldCheckSosPrerequisites()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-interface {p1}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;->observeChecks()Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lcom/texa/careapp/utils/Utils;->applySchedulers()Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/texa/careapp/views/DashboardEmergencyButton$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/texa/careapp/views/DashboardEmergencyButton$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/views/DashboardEmergencyButton;Lorg/greenrobot/eventbus/EventBus;)V

    sget-object p2, Lcom/texa/careapp/views/DashboardEmergencyButton$$ExternalSyntheticLambda2;->INSTANCE:Lcom/texa/careapp/views/DashboardEmergencyButton$$ExternalSyntheticLambda2;

    .line 80
    invoke-virtual {p1, v0, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/views/DashboardEmergencyButton;->mDisposable:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public hideAlertIcon()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/texa/careapp/views/DashboardEmergencyButton;->mAlertIcon:Lcom/texa/careapp/views/AlertImageView;

    invoke-virtual {v0}, Lcom/texa/careapp/views/AlertImageView;->hide()V

    .line 72
    iget-object v0, p0, Lcom/texa/careapp/views/DashboardEmergencyButton;->mAlertIcon:Lcom/texa/careapp/views/AlertImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/texa/careapp/views/AlertImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic lambda$bindTo$1$com-texa-careapp-views-DashboardEmergencyButton(Lorg/greenrobot/eventbus/EventBus;Lcom/texa/careapp/checks/Check$Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 81
    sget-object v0, Lcom/texa/careapp/checks/Check$Result;->OK:Lcom/texa/careapp/checks/Check$Result;

    if-eq p2, v0, :cond_0

    .line 82
    invoke-virtual {p0, p1}, Lcom/texa/careapp/views/DashboardEmergencyButton;->showAlertIcon(Lorg/greenrobot/eventbus/EventBus;)V

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/views/DashboardEmergencyButton;->hideAlertIcon()V

    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 92
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 93
    iget-object v0, p0, Lcom/texa/careapp/views/DashboardEmergencyButton;->mDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public showAlertIcon(Lorg/greenrobot/eventbus/EventBus;)V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/texa/careapp/views/DashboardEmergencyButton;->mAlertIcon:Lcom/texa/careapp/views/AlertImageView;

    invoke-virtual {v0}, Lcom/texa/careapp/views/AlertImageView;->showWithSlide()V

    .line 66
    iget-object v0, p0, Lcom/texa/careapp/views/DashboardEmergencyButton;->mAlertIcon:Lcom/texa/careapp/views/AlertImageView;

    new-instance v1, Lcom/texa/careapp/views/DashboardEmergencyButton$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/texa/careapp/views/DashboardEmergencyButton$$ExternalSyntheticLambda0;-><init>(Lorg/greenrobot/eventbus/EventBus;)V

    invoke-virtual {v0, v1}, Lcom/texa/careapp/views/AlertImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public updateServiceStatusText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/texa/careapp/views/DashboardEmergencyButton;->mServiceStatusText:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
