.class public final synthetic Lcom/texa/careapp/app/dashboard/DashboardScreenV2$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/dashboard/DashboardScreenV2;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2$$ExternalSyntheticLambda7;->f$0:Lcom/texa/careapp/app/dashboard/DashboardScreenV2;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2$$ExternalSyntheticLambda7;->f$0:Lcom/texa/careapp/app/dashboard/DashboardScreenV2;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    invoke-virtual {v0, p1, p2}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->lambda$observeCareStatus$1$com-texa-careapp-app-dashboard-DashboardScreenV2(Ljava/lang/Integer;Lcom/texa/careapp/carelib/CommunicationObservable$Status;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
