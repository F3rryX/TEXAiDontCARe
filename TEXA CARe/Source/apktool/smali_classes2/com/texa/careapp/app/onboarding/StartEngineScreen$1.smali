.class Lcom/texa/careapp/app/onboarding/StartEngineScreen$1;
.super Ljava/lang/Object;
.source "StartEngineScreen.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/app/onboarding/StartEngineScreen;->lambda$getVehiclesDetails$20(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/onboarding/StartEngineScreen;

.field final synthetic val$vehicleId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/onboarding/StartEngineScreen;Ljava/lang/String;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen$1;->this$0:Lcom/texa/careapp/app/onboarding/StartEngineScreen;

    iput-object p2, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen$1;->val$vehicleId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 401
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen$1;->this$0:Lcom/texa/careapp/app/onboarding/StartEngineScreen;

    invoke-static {p1}, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->access$000(Lcom/texa/careapp/app/onboarding/StartEngineScreen;)Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen$1;->this$0:Lcom/texa/careapp/app/onboarding/StartEngineScreen;

    invoke-static {v0}, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->access$000(Lcom/texa/careapp/app/onboarding/StartEngineScreen;)Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen$1;->val$vehicleId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->buildFirstRunIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->startActivity(Landroid/content/Intent;)V

    .line 402
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen$1;->this$0:Lcom/texa/careapp/app/onboarding/StartEngineScreen;

    invoke-static {p1}, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->access$000(Lcom/texa/careapp/app/onboarding/StartEngineScreen;)Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->finish()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
