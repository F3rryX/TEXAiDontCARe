.class public Lcom/texa/carelib/webservices/VehicleInfoLoadedEvent;
.super Lcom/texa/carelib/core/events/ErrorEventBase;
.source "VehicleInfoLoadedEvent.java"


# instance fields
.field private final mVehicles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/texa/carelib/webservices/VehicleInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/util/Map;Lcom/texa/carelib/core/CareError;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/texa/carelib/webservices/VehicleInfo;",
            ">;",
            "Lcom/texa/carelib/core/CareError;",
            ")V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p3}, Lcom/texa/carelib/core/events/ErrorEventBase;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    .line 27
    iput-object p2, p0, Lcom/texa/carelib/webservices/VehicleInfoLoadedEvent;->mVehicles:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getVehicles()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/texa/carelib/webservices/VehicleInfo;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/texa/carelib/webservices/VehicleInfoLoadedEvent;->mVehicles:Ljava/util/Map;

    return-object v0
.end method
