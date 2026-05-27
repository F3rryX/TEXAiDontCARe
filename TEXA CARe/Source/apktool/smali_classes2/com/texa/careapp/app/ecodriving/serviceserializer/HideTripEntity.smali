.class public Lcom/texa/careapp/app/ecodriving/serviceserializer/HideTripEntity;
.super Ljava/lang/Object;
.source "HideTripEntity.java"


# instance fields
.field private rideId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/HideTripEntity;->rideId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getRideId()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/HideTripEntity;->rideId:Ljava/lang/String;

    return-object v0
.end method

.method public setRideId(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/HideTripEntity;->rideId:Ljava/lang/String;

    return-void
.end method
