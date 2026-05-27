.class public Lcom/texa/careapp/app/calibration/CalibrationActivity;
.super Lcom/texa/careapp/base/BaseActivity;
.source "CalibrationActivity.java"


# static fields
.field public static final HAVE_TO_VALIDATE_NUMBER:Ljava/lang/String; = "HAVE_TO_VALIDATE_NUMBER"

.field public static final SHOULD_START_MAIN_ACTIVITY:Ljava/lang/String; = "SHOULD_START_MAIN_ACTIVITY"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/texa/careapp/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static buildIntent(Landroid/content/Context;Z)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x1

    .line 24
    invoke-static {p0, p1, v0}, Lcom/texa/careapp/app/calibration/CalibrationActivity;->buildIntent(Landroid/content/Context;ZZ)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static buildIntent(Landroid/content/Context;ZZ)Landroid/content/Intent;
    .locals 2

    .line 28
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/texa/careapp/app/calibration/CalibrationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "SHOULD_START_MAIN_ACTIVITY"

    .line 29
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "HAVE_TO_VALIDATE_NUMBER"

    .line 30
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p0, 0x4000000

    .line 31
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 37
    invoke-super {p0, p1}, Lcom/texa/careapp/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0020

    .line 38
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/calibration/CalibrationActivity;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Lcom/texa/careapp/app/calibration/CalibrationActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/CareApplication;

    .line 40
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/calibration/CalibrationActivity;)V

    .line 42
    invoke-static {p0}, Lcom/texa/care/navigation/Navigator;->getInstanceFor(Landroid/app/Activity;)Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    const v1, 0x7f0a0043

    .line 43
    invoke-virtual {v0, v1}, Lcom/texa/care/navigation/Navigator;->setContainerResId(I)V

    .line 44
    new-instance v1, Lcom/texa/careapp/app/calibration/CalibrationScreen;

    invoke-direct {v1, p1, p0}, Lcom/texa/careapp/app/calibration/CalibrationScreen;-><init>(Lcom/texa/careapp/CareApplication;Lcom/texa/careapp/app/calibration/CalibrationActivity;)V

    invoke-virtual {v0, v1}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    return-void
.end method

.method protected requiresAuthentication()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
