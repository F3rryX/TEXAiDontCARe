.class public final synthetic Lcom/texa/careapp/views/DashboardEmergencyButton$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/greenrobot/eventbus/EventBus;


# direct methods
.method public synthetic constructor <init>(Lorg/greenrobot/eventbus/EventBus;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/views/DashboardEmergencyButton$$ExternalSyntheticLambda0;->f$0:Lorg/greenrobot/eventbus/EventBus;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/views/DashboardEmergencyButton$$ExternalSyntheticLambda0;->f$0:Lorg/greenrobot/eventbus/EventBus;

    invoke-static {v0, p1}, Lcom/texa/careapp/views/DashboardEmergencyButton;->lambda$showAlertIcon$0(Lorg/greenrobot/eventbus/EventBus;Landroid/view/View;)V

    return-void
.end method
