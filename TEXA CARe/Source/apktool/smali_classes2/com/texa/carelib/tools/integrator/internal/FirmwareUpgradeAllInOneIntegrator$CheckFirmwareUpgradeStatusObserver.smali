.class Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$CheckFirmwareUpgradeStatusObserver;
.super Ljava/util/Observable;
.source "FirmwareUpgradeAllInOneIntegrator.java"

# interfaces
.implements Ljava/beans/PropertyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckFirmwareUpgradeStatusObserver"
.end annotation


# instance fields
.field private mMainAppVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

.field private mSerialNumber:Ljava/lang/String;

.field private mServiceAppVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

.field final synthetic this$0:Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator;


# direct methods
.method private constructor <init>(Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$CheckFirmwareUpgradeStatusObserver;->this$0:Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator;

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator;Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$1;)V
    .locals 0

    .line 193
    invoke-direct {p0, p1}, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$CheckFirmwareUpgradeStatusObserver;-><init>(Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator;)V

    return-void
.end method


# virtual methods
.method public evaluate(Ljava/lang/String;Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/utils/FirmwareVersion;)Z
    .locals 1

    .line 220
    invoke-static {p1}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    if-nez p2, :cond_1

    return v0

    :cond_1
    if-nez p3, :cond_2

    return v0

    .line 229
    :cond_2
    invoke-virtual {p0}, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$CheckFirmwareUpgradeStatusObserver;->notifyObservers()V

    const/4 p1, 0x1

    return p1
.end method

.method public getMainAppVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$CheckFirmwareUpgradeStatusObserver;->mMainAppVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    return-object v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$CheckFirmwareUpgradeStatusObserver;->mSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceAppVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$CheckFirmwareUpgradeStatusObserver;->mServiceAppVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    return-object v0
.end method

.method public propertyChange(Ljava/beans/PropertyChangeEvent;)V
    .locals 2

    .line 235
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.texa.carelib.care.accessory.Accessory#PROPERTY_SERIAL_NUMBER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getNewValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$CheckFirmwareUpgradeStatusObserver;->setSerialNumber(Ljava/lang/String;)Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$CheckFirmwareUpgradeStatusObserver;

    goto :goto_0

    .line 237
    :cond_0
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.texa.carelib.care.accessory.Accessory#PROPERTY_MAIN_APP_VERSION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getNewValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/carelib/core/utils/FirmwareVersion;

    invoke-virtual {p0, p1}, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$CheckFirmwareUpgradeStatusObserver;->setMainAppVersion(Lcom/texa/carelib/core/utils/FirmwareVersion;)Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$CheckFirmwareUpgradeStatusObserver;

    goto :goto_0

    .line 239
    :cond_1
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.texa.carelib.care.accessory.Accessory#PROPERTY_SERVICE_APP_VERSION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 240
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getNewValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/carelib/core/utils/FirmwareVersion;

    invoke-virtual {p0, p1}, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$CheckFirmwareUpgradeStatusObserver;->setServiceAppVersion(Lcom/texa/carelib/core/utils/FirmwareVersion;)Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$CheckFirmwareUpgradeStatusObserver;

    :cond_2
    :goto_0
    return-void
.end method

.method public setMainAppVersion(Lcom/texa/carelib/core/utils/FirmwareVersion;)Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$CheckFirmwareUpgradeStatusObserver;
    .locals 2

    .line 207
    iput-object p1, p0, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$CheckFirmwareUpgradeStatusObserver;->mMainAppVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 208
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$CheckFirmwareUpgradeStatusObserver;->mSerialNumber:Ljava/lang/String;

    iget-object v1, p0, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$CheckFirmwareUpgradeStatusObserver;->mServiceAppVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    invoke-virtual {p0, v0, p1, v1}, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$CheckFirmwareUpgradeStatusObserver;->evaluate(Ljava/lang/String;Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/utils/FirmwareVersion;)Z

    return-object p0
.end method

.method public setSerialNumber(Ljava/lang/String;)Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$CheckFirmwareUpgradeStatusObserver;
    .locals 2

    .line 200
    iput-object p1, p0, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$CheckFirmwareUpgradeStatusObserver;->mSerialNumber:Ljava/lang/String;

    .line 201
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$CheckFirmwareUpgradeStatusObserver;->mMainAppVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    iget-object v1, p0, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$CheckFirmwareUpgradeStatusObserver;->mServiceAppVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    invoke-virtual {p0, p1, v0, v1}, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$CheckFirmwareUpgradeStatusObserver;->evaluate(Ljava/lang/String;Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/utils/FirmwareVersion;)Z

    return-object p0
.end method

.method public setServiceAppVersion(Lcom/texa/carelib/core/utils/FirmwareVersion;)Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$CheckFirmwareUpgradeStatusObserver;
    .locals 2

    .line 214
    iput-object p1, p0, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$CheckFirmwareUpgradeStatusObserver;->mServiceAppVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 215
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$CheckFirmwareUpgradeStatusObserver;->mSerialNumber:Ljava/lang/String;

    iget-object v1, p0, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$CheckFirmwareUpgradeStatusObserver;->mMainAppVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    invoke-virtual {p0, v0, v1, p1}, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$CheckFirmwareUpgradeStatusObserver;->evaluate(Ljava/lang/String;Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/utils/FirmwareVersion;)Z

    return-object p0
.end method
