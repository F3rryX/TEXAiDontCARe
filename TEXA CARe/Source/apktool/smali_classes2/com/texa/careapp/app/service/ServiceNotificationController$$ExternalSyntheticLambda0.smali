.class public final synthetic Lcom/texa/careapp/app/service/ServiceNotificationController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/service/ServiceNotificationController;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/service/ServiceNotificationController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/service/ServiceNotificationController$$ExternalSyntheticLambda0;->f$0:Lcom/texa/careapp/app/service/ServiceNotificationController;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/app/service/ServiceNotificationController$$ExternalSyntheticLambda0;->f$0:Lcom/texa/careapp/app/service/ServiceNotificationController;

    check-cast p1, Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {v0, p1, p2}, Lcom/texa/careapp/app/service/ServiceNotificationController;->$r8$lambda$jgbJJ9EZuQqJ1OdAQmR69bDac0c(Lcom/texa/careapp/app/service/ServiceNotificationController;Lcom/texa/careapp/carelib/CommunicationObservable$Status;Ljava/lang/Integer;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
