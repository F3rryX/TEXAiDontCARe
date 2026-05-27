.class public final enum Lcom/texa/carelib/diagresources/MeasurementUnit;
.super Ljava/lang/Enum;
.source "MeasurementUnit.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/carelib/diagresources/MeasurementUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/carelib/diagresources/MeasurementUnit;

.field public static final enum AMPERE:Lcom/texa/carelib/diagresources/MeasurementUnit;

.field public static final enum AMPERE_PER_HOUR:Lcom/texa/carelib/diagresources/MeasurementUnit;

.field public static final enum CELSIUS_DEGREE:Lcom/texa/carelib/diagresources/MeasurementUnit;

.field public static final enum CUBIC_METER_PER_SECOND:Lcom/texa/carelib/diagresources/MeasurementUnit;

.field public static final enum DAY:Lcom/texa/carelib/diagresources/MeasurementUnit;

.field public static final enum DEGREE:Lcom/texa/carelib/diagresources/MeasurementUnit;

.field public static final enum DEGREE_PER_SECOND:Lcom/texa/carelib/diagresources/MeasurementUnit;

.field public static final enum GRAM:Lcom/texa/carelib/diagresources/MeasurementUnit;

.field public static final enum GRAM_PER_HOUR:Lcom/texa/carelib/diagresources/MeasurementUnit;

.field public static final enum GRAM_PER_SECOND:Lcom/texa/carelib/diagresources/MeasurementUnit;

.field public static final enum GRAVITY_ACCELERATION:Lcom/texa/carelib/diagresources/MeasurementUnit;

.field public static final enum HECTOPASCAL_PER_CUBIC_METER_PER_HOUR:Lcom/texa/carelib/diagresources/MeasurementUnit;

.field public static final enum HOUR:Lcom/texa/carelib/diagresources/MeasurementUnit;

.field public static final enum KILOGRAM:Lcom/texa/carelib/diagresources/MeasurementUnit;

.field public static final enum KILOGRAM_PER_100_KILOMETERS:Lcom/texa/carelib/diagresources/MeasurementUnit;

.field public static final enum KILOGRAM_PER_HOUR:Lcom/texa/carelib/diagresources/MeasurementUnit;

.field public static final enum KILOMETER:Lcom/texa/carelib/diagresources/MeasurementUnit;

.field public static final enum KILOMETER_PER_HOUR:Lcom/texa/carelib/diagresources/MeasurementUnit;

.field public static final enum KILOMETER_PER_LITER:Lcom/texa/carelib/diagresources/MeasurementUnit;

.field public static final enum KILOOHM:Lcom/texa/carelib/diagresources/MeasurementUnit;

.field public static final enum KILOPASCAL:Lcom/texa/carelib/diagresources/MeasurementUnit;

.field public static final enum KILOWATT_PER_HOUR:Lcom/texa/carelib/diagresources/MeasurementUnit;

.field public static final enum LITER:Lcom/texa/carelib/diagresources/MeasurementUnit;

.field public static final enum LITER_PER_100_KILOMETERS:Lcom/texa/carelib/diagresources/MeasurementUnit;

.field public static final enum LITER_PER_HOUR:Lcom/texa/carelib/diagresources/MeasurementUnit;

.field public static final enum METER:Lcom/texa/carelib/diagresources/MeasurementUnit;

.field public static final enum METER_PER_SQUARE_SECOND:Lcom/texa/carelib/diagresources/MeasurementUnit;

.field public static final enum MICROSECOND:Lcom/texa/carelib/diagresources/MeasurementUnit;

.field public static final enum MILLIAMPERE:Lcom/texa/carelib/diagresources/MeasurementUnit;

.field public static final enum MILLIGRAM_PER_CUBIC_METER:Lcom/texa/carelib/diagresources/MeasurementUnit;

.field public static final enum MILLIGRAM_PER_CYCLE:Lcom/texa/carelib/diagresources/MeasurementUnit;

.field public static final enum MILLIMETER:Lcom/texa/carelib/diagresources/MeasurementUnit;

.field public static final enum MILLISECOND:Lcom/texa/carelib/diagresources/MeasurementUnit;

.field public static final enum MINUTE:Lcom/texa/carelib/diagresources/MeasurementUnit;

.field public static final enum NEWTON_PER_METER:Lcom/texa/carelib/diagresources/MeasurementUnit;

.field public static final enum NONE:Lcom/texa/carelib/diagresources/MeasurementUnit;

.field public static final enum OHM:Lcom/texa/carelib/diagresources/MeasurementUnit;

.field public static final enum PART_PER_MILLION:Lcom/texa/carelib/diagresources/MeasurementUnit;

.field public static final enum PERCENTAGE:Lcom/texa/carelib/diagresources/MeasurementUnit;

.field public static final enum REVOLUTION_PER_MINUTE:Lcom/texa/carelib/diagresources/MeasurementUnit;

.field public static final enum REVOLUTION_PER_MINUTE_PER_SECOND:Lcom/texa/carelib/diagresources/MeasurementUnit;

.field public static final enum SECOND:Lcom/texa/carelib/diagresources/MeasurementUnit;

.field public static final enum STATUS:Lcom/texa/carelib/diagresources/MeasurementUnit;

.field public static final enum VOLT:Lcom/texa/carelib/diagresources/MeasurementUnit;

.field public static final enum WATT:Lcom/texa/carelib/diagresources/MeasurementUnit;

.field private static final dataIDMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/texa/carelib/diagresources/MeasurementUnit;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mId:J

.field private mSymbol:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 61

    .line 20
    new-instance v6, Lcom/texa/carelib/diagresources/MeasurementUnit;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/texa/carelib/diagresources/MeasurementUnit;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v6, Lcom/texa/carelib/diagresources/MeasurementUnit;->NONE:Lcom/texa/carelib/diagresources/MeasurementUnit;

    .line 26
    new-instance v0, Lcom/texa/carelib/diagresources/MeasurementUnit;

    const-string v8, "STATUS"

    const/4 v9, 0x1

    const-wide/16 v10, 0x1

    const-string v12, "*$*$*$"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/texa/carelib/diagresources/MeasurementUnit;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v0, Lcom/texa/carelib/diagresources/MeasurementUnit;->STATUS:Lcom/texa/carelib/diagresources/MeasurementUnit;

    .line 32
    new-instance v1, Lcom/texa/carelib/diagresources/MeasurementUnit;

    const-string v14, "AMPERE"

    const/4 v15, 0x2

    const-wide/16 v16, 0x2

    const-string v18, "A"

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/texa/carelib/diagresources/MeasurementUnit;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v1, Lcom/texa/carelib/diagresources/MeasurementUnit;->AMPERE:Lcom/texa/carelib/diagresources/MeasurementUnit;

    .line 38
    new-instance v2, Lcom/texa/carelib/diagresources/MeasurementUnit;

    const-string v8, "CELSIUS_DEGREE"

    const/4 v9, 0x3

    const-wide/16 v10, 0x3

    const-string/jumbo v12, "\u00b0C"

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/texa/carelib/diagresources/MeasurementUnit;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v2, Lcom/texa/carelib/diagresources/MeasurementUnit;->CELSIUS_DEGREE:Lcom/texa/carelib/diagresources/MeasurementUnit;

    .line 44
    new-instance v3, Lcom/texa/carelib/diagresources/MeasurementUnit;

    const-string v14, "CUBIC_METER_PER_SECOND"

    const/4 v15, 0x4

    const-wide/16 v16, 0x4

    const-string v18, "m\u00b3/s"

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lcom/texa/carelib/diagresources/MeasurementUnit;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v3, Lcom/texa/carelib/diagresources/MeasurementUnit;->CUBIC_METER_PER_SECOND:Lcom/texa/carelib/diagresources/MeasurementUnit;

    .line 50
    new-instance v4, Lcom/texa/carelib/diagresources/MeasurementUnit;

    const-string v8, "DAY"

    const/4 v9, 0x5

    const-wide/16 v10, 0x5

    const-string v12, "Days"

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lcom/texa/carelib/diagresources/MeasurementUnit;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v4, Lcom/texa/carelib/diagresources/MeasurementUnit;->DAY:Lcom/texa/carelib/diagresources/MeasurementUnit;

    .line 56
    new-instance v5, Lcom/texa/carelib/diagresources/MeasurementUnit;

    const-string v14, "DEGREE"

    const/4 v15, 0x6

    const-wide/16 v16, 0x6

    const-string/jumbo v18, "\u00b0"

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Lcom/texa/carelib/diagresources/MeasurementUnit;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v5, Lcom/texa/carelib/diagresources/MeasurementUnit;->DEGREE:Lcom/texa/carelib/diagresources/MeasurementUnit;

    .line 62
    new-instance v13, Lcom/texa/carelib/diagresources/MeasurementUnit;

    const-string v8, "DEGREE_PER_SECOND"

    const/4 v9, 0x7

    const-wide/16 v10, 0x7

    const-string/jumbo v12, "\u00b0/s"

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lcom/texa/carelib/diagresources/MeasurementUnit;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v13, Lcom/texa/carelib/diagresources/MeasurementUnit;->DEGREE_PER_SECOND:Lcom/texa/carelib/diagresources/MeasurementUnit;

    .line 68
    new-instance v7, Lcom/texa/carelib/diagresources/MeasurementUnit;

    const-string v15, "GRAM"

    const/16 v16, 0x8

    const-wide/16 v17, 0x8

    const-string v19, "g"

    move-object v14, v7

    invoke-direct/range {v14 .. v19}, Lcom/texa/carelib/diagresources/MeasurementUnit;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v7, Lcom/texa/carelib/diagresources/MeasurementUnit;->GRAM:Lcom/texa/carelib/diagresources/MeasurementUnit;

    .line 74
    new-instance v8, Lcom/texa/carelib/diagresources/MeasurementUnit;

    const-string v21, "GRAM_PER_HOUR"

    const/16 v22, 0x9

    const-wide/16 v23, 0x9

    const-string v25, "g/h"

    move-object/from16 v20, v8

    invoke-direct/range {v20 .. v25}, Lcom/texa/carelib/diagresources/MeasurementUnit;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v8, Lcom/texa/carelib/diagresources/MeasurementUnit;->GRAM_PER_HOUR:Lcom/texa/carelib/diagresources/MeasurementUnit;

    .line 80
    new-instance v9, Lcom/texa/carelib/diagresources/MeasurementUnit;

    const-string v15, "GRAM_PER_SECOND"

    const/16 v16, 0xa

    const-wide/16 v17, 0xa

    const-string v19, "g/s"

    move-object v14, v9

    invoke-direct/range {v14 .. v19}, Lcom/texa/carelib/diagresources/MeasurementUnit;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v9, Lcom/texa/carelib/diagresources/MeasurementUnit;->GRAM_PER_SECOND:Lcom/texa/carelib/diagresources/MeasurementUnit;

    .line 86
    new-instance v10, Lcom/texa/carelib/diagresources/MeasurementUnit;

    const-string v21, "HOUR"

    const/16 v22, 0xb

    const-wide/16 v23, 0xb

    const-string v25, "h"

    move-object/from16 v20, v10

    invoke-direct/range {v20 .. v25}, Lcom/texa/carelib/diagresources/MeasurementUnit;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v10, Lcom/texa/carelib/diagresources/MeasurementUnit;->HOUR:Lcom/texa/carelib/diagresources/MeasurementUnit;

    .line 92
    new-instance v11, Lcom/texa/carelib/diagresources/MeasurementUnit;

    const-string v15, "KILOGRAM"

    const/16 v16, 0xc

    const-wide/16 v17, 0xc

    const-string v19, "kg"

    move-object v14, v11

    invoke-direct/range {v14 .. v19}, Lcom/texa/carelib/diagresources/MeasurementUnit;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v11, Lcom/texa/carelib/diagresources/MeasurementUnit;->KILOGRAM:Lcom/texa/carelib/diagresources/MeasurementUnit;

    .line 98
    new-instance v12, Lcom/texa/carelib/diagresources/MeasurementUnit;

    const-string v21, "KILOGRAM_PER_100_KILOMETERS"

    const/16 v22, 0xd

    const-wide/16 v23, 0xd

    const-string v25, "kg/100km"

    move-object/from16 v20, v12

    invoke-direct/range {v20 .. v25}, Lcom/texa/carelib/diagresources/MeasurementUnit;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v12, Lcom/texa/carelib/diagresources/MeasurementUnit;->KILOGRAM_PER_100_KILOMETERS:Lcom/texa/carelib/diagresources/MeasurementUnit;

    .line 104
    new-instance v20, Lcom/texa/carelib/diagresources/MeasurementUnit;

    const-string v15, "KILOGRAM_PER_HOUR"

    const/16 v16, 0xe

    const-wide/16 v17, 0xe

    const-string v19, "kg/h"

    move-object/from16 v14, v20

    invoke-direct/range {v14 .. v19}, Lcom/texa/carelib/diagresources/MeasurementUnit;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v20, Lcom/texa/carelib/diagresources/MeasurementUnit;->KILOGRAM_PER_HOUR:Lcom/texa/carelib/diagresources/MeasurementUnit;

    .line 110
    new-instance v14, Lcom/texa/carelib/diagresources/MeasurementUnit;

    const-string v22, "KILOMETER"

    const/16 v23, 0xf

    const-wide/16 v24, 0xf

    const-string v26, "km"

    move-object/from16 v21, v14

    invoke-direct/range {v21 .. v26}, Lcom/texa/carelib/diagresources/MeasurementUnit;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v14, Lcom/texa/carelib/diagresources/MeasurementUnit;->KILOMETER:Lcom/texa/carelib/diagresources/MeasurementUnit;

    .line 116
    new-instance v15, Lcom/texa/carelib/diagresources/MeasurementUnit;

    const-string v28, "KILOMETER_PER_HOUR"

    const/16 v29, 0x10

    const-wide/16 v30, 0x10

    const-string v32, "km/h"

    move-object/from16 v27, v15

    invoke-direct/range {v27 .. v32}, Lcom/texa/carelib/diagresources/MeasurementUnit;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v15, Lcom/texa/carelib/diagresources/MeasurementUnit;->KILOMETER_PER_HOUR:Lcom/texa/carelib/diagresources/MeasurementUnit;

    .line 122
    new-instance v16, Lcom/texa/carelib/diagresources/MeasurementUnit;

    const-string v22, "KILOMETER_PER_LITER"

    const/16 v23, 0x11

    const-wide/16 v24, 0x11

    const-string v26, "km/l"

    move-object/from16 v21, v16

    invoke-direct/range {v21 .. v26}, Lcom/texa/carelib/diagresources/MeasurementUnit;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v16, Lcom/texa/carelib/diagresources/MeasurementUnit;->KILOMETER_PER_LITER:Lcom/texa/carelib/diagresources/MeasurementUnit;

    .line 128
    new-instance v17, Lcom/texa/carelib/diagresources/MeasurementUnit;

    const-string v28, "KILOPASCAL"

    const/16 v29, 0x12

    const-wide/16 v30, 0x12

    const-string v32, "kPa"

    move-object/from16 v27, v17

    invoke-direct/range {v27 .. v32}, Lcom/texa/carelib/diagresources/MeasurementUnit;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v17, Lcom/texa/carelib/diagresources/MeasurementUnit;->KILOPASCAL:Lcom/texa/carelib/diagresources/MeasurementUnit;

    .line 134
    new-instance v18, Lcom/texa/carelib/diagresources/MeasurementUnit;

    const-string v22, "LITER"

    const/16 v23, 0x13

    const-wide/16 v24, 0x13

    const-string v26, "l"

    move-object/from16 v21, v18

    invoke-direct/range {v21 .. v26}, Lcom/texa/carelib/diagresources/MeasurementUnit;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v18, Lcom/texa/carelib/diagresources/MeasurementUnit;->LITER:Lcom/texa/carelib/diagresources/MeasurementUnit;

    .line 140
    new-instance v19, Lcom/texa/carelib/diagresources/MeasurementUnit;

    const-string v28, "LITER_PER_100_KILOMETERS"

    const/16 v29, 0x14

    const-wide/16 v30, 0x14

    const-string v32, "l/100 Km"

    move-object/from16 v27, v19

    invoke-direct/range {v27 .. v32}, Lcom/texa/carelib/diagresources/MeasurementUnit;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v19, Lcom/texa/carelib/diagresources/MeasurementUnit;->LITER_PER_100_KILOMETERS:Lcom/texa/carelib/diagresources/MeasurementUnit;

    .line 146
    new-instance v27, Lcom/texa/carelib/diagresources/MeasurementUnit;

    const-string v22, "LITER_PER_HOUR"

    const/16 v23, 0x15

    const-wide/16 v24, 0x15

    const-string v26, "l/h"

    move-object/from16 v21, v27

    invoke-direct/range {v21 .. v26}, Lcom/texa/carelib/diagresources/MeasurementUnit;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v27, Lcom/texa/carelib/diagresources/MeasurementUnit;->LITER_PER_HOUR:Lcom/texa/carelib/diagresources/MeasurementUnit;

    .line 152
    new-instance v21, Lcom/texa/carelib/diagresources/MeasurementUnit;

    const-string v29, "METER_PER_SQUARE_SECOND"

    const/16 v30, 0x16

    const-wide/16 v31, 0x16

    const-string v33, "m/s\u00b2"

    move-object/from16 v28, v21

    invoke-direct/range {v28 .. v33}, Lcom/texa/carelib/diagresources/MeasurementUnit;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v21, Lcom/texa/carelib/diagresources/MeasurementUnit;->METER_PER_SQUARE_SECOND:Lcom/texa/carelib/diagresources/MeasurementUnit;

    .line 158
    new-instance v22, Lcom/texa/carelib/diagresources/MeasurementUnit;

    const-string v35, "MILLIAMPERE"

    const/16 v36, 0x17

    const-wide/16 v37, 0x17

    const-string v39, "mA"

    move-object/from16 v34, v22

    invoke-direct/range {v34 .. v39}, Lcom/texa/carelib/diagresources/MeasurementUnit;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v22, Lcom/texa/carelib/diagresources/MeasurementUnit;->MILLIAMPERE:Lcom/texa/carelib/diagresources/MeasurementUnit;

    .line 164
    new-instance v23, Lcom/texa/carelib/diagresources/MeasurementUnit;

    const-string v29, "MILLIGRAM_PER_CYCLE"

    const/16 v30, 0x18

    const-wide/16 v31, 0x18

    const-string v33, "mg/cycle"

    move-object/from16 v28, v23

    invoke-direct/range {v28 .. v33}, Lcom/texa/carelib/diagresources/MeasurementUnit;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v23, Lcom/texa/carelib/diagresources/MeasurementUnit;->MILLIGRAM_PER_CYCLE:Lcom/texa/carelib/diagresources/MeasurementUnit;

    .line 170
    new-instance v24, Lcom/texa/carelib/diagresources/MeasurementUnit;

    const-string v35, "MILLIMETER"

    const/16 v36, 0x19

    const-wide/16 v37, 0x19

    const-string v39, "mm"

    move-object/from16 v34, v24

    invoke-direct/range {v34 .. v39}, Lcom/texa/carelib/diagresources/MeasurementUnit;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v24, Lcom/texa/carelib/diagresources/MeasurementUnit;->MILLIMETER:Lcom/texa/carelib/diagresources/MeasurementUnit;

    .line 176
    new-instance v25, Lcom/texa/carelib/diagresources/MeasurementUnit;

    const-string v29, "NEWTON_PER_METER"

    const/16 v30, 0x1a

    const-wide/16 v31, 0x1a

    const-string v33, "Nm"

    move-object/from16 v28, v25

    invoke-direct/range {v28 .. v33}, Lcom/texa/carelib/diagresources/MeasurementUnit;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v25, Lcom/texa/carelib/diagresources/MeasurementUnit;->NEWTON_PER_METER:Lcom/texa/carelib/diagresources/MeasurementUnit;

    .line 182
    new-instance v26, Lcom/texa/carelib/diagresources/MeasurementUnit;

    const-string v35, "OHM"

    const/16 v36, 0x1b

    const-wide/16 v37, 0x1b

    const-string v39, "Ohm"

    move-object/from16 v34, v26

    invoke-direct/range {v34 .. v39}, Lcom/texa/carelib/diagresources/MeasurementUnit;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v26, Lcom/texa/carelib/diagresources/MeasurementUnit;->OHM:Lcom/texa/carelib/diagresources/MeasurementUnit;

    .line 188
    new-instance v34, Lcom/texa/carelib/diagresources/MeasurementUnit;

    const-string v29, "PART_PER_MILLION"

    const/16 v30, 0x1c

    const-wide/16 v31, 0x1c

    const-string v33, "ppm"

    move-object/from16 v28, v34

    invoke-direct/range {v28 .. v33}, Lcom/texa/carelib/diagresources/MeasurementUnit;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v34, Lcom/texa/carelib/diagresources/MeasurementUnit;->PART_PER_MILLION:Lcom/texa/carelib/diagresources/MeasurementUnit;

    .line 194
    new-instance v28, Lcom/texa/carelib/diagresources/MeasurementUnit;

    const-string v36, "PERCENTAGE"

    const/16 v37, 0x1d

    const-wide/16 v38, 0x1d

    const-string v40, "%"

    move-object/from16 v35, v28

    invoke-direct/range {v35 .. v40}, Lcom/texa/carelib/diagresources/MeasurementUnit;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v28, Lcom/texa/carelib/diagresources/MeasurementUnit;->PERCENTAGE:Lcom/texa/carelib/diagresources/MeasurementUnit;

    .line 200
    new-instance v29, Lcom/texa/carelib/diagresources/MeasurementUnit;

    const-string v42, "REVOLUTION_PER_MINUTE"

    const/16 v43, 0x1e

    const-wide/16 v44, 0x1e

    const-string v46, "rpm"

    move-object/from16 v41, v29

    invoke-direct/range {v41 .. v46}, Lcom/texa/carelib/diagresources/MeasurementUnit;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v29, Lcom/texa/carelib/diagresources/MeasurementUnit;->REVOLUTION_PER_MINUTE:Lcom/texa/carelib/diagresources/MeasurementUnit;

    .line 206
    new-instance v30, Lcom/texa/carelib/diagresources/MeasurementUnit;

    const-string v36, "REVOLUTION_PER_MINUTE_PER_SECOND"

    const/16 v37, 0x1f

    const-wide/16 v38, 0x1f

    const-string v40, "rpm/s"

    move-object/from16 v35, v30

    invoke-direct/range {v35 .. v40}, Lcom/texa/carelib/diagresources/MeasurementUnit;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v30, Lcom/texa/carelib/diagresources/MeasurementUnit;->REVOLUTION_PER_MINUTE_PER_SECOND:Lcom/texa/carelib/diagresources/MeasurementUnit;

    .line 212
    new-instance v31, Lcom/texa/carelib/diagresources/MeasurementUnit;

    const-string v42, "SECOND"

    const/16 v43, 0x20

    const-wide/16 v44, 0x20

    const-string v46, "s"

    move-object/from16 v41, v31

    invoke-direct/range {v41 .. v46}, Lcom/texa/carelib/diagresources/MeasurementUnit;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v31, Lcom/texa/carelib/diagresources/MeasurementUnit;->SECOND:Lcom/texa/carelib/diagresources/MeasurementUnit;

    .line 218
    new-instance v32, Lcom/texa/carelib/diagresources/MeasurementUnit;

    const-string v36, "VOLT"

    const/16 v37, 0x21

    const-wide/16 v38, 0x21

    const-string v40, "V"

    move-object/from16 v35, v32

    invoke-direct/range {v35 .. v40}, Lcom/texa/carelib/diagresources/MeasurementUnit;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v32, Lcom/texa/carelib/diagresources/MeasurementUnit;->VOLT:Lcom/texa/carelib/diagresources/MeasurementUnit;

    .line 224
    new-instance v33, Lcom/texa/carelib/diagresources/MeasurementUnit;

    const-string v42, "GRAVITY_ACCELERATION"

    const/16 v43, 0x22

    const-wide/16 v44, 0x22

    const-string v46, "g"

    move-object/from16 v41, v33

    invoke-direct/range {v41 .. v46}, Lcom/texa/carelib/diagresources/MeasurementUnit;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v33, Lcom/texa/carelib/diagresources/MeasurementUnit;->GRAVITY_ACCELERATION:Lcom/texa/carelib/diagresources/MeasurementUnit;

    .line 230
    new-instance v41, Lcom/texa/carelib/diagresources/MeasurementUnit;

    const-string v36, "METER"

    const/16 v37, 0x23

    const-wide/16 v38, 0x23

    const-string v40, "m"

    move-object/from16 v35, v41

    invoke-direct/range {v35 .. v40}, Lcom/texa/carelib/diagresources/MeasurementUnit;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v41, Lcom/texa/carelib/diagresources/MeasurementUnit;->METER:Lcom/texa/carelib/diagresources/MeasurementUnit;

    .line 236
    new-instance v35, Lcom/texa/carelib/diagresources/MeasurementUnit;

    const-string v43, "MINUTE"

    const/16 v44, 0x24

    const-wide/16 v45, 0x24

    const-string v47, "minutes"

    move-object/from16 v42, v35

    invoke-direct/range {v42 .. v47}, Lcom/texa/carelib/diagresources/MeasurementUnit;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v35, Lcom/texa/carelib/diagresources/MeasurementUnit;->MINUTE:Lcom/texa/carelib/diagresources/MeasurementUnit;

    .line 242
    new-instance v36, Lcom/texa/carelib/diagresources/MeasurementUnit;

    const-string v49, "MILLIGRAM_PER_CUBIC_METER"

    const/16 v50, 0x25

    const-wide/16 v51, 0x25

    const-string v53, "mg/m\u00b3"

    move-object/from16 v48, v36

    invoke-direct/range {v48 .. v53}, Lcom/texa/carelib/diagresources/MeasurementUnit;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v36, Lcom/texa/carelib/diagresources/MeasurementUnit;->MILLIGRAM_PER_CUBIC_METER:Lcom/texa/carelib/diagresources/MeasurementUnit;

    .line 248
    new-instance v37, Lcom/texa/carelib/diagresources/MeasurementUnit;

    const-string v43, "KILOOHM"

    const/16 v44, 0x26

    const-wide/16 v45, 0x26

    const-string v47, "kOhm"

    move-object/from16 v42, v37

    invoke-direct/range {v42 .. v47}, Lcom/texa/carelib/diagresources/MeasurementUnit;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v37, Lcom/texa/carelib/diagresources/MeasurementUnit;->KILOOHM:Lcom/texa/carelib/diagresources/MeasurementUnit;

    .line 254
    new-instance v38, Lcom/texa/carelib/diagresources/MeasurementUnit;

    const-string v49, "WATT"

    const/16 v50, 0x27

    const-wide/16 v51, 0x27

    const-string v53, "W"

    move-object/from16 v48, v38

    invoke-direct/range {v48 .. v53}, Lcom/texa/carelib/diagresources/MeasurementUnit;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v38, Lcom/texa/carelib/diagresources/MeasurementUnit;->WATT:Lcom/texa/carelib/diagresources/MeasurementUnit;

    .line 260
    new-instance v39, Lcom/texa/carelib/diagresources/MeasurementUnit;

    const-string v43, "KILOWATT_PER_HOUR"

    const/16 v44, 0x28

    const-wide/16 v45, 0x28

    const-string v47, "kW/h"

    move-object/from16 v42, v39

    invoke-direct/range {v42 .. v47}, Lcom/texa/carelib/diagresources/MeasurementUnit;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v39, Lcom/texa/carelib/diagresources/MeasurementUnit;->KILOWATT_PER_HOUR:Lcom/texa/carelib/diagresources/MeasurementUnit;

    .line 266
    new-instance v40, Lcom/texa/carelib/diagresources/MeasurementUnit;

    const-string v49, "AMPERE_PER_HOUR"

    const/16 v50, 0x29

    const-wide/16 v51, 0x29

    const-string v53, "A/h"

    move-object/from16 v48, v40

    invoke-direct/range {v48 .. v53}, Lcom/texa/carelib/diagresources/MeasurementUnit;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v40, Lcom/texa/carelib/diagresources/MeasurementUnit;->AMPERE_PER_HOUR:Lcom/texa/carelib/diagresources/MeasurementUnit;

    .line 272
    new-instance v48, Lcom/texa/carelib/diagresources/MeasurementUnit;

    const-string v43, "MICROSECOND"

    const/16 v44, 0x2a

    const-wide/16 v45, 0x2a

    const-string/jumbo v47, "\u00b5s"

    move-object/from16 v42, v48

    invoke-direct/range {v42 .. v47}, Lcom/texa/carelib/diagresources/MeasurementUnit;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v48, Lcom/texa/carelib/diagresources/MeasurementUnit;->MICROSECOND:Lcom/texa/carelib/diagresources/MeasurementUnit;

    .line 278
    new-instance v42, Lcom/texa/carelib/diagresources/MeasurementUnit;

    const-string v50, "MILLISECOND"

    const/16 v51, 0x2b

    const-wide/16 v52, 0x2b

    const-string v54, "ms"

    move-object/from16 v49, v42

    invoke-direct/range {v49 .. v54}, Lcom/texa/carelib/diagresources/MeasurementUnit;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v42, Lcom/texa/carelib/diagresources/MeasurementUnit;->MILLISECOND:Lcom/texa/carelib/diagresources/MeasurementUnit;

    .line 284
    new-instance v43, Lcom/texa/carelib/diagresources/MeasurementUnit;

    const-string v56, "HECTOPASCAL_PER_CUBIC_METER_PER_HOUR"

    const/16 v57, 0x2c

    const-wide/16 v58, 0x2c

    const-string v60, "hPa/(m\u00b3/h)"

    move-object/from16 v55, v43

    invoke-direct/range {v55 .. v60}, Lcom/texa/carelib/diagresources/MeasurementUnit;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v43, Lcom/texa/carelib/diagresources/MeasurementUnit;->HECTOPASCAL_PER_CUBIC_METER_PER_HOUR:Lcom/texa/carelib/diagresources/MeasurementUnit;

    move-object/from16 v44, v15

    const/16 v15, 0x2d

    new-array v15, v15, [Lcom/texa/carelib/diagresources/MeasurementUnit;

    const/16 v45, 0x0

    aput-object v6, v15, v45

    const/4 v6, 0x1

    aput-object v0, v15, v6

    const/4 v0, 0x2

    aput-object v1, v15, v0

    const/4 v0, 0x3

    aput-object v2, v15, v0

    const/4 v0, 0x4

    aput-object v3, v15, v0

    const/4 v0, 0x5

    aput-object v4, v15, v0

    const/4 v0, 0x6

    aput-object v5, v15, v0

    const/4 v0, 0x7

    aput-object v13, v15, v0

    const/16 v0, 0x8

    aput-object v7, v15, v0

    const/16 v0, 0x9

    aput-object v8, v15, v0

    const/16 v0, 0xa

    aput-object v9, v15, v0

    const/16 v0, 0xb

    aput-object v10, v15, v0

    const/16 v0, 0xc

    aput-object v11, v15, v0

    const/16 v0, 0xd

    aput-object v12, v15, v0

    const/16 v0, 0xe

    aput-object v20, v15, v0

    const/16 v0, 0xf

    aput-object v14, v15, v0

    const/16 v0, 0x10

    aput-object v44, v15, v0

    const/16 v0, 0x11

    aput-object v16, v15, v0

    const/16 v0, 0x12

    aput-object v17, v15, v0

    const/16 v0, 0x13

    aput-object v18, v15, v0

    const/16 v0, 0x14

    aput-object v19, v15, v0

    const/16 v0, 0x15

    aput-object v27, v15, v0

    const/16 v0, 0x16

    aput-object v21, v15, v0

    const/16 v0, 0x17

    aput-object v22, v15, v0

    const/16 v0, 0x18

    aput-object v23, v15, v0

    const/16 v0, 0x19

    aput-object v24, v15, v0

    const/16 v0, 0x1a

    aput-object v25, v15, v0

    const/16 v0, 0x1b

    aput-object v26, v15, v0

    const/16 v0, 0x1c

    aput-object v34, v15, v0

    const/16 v0, 0x1d

    aput-object v28, v15, v0

    const/16 v0, 0x1e

    aput-object v29, v15, v0

    const/16 v0, 0x1f

    aput-object v30, v15, v0

    const/16 v0, 0x20

    aput-object v31, v15, v0

    const/16 v0, 0x21

    aput-object v32, v15, v0

    const/16 v0, 0x22

    aput-object v33, v15, v0

    const/16 v0, 0x23

    aput-object v41, v15, v0

    const/16 v0, 0x24

    aput-object v35, v15, v0

    const/16 v0, 0x25

    aput-object v36, v15, v0

    const/16 v0, 0x26

    aput-object v37, v15, v0

    const/16 v0, 0x27

    aput-object v38, v15, v0

    const/16 v0, 0x28

    aput-object v39, v15, v0

    const/16 v0, 0x29

    aput-object v40, v15, v0

    const/16 v0, 0x2a

    aput-object v48, v15, v0

    const/16 v0, 0x2b

    aput-object v42, v15, v0

    const/16 v0, 0x2c

    aput-object v43, v15, v0

    .line 17
    sput-object v15, Lcom/texa/carelib/diagresources/MeasurementUnit;->$VALUES:[Lcom/texa/carelib/diagresources/MeasurementUnit;

    .line 314
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Lcom/texa/carelib/diagresources/MeasurementUnit;->dataIDMap:Landroid/util/LongSparseArray;

    .line 315
    invoke-static {}, Lcom/texa/carelib/diagresources/MeasurementUnit;->values()[Lcom/texa/carelib/diagresources/MeasurementUnit;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 316
    sget-object v4, Lcom/texa/carelib/diagresources/MeasurementUnit;->dataIDMap:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Lcom/texa/carelib/diagresources/MeasurementUnit;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 293
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 294
    iput-wide p3, p0, Lcom/texa/carelib/diagresources/MeasurementUnit;->mId:J

    .line 295
    iput-object p5, p0, Lcom/texa/carelib/diagresources/MeasurementUnit;->mSymbol:Ljava/lang/String;

    return-void
.end method

.method public static findById(J)Lcom/texa/carelib/diagresources/MeasurementUnit;
    .locals 2

    .line 327
    sget-object v0, Lcom/texa/carelib/diagresources/MeasurementUnit;->dataIDMap:Landroid/util/LongSparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/diagresources/MeasurementUnit;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/carelib/diagresources/MeasurementUnit;
    .locals 1

    .line 17
    const-class v0, Lcom/texa/carelib/diagresources/MeasurementUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/diagresources/MeasurementUnit;

    return-object p0
.end method

.method public static values()[Lcom/texa/carelib/diagresources/MeasurementUnit;
    .locals 1

    .line 17
    sget-object v0, Lcom/texa/carelib/diagresources/MeasurementUnit;->$VALUES:[Lcom/texa/carelib/diagresources/MeasurementUnit;

    invoke-virtual {v0}, [Lcom/texa/carelib/diagresources/MeasurementUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/carelib/diagresources/MeasurementUnit;

    return-object v0
.end method


# virtual methods
.method public getId()J
    .locals 2

    .line 304
    iget-wide v0, p0, Lcom/texa/carelib/diagresources/MeasurementUnit;->mId:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/texa/carelib/diagresources/MeasurementUnit;->mSymbol:Ljava/lang/String;

    return-object v0
.end method
