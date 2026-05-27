.class public Lcom/texa/careapp/app/sos/AutomaticSosActivity;
.super Lcom/texa/careapp/base/GooglePlayServicesActivity;
.source "AutomaticSosActivity.java"


# static fields
.field private static final COUNTDOWN_SECONDS:I = 0xf

.field protected static final KEY_IMPACT_DATE:Ljava/lang/String; = "impact-date-key"

.field protected static final KEY_IMPACT_TYPE:Ljava/lang/String; = "impact-type-key"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mCountdownView:Lcom/texa/careapp/views/CircleDisplay;

.field private mPresenter:Lcom/texa/careapp/app/sos/AutomaticSosPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;

    const-string v0, "AutomaticSosPresenter"

    sput-object v0, Lcom/texa/careapp/app/sos/AutomaticSosActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/texa/careapp/base/GooglePlayServicesActivity;-><init>()V

    return-void
.end method

.method private static addImpactDateExtra(Lcom/texa/careapp/impactdetection/ImpactEvent;Landroid/content/Intent;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/impactdetection/ImpactEvent;->getImpactTime()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {p0}, Lcom/texa/careapp/impactdetection/ImpactEvent;->getImpactTime()Ljava/lang/Long;

    move-result-object p0

    const-string v0, "impact-date-key"

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method private static addImpactDateExtra(Lcom/texa/carelib/care/impacts/Impact;Landroid/content/Intent;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/texa/carelib/care/impacts/Impact;->getDate()Ljava/util/Date;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/texa/careapp/app/sos/AutomaticSosActivity;->addImpactDateExtra(Ljava/util/Date;Landroid/content/Intent;)V

    return-void
.end method

.method private static addImpactDateExtra(Ljava/util/Date;Landroid/content/Intent;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 96
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-string p0, "impact-date-key"

    invoke-virtual {p1, p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private static addImpactSosServiceTypeExtra(ILandroid/content/Intent;)V
    .locals 1

    const-string v0, "impact-sos-service-type"

    .line 105
    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method

.method private static addImpactTypeExtra(ILandroid/content/Intent;)V
    .locals 1

    const-string v0, "impact-type-key"

    .line 101
    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method

.method public static buildIntent(Landroid/content/Context;ILjava/util/Date;I)Landroid/content/Intent;
    .locals 2

    .line 42
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/texa/careapp/app/sos/AutomaticSosActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p0, 0x10000000

    .line 43
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 45
    invoke-static {p2, v0}, Lcom/texa/careapp/app/sos/AutomaticSosActivity;->addImpactDateExtra(Ljava/util/Date;Landroid/content/Intent;)V

    .line 46
    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/AutomaticSosActivity;->addImpactTypeExtra(ILandroid/content/Intent;)V

    .line 47
    invoke-static {p3, v0}, Lcom/texa/careapp/app/sos/AutomaticSosActivity;->addImpactSosServiceTypeExtra(ILandroid/content/Intent;)V

    return-object v0
.end method

.method protected static getImpactDateExtra(Landroid/content/Intent;)Ljava/util/Date;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "impact-date-key"

    const-wide/16 v2, -0x1

    .line 56
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-lez p0, :cond_0

    .line 58
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v1, v2}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ignored exception"

    .line 61
    invoke-static {p0, v2, v1}, Ltimber/log/Timber;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    .line 67
    :cond_1
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    return-object p0
.end method

.method private getImpactSosServiceType(Landroid/content/Intent;)I
    .locals 2

    const-string v0, "impact-sos-service-type"

    const/4 v1, -0x1

    .line 151
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method protected static getImpactTypeExtra(Landroid/content/Intent;)I
    .locals 2

    const-string v0, "impact-type-key"

    const/4 v1, 0x0

    .line 74
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method private unlockScreen()V
    .locals 3

    .line 181
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/AutomaticSosActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 182
    sget-object v1, Lcom/texa/careapp/app/sos/AutomaticSosActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    const-string v0, "power"

    .line 184
    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/sos/AutomaticSosActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const v1, 0x3000001a

    const-string v2, "SosWakeLock"

    .line 185
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    return-void
.end method


# virtual methods
.method public getAutomaticSosPresenter()Lcom/texa/careapp/app/sos/AutomaticSosPresenter;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosActivity;->mPresenter:Lcom/texa/careapp/app/sos/AutomaticSosPresenter;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosActivity;->mPresenter:Lcom/texa/careapp/app/sos/AutomaticSosPresenter;

    invoke-virtual {v0}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->onBackPressed()V

    .line 176
    invoke-super {p0}, Lcom/texa/careapp/base/GooglePlayServicesActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 123
    invoke-super {p0, p1}, Lcom/texa/careapp/base/GooglePlayServicesActivity;->onCreate(Landroid/os/Bundle;)V

    .line 125
    invoke-direct {p0}, Lcom/texa/careapp/app/sos/AutomaticSosActivity;->unlockScreen()V

    const p1, 0x7f0d001e

    .line 127
    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/texa/careapp/databinding/ActivityAutomaticSosBinding;

    .line 128
    iget-object p1, v1, Lcom/texa/careapp/databinding/ActivityAutomaticSosBinding;->activityAutomaticSosCountDownView:Lcom/texa/careapp/views/CircleDisplay;

    iput-object p1, p0, Lcom/texa/careapp/app/sos/AutomaticSosActivity;->mCountdownView:Lcom/texa/careapp/views/CircleDisplay;

    .line 130
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/AutomaticSosActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/CareApplication;

    .line 132
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/AutomaticSosActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/app/sos/AutomaticSosActivity;->getImpactDateExtra(Landroid/content/Intent;)Ljava/util/Date;

    move-result-object v5

    .line 133
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/AutomaticSosActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/app/sos/AutomaticSosActivity;->getImpactTypeExtra(Landroid/content/Intent;)I

    move-result v4

    .line 134
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/AutomaticSosActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/texa/careapp/app/sos/AutomaticSosActivity;->getImpactSosServiceType(Landroid/content/Intent;)I

    move-result v6

    .line 136
    new-instance v7, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;

    new-instance v2, Lcom/texa/careapp/app/sos/countdown/CountdownTimerImpl;

    const/16 v0, 0xf

    invoke-direct {v2, v0}, Lcom/texa/careapp/app/sos/countdown/CountdownTimerImpl;-><init>(I)V

    move-object v0, v7

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;-><init>(Lcom/texa/careapp/databinding/ActivityAutomaticSosBinding;Lcom/texa/careapp/app/sos/countdown/CountdownTimerImpl;Landroid/app/Activity;ILjava/util/Date;I)V

    iput-object v7, p0, Lcom/texa/careapp/app/sos/AutomaticSosActivity;->mPresenter:Lcom/texa/careapp/app/sos/AutomaticSosPresenter;

    .line 138
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosActivity;->mPresenter:Lcom/texa/careapp/app/sos/AutomaticSosPresenter;

    invoke-interface {p1, v0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/sos/AutomaticSosPresenter;)V

    .line 140
    iget-object p1, p0, Lcom/texa/careapp/app/sos/AutomaticSosActivity;->mCountdownView:Lcom/texa/careapp/views/CircleDisplay;

    const/high16 v0, 0x41700000    # 15.0f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v0, v1}, Lcom/texa/careapp/views/CircleDisplay;->showValue(FFZ)V

    .line 141
    iget-object p1, p0, Lcom/texa/careapp/app/sos/AutomaticSosActivity;->mCountdownView:Lcom/texa/careapp/views/CircleDisplay;

    invoke-virtual {p1, v1}, Lcom/texa/careapp/views/CircleDisplay;->setFormatDigits(I)V

    .line 142
    iget-object p1, p0, Lcom/texa/careapp/app/sos/AutomaticSosActivity;->mCountdownView:Lcom/texa/careapp/views/CircleDisplay;

    invoke-virtual {p1, v1}, Lcom/texa/careapp/views/CircleDisplay;->setTouchEnabled(Z)V

    .line 143
    iget-object p1, p0, Lcom/texa/careapp/app/sos/AutomaticSosActivity;->mCountdownView:Lcom/texa/careapp/views/CircleDisplay;

    const/high16 v0, 0x42960000    # 75.0f

    invoke-virtual {p1, v0}, Lcom/texa/careapp/views/CircleDisplay;->setTextSize(F)V

    .line 144
    iget-object p1, p0, Lcom/texa/careapp/app/sos/AutomaticSosActivity;->mCountdownView:Lcom/texa/careapp/views/CircleDisplay;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/texa/careapp/views/CircleDisplay;->setUnit(Ljava/lang/String;)V

    .line 146
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosActivity;->mPresenter:Lcom/texa/careapp/app/sos/AutomaticSosPresenter;

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 147
    iget-object p1, p0, Lcom/texa/careapp/app/sos/AutomaticSosActivity;->mPresenter:Lcom/texa/careapp/app/sos/AutomaticSosPresenter;

    invoke-virtual {p1}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->start()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 193
    invoke-super {p0}, Lcom/texa/careapp/base/GooglePlayServicesActivity;->onDestroy()V

    .line 195
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosActivity;->mPresenter:Lcom/texa/careapp/app/sos/AutomaticSosPresenter;

    invoke-virtual {v0}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->resetVolume()V

    .line 196
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosActivity;->mPresenter:Lcom/texa/careapp/app/sos/AutomaticSosPresenter;

    invoke-virtual {v0}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->stop()V

    .line 197
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosActivity;->mPresenter:Lcom/texa/careapp/app/sos/AutomaticSosPresenter;

    invoke-virtual {v0}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->release()V

    .line 198
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosActivity;->mPresenter:Lcom/texa/careapp/app/sos/AutomaticSosPresenter;

    invoke-virtual {v0}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->destroySub()V

    .line 199
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/app/sos/AutomaticSosActivity;->mPresenter:Lcom/texa/careapp/app/sos/AutomaticSosPresenter;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, " onDestroy() "

    .line 200
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 161
    invoke-super {p0}, Lcom/texa/careapp/base/GooglePlayServicesActivity;->onStop()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, " onStop() "

    .line 169
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
