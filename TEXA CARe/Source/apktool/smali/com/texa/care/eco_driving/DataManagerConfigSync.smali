.class Lcom/texa/care/eco_driving/DataManagerConfigSync;
.super Ljava/lang/Object;
.source "DataManagerConfigSync.java"


# static fields
.field private static final ACC_THR_INVALID:D = -1.0

.field private static final BREAK_THR_INVALID:D = -1.0

.field private static final TEMP_THR_INVALID:D = -1.0


# instance fields
.field public config:Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;

.field dataProvider:Lcom/texa/care/eco_driving/DrivingStyleManager;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/texa/care/eco_driving/DataManagerConfigSync;->dataProvider:Lcom/texa/care/eco_driving/DrivingStyleManager;

    .line 26
    iput-object v0, p0, Lcom/texa/care/eco_driving/DataManagerConfigSync;->config:Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;

    return-void
.end method


# virtual methods
.method syncAccThr()V
    .locals 7

    .line 30
    iget-object v0, p0, Lcom/texa/care/eco_driving/DataManagerConfigSync;->dataProvider:Lcom/texa/care/eco_driving/DrivingStyleManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/texa/care/eco_driving/DataManagerConfigSync;->config:Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;

    if-nez v1, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v0}, Lcom/texa/care/eco_driving/DrivingStyleManager;->getAccThr()D

    move-result-wide v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v4, v2, v0

    if-eqz v4, :cond_1

    .line 33
    iget-object v2, p0, Lcom/texa/care/eco_driving/DataManagerConfigSync;->config:Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;

    .line 34
    invoke-interface {v2}, Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;->getAccelerationThreshold()Ljava/lang/Float;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/texa/care/eco_driving/DataManagerConfigSync;->config:Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;

    .line 35
    invoke-interface {v2}, Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;->getAccelerationThreshold()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    sub-double v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v6, v2, v4

    if-lez v6, :cond_1

    .line 37
    :try_start_0
    iget-object v2, p0, Lcom/texa/care/eco_driving/DataManagerConfigSync;->config:Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;

    double-to-float v0, v0

    invoke-interface {v2, v0}, Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;->setAccelerationThreshold(F)V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Lcom/texa/carelib/core/CareLibException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method syncBrakeThr()V
    .locals 7

    .line 45
    iget-object v0, p0, Lcom/texa/care/eco_driving/DataManagerConfigSync;->dataProvider:Lcom/texa/care/eco_driving/DrivingStyleManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/texa/care/eco_driving/DataManagerConfigSync;->config:Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;

    if-nez v1, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {v0}, Lcom/texa/care/eco_driving/DrivingStyleManager;->getBrakeThr()D

    move-result-wide v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v4, v2, v0

    if-eqz v4, :cond_1

    .line 48
    iget-object v2, p0, Lcom/texa/care/eco_driving/DataManagerConfigSync;->config:Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;

    .line 49
    invoke-interface {v2}, Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;->getBrakeThreshold()Ljava/lang/Float;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/texa/care/eco_driving/DataManagerConfigSync;->config:Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;

    .line 50
    invoke-interface {v2}, Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;->getBrakeThreshold()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    sub-double v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v6, v2, v4

    if-lez v6, :cond_1

    .line 52
    :try_start_0
    iget-object v2, p0, Lcom/texa/care/eco_driving/DataManagerConfigSync;->config:Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;

    double-to-float v0, v0

    invoke-interface {v2, v0}, Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;->setBrakeThreshold(F)V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 54
    invoke-virtual {v0}, Lcom/texa/carelib/core/CareLibException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method syncTempThr()V
    .locals 5

    .line 60
    iget-object v0, p0, Lcom/texa/care/eco_driving/DataManagerConfigSync;->dataProvider:Lcom/texa/care/eco_driving/DrivingStyleManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/texa/care/eco_driving/DataManagerConfigSync;->config:Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;

    if-nez v1, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {v0}, Lcom/texa/care/eco_driving/DrivingStyleManager;->getTempThr()D

    move-result-wide v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v4, v2, v0

    if-eqz v4, :cond_1

    .line 63
    iget-object v2, p0, Lcom/texa/care/eco_driving/DataManagerConfigSync;->config:Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;

    .line 64
    invoke-interface {v2}, Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;->getTemperatureThreshold()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/texa/care/eco_driving/DataManagerConfigSync;->config:Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;

    .line 65
    invoke-interface {v2}, Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;->getTemperatureThreshold()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-double v2, v2

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_1

    .line 67
    :try_start_0
    iget-object v2, p0, Lcom/texa/care/eco_driving/DataManagerConfigSync;->config:Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;

    double-to-int v0, v0

    invoke-interface {v2, v0}, Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;->setTemperatureThreshold(I)V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 69
    invoke-virtual {v0}, Lcom/texa/carelib/core/CareLibException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
