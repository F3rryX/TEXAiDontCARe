.class public Lcom/texa/careapp/parameters/VehicleParamMapperV2;
.super Ljava/lang/Object;
.source "VehicleParamMapperV2.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VehicleParamMapperV2"


# instance fields
.field private mCardParameters:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;",
            ">;"
        }
    .end annotation
.end field

.field private mCommunication:Lcom/texa/carelib/communication/Communication;

.field private mContext:Landroid/content/Context;

.field private mParameterAbsCngLevel:Lcom/texa/careapp/parameters/ParameterAbsCngLevel;

.field private mParameterAbsLpgLevel:Lcom/texa/careapp/parameters/ParameterAbsLpgLevel;

.field private mParameterBatteryCharge:Lcom/texa/careapp/parameters/ParameterBatteryCharge;

.field private mParameterBatteryVoltage:Lcom/texa/careapp/parameters/ParameterBatteryVoltage;

.field private mParameterCruisingRange:Lcom/texa/careapp/parameters/ParameterCruisingRange;

.field private mParameterCruisingRangeGas:Lcom/texa/careapp/parameters/ParameterCruisingRangeGas;

.field private mParameterDaysLastService:Lcom/texa/careapp/parameters/ParameterDaysLastService;

.field private mParameterDaysNextService:Lcom/texa/careapp/parameters/ParameterDaysNextService;

.field private mParameterDistanceLastService:Lcom/texa/careapp/parameters/ParameterDistanceLastService;

.field private mParameterDistanceNextService:Lcom/texa/careapp/parameters/ParameterDistanceNextService;

.field private mParameterEngineRpm:Lcom/texa/careapp/parameters/ParameterEngineRpm;

.field private mParameterEngineTemperature:Lcom/texa/careapp/parameters/ParameterEngineTemperature;

.field private mParameterFuelLevel:Lcom/texa/careapp/parameters/ParameterFuelLevel;

.field private mParameterOilLevel:Lcom/texa/careapp/parameters/ParameterOilLevel;

.field private mParameterOilLevelStatus:Lcom/texa/careapp/parameters/ParameterOilLevelStatus;

.field private mParameterOilQualityStatus:Lcom/texa/careapp/parameters/ParameterOilQualityStatus;

.field private mParameterOilQualityVal:Lcom/texa/careapp/parameters/ParameterOilQualityVal;

.field private mParameterRelGasLevel:Lcom/texa/careapp/parameters/ParameterRelGasLevel;

.field private mParameterVehicleSpeed:Lcom/texa/careapp/parameters/ParameterVehicleSpeed;

.field private mParameters:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/texa/carelib/communication/Communication;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameters:Landroid/util/LongSparseArray;

    .line 24
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mCardParameters:Landroid/util/LongSparseArray;

    .line 50
    iput-object p1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mCommunication:Lcom/texa/carelib/communication/Communication;

    .line 52
    invoke-virtual {p0}, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->refreshBaseParameter()V

    return-void
.end method

.method private addCardParameterToList(Ljava/lang/Long;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;)V
    .locals 3

    .line 238
    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mCardParameters:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-void
.end method

.method private addToList(Ljava/lang/Long;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;)V
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameters:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public get(J)Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameters:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;

    return-object p1
.end method

.method public getAll()Landroid/util/LongSparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LongSparseArray<",
            "Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;",
            ">;"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameters:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method public getAllCardParameter()Landroid/util/LongSparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LongSparseArray<",
            "Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;",
            ">;"
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mCardParameters:Landroid/util/LongSparseArray;

    .line 282
    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->FUEL_LEVEL_ABS:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mCardParameters:Landroid/util/LongSparseArray;

    sget-object v2, Lcom/texa/carelib/diagresources/DataID$Parameter;->FUEL_LEVEL_ABS:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v2}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;

    invoke-virtual {v1}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getValue()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 283
    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->FUEL_LEVEL_ABS:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->remove(J)V

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mCardParameters:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method public getCardParameter(J)Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mCardParameters:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;

    return-object p1
.end method

.method public isThereFuelParameter()Z
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterFuelLevel:Lcom/texa/careapp/parameters/ParameterFuelLevel;

    invoke-virtual {v0}, Lcom/texa/careapp/parameters/ParameterFuelLevel;->getValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public refreshBaseParameter()V
    .locals 3

    .line 251
    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mCardParameters:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 252
    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameters:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 254
    new-instance v0, Lcom/texa/careapp/parameters/ParameterBatteryVoltage;

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/texa/careapp/parameters/ParameterBatteryVoltage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterBatteryVoltage:Lcom/texa/careapp/parameters/ParameterBatteryVoltage;

    .line 256
    new-instance v0, Lcom/texa/careapp/parameters/ParameterEngineTemperature;

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-direct {v0, v1, v2}, Lcom/texa/careapp/parameters/ParameterEngineTemperature;-><init>(Landroid/content/Context;Lcom/texa/carelib/communication/Communication;)V

    iput-object v0, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterEngineTemperature:Lcom/texa/careapp/parameters/ParameterEngineTemperature;

    .line 258
    new-instance v0, Lcom/texa/careapp/parameters/ParameterFuelLevel;

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/texa/careapp/parameters/ParameterFuelLevel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterFuelLevel:Lcom/texa/careapp/parameters/ParameterFuelLevel;

    const-wide/32 v0, 0x499602d2

    .line 260
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterBatteryVoltage:Lcom/texa/careapp/parameters/ParameterBatteryVoltage;

    invoke-direct {p0, v0, v1}, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->addToList(Ljava/lang/Long;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;)V

    .line 261
    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterBatteryVoltage:Lcom/texa/careapp/parameters/ParameterBatteryVoltage;

    invoke-direct {p0, v0, v1}, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->addCardParameterToList(Ljava/lang/Long;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;)V

    .line 263
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->ENGINE_TEMP:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterEngineTemperature:Lcom/texa/careapp/parameters/ParameterEngineTemperature;

    invoke-direct {p0, v0, v1}, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->addToList(Ljava/lang/Long;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;)V

    .line 264
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->ENGINE_TEMP:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterEngineTemperature:Lcom/texa/careapp/parameters/ParameterEngineTemperature;

    invoke-direct {p0, v0, v1}, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->addCardParameterToList(Ljava/lang/Long;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;)V

    .line 266
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->FUEL_LEVEL_ABS:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterFuelLevel:Lcom/texa/careapp/parameters/ParameterFuelLevel;

    invoke-direct {p0, v0, v1}, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->addToList(Ljava/lang/Long;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;)V

    .line 267
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->FUEL_LEVEL_ABS:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterFuelLevel:Lcom/texa/careapp/parameters/ParameterFuelLevel;

    invoke-direct {p0, v0, v1}, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->addCardParameterToList(Ljava/lang/Long;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;)V

    .line 269
    new-instance v0, Lcom/texa/careapp/parameters/ParameterVehicleSpeed;

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-direct {v0, v1, v2}, Lcom/texa/careapp/parameters/ParameterVehicleSpeed;-><init>(Landroid/content/Context;Lcom/texa/carelib/communication/Communication;)V

    iput-object v0, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterVehicleSpeed:Lcom/texa/careapp/parameters/ParameterVehicleSpeed;

    .line 270
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->VEHICLE_SPEED:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterVehicleSpeed:Lcom/texa/careapp/parameters/ParameterVehicleSpeed;

    invoke-direct {p0, v0, v1}, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->addToList(Ljava/lang/Long;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;)V

    .line 272
    new-instance v0, Lcom/texa/careapp/parameters/ParameterEngineRpm;

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-direct {v0, v1, v2}, Lcom/texa/careapp/parameters/ParameterEngineRpm;-><init>(Landroid/content/Context;Lcom/texa/carelib/communication/Communication;)V

    iput-object v0, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterEngineRpm:Lcom/texa/careapp/parameters/ParameterEngineRpm;

    .line 273
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->ENGINE_RPM:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterEngineRpm:Lcom/texa/careapp/parameters/ParameterEngineRpm;

    invoke-direct {p0, v0, v1}, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->addToList(Ljava/lang/Long;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;)V

    return-void
.end method

.method public size()I
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameters:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    return v0
.end method

.method public updateCardParam(Lcom/texa/careapp/model/VehicleParam;)Landroid/util/LongSparseArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/model/VehicleParam;",
            ")",
            "Landroid/util/LongSparseArray<",
            "Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;",
            ">;"
        }
    .end annotation

    .line 205
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleParam;->getDataId()J

    move-result-wide v0

    .line 207
    sget-object v2, Lcom/texa/carelib/diagresources/DataID$Parameter;->FUEL_LEVEL_ABS:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v2}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    sget-object v2, Lcom/texa/carelib/diagresources/DataID$Parameter;->FUEL_LEVEL_REL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v2}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto/16 :goto_0

    :cond_0
    const-wide/32 v2, 0x499602d2

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 215
    iget-object v2, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterBatteryVoltage:Lcom/texa/careapp/parameters/ParameterBatteryVoltage;

    if-nez v2, :cond_1

    .line 216
    new-instance v2, Lcom/texa/careapp/parameters/ParameterBatteryVoltage;

    iget-object v3, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/texa/careapp/parameters/ParameterBatteryVoltage;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterBatteryVoltage:Lcom/texa/careapp/parameters/ParameterBatteryVoltage;

    .line 217
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterBatteryVoltage:Lcom/texa/careapp/parameters/ParameterBatteryVoltage;

    invoke-direct {p0, v0, v1}, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->addCardParameterToList(Ljava/lang/Long;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;)V

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterBatteryVoltage:Lcom/texa/careapp/parameters/ParameterBatteryVoltage;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/parameters/ParameterBatteryVoltage;->update(Lcom/texa/careapp/model/VehicleParam;)V

    .line 220
    sget-object p1, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mParameterBatteryVoltage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterBatteryVoltage:Lcom/texa/careapp/parameters/ParameterBatteryVoltage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 221
    :cond_2
    sget-object v2, Lcom/texa/carelib/diagresources/DataID$Parameter;->ENGINE_TEMP:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v2}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_6

    .line 222
    iget-object v2, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterEngineTemperature:Lcom/texa/careapp/parameters/ParameterEngineTemperature;

    if-nez v2, :cond_3

    .line 223
    new-instance v2, Lcom/texa/careapp/parameters/ParameterEngineTemperature;

    iget-object v3, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-direct {v2, v3, v4}, Lcom/texa/careapp/parameters/ParameterEngineTemperature;-><init>(Landroid/content/Context;Lcom/texa/carelib/communication/Communication;)V

    iput-object v2, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterEngineTemperature:Lcom/texa/careapp/parameters/ParameterEngineTemperature;

    .line 224
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterEngineTemperature:Lcom/texa/careapp/parameters/ParameterEngineTemperature;

    invoke-direct {p0, v0, v1}, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->addCardParameterToList(Ljava/lang/Long;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;)V

    .line 226
    :cond_3
    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterEngineTemperature:Lcom/texa/careapp/parameters/ParameterEngineTemperature;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/parameters/ParameterEngineTemperature;->update(Lcom/texa/careapp/model/VehicleParam;)V

    .line 227
    sget-object p1, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mParameterEngineTemperature1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterEngineTemperature:Lcom/texa/careapp/parameters/ParameterEngineTemperature;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 208
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterFuelLevel:Lcom/texa/careapp/parameters/ParameterFuelLevel;

    if-nez v0, :cond_5

    .line 209
    new-instance v0, Lcom/texa/careapp/parameters/ParameterFuelLevel;

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/texa/careapp/parameters/ParameterFuelLevel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterFuelLevel:Lcom/texa/careapp/parameters/ParameterFuelLevel;

    .line 210
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->FUEL_LEVEL_ABS:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterFuelLevel:Lcom/texa/careapp/parameters/ParameterFuelLevel;

    invoke-direct {p0, v0, v1}, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->addCardParameterToList(Ljava/lang/Long;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;)V

    .line 212
    :cond_5
    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterFuelLevel:Lcom/texa/careapp/parameters/ParameterFuelLevel;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/parameters/ParameterFuelLevel;->update(Lcom/texa/careapp/model/VehicleParam;)V

    .line 213
    sget-object p1, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mParameterFuelLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterFuelLevel:Lcom/texa/careapp/parameters/ParameterFuelLevel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mCardParameters:Landroid/util/LongSparseArray;

    return-object p1
.end method

.method public updateParam(Lcom/texa/careapp/model/VehicleParam;)Landroid/util/LongSparseArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/model/VehicleParam;",
            ")",
            "Landroid/util/LongSparseArray<",
            "Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;",
            ">;"
        }
    .end annotation

    .line 56
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleParam;->getDataId()J

    move-result-wide v0

    .line 58
    sget-object v2, Lcom/texa/carelib/diagresources/DataID$Parameter;->OIL_LEVEL_REL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v2}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_27

    sget-object v2, Lcom/texa/carelib/diagresources/DataID$Parameter;->OIL_LEVEL_ABS:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v2}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto/16 :goto_1

    .line 65
    :cond_0
    sget-object v2, Lcom/texa/carelib/diagresources/DataID$Parameter;->FUEL_LEVEL_ABS:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v2}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_25

    sget-object v2, Lcom/texa/carelib/diagresources/DataID$Parameter;->FUEL_LEVEL_REL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v2}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    goto/16 :goto_0

    .line 72
    :cond_1
    sget-object v2, Lcom/texa/carelib/diagresources/DataID$Parameter;->CRUISING_RANGE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v2}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    .line 73
    iget-object v2, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterCruisingRange:Lcom/texa/careapp/parameters/ParameterCruisingRange;

    if-nez v2, :cond_2

    .line 74
    new-instance v2, Lcom/texa/careapp/parameters/ParameterCruisingRange;

    iget-object v3, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/texa/careapp/parameters/ParameterCruisingRange;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterCruisingRange:Lcom/texa/careapp/parameters/ParameterCruisingRange;

    .line 75
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterCruisingRange:Lcom/texa/careapp/parameters/ParameterCruisingRange;

    invoke-direct {p0, v0, v1}, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->addToList(Ljava/lang/Long;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;)V

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterCruisingRange:Lcom/texa/careapp/parameters/ParameterCruisingRange;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/parameters/ParameterCruisingRange;->update(Lcom/texa/careapp/model/VehicleParam;)V

    .line 78
    sget-object p1, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mParameterCruisingRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterCruisingRange:Lcom/texa/careapp/parameters/ParameterCruisingRange;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 79
    :cond_3
    sget-object v2, Lcom/texa/carelib/diagresources/DataID$Parameter;->CRUISING_RANGE_GAS:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v2}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_5

    .line 80
    iget-object v2, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterCruisingRangeGas:Lcom/texa/careapp/parameters/ParameterCruisingRangeGas;

    if-nez v2, :cond_4

    .line 81
    new-instance v2, Lcom/texa/careapp/parameters/ParameterCruisingRangeGas;

    iget-object v3, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/texa/careapp/parameters/ParameterCruisingRangeGas;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterCruisingRangeGas:Lcom/texa/careapp/parameters/ParameterCruisingRangeGas;

    .line 82
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterCruisingRangeGas:Lcom/texa/careapp/parameters/ParameterCruisingRangeGas;

    invoke-direct {p0, v0, v1}, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->addToList(Ljava/lang/Long;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;)V

    .line 84
    :cond_4
    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterCruisingRangeGas:Lcom/texa/careapp/parameters/ParameterCruisingRangeGas;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/parameters/ParameterCruisingRangeGas;->update(Lcom/texa/careapp/model/VehicleParam;)V

    .line 85
    sget-object p1, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mParameterCruisingRangeGas="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterCruisingRangeGas:Lcom/texa/careapp/parameters/ParameterCruisingRangeGas;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 86
    :cond_5
    sget-object v2, Lcom/texa/carelib/diagresources/DataID$Parameter;->BATTERY_CHARGE_LEVEL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v2}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_7

    .line 87
    iget-object v2, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterBatteryCharge:Lcom/texa/careapp/parameters/ParameterBatteryCharge;

    if-nez v2, :cond_6

    .line 88
    new-instance v2, Lcom/texa/careapp/parameters/ParameterBatteryCharge;

    iget-object v3, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/texa/careapp/parameters/ParameterBatteryCharge;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterBatteryCharge:Lcom/texa/careapp/parameters/ParameterBatteryCharge;

    .line 89
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterBatteryCharge:Lcom/texa/careapp/parameters/ParameterBatteryCharge;

    invoke-direct {p0, v0, v1}, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->addToList(Ljava/lang/Long;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;)V

    .line 91
    :cond_6
    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterBatteryCharge:Lcom/texa/careapp/parameters/ParameterBatteryCharge;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/parameters/ParameterBatteryCharge;->update(Lcom/texa/careapp/model/VehicleParam;)V

    .line 92
    sget-object p1, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mParameterBatteryCharge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterBatteryCharge:Lcom/texa/careapp/parameters/ParameterBatteryCharge;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 93
    :cond_7
    sget-object v2, Lcom/texa/carelib/diagresources/DataID$Enum;->OIL_LEVEL_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v2}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_9

    .line 94
    iget-object v2, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterOilLevelStatus:Lcom/texa/careapp/parameters/ParameterOilLevelStatus;

    if-nez v2, :cond_8

    .line 95
    new-instance v2, Lcom/texa/careapp/parameters/ParameterOilLevelStatus;

    iget-object v3, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/texa/careapp/parameters/ParameterOilLevelStatus;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterOilLevelStatus:Lcom/texa/careapp/parameters/ParameterOilLevelStatus;

    .line 96
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterOilLevelStatus:Lcom/texa/careapp/parameters/ParameterOilLevelStatus;

    invoke-direct {p0, v0, v1}, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->addToList(Ljava/lang/Long;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;)V

    .line 98
    :cond_8
    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterOilLevelStatus:Lcom/texa/careapp/parameters/ParameterOilLevelStatus;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/parameters/ParameterOilLevelStatus;->update(Lcom/texa/careapp/model/VehicleParam;)V

    .line 99
    sget-object p1, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mParameterOilLevelStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterOilLevelStatus:Lcom/texa/careapp/parameters/ParameterOilLevelStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 100
    :cond_9
    sget-object v2, Lcom/texa/carelib/diagresources/DataID$Enum;->OIL_QUALITY_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v2}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_b

    .line 101
    iget-object v2, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterOilQualityStatus:Lcom/texa/careapp/parameters/ParameterOilQualityStatus;

    if-nez v2, :cond_a

    .line 102
    new-instance v2, Lcom/texa/careapp/parameters/ParameterOilQualityStatus;

    iget-object v3, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/texa/careapp/parameters/ParameterOilQualityStatus;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterOilQualityStatus:Lcom/texa/careapp/parameters/ParameterOilQualityStatus;

    .line 103
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterOilQualityStatus:Lcom/texa/careapp/parameters/ParameterOilQualityStatus;

    invoke-direct {p0, v0, v1}, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->addToList(Ljava/lang/Long;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;)V

    .line 105
    :cond_a
    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterOilQualityStatus:Lcom/texa/careapp/parameters/ParameterOilQualityStatus;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/parameters/ParameterOilQualityStatus;->update(Lcom/texa/careapp/model/VehicleParam;)V

    .line 106
    sget-object p1, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mParameterOilQualityStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterOilQualityStatus:Lcom/texa/careapp/parameters/ParameterOilQualityStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 107
    :cond_b
    sget-object v2, Lcom/texa/carelib/diagresources/DataID$Parameter;->OIL_QUALITY_VAL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v2}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_d

    .line 108
    iget-object v2, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterOilQualityVal:Lcom/texa/careapp/parameters/ParameterOilQualityVal;

    if-nez v2, :cond_c

    .line 109
    new-instance v2, Lcom/texa/careapp/parameters/ParameterOilQualityVal;

    iget-object v3, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/texa/careapp/parameters/ParameterOilQualityVal;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterOilQualityVal:Lcom/texa/careapp/parameters/ParameterOilQualityVal;

    .line 110
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterOilQualityVal:Lcom/texa/careapp/parameters/ParameterOilQualityVal;

    invoke-direct {p0, v0, v1}, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->addToList(Ljava/lang/Long;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;)V

    .line 112
    :cond_c
    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterOilQualityVal:Lcom/texa/careapp/parameters/ParameterOilQualityVal;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/parameters/ParameterOilQualityVal;->update(Lcom/texa/careapp/model/VehicleParam;)V

    .line 113
    sget-object p1, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mParameterOilQualityVal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterOilQualityVal:Lcom/texa/careapp/parameters/ParameterOilQualityVal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 114
    :cond_d
    sget-object v2, Lcom/texa/carelib/diagresources/DataID$Parameter;->REL_GAS_LEVEL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v2}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_f

    .line 115
    iget-object v2, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterRelGasLevel:Lcom/texa/careapp/parameters/ParameterRelGasLevel;

    if-nez v2, :cond_e

    .line 116
    new-instance v2, Lcom/texa/careapp/parameters/ParameterRelGasLevel;

    iget-object v3, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/texa/careapp/parameters/ParameterRelGasLevel;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterRelGasLevel:Lcom/texa/careapp/parameters/ParameterRelGasLevel;

    .line 117
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterRelGasLevel:Lcom/texa/careapp/parameters/ParameterRelGasLevel;

    invoke-direct {p0, v0, v1}, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->addToList(Ljava/lang/Long;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;)V

    .line 119
    :cond_e
    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterRelGasLevel:Lcom/texa/careapp/parameters/ParameterRelGasLevel;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/parameters/ParameterRelGasLevel;->update(Lcom/texa/careapp/model/VehicleParam;)V

    .line 120
    sget-object p1, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mParameterRelGasLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterRelGasLevel:Lcom/texa/careapp/parameters/ParameterRelGasLevel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 121
    :cond_f
    sget-object v2, Lcom/texa/carelib/diagresources/DataID$Parameter;->ABS_LPG_LEVEL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v2}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_11

    .line 122
    iget-object v2, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterAbsLpgLevel:Lcom/texa/careapp/parameters/ParameterAbsLpgLevel;

    if-nez v2, :cond_10

    .line 123
    new-instance v2, Lcom/texa/careapp/parameters/ParameterAbsLpgLevel;

    iget-object v3, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/texa/careapp/parameters/ParameterAbsLpgLevel;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterAbsLpgLevel:Lcom/texa/careapp/parameters/ParameterAbsLpgLevel;

    .line 124
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterAbsLpgLevel:Lcom/texa/careapp/parameters/ParameterAbsLpgLevel;

    invoke-direct {p0, v0, v1}, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->addToList(Ljava/lang/Long;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;)V

    .line 126
    :cond_10
    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterAbsLpgLevel:Lcom/texa/careapp/parameters/ParameterAbsLpgLevel;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/parameters/ParameterAbsLpgLevel;->update(Lcom/texa/careapp/model/VehicleParam;)V

    .line 127
    sget-object p1, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mParameterAbsLpgLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterAbsLpgLevel:Lcom/texa/careapp/parameters/ParameterAbsLpgLevel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 128
    :cond_11
    sget-object v2, Lcom/texa/carelib/diagresources/DataID$Parameter;->ABS_CNG_LEVEL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v2}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_13

    .line 129
    iget-object v2, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterAbsCngLevel:Lcom/texa/careapp/parameters/ParameterAbsCngLevel;

    if-nez v2, :cond_12

    .line 130
    new-instance v2, Lcom/texa/careapp/parameters/ParameterAbsCngLevel;

    iget-object v3, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/texa/careapp/parameters/ParameterAbsCngLevel;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterAbsCngLevel:Lcom/texa/careapp/parameters/ParameterAbsCngLevel;

    .line 131
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterAbsCngLevel:Lcom/texa/careapp/parameters/ParameterAbsCngLevel;

    invoke-direct {p0, v0, v1}, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->addToList(Ljava/lang/Long;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;)V

    .line 133
    :cond_12
    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterAbsCngLevel:Lcom/texa/careapp/parameters/ParameterAbsCngLevel;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/parameters/ParameterAbsCngLevel;->update(Lcom/texa/careapp/model/VehicleParam;)V

    .line 134
    sget-object p1, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mParameterAbsCngLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterAbsCngLevel:Lcom/texa/careapp/parameters/ParameterAbsCngLevel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 135
    :cond_13
    sget-object v2, Lcom/texa/carelib/diagresources/DataID$Parameter;->DISTANCE_NEXT_SERVICE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v2}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_15

    .line 136
    iget-object v2, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterDistanceNextService:Lcom/texa/careapp/parameters/ParameterDistanceNextService;

    if-nez v2, :cond_14

    .line 137
    new-instance v2, Lcom/texa/careapp/parameters/ParameterDistanceNextService;

    iget-object v3, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/texa/careapp/parameters/ParameterDistanceNextService;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterDistanceNextService:Lcom/texa/careapp/parameters/ParameterDistanceNextService;

    .line 138
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterDistanceNextService:Lcom/texa/careapp/parameters/ParameterDistanceNextService;

    invoke-direct {p0, v0, v1}, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->addToList(Ljava/lang/Long;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;)V

    .line 140
    :cond_14
    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterDistanceNextService:Lcom/texa/careapp/parameters/ParameterDistanceNextService;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/parameters/ParameterDistanceNextService;->update(Lcom/texa/careapp/model/VehicleParam;)V

    .line 141
    sget-object p1, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mParameterDistanceNextService="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterDistanceNextService:Lcom/texa/careapp/parameters/ParameterDistanceNextService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 142
    :cond_15
    sget-object v2, Lcom/texa/carelib/diagresources/DataID$Parameter;->DAYS_NEXT_SERVICE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v2}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_17

    .line 143
    iget-object v2, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterDaysNextService:Lcom/texa/careapp/parameters/ParameterDaysNextService;

    if-nez v2, :cond_16

    .line 144
    new-instance v2, Lcom/texa/careapp/parameters/ParameterDaysNextService;

    iget-object v3, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/texa/careapp/parameters/ParameterDaysNextService;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterDaysNextService:Lcom/texa/careapp/parameters/ParameterDaysNextService;

    .line 145
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterDaysNextService:Lcom/texa/careapp/parameters/ParameterDaysNextService;

    invoke-direct {p0, v0, v1}, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->addToList(Ljava/lang/Long;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;)V

    .line 147
    :cond_16
    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterDaysNextService:Lcom/texa/careapp/parameters/ParameterDaysNextService;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/parameters/ParameterDaysNextService;->update(Lcom/texa/careapp/model/VehicleParam;)V

    .line 148
    sget-object p1, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mParameterDaysNextService="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterDaysNextService:Lcom/texa/careapp/parameters/ParameterDaysNextService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 149
    :cond_17
    sget-object v2, Lcom/texa/carelib/diagresources/DataID$Parameter;->DISTANCE_LAST_SERVICE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v2}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_19

    .line 150
    iget-object v2, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterDistanceLastService:Lcom/texa/careapp/parameters/ParameterDistanceLastService;

    if-nez v2, :cond_18

    .line 151
    new-instance v2, Lcom/texa/careapp/parameters/ParameterDistanceLastService;

    iget-object v3, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/texa/careapp/parameters/ParameterDistanceLastService;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterDistanceLastService:Lcom/texa/careapp/parameters/ParameterDistanceLastService;

    .line 152
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterDistanceLastService:Lcom/texa/careapp/parameters/ParameterDistanceLastService;

    invoke-direct {p0, v0, v1}, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->addToList(Ljava/lang/Long;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;)V

    .line 154
    :cond_18
    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterDistanceLastService:Lcom/texa/careapp/parameters/ParameterDistanceLastService;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/parameters/ParameterDistanceLastService;->update(Lcom/texa/careapp/model/VehicleParam;)V

    .line 155
    sget-object p1, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mParameterDistanceLastService="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterDistanceLastService:Lcom/texa/careapp/parameters/ParameterDistanceLastService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 156
    :cond_19
    sget-object v2, Lcom/texa/carelib/diagresources/DataID$Parameter;->DAYS_LAST_SERVICE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v2}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_1b

    .line 157
    iget-object v2, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterDaysLastService:Lcom/texa/careapp/parameters/ParameterDaysLastService;

    if-nez v2, :cond_1a

    .line 158
    new-instance v2, Lcom/texa/careapp/parameters/ParameterDaysLastService;

    iget-object v3, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/texa/careapp/parameters/ParameterDaysLastService;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterDaysLastService:Lcom/texa/careapp/parameters/ParameterDaysLastService;

    .line 159
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterDaysLastService:Lcom/texa/careapp/parameters/ParameterDaysLastService;

    invoke-direct {p0, v0, v1}, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->addToList(Ljava/lang/Long;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;)V

    .line 161
    :cond_1a
    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterDaysLastService:Lcom/texa/careapp/parameters/ParameterDaysLastService;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/parameters/ParameterDaysLastService;->update(Lcom/texa/careapp/model/VehicleParam;)V

    .line 162
    sget-object p1, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mParameterDaysLastService="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterDaysLastService:Lcom/texa/careapp/parameters/ParameterDaysLastService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 163
    :cond_1b
    sget-object v2, Lcom/texa/carelib/diagresources/DataID$Parameter;->ENGINE_TEMP:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v2}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_1d

    .line 164
    iget-object v2, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterEngineTemperature:Lcom/texa/careapp/parameters/ParameterEngineTemperature;

    if-nez v2, :cond_1c

    .line 165
    new-instance v2, Lcom/texa/careapp/parameters/ParameterEngineTemperature;

    iget-object v3, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-direct {v2, v3, v4}, Lcom/texa/careapp/parameters/ParameterEngineTemperature;-><init>(Landroid/content/Context;Lcom/texa/carelib/communication/Communication;)V

    iput-object v2, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterEngineTemperature:Lcom/texa/careapp/parameters/ParameterEngineTemperature;

    .line 166
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterEngineTemperature:Lcom/texa/careapp/parameters/ParameterEngineTemperature;

    invoke-direct {p0, v0, v1}, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->addToList(Ljava/lang/Long;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;)V

    .line 168
    :cond_1c
    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterEngineTemperature:Lcom/texa/careapp/parameters/ParameterEngineTemperature;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/parameters/ParameterEngineTemperature;->update(Lcom/texa/careapp/model/VehicleParam;)V

    .line 169
    sget-object p1, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mParameterEngineTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterEngineTemperature:Lcom/texa/careapp/parameters/ParameterEngineTemperature;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 170
    :cond_1d
    sget-object v2, Lcom/texa/carelib/diagresources/DataID$Parameter;->ENGINE_RPM:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v2}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_1f

    .line 171
    iget-object v2, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterEngineRpm:Lcom/texa/careapp/parameters/ParameterEngineRpm;

    if-nez v2, :cond_1e

    .line 172
    new-instance v2, Lcom/texa/careapp/parameters/ParameterEngineRpm;

    iget-object v3, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-direct {v2, v3, v4}, Lcom/texa/careapp/parameters/ParameterEngineRpm;-><init>(Landroid/content/Context;Lcom/texa/carelib/communication/Communication;)V

    iput-object v2, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterEngineRpm:Lcom/texa/careapp/parameters/ParameterEngineRpm;

    .line 173
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterEngineRpm:Lcom/texa/careapp/parameters/ParameterEngineRpm;

    invoke-direct {p0, v0, v1}, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->addToList(Ljava/lang/Long;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;)V

    .line 175
    :cond_1e
    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterEngineRpm:Lcom/texa/careapp/parameters/ParameterEngineRpm;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/parameters/ParameterEngineRpm;->update(Lcom/texa/careapp/model/VehicleParam;)V

    .line 176
    sget-object p1, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mParameterEngineRpm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterEngineRpm:Lcom/texa/careapp/parameters/ParameterEngineRpm;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 177
    :cond_1f
    sget-object v2, Lcom/texa/carelib/diagresources/DataID$Parameter;->VEHICLE_SPEED:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v2}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_21

    .line 178
    iget-object v2, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterVehicleSpeed:Lcom/texa/careapp/parameters/ParameterVehicleSpeed;

    if-nez v2, :cond_20

    .line 179
    new-instance v2, Lcom/texa/careapp/parameters/ParameterVehicleSpeed;

    iget-object v3, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-direct {v2, v3, v4}, Lcom/texa/careapp/parameters/ParameterVehicleSpeed;-><init>(Landroid/content/Context;Lcom/texa/carelib/communication/Communication;)V

    iput-object v2, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterVehicleSpeed:Lcom/texa/careapp/parameters/ParameterVehicleSpeed;

    .line 180
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterVehicleSpeed:Lcom/texa/careapp/parameters/ParameterVehicleSpeed;

    invoke-direct {p0, v0, v1}, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->addToList(Ljava/lang/Long;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;)V

    .line 182
    :cond_20
    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterVehicleSpeed:Lcom/texa/careapp/parameters/ParameterVehicleSpeed;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/parameters/ParameterVehicleSpeed;->update(Lcom/texa/careapp/model/VehicleParam;)V

    .line 183
    sget-object p1, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mParameterVehicleSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterVehicleSpeed:Lcom/texa/careapp/parameters/ParameterVehicleSpeed;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_21
    const-wide/32 v2, 0x499602d2

    cmp-long v4, v0, v2

    if-nez v4, :cond_23

    .line 185
    iget-object v2, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterBatteryVoltage:Lcom/texa/careapp/parameters/ParameterBatteryVoltage;

    if-nez v2, :cond_22

    .line 186
    new-instance v2, Lcom/texa/careapp/parameters/ParameterBatteryVoltage;

    iget-object v3, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/texa/careapp/parameters/ParameterBatteryVoltage;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterBatteryVoltage:Lcom/texa/careapp/parameters/ParameterBatteryVoltage;

    .line 187
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterBatteryVoltage:Lcom/texa/careapp/parameters/ParameterBatteryVoltage;

    invoke-direct {p0, v0, v1}, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->addToList(Ljava/lang/Long;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;)V

    .line 189
    :cond_22
    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterBatteryVoltage:Lcom/texa/careapp/parameters/ParameterBatteryVoltage;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/parameters/ParameterBatteryVoltage;->update(Lcom/texa/careapp/model/VehicleParam;)V

    .line 190
    sget-object p1, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mParameterBatteryVoltage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterBatteryVoltage:Lcom/texa/careapp/parameters/ParameterBatteryVoltage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 192
    :cond_23
    new-instance v2, Lcom/texa/careapp/parameters/GenericParameter;

    iget-object v3, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleParam;->getValueFormatted()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, v0, v1, p1}, Lcom/texa/careapp/parameters/GenericParameter;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    .line 193
    iget-object p1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameters:Landroid/util/LongSparseArray;

    invoke-virtual {p1, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 194
    iget-object p1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameters:Landroid/util/LongSparseArray;

    invoke-virtual {p1, v0, v1}, Landroid/util/LongSparseArray;->remove(J)V

    .line 196
    :cond_24
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->addToList(Ljava/lang/Long;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;)V

    goto :goto_2

    .line 66
    :cond_25
    :goto_0
    iget-object v2, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterFuelLevel:Lcom/texa/careapp/parameters/ParameterFuelLevel;

    if-nez v2, :cond_26

    .line 67
    new-instance v2, Lcom/texa/careapp/parameters/ParameterFuelLevel;

    iget-object v3, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/texa/careapp/parameters/ParameterFuelLevel;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterFuelLevel:Lcom/texa/careapp/parameters/ParameterFuelLevel;

    .line 68
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterFuelLevel:Lcom/texa/careapp/parameters/ParameterFuelLevel;

    invoke-direct {p0, v0, v1}, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->addToList(Ljava/lang/Long;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;)V

    .line 70
    :cond_26
    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterFuelLevel:Lcom/texa/careapp/parameters/ParameterFuelLevel;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/parameters/ParameterFuelLevel;->update(Lcom/texa/careapp/model/VehicleParam;)V

    .line 71
    sget-object p1, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mParameterFuelLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterFuelLevel:Lcom/texa/careapp/parameters/ParameterFuelLevel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 59
    :cond_27
    :goto_1
    iget-object v2, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterOilLevel:Lcom/texa/careapp/parameters/ParameterOilLevel;

    if-nez v2, :cond_28

    .line 60
    new-instance v2, Lcom/texa/careapp/parameters/ParameterOilLevel;

    iget-object v3, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/texa/careapp/parameters/ParameterOilLevel;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterOilLevel:Lcom/texa/careapp/parameters/ParameterOilLevel;

    .line 61
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterOilLevel:Lcom/texa/careapp/parameters/ParameterOilLevel;

    invoke-direct {p0, v0, v1}, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->addToList(Ljava/lang/Long;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;)V

    .line 63
    :cond_28
    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterOilLevel:Lcom/texa/careapp/parameters/ParameterOilLevel;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/parameters/ParameterOilLevel;->update(Lcom/texa/careapp/model/VehicleParam;)V

    .line 64
    sget-object p1, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mParameterOilLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameterOilLevel:Lcom/texa/careapp/parameters/ParameterOilLevel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :goto_2
    iget-object p1, p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->mParameters:Landroid/util/LongSparseArray;

    return-object p1
.end method
