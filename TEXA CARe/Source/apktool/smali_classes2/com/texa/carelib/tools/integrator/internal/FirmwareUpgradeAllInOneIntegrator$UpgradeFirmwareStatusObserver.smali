.class Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$UpgradeFirmwareStatusObserver;
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
    name = "UpgradeFirmwareStatusObserver"
.end annotation


# instance fields
.field private mSerialNumber:Ljava/lang/String;

.field final synthetic this$0:Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator;


# direct methods
.method private constructor <init>(Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$UpgradeFirmwareStatusObserver;->this$0:Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator;

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Ljava/lang/String;)Z
    .locals 0

    .line 176
    invoke-static {p1}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$UpgradeFirmwareStatusObserver;->notifyObservers()V

    const/4 p1, 0x1

    return p1
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$UpgradeFirmwareStatusObserver;->mSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public propertyChange(Ljava/beans/PropertyChangeEvent;)V
    .locals 2

    .line 185
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.texa.carelib.care.accessory.Accessory#PROPERTY_SERIAL_NUMBER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getNewValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$UpgradeFirmwareStatusObserver;->setSerialNumber(Ljava/lang/String;)Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$UpgradeFirmwareStatusObserver;

    :cond_0
    return-void
.end method

.method public setSerialNumber(Ljava/lang/String;)Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$UpgradeFirmwareStatusObserver;
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$UpgradeFirmwareStatusObserver;->mSerialNumber:Ljava/lang/String;

    .line 171
    invoke-virtual {p0, p1}, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$UpgradeFirmwareStatusObserver;->evaluate(Ljava/lang/String;)Z

    return-object p0
.end method
