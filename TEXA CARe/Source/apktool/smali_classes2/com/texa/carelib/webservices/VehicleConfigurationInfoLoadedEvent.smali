.class public Lcom/texa/carelib/webservices/VehicleConfigurationInfoLoadedEvent;
.super Lcom/texa/carelib/core/events/ErrorEventBase;
.source "VehicleConfigurationInfoLoadedEvent.java"


# instance fields
.field private final mVehicleConfigurationStatus:Lcom/texa/carelib/webservices/VehicleConfigurationStatus;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/texa/carelib/webservices/VehicleConfigurationStatus;Lcom/texa/carelib/core/CareError;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p3}, Lcom/texa/carelib/core/events/ErrorEventBase;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    .line 26
    iput-object p2, p0, Lcom/texa/carelib/webservices/VehicleConfigurationInfoLoadedEvent;->mVehicleConfigurationStatus:Lcom/texa/carelib/webservices/VehicleConfigurationStatus;

    return-void
.end method


# virtual methods
.method public getVehicleConfigurationStatus()Lcom/texa/carelib/webservices/VehicleConfigurationStatus;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/texa/carelib/webservices/VehicleConfigurationInfoLoadedEvent;->mVehicleConfigurationStatus:Lcom/texa/carelib/webservices/VehicleConfigurationStatus;

    return-object v0
.end method
