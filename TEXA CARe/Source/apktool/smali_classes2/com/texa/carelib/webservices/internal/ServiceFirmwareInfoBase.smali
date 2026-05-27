.class public abstract Lcom/texa/carelib/webservices/internal/ServiceFirmwareInfoBase;
.super Lcom/texa/carelib/core/ObservableObjectBase;
.source "ServiceFirmwareInfoBase.java"

# interfaces
.implements Lcom/texa/carelib/webservices/ServiceFirmwareInfo;


# instance fields
.field private mMainAppVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

.field private mServiceAppVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

.field private mServiceStatus:Lcom/texa/carelib/webservices/ServiceFirmwareInfoStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Lcom/texa/carelib/core/ObservableObjectBase;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/texa/carelib/webservices/internal/ServiceFirmwareInfoBase;->mMainAppVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 74
    iput-object v0, p0, Lcom/texa/carelib/webservices/internal/ServiceFirmwareInfoBase;->mServiceAppVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 75
    sget-object v0, Lcom/texa/carelib/webservices/ServiceFirmwareInfoStatus;->Undef:Lcom/texa/carelib/webservices/ServiceFirmwareInfoStatus;

    iput-object v0, p0, Lcom/texa/carelib/webservices/internal/ServiceFirmwareInfoBase;->mServiceStatus:Lcom/texa/carelib/webservices/ServiceFirmwareInfoStatus;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 82
    sget-object v0, Lcom/texa/carelib/webservices/ServiceFirmwareInfoStatus;->Undef:Lcom/texa/carelib/webservices/ServiceFirmwareInfoStatus;

    invoke-virtual {p0, v0}, Lcom/texa/carelib/webservices/internal/ServiceFirmwareInfoBase;->setServiceStatus(Lcom/texa/carelib/webservices/ServiceFirmwareInfoStatus;)V

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0, v0}, Lcom/texa/carelib/webservices/internal/ServiceFirmwareInfoBase;->setMainAppVersion(Lcom/texa/carelib/core/utils/FirmwareVersion;)V

    .line 84
    invoke-virtual {p0, v0}, Lcom/texa/carelib/webservices/internal/ServiceFirmwareInfoBase;->setServiceAppVersion(Lcom/texa/carelib/core/utils/FirmwareVersion;)V

    return-void
.end method

.method public getMainAppVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/ServiceFirmwareInfoBase;->mMainAppVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    return-object v0
.end method

.method public getServiceAppVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/ServiceFirmwareInfoBase;->mServiceAppVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    return-object v0
.end method

.method public getStatus()Lcom/texa/carelib/webservices/ServiceFirmwareInfoStatus;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/ServiceFirmwareInfoBase;->mServiceStatus:Lcom/texa/carelib/webservices/ServiceFirmwareInfoStatus;

    return-object v0
.end method

.method protected setMainAppVersion(Lcom/texa/carelib/core/utils/FirmwareVersion;)V
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/ServiceFirmwareInfoBase;->mMainAppVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 34
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/ServiceFirmwareInfoBase;->mMainAppVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 35
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/ServiceFirmwareInfoBase;->mMainAppVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    const-string v2, "ServiceFirmwareInfo#PROPERTY_MAIN_APP_VERSION"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/webservices/internal/ServiceFirmwareInfoBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method protected setServiceAppVersion(Lcom/texa/carelib/core/utils/FirmwareVersion;)V
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/ServiceFirmwareInfoBase;->mServiceAppVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 65
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/ServiceFirmwareInfoBase;->mServiceAppVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 66
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/ServiceFirmwareInfoBase;->mServiceAppVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    const-string v2, "ServiceFirmwareInfo#PROPERTY_SERVICE_APP_VERSION"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/webservices/internal/ServiceFirmwareInfoBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method protected setServiceStatus(Lcom/texa/carelib/webservices/ServiceFirmwareInfoStatus;)V
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/ServiceFirmwareInfoBase;->mServiceStatus:Lcom/texa/carelib/webservices/ServiceFirmwareInfoStatus;

    if-eq v0, p1, :cond_0

    .line 49
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/ServiceFirmwareInfoBase;->mServiceStatus:Lcom/texa/carelib/webservices/ServiceFirmwareInfoStatus;

    .line 50
    new-instance p1, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/ServiceFirmwareInfoBase;->mServiceStatus:Lcom/texa/carelib/webservices/ServiceFirmwareInfoStatus;

    const-string v2, "ServiceFirmwareInfo#PROPERTY_STATUS"

    invoke-direct {p1, p0, v2, v0, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/webservices/internal/ServiceFirmwareInfoBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    :cond_0
    return-void
.end method
