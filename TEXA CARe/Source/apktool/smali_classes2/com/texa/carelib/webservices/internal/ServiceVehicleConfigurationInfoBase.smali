.class public abstract Lcom/texa/carelib/webservices/internal/ServiceVehicleConfigurationInfoBase;
.super Lcom/texa/carelib/core/ObservableObjectBase;
.source "ServiceVehicleConfigurationInfoBase.java"

# interfaces
.implements Lcom/texa/carelib/webservices/ServiceVehicleConfigurationInfo;


# static fields
.field public static final TAG:Ljava/lang/String; = "ServiceVehicleConfigurationInfoBase"


# instance fields
.field private mStatus:Lcom/texa/carelib/webservices/ServiceVehicleConfigurationInfoStatus;

.field private mVehicleConfigurationStatus:Lcom/texa/carelib/webservices/VehicleConfigurationStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Lcom/texa/carelib/core/ObservableObjectBase;-><init>()V

    .line 70
    sget-object v0, Lcom/texa/carelib/webservices/VehicleConfigurationStatus;->Undefined:Lcom/texa/carelib/webservices/VehicleConfigurationStatus;

    iput-object v0, p0, Lcom/texa/carelib/webservices/internal/ServiceVehicleConfigurationInfoBase;->mVehicleConfigurationStatus:Lcom/texa/carelib/webservices/VehicleConfigurationStatus;

    .line 71
    sget-object v0, Lcom/texa/carelib/webservices/ServiceVehicleConfigurationInfoStatus;->Undefined:Lcom/texa/carelib/webservices/ServiceVehicleConfigurationInfoStatus;

    iput-object v0, p0, Lcom/texa/carelib/webservices/internal/ServiceVehicleConfigurationInfoBase;->mStatus:Lcom/texa/carelib/webservices/ServiceVehicleConfigurationInfoStatus;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 78
    sget-object v0, Lcom/texa/carelib/webservices/VehicleConfigurationStatus;->Undefined:Lcom/texa/carelib/webservices/VehicleConfigurationStatus;

    invoke-virtual {p0, v0}, Lcom/texa/carelib/webservices/internal/ServiceVehicleConfigurationInfoBase;->setVehicleConfigurationStatus(Lcom/texa/carelib/webservices/VehicleConfigurationStatus;)V

    return-void
.end method

.method protected ensureCanLoadVehicleConfigurationInfo(Ljava/lang/String;Ljava/math/BigInteger;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Lcom/texa/carelib/webservices/internal/ServiceVehicleConfigurationInfoBase;->getStatus()Lcom/texa/carelib/webservices/ServiceVehicleConfigurationInfoStatus;

    move-result-object v0

    sget-object v1, Lcom/texa/carelib/webservices/ServiceVehicleConfigurationInfoStatus;->Pending:Lcom/texa/carelib/webservices/ServiceVehicleConfigurationInfoStatus;

    if-eq v0, v1, :cond_2

    .line 87
    invoke-static {p1}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    return-void

    .line 94
    :cond_0
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string p2, "Could not getItems configuration info. Diagnostic interpreter version cannot be null."

    invoke-direct {p1, p2}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 89
    :cond_1
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string p2, "Could not getItems configuration info. HWID cannot be null or empty."

    invoke-direct {p1, p2}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 84
    :cond_2
    new-instance p1, Lcom/texa/carelib/core/OperationAlreadyRunningException;

    const-string p2, "Load vehicle configuration info is already running."

    invoke-direct {p1, p2}, Lcom/texa/carelib/core/OperationAlreadyRunningException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getStatus()Lcom/texa/carelib/webservices/ServiceVehicleConfigurationInfoStatus;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/ServiceVehicleConfigurationInfoBase;->mStatus:Lcom/texa/carelib/webservices/ServiceVehicleConfigurationInfoStatus;

    return-object v0
.end method

.method public getVehicleConfigurationStatus()Lcom/texa/carelib/webservices/VehicleConfigurationStatus;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/ServiceVehicleConfigurationInfoBase;->mVehicleConfigurationStatus:Lcom/texa/carelib/webservices/VehicleConfigurationStatus;

    return-object v0
.end method

.method protected setStatus(Lcom/texa/carelib/webservices/ServiceVehicleConfigurationInfoStatus;)V
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/ServiceVehicleConfigurationInfoBase;->mStatus:Lcom/texa/carelib/webservices/ServiceVehicleConfigurationInfoStatus;

    if-eq v0, p1, :cond_0

    .line 41
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/ServiceVehicleConfigurationInfoBase;->mStatus:Lcom/texa/carelib/webservices/ServiceVehicleConfigurationInfoStatus;

    .line 42
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/ServiceVehicleConfigurationInfoBase;->mStatus:Lcom/texa/carelib/webservices/ServiceVehicleConfigurationInfoStatus;

    const-string v2, "com.texa.carelib.webservices.ServiceVehicleConfigurationInfo#PROPERTY_STATUS"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/webservices/internal/ServiceVehicleConfigurationInfoBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    :cond_0
    return-void
.end method

.method protected setVehicleConfigurationStatus(Lcom/texa/carelib/webservices/VehicleConfigurationStatus;)V
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/ServiceVehicleConfigurationInfoBase;->mVehicleConfigurationStatus:Lcom/texa/carelib/webservices/VehicleConfigurationStatus;

    if-eq v0, p1, :cond_0

    .line 61
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/ServiceVehicleConfigurationInfoBase;->mVehicleConfigurationStatus:Lcom/texa/carelib/webservices/VehicleConfigurationStatus;

    .line 62
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/ServiceVehicleConfigurationInfoBase;->mVehicleConfigurationStatus:Lcom/texa/carelib/webservices/VehicleConfigurationStatus;

    const-string v2, "com.texa.carelib.webservices.ServiceVehicleConfigurationInfo#PROPERTY_VEHICLE_CONFIGURATION_STATUS"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/webservices/internal/ServiceVehicleConfigurationInfoBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    :cond_0
    return-void
.end method
