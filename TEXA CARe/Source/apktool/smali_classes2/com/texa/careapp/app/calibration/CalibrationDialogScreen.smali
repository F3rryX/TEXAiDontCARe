.class public Lcom/texa/careapp/app/calibration/CalibrationDialogScreen;
.super Lcom/texa/care/navigation/Screen;
.source "CalibrationDialogScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/app/calibration/CalibrationDialogScreen$CalibrationProcedure;
    }
.end annotation


# instance fields
.field protected mAttitude:Lcom/texa/carelib/care/attitude/Attitude;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/texa/careapp/CareApplication;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    .line 31
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/calibration/CalibrationDialogScreen;)V

    return-void
.end method

.method private startCalibration()V
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/texa/careapp/app/calibration/CalibrationDialogScreen;->mAttitude:Lcom/texa/carelib/care/attitude/Attitude;

    invoke-interface {v0}, Lcom/texa/carelib/care/attitude/Attitude;->needsEstimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/texa/careapp/app/calibration/CalibrationDialogScreen;->mAttitude:Lcom/texa/carelib/care/attitude/Attitude;

    invoke-interface {v0}, Lcom/texa/carelib/care/attitude/Attitude;->beginEstimation()V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 46
    :catch_0
    iget-object v0, p0, Lcom/texa/careapp/app/calibration/CalibrationDialogScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lcom/texa/careapp/app/calibration/CalibrationDialogScreen$CalibrationProcedure;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/texa/careapp/app/calibration/CalibrationDialogScreen$CalibrationProcedure;-><init>(Lcom/texa/careapp/app/calibration/CalibrationDialogScreen;Z)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 49
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/texa/careapp/app/calibration/CalibrationDialogScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lcom/texa/careapp/app/calibration/CalibrationDialogScreen$CalibrationProcedure;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/texa/careapp/app/calibration/CalibrationDialogScreen$CalibrationProcedure;-><init>(Lcom/texa/careapp/app/calibration/CalibrationDialogScreen;Z)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 50
    invoke-virtual {p0}, Lcom/texa/careapp/app/calibration/CalibrationDialogScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->goBack()Z

    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0a016f

    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/calibration/CalibrationDialogScreen$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/calibration/CalibrationDialogScreen$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/calibration/CalibrationDialogScreen;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0170

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/texa/careapp/app/calibration/CalibrationDialogScreen$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/calibration/CalibrationDialogScreen$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/calibration/CalibrationDialogScreen;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 60
    const-class v0, Lcom/texa/careapp/app/calibration/CalibrationDialogScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0072

    return v0
.end method

.method public getType()Lcom/texa/care/navigation/ScreenType;
    .locals 1

    .line 65
    sget-object v0, Lcom/texa/care/navigation/ScreenType;->DIALOG:Lcom/texa/care/navigation/ScreenType;

    return-object v0
.end method

.method public synthetic lambda$afterViewInjection$0$com-texa-careapp-app-calibration-CalibrationDialogScreen(Landroid/view/View;)V
    .locals 0

    .line 36
    invoke-virtual {p0}, Lcom/texa/careapp/app/calibration/CalibrationDialogScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/care/navigation/Navigator;->goBack()Z

    return-void
.end method

.method public synthetic lambda$afterViewInjection$1$com-texa-careapp-app-calibration-CalibrationDialogScreen(Landroid/view/View;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/texa/careapp/app/calibration/CalibrationDialogScreen;->startCalibration()V

    return-void
.end method
