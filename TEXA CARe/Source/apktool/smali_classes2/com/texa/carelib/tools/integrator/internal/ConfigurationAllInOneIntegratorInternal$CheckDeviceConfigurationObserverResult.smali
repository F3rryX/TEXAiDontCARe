.class Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserverResult;
.super Ljava/lang/Object;
.source "ConfigurationAllInOneIntegratorInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckDeviceConfigurationObserverResult"
.end annotation


# instance fields
.field private final mInterpreterVersion:Ljava/math/BigInteger;

.field private final mSerialNumber:Ljava/lang/String;

.field private final mVehicleID:Ljava/lang/String;

.field final synthetic this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;


# direct methods
.method public constructor <init>(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserverResult;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    iput-object p4, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserverResult;->mInterpreterVersion:Ljava/math/BigInteger;

    .line 330
    iput-object p2, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserverResult;->mSerialNumber:Ljava/lang/String;

    .line 331
    iput-object p3, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserverResult;->mVehicleID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDiagnosticInterpreterVersion()Ljava/math/BigInteger;
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserverResult;->mInterpreterVersion:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserverResult;->mSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getVehicleID()Ljava/lang/String;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserverResult;->mVehicleID:Ljava/lang/String;

    return-object v0
.end method
