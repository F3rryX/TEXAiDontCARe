.class public Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;
.super Ljava/lang/Object;
.source "DiagnosticParameterConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$ConversionFunction;,
        Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$ConvertResultFormattedCallback;,
        Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$ConvertResultCallback;
    }
.end annotation


# instance fields
.field private final mConversionFunctionMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$ConversionFunction;",
            ">;"
        }
    .end annotation
.end field

.field private mMeasurementSystem:Lcom/texa/carelib/profile/locale/MeasurementSystem;

.field private final mMeasurementUnitMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;->mConversionFunctionMap:Landroid/util/LongSparseArray;

    .line 22
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;->mMeasurementUnitMap:Landroid/util/LongSparseArray;

    .line 23
    invoke-static {}, Lcom/texa/carelib/profile/locale/MeasurementSystem;->getDefault()Lcom/texa/carelib/profile/locale/MeasurementSystem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;->setMeasurementSystem(Lcom/texa/carelib/profile/locale/MeasurementSystem;)Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;

    return-void
.end method

.method private initConversionFunctionsForImperialSystem(Landroid/util/LongSparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$ConversionFunction;",
            ">;)V"
        }
    .end annotation

    .line 214
    sget-object p1, Lcom/texa/carelib/diagresources/MeasurementUnit;->CELSIUS_DEGREE:Lcom/texa/carelib/diagresources/MeasurementUnit;

    invoke-virtual {p1}, Lcom/texa/carelib/diagresources/MeasurementUnit;->getId()J

    move-result-wide v0

    sget-object p1, Lcom/texa/carelib/profile/locale/TemperatureUnit;->FAHRENHEIT:Lcom/texa/carelib/profile/locale/TemperatureUnit;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/locale/TemperatureUnit;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/texa/carelib/profile/locale/TemperatureUnit;->CELSIUS:Lcom/texa/carelib/profile/locale/TemperatureUnit;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$$ExternalSyntheticLambda1;-><init>(Lcom/texa/carelib/profile/locale/TemperatureUnit;)V

    invoke-virtual {p0, v0, v1, p1, v3}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;->addConversion(JLjava/lang/String;Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$ConversionFunction;)Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;

    .line 215
    sget-object p1, Lcom/texa/carelib/diagresources/MeasurementUnit;->GRAM:Lcom/texa/carelib/diagresources/MeasurementUnit;

    invoke-virtual {p1}, Lcom/texa/carelib/diagresources/MeasurementUnit;->getId()J

    move-result-wide v0

    sget-object p1, Lcom/texa/carelib/profile/locale/MassUnit;->OUNCE:Lcom/texa/carelib/profile/locale/MassUnit;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/locale/MassUnit;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/texa/carelib/profile/locale/MassUnit;->GRAM:Lcom/texa/carelib/profile/locale/MassUnit;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$$ExternalSyntheticLambda11;

    invoke-direct {v3, v2}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$$ExternalSyntheticLambda11;-><init>(Lcom/texa/carelib/profile/locale/MassUnit;)V

    invoke-virtual {p0, v0, v1, p1, v3}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;->addConversion(JLjava/lang/String;Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$ConversionFunction;)Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;

    .line 216
    sget-object p1, Lcom/texa/carelib/diagresources/MeasurementUnit;->GRAM_PER_HOUR:Lcom/texa/carelib/diagresources/MeasurementUnit;

    invoke-virtual {p1}, Lcom/texa/carelib/diagresources/MeasurementUnit;->getId()J

    move-result-wide v0

    sget-object p1, Lcom/texa/carelib/profile/locale/MassFlowRateUnit;->OUNCE_PER_HOUR:Lcom/texa/carelib/profile/locale/MassFlowRateUnit;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/locale/MassFlowRateUnit;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/texa/carelib/profile/locale/MassFlowRateUnit;->GRAM_PER_HOUR:Lcom/texa/carelib/profile/locale/MassFlowRateUnit;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$$ExternalSyntheticLambda8;

    invoke-direct {v3, v2}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$$ExternalSyntheticLambda8;-><init>(Lcom/texa/carelib/profile/locale/MassFlowRateUnit;)V

    invoke-virtual {p0, v0, v1, p1, v3}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;->addConversion(JLjava/lang/String;Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$ConversionFunction;)Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;

    .line 217
    sget-object p1, Lcom/texa/carelib/diagresources/MeasurementUnit;->GRAM_PER_SECOND:Lcom/texa/carelib/diagresources/MeasurementUnit;

    invoke-virtual {p1}, Lcom/texa/carelib/diagresources/MeasurementUnit;->getId()J

    move-result-wide v0

    sget-object p1, Lcom/texa/carelib/profile/locale/MassFlowRateUnit;->OUNCE_PER_SECOND:Lcom/texa/carelib/profile/locale/MassFlowRateUnit;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/locale/MassFlowRateUnit;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/texa/carelib/profile/locale/MassFlowRateUnit;->GRAM_PER_SECOND:Lcom/texa/carelib/profile/locale/MassFlowRateUnit;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$$ExternalSyntheticLambda9;

    invoke-direct {v3, v2}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$$ExternalSyntheticLambda9;-><init>(Lcom/texa/carelib/profile/locale/MassFlowRateUnit;)V

    invoke-virtual {p0, v0, v1, p1, v3}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;->addConversion(JLjava/lang/String;Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$ConversionFunction;)Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;

    .line 218
    sget-object p1, Lcom/texa/carelib/diagresources/MeasurementUnit;->KILOGRAM:Lcom/texa/carelib/diagresources/MeasurementUnit;

    invoke-virtual {p1}, Lcom/texa/carelib/diagresources/MeasurementUnit;->getId()J

    move-result-wide v0

    sget-object p1, Lcom/texa/carelib/profile/locale/MassUnit;->POUND:Lcom/texa/carelib/profile/locale/MassUnit;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/locale/MassUnit;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/texa/carelib/profile/locale/MassUnit;->KILOGRAM:Lcom/texa/carelib/profile/locale/MassUnit;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$$ExternalSyntheticLambda12;

    invoke-direct {v3, v2}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$$ExternalSyntheticLambda12;-><init>(Lcom/texa/carelib/profile/locale/MassUnit;)V

    invoke-virtual {p0, v0, v1, p1, v3}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;->addConversion(JLjava/lang/String;Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$ConversionFunction;)Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;

    .line 219
    sget-object p1, Lcom/texa/carelib/diagresources/MeasurementUnit;->KILOGRAM_PER_HOUR:Lcom/texa/carelib/diagresources/MeasurementUnit;

    invoke-virtual {p1}, Lcom/texa/carelib/diagresources/MeasurementUnit;->getId()J

    move-result-wide v0

    sget-object p1, Lcom/texa/carelib/profile/locale/MassFlowRateUnit;->POUND_PER_HOUR:Lcom/texa/carelib/profile/locale/MassFlowRateUnit;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/locale/MassFlowRateUnit;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/texa/carelib/profile/locale/MassFlowRateUnit;->KILOGRAM_PER_HOUR:Lcom/texa/carelib/profile/locale/MassFlowRateUnit;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$$ExternalSyntheticLambda10;

    invoke-direct {v3, v2}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$$ExternalSyntheticLambda10;-><init>(Lcom/texa/carelib/profile/locale/MassFlowRateUnit;)V

    invoke-virtual {p0, v0, v1, p1, v3}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;->addConversion(JLjava/lang/String;Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$ConversionFunction;)Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;

    .line 220
    sget-object p1, Lcom/texa/carelib/diagresources/MeasurementUnit;->KILOMETER:Lcom/texa/carelib/diagresources/MeasurementUnit;

    invoke-virtual {p1}, Lcom/texa/carelib/diagresources/MeasurementUnit;->getId()J

    move-result-wide v0

    sget-object p1, Lcom/texa/carelib/profile/locale/DistanceUnit;->MILES:Lcom/texa/carelib/profile/locale/DistanceUnit;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/locale/DistanceUnit;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/texa/carelib/profile/locale/DistanceUnit;->KILOMETERS:Lcom/texa/carelib/profile/locale/DistanceUnit;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$$ExternalSyntheticLambda7;

    invoke-direct {v3, v2}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$$ExternalSyntheticLambda7;-><init>(Lcom/texa/carelib/profile/locale/DistanceUnit;)V

    invoke-virtual {p0, v0, v1, p1, v3}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;->addConversion(JLjava/lang/String;Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$ConversionFunction;)Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;

    .line 221
    sget-object p1, Lcom/texa/carelib/diagresources/MeasurementUnit;->KILOMETER_PER_HOUR:Lcom/texa/carelib/diagresources/MeasurementUnit;

    invoke-virtual {p1}, Lcom/texa/carelib/diagresources/MeasurementUnit;->getId()J

    move-result-wide v0

    sget-object p1, Lcom/texa/carelib/profile/locale/SpeedUnit;->MILES_PER_HOUR:Lcom/texa/carelib/profile/locale/SpeedUnit;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/locale/SpeedUnit;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/texa/carelib/profile/locale/SpeedUnit;->KILOMETERS_PER_HOUR:Lcom/texa/carelib/profile/locale/SpeedUnit;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$$ExternalSyntheticLambda14;

    invoke-direct {v3, v2}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$$ExternalSyntheticLambda14;-><init>(Lcom/texa/carelib/profile/locale/SpeedUnit;)V

    invoke-virtual {p0, v0, v1, p1, v3}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;->addConversion(JLjava/lang/String;Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$ConversionFunction;)Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;

    .line 222
    sget-object p1, Lcom/texa/carelib/diagresources/MeasurementUnit;->KILOPASCAL:Lcom/texa/carelib/diagresources/MeasurementUnit;

    invoke-virtual {p1}, Lcom/texa/carelib/diagresources/MeasurementUnit;->getId()J

    move-result-wide v0

    sget-object p1, Lcom/texa/carelib/profile/locale/PressureUnit;->PSI:Lcom/texa/carelib/profile/locale/PressureUnit;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/locale/PressureUnit;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/texa/carelib/profile/locale/PressureUnit;->KILOPASCAL:Lcom/texa/carelib/profile/locale/PressureUnit;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$$ExternalSyntheticLambda13;

    invoke-direct {v3, v2}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$$ExternalSyntheticLambda13;-><init>(Lcom/texa/carelib/profile/locale/PressureUnit;)V

    invoke-virtual {p0, v0, v1, p1, v3}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;->addConversion(JLjava/lang/String;Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$ConversionFunction;)Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;

    .line 223
    sget-object p1, Lcom/texa/carelib/diagresources/MeasurementUnit;->LITER:Lcom/texa/carelib/diagresources/MeasurementUnit;

    invoke-virtual {p1}, Lcom/texa/carelib/diagresources/MeasurementUnit;->getId()J

    move-result-wide v0

    sget-object p1, Lcom/texa/carelib/profile/locale/VolumeUnit;->GALLON_UK:Lcom/texa/carelib/profile/locale/VolumeUnit;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/locale/VolumeUnit;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/texa/carelib/profile/locale/VolumeUnit;->LITER:Lcom/texa/carelib/profile/locale/VolumeUnit;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$$ExternalSyntheticLambda4;

    invoke-direct {v3, v2}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$$ExternalSyntheticLambda4;-><init>(Lcom/texa/carelib/profile/locale/VolumeUnit;)V

    invoke-virtual {p0, v0, v1, p1, v3}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;->addConversion(JLjava/lang/String;Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$ConversionFunction;)Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;

    .line 224
    sget-object p1, Lcom/texa/carelib/diagresources/MeasurementUnit;->LITER_PER_HOUR:Lcom/texa/carelib/diagresources/MeasurementUnit;

    invoke-virtual {p1}, Lcom/texa/carelib/diagresources/MeasurementUnit;->getId()J

    move-result-wide v0

    sget-object p1, Lcom/texa/carelib/profile/locale/VolumeFlowRateUnit;->GALLON_UK_PER_HOUR:Lcom/texa/carelib/profile/locale/VolumeFlowRateUnit;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/locale/VolumeFlowRateUnit;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/texa/carelib/profile/locale/VolumeFlowRateUnit;->LITER_PER_HOUR:Lcom/texa/carelib/profile/locale/VolumeFlowRateUnit;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$$ExternalSyntheticLambda2;-><init>(Lcom/texa/carelib/profile/locale/VolumeFlowRateUnit;)V

    invoke-virtual {p0, v0, v1, p1, v3}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;->addConversion(JLjava/lang/String;Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$ConversionFunction;)Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;

    .line 225
    sget-object p1, Lcom/texa/carelib/diagresources/MeasurementUnit;->METER_PER_SQUARE_SECOND:Lcom/texa/carelib/diagresources/MeasurementUnit;

    invoke-virtual {p1}, Lcom/texa/carelib/diagresources/MeasurementUnit;->getId()J

    move-result-wide v0

    sget-object p1, Lcom/texa/carelib/profile/locale/AccelerationUnit;->YARDS_PER_SQUARE_SECOND:Lcom/texa/carelib/profile/locale/AccelerationUnit;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/locale/AccelerationUnit;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/texa/carelib/profile/locale/AccelerationUnit;->METER_PER_SQUARE_SECOND:Lcom/texa/carelib/profile/locale/AccelerationUnit;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/profile/locale/AccelerationUnit;)V

    invoke-virtual {p0, v0, v1, p1, v3}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;->addConversion(JLjava/lang/String;Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$ConversionFunction;)Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;

    .line 226
    sget-object p1, Lcom/texa/carelib/diagresources/MeasurementUnit;->MILLIGRAM_PER_CYCLE:Lcom/texa/carelib/diagresources/MeasurementUnit;

    invoke-virtual {p1}, Lcom/texa/carelib/diagresources/MeasurementUnit;->getId()J

    move-result-wide v0

    sget-object p1, Lcom/texa/carelib/profile/locale/CycleMassFlowRateUnit;->GRAIN_PER_CYCLE:Lcom/texa/carelib/profile/locale/CycleMassFlowRateUnit;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/locale/CycleMassFlowRateUnit;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/texa/carelib/profile/locale/CycleMassFlowRateUnit;->MILLIGRAM_PER_CYCLE:Lcom/texa/carelib/profile/locale/CycleMassFlowRateUnit;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$$ExternalSyntheticLambda6;

    invoke-direct {v3, v2}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$$ExternalSyntheticLambda6;-><init>(Lcom/texa/carelib/profile/locale/CycleMassFlowRateUnit;)V

    invoke-virtual {p0, v0, v1, p1, v3}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;->addConversion(JLjava/lang/String;Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$ConversionFunction;)Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;

    return-void
.end method

.method private initConversionFunctionsForUnitedStatesSystem(Landroid/util/LongSparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$ConversionFunction;",
            ">;)V"
        }
    .end annotation

    .line 198
    sget-object p1, Lcom/texa/carelib/diagresources/MeasurementUnit;->CELSIUS_DEGREE:Lcom/texa/carelib/diagresources/MeasurementUnit;

    invoke-virtual {p1}, Lcom/texa/carelib/diagresources/MeasurementUnit;->getId()J

    move-result-wide v0

    sget-object p1, Lcom/texa/carelib/profile/locale/TemperatureUnit;->FAHRENHEIT:Lcom/texa/carelib/profile/locale/TemperatureUnit;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/locale/TemperatureUnit;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/texa/carelib/profile/locale/TemperatureUnit;->CELSIUS:Lcom/texa/carelib/profile/locale/TemperatureUnit;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$$ExternalSyntheticLambda1;-><init>(Lcom/texa/carelib/profile/locale/TemperatureUnit;)V

    invoke-virtual {p0, v0, v1, p1, v3}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;->addConversion(JLjava/lang/String;Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$ConversionFunction;)Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;

    .line 199
    sget-object p1, Lcom/texa/carelib/diagresources/MeasurementUnit;->GRAM:Lcom/texa/carelib/diagresources/MeasurementUnit;

    invoke-virtual {p1}, Lcom/texa/carelib/diagresources/MeasurementUnit;->getId()J

    move-result-wide v0

    sget-object p1, Lcom/texa/carelib/profile/locale/MassUnit;->OUNCE:Lcom/texa/carelib/profile/locale/MassUnit;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/locale/MassUnit;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/texa/carelib/profile/locale/MassUnit;->GRAM:Lcom/texa/carelib/profile/locale/MassUnit;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$$ExternalSyntheticLambda11;

    invoke-direct {v3, v2}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$$ExternalSyntheticLambda11;-><init>(Lcom/texa/carelib/profile/locale/MassUnit;)V

    invoke-virtual {p0, v0, v1, p1, v3}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;->addConversion(JLjava/lang/String;Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$ConversionFunction;)Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;

    .line 200
    sget-object p1, Lcom/texa/carelib/diagresources/MeasurementUnit;->GRAM_PER_HOUR:Lcom/texa/carelib/diagresources/MeasurementUnit;

    invoke-virtual {p1}, Lcom/texa/carelib/diagresources/MeasurementUnit;->getId()J

    move-result-wide v0

    sget-object p1, Lcom/texa/carelib/profile/locale/MassFlowRateUnit;->OUNCE_PER_HOUR:Lcom/texa/carelib/profile/locale/MassFlowRateUnit;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/locale/MassFlowRateUnit;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/texa/carelib/profile/locale/MassFlowRateUnit;->GRAM_PER_HOUR:Lcom/texa/carelib/profile/locale/MassFlowRateUnit;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$$ExternalSyntheticLambda8;

    invoke-direct {v3, v2}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$$ExternalSyntheticLambda8;-><init>(Lcom/texa/carelib/profile/locale/MassFlowRateUnit;)V

    invoke-virtual {p0, v0, v1, p1, v3}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;->addConversion(JLjava/lang/String;Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$ConversionFunction;)Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;

    .line 201
    sget-object p1, Lcom/texa/carelib/diagresources/MeasurementUnit;->GRAM_PER_SECOND:Lcom/texa/carelib/diagresources/MeasurementUnit;

    invoke-virtual {p1}, Lcom/texa/carelib/diagresources/MeasurementUnit;->getId()J

    move-result-wide v0

    sget-object p1, Lcom/texa/carelib/profile/locale/MassFlowRateUnit;->OUNCE_PER_SECOND:Lcom/texa/carelib/profile/locale/MassFlowRateUnit;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/locale/MassFlowRateUnit;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/texa/carelib/profile/locale/MassFlowRateUnit;->GRAM_PER_SECOND:Lcom/texa/carelib/profile/locale/MassFlowRateUnit;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$$ExternalSyntheticLambda9;

    invoke-direct {v3, v2}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$$ExternalSyntheticLambda9;-><init>(Lcom/texa/carelib/profile/locale/MassFlowRateUnit;)V

    invoke-virtual {p0, v0, v1, p1, v3}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;->addConversion(JLjava/lang/String;Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$ConversionFunction;)Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;

    .line 202
    sget-object p1, Lcom/texa/carelib/diagresources/MeasurementUnit;->KILOGRAM:Lcom/texa/carelib/diagresources/MeasurementUnit;

    invoke-virtual {p1}, Lcom/texa/carelib/diagresources/MeasurementUnit;->getId()J

    move-result-wide v0

    sget-object p1, Lcom/texa/carelib/profile/locale/MassUnit;->POUND:Lcom/texa/carelib/profile/locale/MassUnit;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/locale/MassUnit;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/texa/carelib/profile/locale/MassUnit;->KILOGRAM:Lcom/texa/carelib/profile/locale/MassUnit;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$$ExternalSyntheticLambda12;

    invoke-direct {v3, v2}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$$ExternalSyntheticLambda12;-><init>(Lcom/texa/carelib/profile/locale/MassUnit;)V

    invoke-virtual {p0, v0, v1, p1, v3}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;->addConversion(JLjava/lang/String;Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$ConversionFunction;)Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;

    .line 203
    sget-object p1, Lcom/texa/carelib/diagresources/MeasurementUnit;->KILOGRAM_PER_HOUR:Lcom/texa/carelib/diagresources/MeasurementUnit;

    invoke-virtual {p1}, Lcom/texa/carelib/diagresources/MeasurementUnit;->getId()J

    move-result-wide v0

    sget-object p1, Lcom/texa/carelib/profile/locale/MassFlowRateUnit;->POUND_PER_HOUR:Lcom/texa/carelib/profile/locale/MassFlowRateUnit;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/locale/MassFlowRateUnit;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/texa/carelib/profile/locale/MassFlowRateUnit;->KILOGRAM_PER_HOUR:Lcom/texa/carelib/profile/locale/MassFlowRateUnit;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$$ExternalSyntheticLambda10;

    invoke-direct {v3, v2}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$$ExternalSyntheticLambda10;-><init>(Lcom/texa/carelib/profile/locale/MassFlowRateUnit;)V

    invoke-virtual {p0, v0, v1, p1, v3}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;->addConversion(JLjava/lang/String;Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$ConversionFunction;)Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;

    .line 204
    sget-object p1, Lcom/texa/carelib/diagresources/MeasurementUnit;->KILOMETER:Lcom/texa/carelib/diagresources/MeasurementUnit;

    invoke-virtual {p1}, Lcom/texa/carelib/diagresources/MeasurementUnit;->getId()J

    move-result-wide v0

    sget-object p1, Lcom/texa/carelib/profile/locale/DistanceUnit;->MILES:Lcom/texa/carelib/profile/locale/DistanceUnit;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/locale/DistanceUnit;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/texa/carelib/profile/locale/DistanceUnit;->KILOMETERS:Lcom/texa/carelib/profile/locale/DistanceUnit;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$$ExternalSyntheticLambda7;

    invoke-direct {v3, v2}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$$ExternalSyntheticLambda7;-><init>(Lcom/texa/carelib/profile/locale/DistanceUnit;)V

    invoke-virtual {p0, v0, v1, p1, v3}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;->addConversion(JLjava/lang/String;Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$ConversionFunction;)Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;

    .line 205
    sget-object p1, Lcom/texa/carelib/diagresources/MeasurementUnit;->KILOMETER_PER_HOUR:Lcom/texa/carelib/diagresources/MeasurementUnit;

    invoke-virtual {p1}, Lcom/texa/carelib/diagresources/MeasurementUnit;->getId()J

    move-result-wide v0

    sget-object p1, Lcom/texa/carelib/profile/locale/SpeedUnit;->MILES_PER_HOUR:Lcom/texa/carelib/profile/locale/SpeedUnit;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/locale/SpeedUnit;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/texa/carelib/profile/locale/SpeedUnit;->KILOMETERS_PER_HOUR:Lcom/texa/carelib/profile/locale/SpeedUnit;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$$ExternalSyntheticLambda14;

    invoke-direct {v3, v2}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$$ExternalSyntheticLambda14;-><init>(Lcom/texa/carelib/profile/locale/SpeedUnit;)V

    invoke-virtual {p0, v0, v1, p1, v3}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;->addConversion(JLjava/lang/String;Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$ConversionFunction;)Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;

    .line 206
    sget-object p1, Lcom/texa/carelib/diagresources/MeasurementUnit;->KILOPASCAL:Lcom/texa/carelib/diagresources/MeasurementUnit;

    invoke-virtual {p1}, Lcom/texa/carelib/diagresources/MeasurementUnit;->getId()J

    move-result-wide v0

    sget-object p1, Lcom/texa/carelib/profile/locale/PressureUnit;->PSI:Lcom/texa/carelib/profile/locale/PressureUnit;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/locale/PressureUnit;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/texa/carelib/profile/locale/PressureUnit;->KILOPASCAL:Lcom/texa/carelib/profile/locale/PressureUnit;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$$ExternalSyntheticLambda13;

    invoke-direct {v3, v2}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$$ExternalSyntheticLambda13;-><init>(Lcom/texa/carelib/profile/locale/PressureUnit;)V

    invoke-virtual {p0, v0, v1, p1, v3}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;->addConversion(JLjava/lang/String;Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$ConversionFunction;)Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;

    .line 207
    sget-object p1, Lcom/texa/carelib/diagresources/MeasurementUnit;->LITER:Lcom/texa/carelib/diagresources/MeasurementUnit;

    invoke-virtual {p1}, Lcom/texa/carelib/diagresources/MeasurementUnit;->getId()J

    move-result-wide v0

    sget-object p1, Lcom/texa/carelib/profile/locale/VolumeUnit;->GALLON_USA:Lcom/texa/carelib/profile/locale/VolumeUnit;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/locale/VolumeUnit;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/texa/carelib/profile/locale/VolumeUnit;->LITER:Lcom/texa/carelib/profile/locale/VolumeUnit;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$$ExternalSyntheticLambda5;

    invoke-direct {v3, v2}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$$ExternalSyntheticLambda5;-><init>(Lcom/texa/carelib/profile/locale/VolumeUnit;)V

    invoke-virtual {p0, v0, v1, p1, v3}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;->addConversion(JLjava/lang/String;Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$ConversionFunction;)Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;

    .line 208
    sget-object p1, Lcom/texa/carelib/diagresources/MeasurementUnit;->LITER_PER_HOUR:Lcom/texa/carelib/diagresources/MeasurementUnit;

    invoke-virtual {p1}, Lcom/texa/carelib/diagresources/MeasurementUnit;->getId()J

    move-result-wide v0

    sget-object p1, Lcom/texa/carelib/profile/locale/VolumeFlowRateUnit;->GALLON_USA_PER_HOUR:Lcom/texa/carelib/profile/locale/VolumeFlowRateUnit;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/locale/VolumeFlowRateUnit;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/texa/carelib/profile/locale/VolumeFlowRateUnit;->LITER_PER_HOUR:Lcom/texa/carelib/profile/locale/VolumeFlowRateUnit;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$$ExternalSyntheticLambda3;

    invoke-direct {v3, v2}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$$ExternalSyntheticLambda3;-><init>(Lcom/texa/carelib/profile/locale/VolumeFlowRateUnit;)V

    invoke-virtual {p0, v0, v1, p1, v3}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;->addConversion(JLjava/lang/String;Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$ConversionFunction;)Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;

    .line 209
    sget-object p1, Lcom/texa/carelib/diagresources/MeasurementUnit;->METER_PER_SQUARE_SECOND:Lcom/texa/carelib/diagresources/MeasurementUnit;

    invoke-virtual {p1}, Lcom/texa/carelib/diagresources/MeasurementUnit;->getId()J

    move-result-wide v0

    sget-object p1, Lcom/texa/carelib/profile/locale/AccelerationUnit;->YARDS_PER_SQUARE_SECOND:Lcom/texa/carelib/profile/locale/AccelerationUnit;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/locale/AccelerationUnit;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/texa/carelib/profile/locale/AccelerationUnit;->METER_PER_SQUARE_SECOND:Lcom/texa/carelib/profile/locale/AccelerationUnit;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/profile/locale/AccelerationUnit;)V

    invoke-virtual {p0, v0, v1, p1, v3}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;->addConversion(JLjava/lang/String;Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$ConversionFunction;)Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;

    .line 210
    sget-object p1, Lcom/texa/carelib/diagresources/MeasurementUnit;->MILLIGRAM_PER_CYCLE:Lcom/texa/carelib/diagresources/MeasurementUnit;

    invoke-virtual {p1}, Lcom/texa/carelib/diagresources/MeasurementUnit;->getId()J

    move-result-wide v0

    sget-object p1, Lcom/texa/carelib/profile/locale/CycleMassFlowRateUnit;->GRAIN_PER_CYCLE:Lcom/texa/carelib/profile/locale/CycleMassFlowRateUnit;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/locale/CycleMassFlowRateUnit;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/texa/carelib/profile/locale/CycleMassFlowRateUnit;->MILLIGRAM_PER_CYCLE:Lcom/texa/carelib/profile/locale/CycleMassFlowRateUnit;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$$ExternalSyntheticLambda6;

    invoke-direct {v3, v2}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$$ExternalSyntheticLambda6;-><init>(Lcom/texa/carelib/profile/locale/CycleMassFlowRateUnit;)V

    invoke-virtual {p0, v0, v1, p1, v3}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;->addConversion(JLjava/lang/String;Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$ConversionFunction;)Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;

    return-void
.end method


# virtual methods
.method public addConversion(JLjava/lang/String;Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$ConversionFunction;)Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;->mMeasurementUnitMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 126
    iget-object p3, p0, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;->mConversionFunctionMap:Landroid/util/LongSparseArray;

    invoke-virtual {p3, p1, p2, p4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-object p0
.end method

.method public declared-synchronized convert(DJ)D
    .locals 1

    monitor-enter p0

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;->mConversionFunctionMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p3, p4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$ConversionFunction;

    if-eqz p3, :cond_0

    .line 46
    invoke-interface {p3, p1, p2}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$ConversionFunction;->convert(D)D

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    double-to-float p1, p1

    float-to-double p1, p1

    monitor-exit p0

    return-wide p1

    .line 48
    :cond_0
    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized convert(DJI)Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;->mConversionFunctionMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p3, p4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$ConversionFunction;

    if-eqz p3, :cond_0

    .line 64
    invoke-interface {p3, p1, p2}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$ConversionFunction;->convert(D)D

    move-result-wide p1

    double-to-float p1, p1

    float-to-double p1, p1

    .line 68
    :cond_0
    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string p4, "%%.%df"

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/4 v2, 0x0

    aput-object p5, v1, v2

    invoke-static {p3, p4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 69
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p4

    new-array p5, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, p5, v2

    invoke-static {p4, p3, p5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized convert(DJILcom/texa/carelib/profile/locale/DiagnosticParameterConverter$ConvertResultFormattedCallback;)V
    .locals 0

    monitor-enter p0

    .line 92
    :try_start_0
    invoke-virtual/range {p0 .. p5}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;->convert(DJI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p4}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;->getMeasurementUnit(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p6, p1, p2}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$ConvertResultFormattedCallback;->onFormattedResult(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized convert(DJLcom/texa/carelib/profile/locale/DiagnosticParameterConverter$ConvertResultCallback;)V
    .locals 0

    monitor-enter p0

    .line 80
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;->convert(DJ)D

    move-result-wide p1

    invoke-virtual {p0, p3, p4}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;->getMeasurementUnit(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p1, p2, p3}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$ConvertResultCallback;->onResult(DLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getMeasurementSystem()Lcom/texa/carelib/profile/locale/MeasurementSystem;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;->mMeasurementSystem:Lcom/texa/carelib/profile/locale/MeasurementSystem;

    return-object v0
.end method

.method public declared-synchronized getMeasurementUnit(J)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;->mMeasurementUnitMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 105
    invoke-static {p1, p2}, Lcom/texa/carelib/diagresources/MeasurementUnit;->findById(J)Lcom/texa/carelib/diagresources/MeasurementUnit;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 107
    invoke-virtual {p1}, Lcom/texa/carelib/diagresources/MeasurementUnit;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 111
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMeasurementSystem(Lcom/texa/carelib/profile/locale/MeasurementSystem;)Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;
    .locals 1

    .line 139
    iput-object p1, p0, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;->mMeasurementSystem:Lcom/texa/carelib/profile/locale/MeasurementSystem;

    .line 140
    iget-object p1, p0, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;->mConversionFunctionMap:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Landroid/util/LongSparseArray;->clear()V

    .line 141
    iget-object p1, p0, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;->mMeasurementUnitMap:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Landroid/util/LongSparseArray;->clear()V

    .line 143
    sget-object p1, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$1;->$SwitchMap$com$texa$carelib$profile$locale$MeasurementSystem:[I

    iget-object v0, p0, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;->mMeasurementSystem:Lcom/texa/carelib/profile/locale/MeasurementSystem;

    invoke-virtual {v0}, Lcom/texa/carelib/profile/locale/MeasurementSystem;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    iget-object p1, p0, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;->mConversionFunctionMap:Landroid/util/LongSparseArray;

    invoke-direct {p0, p1}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;->initConversionFunctionsForImperialSystem(Landroid/util/LongSparseArray;)V

    goto :goto_0

    .line 145
    :cond_1
    iget-object p1, p0, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;->mConversionFunctionMap:Landroid/util/LongSparseArray;

    invoke-direct {p0, p1}, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;->initConversionFunctionsForUnitedStatesSystem(Landroid/util/LongSparseArray;)V

    :goto_0
    return-object p0
.end method
