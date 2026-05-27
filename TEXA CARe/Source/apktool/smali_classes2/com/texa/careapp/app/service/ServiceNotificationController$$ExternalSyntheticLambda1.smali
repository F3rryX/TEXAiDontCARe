.class public final synthetic Lcom/texa/careapp/app/service/ServiceNotificationController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/service/ServiceNotificationController;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/service/ServiceNotificationController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/service/ServiceNotificationController$$ExternalSyntheticLambda1;->f$0:Lcom/texa/careapp/app/service/ServiceNotificationController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/app/service/ServiceNotificationController$$ExternalSyntheticLambda1;->f$0:Lcom/texa/careapp/app/service/ServiceNotificationController;

    check-cast p1, Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/app/service/ServiceNotificationController;->lambda$onCreate$1$com-texa-careapp-app-service-ServiceNotificationController(Lcom/texa/careapp/carelib/CommunicationObservable$Status;)V

    return-void
.end method
