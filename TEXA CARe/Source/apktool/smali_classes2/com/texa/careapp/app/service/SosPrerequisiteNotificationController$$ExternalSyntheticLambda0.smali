.class public final synthetic Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController$$ExternalSyntheticLambda0;->f$0:Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController$$ExternalSyntheticLambda0;->f$0:Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;

    check-cast p1, Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;->lambda$onCreate$0$com-texa-careapp-app-service-SosPrerequisiteNotificationController(Lcom/texa/careapp/carelib/CommunicationObservable$Status;)V

    return-void
.end method
