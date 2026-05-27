.class public final synthetic Lcom/texa/care/eco_driving/RxAccessory$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/texa/carelib/core/Callback;


# instance fields
.field public final synthetic f$0:Lio/reactivex/CompletableEmitter;


# direct methods
.method public synthetic constructor <init>(Lio/reactivex/CompletableEmitter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/care/eco_driving/RxAccessory$$ExternalSyntheticLambda2;->f$0:Lio/reactivex/CompletableEmitter;

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/texa/care/eco_driving/RxAccessory$$ExternalSyntheticLambda2;->f$0:Lio/reactivex/CompletableEmitter;

    check-cast p1, Lcom/texa/carelib/care/accessory/events/SetDiagnosisModeCompletedEvent;

    invoke-static {v0, p1}, Lcom/texa/care/eco_driving/RxAccessory;->lambda$setDiagnosisMode$1(Lio/reactivex/CompletableEmitter;Lcom/texa/carelib/care/accessory/events/SetDiagnosisModeCompletedEvent;)V

    return-void
.end method
