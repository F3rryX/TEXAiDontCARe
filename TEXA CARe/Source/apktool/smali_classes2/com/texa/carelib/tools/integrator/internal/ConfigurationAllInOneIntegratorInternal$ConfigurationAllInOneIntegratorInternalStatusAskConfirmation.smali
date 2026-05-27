.class Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusAskConfirmation;
.super Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternalStatus;
.source "ConfigurationAllInOneIntegratorInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigurationAllInOneIntegratorInternalStatusAskConfirmation"
.end annotation


# instance fields
.field private mTimeoutCallbackHandler:Lcom/texa/carelib/utils/internal/TimeoutCallbackHandler;

.field final synthetic this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;


# direct methods
.method private constructor <init>(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)V
    .locals 0

    .line 573
    iput-object p1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusAskConfirmation;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-direct {p0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternalStatus;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$1;)V
    .locals 0

    .line 573
    invoke-direct {p0, p1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusAskConfirmation;-><init>(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onEnter$0$com-texa-carelib-tools-integrator-internal-ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusAskConfirmation()V
    .locals 4

    .line 582
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusAskConfirmation;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    new-instance v1, Lcom/texa/carelib/core/CareError$Builder;

    const/4 v2, 0x1

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v2, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusAskConfirmation;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-static {v2}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->access$800(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)Lcom/texa/carelib/profile/Profile;

    move-result-object v2

    invoke-interface {v2}, Lcom/texa/carelib/profile/Profile;->getProfileDelegate()Lcom/texa/carelib/profile/ProfileDelegate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/carelib/profile/ProfileDelegate;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/texa/carelib/tools/R$string;->error_care_configuration_user_ack_timeout:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->terminate(ZLcom/texa/carelib/core/CareError;)V

    return-void
.end method

.method public synthetic lambda$onEnter$1$com-texa-carelib-tools-integrator-internal-ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusAskConfirmation()V
    .locals 2

    .line 586
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusAskConfirmation;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-static {v0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->access$1500(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusAskConfirmation;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-static {v0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->access$1500(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorListener;

    move-result-object v0

    new-instance v1, Lcom/texa/carelib/tools/integrator/events/ConfigurationAllInOneIntegratorConfirmationRequiredEvent;

    invoke-direct {v1, p0}, Lcom/texa/carelib/tools/integrator/events/ConfigurationAllInOneIntegratorConfirmationRequiredEvent;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorListener;->onConfirmationNeeded(Lcom/texa/carelib/tools/integrator/events/ConfigurationAllInOneIntegratorConfirmationRequiredEvent;)V

    :cond_0
    return-void
.end method

.method public onEnter()V
    .locals 4

    .line 578
    invoke-super {p0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternalStatus;->onEnter()V

    .line 579
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusAskConfirmation;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    sget-object v1, Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;->AskConfirmation:Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;

    iget-object v2, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusAskConfirmation;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-static {v2}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->access$1400(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->access$300(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;F)V

    .line 580
    new-instance v0, Lcom/texa/carelib/utils/internal/TimeoutCallbackHandler;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/texa/carelib/utils/internal/TimeoutCallbackHandler;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusAskConfirmation;->mTimeoutCallbackHandler:Lcom/texa/carelib/utils/internal/TimeoutCallbackHandler;

    .line 581
    new-instance v1, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusAskConfirmation$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusAskConfirmation$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusAskConfirmation;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Lcom/texa/carelib/utils/internal/TimeoutCallbackHandler;->set(Ljava/lang/Runnable;J)Z

    .line 585
    invoke-static {}, Lcom/texa/carelib/core/CarelibSchedulers;->mainThread()Lcom/texa/carelib/core/CarelibSchedulers$Scheduler;

    move-result-object v0

    new-instance v1, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusAskConfirmation$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusAskConfirmation$$ExternalSyntheticLambda1;-><init>(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusAskConfirmation;)V

    invoke-interface {v0, v1}, Lcom/texa/carelib/core/CarelibSchedulers$Scheduler;->schedule(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onExit()V
    .locals 1

    .line 593
    invoke-super {p0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternalStatus;->onExit()V

    .line 594
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusAskConfirmation;->mTimeoutCallbackHandler:Lcom/texa/carelib/utils/internal/TimeoutCallbackHandler;

    if-eqz v0, :cond_0

    .line 595
    invoke-virtual {v0}, Lcom/texa/carelib/utils/internal/TimeoutCallbackHandler;->cancel()Z

    :cond_0
    return-void
.end method
