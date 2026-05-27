.class public Lcom/texa/careapp/app/calibration/CalibrationScreen;
.super Lcom/texa/care/navigation/Screen;
.source "CalibrationScreen.java"


# static fields
.field private static final COUNT_BETA_WORD:I = 0x4


# instance fields
.field private btn:Landroid/widget/TextView;

.field private calibrationStarted:Z

.field private mActivity:Lcom/texa/careapp/app/calibration/CalibrationActivity;

.field private mCareApplication:Lcom/texa/careapp/CareApplication;

.field protected mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mSkip:Landroid/widget/TextView;

.field private secondDescription:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/texa/careapp/CareApplication;Lcom/texa/careapp/app/calibration/CalibrationActivity;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/texa/careapp/app/calibration/CalibrationScreen;->calibrationStarted:Z

    .line 50
    iput-object p1, p0, Lcom/texa/careapp/app/calibration/CalibrationScreen;->mCareApplication:Lcom/texa/careapp/CareApplication;

    .line 51
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/calibration/CalibrationScreen;)V

    .line 52
    iput-object p2, p0, Lcom/texa/careapp/app/calibration/CalibrationScreen;->mActivity:Lcom/texa/careapp/app/calibration/CalibrationActivity;

    return-void
.end method

.method private beginCalibration()V
    .locals 3

    .line 110
    iget-boolean v0, p0, Lcom/texa/careapp/app/calibration/CalibrationScreen;->calibrationStarted:Z

    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/texa/careapp/app/calibration/CalibrationScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/calibration/CalibrationDialogScreen;

    iget-object v2, p0, Lcom/texa/careapp/app/calibration/CalibrationScreen;->mCareApplication:Lcom/texa/careapp/CareApplication;

    invoke-direct {v1, v2}, Lcom/texa/careapp/app/calibration/CalibrationDialogScreen;-><init>(Lcom/texa/careapp/CareApplication;)V

    invoke-virtual {v0, v1}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    goto :goto_0

    .line 113
    :cond_0
    invoke-direct {p0}, Lcom/texa/careapp/app/calibration/CalibrationScreen;->goOn()V

    :goto_0
    return-void
.end method

.method private goOn()V
    .locals 4

    .line 117
    iget-object v0, p0, Lcom/texa/careapp/app/calibration/CalibrationScreen;->mActivity:Lcom/texa/careapp/app/calibration/CalibrationActivity;

    invoke-virtual {v0}, Lcom/texa/careapp/app/calibration/CalibrationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SHOULD_START_MAIN_ACTIVITY"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/texa/careapp/app/calibration/CalibrationScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v3, Lcom/texa/careapp/app/MainActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    .line 119
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 120
    iget-object v1, p0, Lcom/texa/careapp/app/calibration/CalibrationScreen;->mActivity:Lcom/texa/careapp/app/calibration/CalibrationActivity;

    invoke-virtual {v1}, Lcom/texa/careapp/app/calibration/CalibrationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "HAVE_TO_VALIDATE_NUMBER"

    .line 121
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "start_main_activity"

    .line 120
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 122
    iget-object v1, p0, Lcom/texa/careapp/app/calibration/CalibrationScreen;->mActivity:Lcom/texa/careapp/app/calibration/CalibrationActivity;

    invoke-virtual {v1, v0}, Lcom/texa/careapp/app/calibration/CalibrationActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/calibration/CalibrationScreen;->mActivity:Lcom/texa/careapp/app/calibration/CalibrationActivity;

    invoke-virtual {v0}, Lcom/texa/careapp/app/calibration/CalibrationActivity;->finish()V

    :goto_0
    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 7

    .line 57
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScreenCalibrationBinding;

    .line 58
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenCalibrationBinding;->screenCalibrationBtnSkip:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/calibration/CalibrationScreen;->mSkip:Landroid/widget/TextView;

    .line 59
    new-instance v1, Lcom/texa/careapp/app/calibration/CalibrationScreen$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/calibration/CalibrationScreen$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/calibration/CalibrationScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenCalibrationBinding;->screenCalibrationSecondDescription:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/calibration/CalibrationScreen;->secondDescription:Landroid/widget/TextView;

    .line 61
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenCalibrationBinding;->screenCalibrationBtn:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/calibration/CalibrationScreen;->btn:Landroid/widget/TextView;

    .line 62
    new-instance v1, Lcom/texa/careapp/app/calibration/CalibrationScreen$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/calibration/CalibrationScreen$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/calibration/CalibrationScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    invoke-virtual {p0}, Lcom/texa/careapp/app/calibration/CalibrationScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f11008d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 65
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 66
    new-instance v2, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v2}, Landroid/text/style/SuperscriptSpan;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 68
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/texa/careapp/app/calibration/CalibrationScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060026

    const/4 v6, 0x0

    invoke-static {v3, v4, v6}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 69
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    .line 70
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 68
    invoke-virtual {v1, v2, v3, v0, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 71
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenCalibrationBinding;->screenCalibrationTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 134
    const-class v0, Lcom/texa/careapp/app/calibration/CalibrationScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00ae

    return v0
.end method

.method public synthetic lambda$afterViewInjection$0$com-texa-careapp-app-calibration-CalibrationScreen(Landroid/view/View;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/texa/careapp/app/calibration/CalibrationScreen;->goOn()V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$1$com-texa-careapp-app-calibration-CalibrationScreen(Landroid/view/View;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/texa/careapp/app/calibration/CalibrationScreen;->beginCalibration()V

    return-void
.end method

.method public onEventMainThread(Lcom/texa/careapp/app/calibration/CalibrationDialogScreen$CalibrationProcedure;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 88
    invoke-virtual {p1}, Lcom/texa/careapp/app/calibration/CalibrationDialogScreen$CalibrationProcedure;->isCalibrationStarted()Z

    move-result p1

    iput-boolean p1, p0, Lcom/texa/careapp/app/calibration/CalibrationScreen;->calibrationStarted:Z

    const/16 v0, 0x11

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 90
    iget-object p1, p0, Lcom/texa/careapp/app/calibration/CalibrationScreen;->secondDescription:Landroid/widget/TextView;

    const v2, 0x7f110086

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 91
    iget-object p1, p0, Lcom/texa/careapp/app/calibration/CalibrationScreen;->secondDescription:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/calibration/CalibrationScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600ab

    invoke-static {v2, v3, v1}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    iget-object p1, p0, Lcom/texa/careapp/app/calibration/CalibrationScreen;->secondDescription:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 94
    iget-object p1, p0, Lcom/texa/careapp/app/calibration/CalibrationScreen;->btn:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/calibration/CalibrationScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080076

    invoke-static {v0, v2, v1}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 96
    iget-object p1, p0, Lcom/texa/careapp/app/calibration/CalibrationScreen;->btn:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/calibration/CalibrationScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x106000b

    invoke-static {v0, v2, v1}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    iget-object p1, p0, Lcom/texa/careapp/app/calibration/CalibrationScreen;->btn:Landroid/widget/TextView;

    const v0, 0x7f110088

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 99
    iget-object p1, p0, Lcom/texa/careapp/app/calibration/CalibrationScreen;->mSkip:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 101
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/calibration/CalibrationScreen;->secondDescription:Landroid/widget/TextView;

    const v2, 0x7f11008a

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 102
    iget-object p1, p0, Lcom/texa/careapp/app/calibration/CalibrationScreen;->secondDescription:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/calibration/CalibrationScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060026

    invoke-static {v2, v3, v1}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    iget-object p1, p0, Lcom/texa/careapp/app/calibration/CalibrationScreen;->secondDescription:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 105
    iget-object p1, p0, Lcom/texa/careapp/app/calibration/CalibrationScreen;->mSkip:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 82
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onPause()V

    .line 83
    iget-object v0, p0, Lcom/texa/careapp/app/calibration/CalibrationScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 76
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onResume()V

    .line 77
    iget-object v0, p0, Lcom/texa/careapp/app/calibration/CalibrationScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method
