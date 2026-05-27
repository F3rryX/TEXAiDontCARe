.class Lcom/texa/care/eco_driving/RxCurrentTrip$1;
.super Lcom/texa/care/eco_driving/RxObservableObject$Validator;
.source "RxCurrentTrip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/care/eco_driving/RxCurrentTrip;->observeTripStatus()Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/care/eco_driving/RxCurrentTrip;


# direct methods
.method constructor <init>(Lcom/texa/care/eco_driving/RxCurrentTrip;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/texa/care/eco_driving/RxCurrentTrip$1;->this$0:Lcom/texa/care/eco_driving/RxCurrentTrip;

    invoke-direct {p0, p1}, Lcom/texa/care/eco_driving/RxObservableObject$Validator;-><init>(Lcom/texa/care/eco_driving/RxObservableObject;)V

    return-void
.end method


# virtual methods
.method public isValid(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)Z"
        }
    .end annotation

    .line 45
    invoke-super {p0, p1}, Lcom/texa/care/eco_driving/RxObservableObject$Validator;->isValid(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 46
    sget-object v0, Lcom/texa/carelib/care/trips/TripStatus;->Undef:Lcom/texa/carelib/care/trips/TripStatus;

    if-eq v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
