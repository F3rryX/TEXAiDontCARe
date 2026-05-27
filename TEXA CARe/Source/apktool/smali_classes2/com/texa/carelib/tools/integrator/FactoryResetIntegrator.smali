.class public Lcom/texa/carelib/tools/integrator/FactoryResetIntegrator;
.super Ljava/lang/Object;
.source "FactoryResetIntegrator.java"


# static fields
.field private static final RESET_REMOTE_CONFIGURATION_TIMEOUT:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "FactoryResetIntegrator"


# instance fields
.field private mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

.field private mCommunication:Lcom/texa/carelib/communication/Communication;

.field private mFactoryResetFlags:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/texa/carelib/care/accessory/FactoryResetFlag;",
            ">;"
        }
    .end annotation
.end field

.field private mFactoryResetIntegratorListener:Lcom/texa/carelib/tools/integrator/FactoryResetIntegratorListener;

.field private mIsInProgress:Z

.field private mServiceVehicleConfigurationProcedure:Lcom/texa/carelib/webservices/ServiceVehicleConfigurationProcedure;

.field private mVehicleInfo:Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;


# direct methods
.method public static synthetic $r8$lambda$UmEXCmVblU-JGwM22OyP-zOARfQ(Lcom/texa/carelib/tools/integrator/FactoryResetIntegrator;Lcom/texa/carelib/care/accessory/events/FactoryResetCompletedEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/texa/carelib/tools/integrator/FactoryResetIntegrator;->onFactoryResetCompleted(Lcom/texa/carelib/care/accessory/events/FactoryResetCompletedEvent;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-class v0, Lcom/texa/carelib/care/accessory/FactoryResetFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/carelib/tools/integrator/FactoryResetIntegrator;->mFactoryResetFlags:Ljava/util/EnumSet;

    return-void
.end method

.method private fireFactoryResetCompleted()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/FactoryResetIntegrator;->mFactoryResetIntegratorListener:Lcom/texa/carelib/tools/integrator/FactoryResetIntegratorListener;

    if-eqz v0, :cond_0

    .line 118
    invoke-interface {v0, p0}, Lcom/texa/carelib/tools/integrator/FactoryResetIntegratorListener;->onFactoryResetCompleted(Lcom/texa/carelib/tools/integrator/FactoryResetIntegrator;)V

    :cond_0
    return-void
.end method

.method private fireFactoryResetError(Lcom/texa/carelib/core/CareError;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/FactoryResetIntegrator;->mFactoryResetIntegratorListener:Lcom/texa/carelib/tools/integrator/FactoryResetIntegratorListener;

    if-eqz v0, :cond_0

    .line 113
    invoke-interface {v0, p0, p1}, Lcom/texa/carelib/tools/integrator/FactoryResetIntegratorListener;->onFactoryResetError(Lcom/texa/carelib/tools/integrator/FactoryResetIntegrator;Lcom/texa/carelib/core/CareError;)V

    :cond_0
    return-void
.end method

.method private onFactoryResetCompleted(Lcom/texa/carelib/care/accessory/events/FactoryResetCompletedEvent;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 171
    invoke-virtual {p1}, Lcom/texa/carelib/care/accessory/events/FactoryResetCompletedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p1}, Lcom/texa/carelib/care/accessory/events/FactoryResetCompletedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/texa/carelib/tools/integrator/FactoryResetIntegrator;->terminate(Lcom/texa/carelib/core/CareError;)V

    goto :goto_1

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/FactoryResetIntegrator;->mFactoryResetFlags:Ljava/util/EnumSet;

    sget-object v1, Lcom/texa/carelib/care/accessory/FactoryResetFlag;->PairingTable:Lcom/texa/carelib/care/accessory/FactoryResetFlag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 177
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/FactoryResetIntegrator;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-interface {v0}, Lcom/texa/carelib/communication/Communication;->getCurrentDevice()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 179
    invoke-virtual {v0}, Lcom/texa/carelib/communication/DeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 181
    :try_start_0
    iget-object v2, p0, Lcom/texa/carelib/tools/integrator/FactoryResetIntegrator;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-virtual {v0}, Lcom/texa/carelib/communication/DeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/texa/carelib/communication/Communication;->removeBond(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    :catch_0
    sget-object v0, Lcom/texa/carelib/tools/integrator/FactoryResetIntegrator;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Remove bond command has failed."

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    new-instance v0, Lcom/texa/carelib/core/CareError$Builder;

    const/4 v1, 0x1

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    invoke-virtual {p1}, Lcom/texa/carelib/care/accessory/events/FactoryResetCompletedEvent;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/texa/carelib/tools/R$string;->error_factory_reset_remove_bond:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/texa/carelib/tools/integrator/FactoryResetIntegrator;->terminate(Lcom/texa/carelib/core/CareError;)V

    goto :goto_0

    .line 187
    :cond_1
    sget-object p1, Lcom/texa/carelib/tools/integrator/FactoryResetIntegrator;->TAG:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Cannot remove bond. MAC Address cannot be null or empty."

    invoke-static {p1, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 191
    :cond_2
    sget-object p1, Lcom/texa/carelib/tools/integrator/FactoryResetIntegrator;->TAG:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Cannot remove bond. DeviceInfo cannot be null."

    invoke-static {p1, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 195
    invoke-direct {p0, p1}, Lcom/texa/carelib/tools/integrator/FactoryResetIntegrator;->terminate(Lcom/texa/carelib/core/CareError;)V

    :goto_1
    return-void
.end method

.method private terminate(Lcom/texa/carelib/core/CareError;)V
    .locals 1

    const/4 v0, 0x0

    .line 122
    iput-boolean v0, p0, Lcom/texa/carelib/tools/integrator/FactoryResetIntegrator;->mIsInProgress:Z

    .line 123
    const-class v0, Lcom/texa/carelib/care/accessory/FactoryResetFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/carelib/tools/integrator/FactoryResetIntegrator;->mFactoryResetFlags:Ljava/util/EnumSet;

    if-eqz p1, :cond_0

    .line 126
    invoke-direct {p0, p1}, Lcom/texa/carelib/tools/integrator/FactoryResetIntegrator;->fireFactoryResetError(Lcom/texa/carelib/core/CareError;)V

    goto :goto_0

    .line 129
    :cond_0
    invoke-direct {p0}, Lcom/texa/carelib/tools/integrator/FactoryResetIntegrator;->fireFactoryResetCompleted()V

    :goto_0
    return-void
.end method


# virtual methods
.method public resetToFactory(Ljava/util/EnumSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/texa/carelib/care/accessory/FactoryResetFlag;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/FactoryResetIntegrator;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    if-eqz v0, :cond_4

    .line 149
    iget-object v1, p0, Lcom/texa/carelib/tools/integrator/FactoryResetIntegrator;->mCommunication:Lcom/texa/carelib/communication/Communication;

    if-eqz v1, :cond_3

    .line 153
    iget-object v1, p0, Lcom/texa/carelib/tools/integrator/FactoryResetIntegrator;->mServiceVehicleConfigurationProcedure:Lcom/texa/carelib/webservices/ServiceVehicleConfigurationProcedure;

    if-eqz v1, :cond_2

    .line 157
    iget-object v1, p0, Lcom/texa/carelib/tools/integrator/FactoryResetIntegrator;->mVehicleInfo:Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;

    if-eqz v1, :cond_1

    .line 161
    iget-boolean v1, p0, Lcom/texa/carelib/tools/integrator/FactoryResetIntegrator;->mIsInProgress:Z

    if-nez v1, :cond_0

    .line 165
    iput-object p1, p0, Lcom/texa/carelib/tools/integrator/FactoryResetIntegrator;->mFactoryResetFlags:Ljava/util/EnumSet;

    .line 166
    new-instance v1, Lcom/texa/carelib/tools/integrator/FactoryResetIntegrator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/carelib/tools/integrator/FactoryResetIntegrator$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/tools/integrator/FactoryResetIntegrator;)V

    invoke-interface {v0, p1, v1}, Lcom/texa/carelib/care/accessory/Accessory;->resetToFactory(Ljava/util/EnumSet;Lcom/texa/carelib/core/Callback;)V

    return-void

    .line 162
    :cond_0
    new-instance p1, Lcom/texa/carelib/core/OperationAlreadyRunningException;

    invoke-direct {p1}, Lcom/texa/carelib/core/OperationAlreadyRunningException;-><init>()V

    throw p1

    .line 158
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "vehicle info is not yet set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 154
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "service vehicle configuration procedure is not yet set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 150
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "communication engine is not yet set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 146
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "accessory is not yet set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAccessory(Lcom/texa/carelib/care/accessory/Accessory;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/texa/carelib/tools/integrator/FactoryResetIntegrator;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    return-void
.end method

.method public setCommunication(Lcom/texa/carelib/communication/Communication;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/texa/carelib/tools/integrator/FactoryResetIntegrator;->mCommunication:Lcom/texa/carelib/communication/Communication;

    return-void
.end method

.method public setFactoryResetIntegratorListener(Lcom/texa/carelib/tools/integrator/FactoryResetIntegratorListener;)Lcom/texa/carelib/tools/integrator/FactoryResetIntegrator;
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/texa/carelib/tools/integrator/FactoryResetIntegrator;->mFactoryResetIntegratorListener:Lcom/texa/carelib/tools/integrator/FactoryResetIntegratorListener;

    return-object p0
.end method

.method public setServiceVehicleConfigurationProcedure(Lcom/texa/carelib/webservices/ServiceVehicleConfigurationProcedure;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/texa/carelib/tools/integrator/FactoryResetIntegrator;->mServiceVehicleConfigurationProcedure:Lcom/texa/carelib/webservices/ServiceVehicleConfigurationProcedure;

    return-void
.end method

.method public setVehicleInfo(Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/texa/carelib/tools/integrator/FactoryResetIntegrator;->mVehicleInfo:Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;

    return-void
.end method
