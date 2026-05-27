.class public final synthetic Lcom/texa/careapp/views/DashboardEmergencyButton$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/views/DashboardEmergencyButton;

.field public final synthetic f$1:Lorg/greenrobot/eventbus/EventBus;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/views/DashboardEmergencyButton;Lorg/greenrobot/eventbus/EventBus;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/views/DashboardEmergencyButton$$ExternalSyntheticLambda1;->f$0:Lcom/texa/careapp/views/DashboardEmergencyButton;

    iput-object p2, p0, Lcom/texa/careapp/views/DashboardEmergencyButton$$ExternalSyntheticLambda1;->f$1:Lorg/greenrobot/eventbus/EventBus;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/texa/careapp/views/DashboardEmergencyButton$$ExternalSyntheticLambda1;->f$0:Lcom/texa/careapp/views/DashboardEmergencyButton;

    iget-object v1, p0, Lcom/texa/careapp/views/DashboardEmergencyButton$$ExternalSyntheticLambda1;->f$1:Lorg/greenrobot/eventbus/EventBus;

    check-cast p1, Lcom/texa/careapp/checks/Check$Result;

    invoke-virtual {v0, v1, p1}, Lcom/texa/careapp/views/DashboardEmergencyButton;->lambda$bindTo$1$com-texa-careapp-views-DashboardEmergencyButton(Lorg/greenrobot/eventbus/EventBus;Lcom/texa/careapp/checks/Check$Result;)V

    return-void
.end method
