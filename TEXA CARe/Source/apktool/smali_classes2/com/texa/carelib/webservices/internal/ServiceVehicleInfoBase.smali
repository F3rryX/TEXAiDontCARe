.class public abstract Lcom/texa/carelib/webservices/internal/ServiceVehicleInfoBase;
.super Lcom/texa/carelib/core/ObservableObjectBase;
.source "ServiceVehicleInfoBase.java"

# interfaces
.implements Lcom/texa/carelib/webservices/ServiceVehicleInfo;


# instance fields
.field private mStatus:Lcom/texa/carelib/webservices/ServiceVehicleInfoStatus;

.field private mVehicles:Ljava/util/Map;
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
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/texa/carelib/core/ObservableObjectBase;-><init>()V

    .line 67
    sget-object v0, Lcom/texa/carelib/webservices/ServiceVehicleInfoStatus;->Undefined:Lcom/texa/carelib/webservices/ServiceVehicleInfoStatus;

    iput-object v0, p0, Lcom/texa/carelib/webservices/internal/ServiceVehicleInfoBase;->mStatus:Lcom/texa/carelib/webservices/ServiceVehicleInfoStatus;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/texa/carelib/webservices/internal/ServiceVehicleInfoBase;->mVehicles:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected clear()V
    .locals 1

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0}, Lcom/texa/carelib/webservices/internal/ServiceVehicleInfoBase;->setVehicles(Ljava/util/Map;)V

    return-void
.end method

.method public getStatus()Lcom/texa/carelib/webservices/ServiceVehicleInfoStatus;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/ServiceVehicleInfoBase;->mStatus:Lcom/texa/carelib/webservices/ServiceVehicleInfoStatus;

    return-object v0
.end method

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

    .line 47
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/ServiceVehicleInfoBase;->mVehicles:Ljava/util/Map;

    return-object v0
.end method

.method public setStatus(Lcom/texa/carelib/webservices/ServiceVehicleInfoStatus;)V
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/ServiceVehicleInfoBase;->mStatus:Lcom/texa/carelib/webservices/ServiceVehicleInfoStatus;

    if-eq v0, p1, :cond_0

    .line 37
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/ServiceVehicleInfoBase;->mStatus:Lcom/texa/carelib/webservices/ServiceVehicleInfoStatus;

    .line 38
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/ServiceVehicleInfoBase;->mStatus:Lcom/texa/carelib/webservices/ServiceVehicleInfoStatus;

    const-string v2, "com.texa.carelib.webservices.ServiceVehicleInfo#PROPERTY_STATUS"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/webservices/internal/ServiceVehicleInfoBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    :cond_0
    return-void
.end method

.method protected setVehicles(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/texa/carelib/webservices/VehicleInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 53
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/ServiceVehicleInfoBase;->mVehicles:Ljava/util/Map;

    if-eq v0, p1, :cond_1

    .line 59
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/ServiceVehicleInfoBase;->mVehicles:Ljava/util/Map;

    .line 61
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/ServiceVehicleInfoBase;->mVehicles:Ljava/util/Map;

    const-string v2, "com.texa.carelib.webservices.ServiceVehicleInfo#PROPERTY_VEHICLES"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/webservices/internal/ServiceVehicleInfoBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    :cond_1
    return-void
.end method
