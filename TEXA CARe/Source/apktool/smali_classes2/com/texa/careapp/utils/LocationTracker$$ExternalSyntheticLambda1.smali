.class public final synthetic Lcom/texa/careapp/utils/LocationTracker$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/utils/LocationTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/utils/LocationTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/utils/LocationTracker$$ExternalSyntheticLambda1;->f$0:Lcom/texa/careapp/utils/LocationTracker;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/utils/LocationTracker$$ExternalSyntheticLambda1;->f$0:Lcom/texa/careapp/utils/LocationTracker;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/utils/LocationTracker;->lambda$onLocationTrackerChangeEvent$1$com-texa-careapp-utils-LocationTracker(Ljava/lang/Throwable;)V

    return-void
.end method
