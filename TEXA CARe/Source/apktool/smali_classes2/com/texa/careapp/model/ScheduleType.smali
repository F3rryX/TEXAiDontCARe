.class public final enum Lcom/texa/careapp/model/ScheduleType;
.super Ljava/lang/Enum;
.source "ScheduleType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/model/ScheduleType$TypeValue;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/careapp/model/ScheduleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/careapp/model/ScheduleType;

.field public static final enum AC_SUBSCR:Lcom/texa/careapp/model/ScheduleType;

.field public static final enum BELTS_ODO:Lcom/texa/careapp/model/ScheduleType;

.field public static final enum BELTS_TIME:Lcom/texa/careapp/model/ScheduleType;

.field public static final enum CAR_PAYM:Lcom/texa/careapp/model/ScheduleType;

.field public static final enum DIAG_SERVICE_ODO:Lcom/texa/careapp/model/ScheduleType;

.field public static final enum DIAG_SERVICE_TIME:Lcom/texa/careapp/model/ScheduleType;

.field public static final enum EXAUST:Lcom/texa/careapp/model/ScheduleType;

.field public static final enum FLUID_AUTO_ODO:Lcom/texa/careapp/model/ScheduleType;

.field public static final enum GARAGE_RENT:Lcom/texa/careapp/model/ScheduleType;

.field public static final enum HWY_PASS:Lcom/texa/careapp/model/ScheduleType;

.field public static final enum INSPECTION:Lcom/texa/careapp/model/ScheduleType;

.field public static final enum INSPECTION_GPL:Lcom/texa/careapp/model/ScheduleType;

.field public static final enum INSPECTION_METH:Lcom/texa/careapp/model/ScheduleType;

.field public static final enum INSURANCE:Lcom/texa/careapp/model/ScheduleType;

.field public static final enum INSURANCE_2:Lcom/texa/careapp/model/ScheduleType;

.field public static final enum INS_2_PAYM:Lcom/texa/careapp/model/ScheduleType;

.field public static final enum INS_PAYM:Lcom/texa/careapp/model/ScheduleType;

.field public static final enum LICENSE:Lcom/texa/careapp/model/ScheduleType;

.field public static final enum PARK_SUBSCR:Lcom/texa/careapp/model/ScheduleType;

.field public static final enum SERVICE_ODO:Lcom/texa/careapp/model/ScheduleType;

.field public static final enum SERVICE_TIME:Lcom/texa/careapp/model/ScheduleType;

.field public static final enum SOS_SERVICE:Lcom/texa/careapp/model/ScheduleType;

.field public static final enum TAX:Lcom/texa/careapp/model/ScheduleType;

.field public static final TYPE_SCHEDULE_UNEDITABLE_FORM_USER:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/ScheduleType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum TYRES_SWAP:Lcom/texa/careapp/model/ScheduleType;

.field public static final enum WARRANTY_TIME:Lcom/texa/careapp/model/ScheduleType;

.field public static final enum ZTL_PASS:Lcom/texa/careapp/model/ScheduleType;


# instance fields
.field stringRes:I

.field typeValue:Lcom/texa/careapp/model/ScheduleType$TypeValue;

.field value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 40

    .line 18
    new-instance v6, Lcom/texa/careapp/model/ScheduleType;

    sget-object v5, Lcom/texa/careapp/model/ScheduleType$TypeValue;->DATE:Lcom/texa/careapp/model/ScheduleType$TypeValue;

    const-string v1, "LICENSE"

    const/4 v2, 0x0

    const-string v3, "license"

    const v4, 0x7f110bb7

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/texa/careapp/model/ScheduleType;-><init>(Ljava/lang/String;ILjava/lang/String;ILcom/texa/careapp/model/ScheduleType$TypeValue;)V

    sput-object v6, Lcom/texa/careapp/model/ScheduleType;->LICENSE:Lcom/texa/careapp/model/ScheduleType;

    .line 19
    new-instance v0, Lcom/texa/careapp/model/ScheduleType;

    sget-object v12, Lcom/texa/careapp/model/ScheduleType$TypeValue;->DATE:Lcom/texa/careapp/model/ScheduleType$TypeValue;

    const-string v8, "TAX"

    const/4 v9, 0x1

    const-string v10, "tax"

    const v11, 0x7f110bbc

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/texa/careapp/model/ScheduleType;-><init>(Ljava/lang/String;ILjava/lang/String;ILcom/texa/careapp/model/ScheduleType$TypeValue;)V

    sput-object v0, Lcom/texa/careapp/model/ScheduleType;->TAX:Lcom/texa/careapp/model/ScheduleType;

    .line 20
    new-instance v1, Lcom/texa/careapp/model/ScheduleType;

    sget-object v18, Lcom/texa/careapp/model/ScheduleType$TypeValue;->DATE:Lcom/texa/careapp/model/ScheduleType$TypeValue;

    const-string v14, "INSURANCE"

    const/4 v15, 0x2

    const-string v16, "insurance"

    const v17, 0x7f110bb5

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/texa/careapp/model/ScheduleType;-><init>(Ljava/lang/String;ILjava/lang/String;ILcom/texa/careapp/model/ScheduleType$TypeValue;)V

    sput-object v1, Lcom/texa/careapp/model/ScheduleType;->INSURANCE:Lcom/texa/careapp/model/ScheduleType;

    .line 21
    new-instance v2, Lcom/texa/careapp/model/ScheduleType;

    sget-object v12, Lcom/texa/careapp/model/ScheduleType$TypeValue;->DATE:Lcom/texa/careapp/model/ScheduleType$TypeValue;

    const-string v8, "INSPECTION"

    const/4 v9, 0x3

    const-string v10, "inspection"

    const v11, 0x7f110bb2

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/texa/careapp/model/ScheduleType;-><init>(Ljava/lang/String;ILjava/lang/String;ILcom/texa/careapp/model/ScheduleType$TypeValue;)V

    sput-object v2, Lcom/texa/careapp/model/ScheduleType;->INSPECTION:Lcom/texa/careapp/model/ScheduleType;

    .line 22
    new-instance v3, Lcom/texa/careapp/model/ScheduleType;

    sget-object v18, Lcom/texa/careapp/model/ScheduleType$TypeValue;->DATE:Lcom/texa/careapp/model/ScheduleType$TypeValue;

    const-string v14, "DIAG_SERVICE_TIME"

    const/4 v15, 0x4

    const-string v16, "diag_service_time"

    const v17, 0x7f110bbb

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lcom/texa/careapp/model/ScheduleType;-><init>(Ljava/lang/String;ILjava/lang/String;ILcom/texa/careapp/model/ScheduleType$TypeValue;)V

    sput-object v3, Lcom/texa/careapp/model/ScheduleType;->DIAG_SERVICE_TIME:Lcom/texa/careapp/model/ScheduleType;

    .line 23
    new-instance v4, Lcom/texa/careapp/model/ScheduleType;

    sget-object v12, Lcom/texa/careapp/model/ScheduleType$TypeValue;->KM:Lcom/texa/careapp/model/ScheduleType$TypeValue;

    const-string v8, "DIAG_SERVICE_ODO"

    const/4 v9, 0x5

    const-string v10, "diag_service_odo"

    const v11, 0x7f110bbb

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lcom/texa/careapp/model/ScheduleType;-><init>(Ljava/lang/String;ILjava/lang/String;ILcom/texa/careapp/model/ScheduleType$TypeValue;)V

    sput-object v4, Lcom/texa/careapp/model/ScheduleType;->DIAG_SERVICE_ODO:Lcom/texa/careapp/model/ScheduleType;

    .line 24
    new-instance v5, Lcom/texa/careapp/model/ScheduleType;

    sget-object v18, Lcom/texa/careapp/model/ScheduleType$TypeValue;->DATE:Lcom/texa/careapp/model/ScheduleType$TypeValue;

    const-string v14, "SERVICE_TIME"

    const/4 v15, 0x6

    const-string v16, "service_time"

    const v17, 0x7f110bba

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Lcom/texa/careapp/model/ScheduleType;-><init>(Ljava/lang/String;ILjava/lang/String;ILcom/texa/careapp/model/ScheduleType$TypeValue;)V

    sput-object v5, Lcom/texa/careapp/model/ScheduleType;->SERVICE_TIME:Lcom/texa/careapp/model/ScheduleType;

    .line 25
    new-instance v13, Lcom/texa/careapp/model/ScheduleType;

    sget-object v12, Lcom/texa/careapp/model/ScheduleType$TypeValue;->KM:Lcom/texa/careapp/model/ScheduleType$TypeValue;

    const-string v8, "SERVICE_ODO"

    const/4 v9, 0x7

    const-string v10, "service_odo"

    const v11, 0x7f110bba

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lcom/texa/careapp/model/ScheduleType;-><init>(Ljava/lang/String;ILjava/lang/String;ILcom/texa/careapp/model/ScheduleType$TypeValue;)V

    sput-object v13, Lcom/texa/careapp/model/ScheduleType;->SERVICE_ODO:Lcom/texa/careapp/model/ScheduleType;

    .line 26
    new-instance v7, Lcom/texa/careapp/model/ScheduleType;

    sget-object v19, Lcom/texa/careapp/model/ScheduleType$TypeValue;->KM:Lcom/texa/careapp/model/ScheduleType$TypeValue;

    const-string v15, "TYRES_SWAP"

    const/16 v16, 0x8

    const-string/jumbo v17, "tyres_swap"

    const v18, 0x7f110bbe

    move-object v14, v7

    invoke-direct/range {v14 .. v19}, Lcom/texa/careapp/model/ScheduleType;-><init>(Ljava/lang/String;ILjava/lang/String;ILcom/texa/careapp/model/ScheduleType$TypeValue;)V

    sput-object v7, Lcom/texa/careapp/model/ScheduleType;->TYRES_SWAP:Lcom/texa/careapp/model/ScheduleType;

    .line 27
    new-instance v8, Lcom/texa/careapp/model/ScheduleType;

    sget-object v25, Lcom/texa/careapp/model/ScheduleType$TypeValue;->DATE:Lcom/texa/careapp/model/ScheduleType$TypeValue;

    const-string v21, "INSURANCE_2"

    const/16 v22, 0x9

    const-string v23, "insurance_2"

    const v24, 0x7f110bb6

    move-object/from16 v20, v8

    invoke-direct/range {v20 .. v25}, Lcom/texa/careapp/model/ScheduleType;-><init>(Ljava/lang/String;ILjava/lang/String;ILcom/texa/careapp/model/ScheduleType$TypeValue;)V

    sput-object v8, Lcom/texa/careapp/model/ScheduleType;->INSURANCE_2:Lcom/texa/careapp/model/ScheduleType;

    .line 28
    new-instance v9, Lcom/texa/careapp/model/ScheduleType;

    sget-object v19, Lcom/texa/careapp/model/ScheduleType$TypeValue;->DATE:Lcom/texa/careapp/model/ScheduleType$TypeValue;

    const-string v15, "INSPECTION_GPL"

    const/16 v16, 0xa

    const-string v17, "inspection_gpl"

    const v18, 0x7f110bb3

    move-object v14, v9

    invoke-direct/range {v14 .. v19}, Lcom/texa/careapp/model/ScheduleType;-><init>(Ljava/lang/String;ILjava/lang/String;ILcom/texa/careapp/model/ScheduleType$TypeValue;)V

    sput-object v9, Lcom/texa/careapp/model/ScheduleType;->INSPECTION_GPL:Lcom/texa/careapp/model/ScheduleType;

    .line 29
    new-instance v10, Lcom/texa/careapp/model/ScheduleType;

    sget-object v25, Lcom/texa/careapp/model/ScheduleType$TypeValue;->DATE:Lcom/texa/careapp/model/ScheduleType$TypeValue;

    const-string v21, "INSPECTION_METH"

    const/16 v22, 0xb

    const-string v23, "inspection_meth"

    const v24, 0x7f110bb4

    move-object/from16 v20, v10

    invoke-direct/range {v20 .. v25}, Lcom/texa/careapp/model/ScheduleType;-><init>(Ljava/lang/String;ILjava/lang/String;ILcom/texa/careapp/model/ScheduleType$TypeValue;)V

    sput-object v10, Lcom/texa/careapp/model/ScheduleType;->INSPECTION_METH:Lcom/texa/careapp/model/ScheduleType;

    .line 30
    new-instance v11, Lcom/texa/careapp/model/ScheduleType;

    sget-object v19, Lcom/texa/careapp/model/ScheduleType$TypeValue;->DATE:Lcom/texa/careapp/model/ScheduleType$TypeValue;

    const-string v15, "AC_SUBSCR"

    const/16 v16, 0xc

    const-string v17, "ac_subscr"

    const v18, 0x7f110ba8

    move-object v14, v11

    invoke-direct/range {v14 .. v19}, Lcom/texa/careapp/model/ScheduleType;-><init>(Ljava/lang/String;ILjava/lang/String;ILcom/texa/careapp/model/ScheduleType$TypeValue;)V

    sput-object v11, Lcom/texa/careapp/model/ScheduleType;->AC_SUBSCR:Lcom/texa/careapp/model/ScheduleType;

    .line 31
    new-instance v12, Lcom/texa/careapp/model/ScheduleType;

    sget-object v25, Lcom/texa/careapp/model/ScheduleType$TypeValue;->DATE:Lcom/texa/careapp/model/ScheduleType$TypeValue;

    const-string v21, "EXAUST"

    const/16 v22, 0xd

    const-string v23, "exhaust"

    const v24, 0x7f110bab

    move-object/from16 v20, v12

    invoke-direct/range {v20 .. v25}, Lcom/texa/careapp/model/ScheduleType;-><init>(Ljava/lang/String;ILjava/lang/String;ILcom/texa/careapp/model/ScheduleType$TypeValue;)V

    sput-object v12, Lcom/texa/careapp/model/ScheduleType;->EXAUST:Lcom/texa/careapp/model/ScheduleType;

    .line 32
    new-instance v20, Lcom/texa/careapp/model/ScheduleType;

    sget-object v19, Lcom/texa/careapp/model/ScheduleType$TypeValue;->DATE:Lcom/texa/careapp/model/ScheduleType$TypeValue;

    const-string v15, "PARK_SUBSCR"

    const/16 v16, 0xe

    const-string v17, "park_subscr"

    const v18, 0x7f110bb9

    move-object/from16 v14, v20

    invoke-direct/range {v14 .. v19}, Lcom/texa/careapp/model/ScheduleType;-><init>(Ljava/lang/String;ILjava/lang/String;ILcom/texa/careapp/model/ScheduleType$TypeValue;)V

    sput-object v20, Lcom/texa/careapp/model/ScheduleType;->PARK_SUBSCR:Lcom/texa/careapp/model/ScheduleType;

    .line 33
    new-instance v14, Lcom/texa/careapp/model/ScheduleType;

    sget-object v26, Lcom/texa/careapp/model/ScheduleType$TypeValue;->DATE:Lcom/texa/careapp/model/ScheduleType$TypeValue;

    const-string v22, "GARAGE_RENT"

    const/16 v23, 0xf

    const-string v24, "garage_rent"

    const v25, 0x7f110bae

    move-object/from16 v21, v14

    invoke-direct/range {v21 .. v26}, Lcom/texa/careapp/model/ScheduleType;-><init>(Ljava/lang/String;ILjava/lang/String;ILcom/texa/careapp/model/ScheduleType$TypeValue;)V

    sput-object v14, Lcom/texa/careapp/model/ScheduleType;->GARAGE_RENT:Lcom/texa/careapp/model/ScheduleType;

    .line 34
    new-instance v15, Lcom/texa/careapp/model/ScheduleType;

    sget-object v32, Lcom/texa/careapp/model/ScheduleType$TypeValue;->DATE:Lcom/texa/careapp/model/ScheduleType$TypeValue;

    const-string v28, "INS_PAYM"

    const/16 v29, 0x10

    const-string v30, "ins_paym"

    const v31, 0x7f110bb1

    move-object/from16 v27, v15

    invoke-direct/range {v27 .. v32}, Lcom/texa/careapp/model/ScheduleType;-><init>(Ljava/lang/String;ILjava/lang/String;ILcom/texa/careapp/model/ScheduleType$TypeValue;)V

    sput-object v15, Lcom/texa/careapp/model/ScheduleType;->INS_PAYM:Lcom/texa/careapp/model/ScheduleType;

    .line 35
    new-instance v16, Lcom/texa/careapp/model/ScheduleType;

    sget-object v26, Lcom/texa/careapp/model/ScheduleType$TypeValue;->DATE:Lcom/texa/careapp/model/ScheduleType$TypeValue;

    const-string v22, "INS_2_PAYM"

    const/16 v23, 0x11

    const-string v24, "ins_2_paym"

    const v25, 0x7f110bb0

    move-object/from16 v21, v16

    invoke-direct/range {v21 .. v26}, Lcom/texa/careapp/model/ScheduleType;-><init>(Ljava/lang/String;ILjava/lang/String;ILcom/texa/careapp/model/ScheduleType$TypeValue;)V

    sput-object v16, Lcom/texa/careapp/model/ScheduleType;->INS_2_PAYM:Lcom/texa/careapp/model/ScheduleType;

    .line 36
    new-instance v17, Lcom/texa/careapp/model/ScheduleType;

    sget-object v32, Lcom/texa/careapp/model/ScheduleType$TypeValue;->DATE:Lcom/texa/careapp/model/ScheduleType$TypeValue;

    const-string v28, "CAR_PAYM"

    const/16 v29, 0x12

    const-string v30, "car_paym"

    const v31, 0x7f110baa

    move-object/from16 v27, v17

    invoke-direct/range {v27 .. v32}, Lcom/texa/careapp/model/ScheduleType;-><init>(Ljava/lang/String;ILjava/lang/String;ILcom/texa/careapp/model/ScheduleType$TypeValue;)V

    sput-object v17, Lcom/texa/careapp/model/ScheduleType;->CAR_PAYM:Lcom/texa/careapp/model/ScheduleType;

    .line 37
    new-instance v18, Lcom/texa/careapp/model/ScheduleType;

    sget-object v26, Lcom/texa/careapp/model/ScheduleType$TypeValue;->DATE:Lcom/texa/careapp/model/ScheduleType$TypeValue;

    const-string v22, "HWY_PASS"

    const/16 v23, 0x13

    const-string v24, "hwy_pass"

    const v25, 0x7f110baf

    move-object/from16 v21, v18

    invoke-direct/range {v21 .. v26}, Lcom/texa/careapp/model/ScheduleType;-><init>(Ljava/lang/String;ILjava/lang/String;ILcom/texa/careapp/model/ScheduleType$TypeValue;)V

    sput-object v18, Lcom/texa/careapp/model/ScheduleType;->HWY_PASS:Lcom/texa/careapp/model/ScheduleType;

    .line 38
    new-instance v19, Lcom/texa/careapp/model/ScheduleType;

    sget-object v32, Lcom/texa/careapp/model/ScheduleType$TypeValue;->DATE:Lcom/texa/careapp/model/ScheduleType$TypeValue;

    const-string v28, "ZTL_PASS"

    const/16 v29, 0x14

    const-string/jumbo v30, "ztl_pass"

    const v31, 0x7f110bc1

    move-object/from16 v27, v19

    invoke-direct/range {v27 .. v32}, Lcom/texa/careapp/model/ScheduleType;-><init>(Ljava/lang/String;ILjava/lang/String;ILcom/texa/careapp/model/ScheduleType$TypeValue;)V

    sput-object v19, Lcom/texa/careapp/model/ScheduleType;->ZTL_PASS:Lcom/texa/careapp/model/ScheduleType;

    move-object/from16 v27, v15

    .line 39
    new-instance v15, Lcom/texa/careapp/model/ScheduleType;

    sget-object v26, Lcom/texa/careapp/model/ScheduleType$TypeValue;->DATE:Lcom/texa/careapp/model/ScheduleType$TypeValue;

    const-string v22, "WARRANTY_TIME"

    const/16 v23, 0x15

    const-string/jumbo v24, "warranty_time"

    const v25, 0x7f110bc0

    move-object/from16 v21, v15

    invoke-direct/range {v21 .. v26}, Lcom/texa/careapp/model/ScheduleType;-><init>(Ljava/lang/String;ILjava/lang/String;ILcom/texa/careapp/model/ScheduleType$TypeValue;)V

    sput-object v15, Lcom/texa/careapp/model/ScheduleType;->WARRANTY_TIME:Lcom/texa/careapp/model/ScheduleType;

    .line 40
    new-instance v15, Lcom/texa/careapp/model/ScheduleType;

    sget-object v33, Lcom/texa/careapp/model/ScheduleType$TypeValue;->KM:Lcom/texa/careapp/model/ScheduleType$TypeValue;

    const-string v29, "FLUID_AUTO_ODO"

    const/16 v30, 0x16

    const-string v31, "fluid_auto_odo"

    const v32, 0x7f110bad

    move-object/from16 v28, v15

    invoke-direct/range {v28 .. v33}, Lcom/texa/careapp/model/ScheduleType;-><init>(Ljava/lang/String;ILjava/lang/String;ILcom/texa/careapp/model/ScheduleType$TypeValue;)V

    sput-object v15, Lcom/texa/careapp/model/ScheduleType;->FLUID_AUTO_ODO:Lcom/texa/careapp/model/ScheduleType;

    move-object/from16 v22, v15

    .line 41
    new-instance v15, Lcom/texa/careapp/model/ScheduleType;

    sget-object v39, Lcom/texa/careapp/model/ScheduleType$TypeValue;->KM:Lcom/texa/careapp/model/ScheduleType$TypeValue;

    const-string v35, "BELTS_ODO"

    const/16 v36, 0x17

    const-string v37, "belts_odo"

    const v38, 0x7f110ba9

    move-object/from16 v34, v15

    invoke-direct/range {v34 .. v39}, Lcom/texa/careapp/model/ScheduleType;-><init>(Ljava/lang/String;ILjava/lang/String;ILcom/texa/careapp/model/ScheduleType$TypeValue;)V

    sput-object v15, Lcom/texa/careapp/model/ScheduleType;->BELTS_ODO:Lcom/texa/careapp/model/ScheduleType;

    move-object/from16 v23, v15

    .line 42
    new-instance v15, Lcom/texa/careapp/model/ScheduleType;

    sget-object v33, Lcom/texa/careapp/model/ScheduleType$TypeValue;->DATE:Lcom/texa/careapp/model/ScheduleType$TypeValue;

    const-string v29, "BELTS_TIME"

    const/16 v30, 0x18

    const-string v31, "belts_time"

    const v32, 0x7f110ba9

    move-object/from16 v28, v15

    invoke-direct/range {v28 .. v33}, Lcom/texa/careapp/model/ScheduleType;-><init>(Ljava/lang/String;ILjava/lang/String;ILcom/texa/careapp/model/ScheduleType$TypeValue;)V

    sput-object v15, Lcom/texa/careapp/model/ScheduleType;->BELTS_TIME:Lcom/texa/careapp/model/ScheduleType;

    move-object/from16 v24, v15

    .line 43
    new-instance v15, Lcom/texa/careapp/model/ScheduleType;

    sget-object v39, Lcom/texa/careapp/model/ScheduleType$TypeValue;->DATE:Lcom/texa/careapp/model/ScheduleType$TypeValue;

    const-string v35, "SOS_SERVICE"

    const/16 v36, 0x19

    const-string v37, "sos_subscr"

    const v38, 0x7f110c9c

    move-object/from16 v34, v15

    invoke-direct/range {v34 .. v39}, Lcom/texa/careapp/model/ScheduleType;-><init>(Ljava/lang/String;ILjava/lang/String;ILcom/texa/careapp/model/ScheduleType$TypeValue;)V

    sput-object v15, Lcom/texa/careapp/model/ScheduleType;->SOS_SERVICE:Lcom/texa/careapp/model/ScheduleType;

    move-object/from16 v25, v15

    const/16 v15, 0x1a

    new-array v15, v15, [Lcom/texa/careapp/model/ScheduleType;

    const/16 v26, 0x0

    aput-object v6, v15, v26

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

    aput-object v27, v15, v0

    const/16 v0, 0x11

    aput-object v16, v15, v0

    const/16 v0, 0x12

    aput-object v17, v15, v0

    const/16 v0, 0x13

    aput-object v18, v15, v0

    const/16 v0, 0x14

    aput-object v19, v15, v0

    const/16 v0, 0x15

    aput-object v21, v15, v0

    const/16 v0, 0x16

    aput-object v22, v15, v0

    const/16 v0, 0x17

    aput-object v23, v15, v0

    const/16 v0, 0x18

    aput-object v24, v15, v0

    const/16 v0, 0x19

    aput-object v25, v15, v0

    .line 16
    sput-object v15, Lcom/texa/careapp/model/ScheduleType;->$VALUES:[Lcom/texa/careapp/model/ScheduleType;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/texa/careapp/model/ScheduleType;->TYPE_SCHEDULE_UNEDITABLE_FORM_USER:Ljava/util/List;

    .line 83
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v22

    .line 89
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v23

    .line 90
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v24

    .line 91
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v25

    .line 92
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v21

    .line 93
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ILcom/texa/careapp/model/ScheduleType$TypeValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/texa/careapp/model/ScheduleType$TypeValue;",
            ")V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput-object p3, p0, Lcom/texa/careapp/model/ScheduleType;->value:Ljava/lang/String;

    .line 53
    iput p4, p0, Lcom/texa/careapp/model/ScheduleType;->stringRes:I

    .line 54
    iput-object p5, p0, Lcom/texa/careapp/model/ScheduleType;->typeValue:Lcom/texa/careapp/model/ScheduleType$TypeValue;

    return-void
.end method

.method public static lookupByValue(Ljava/lang/String;)Lcom/texa/careapp/model/ScheduleType;
    .locals 5

    .line 59
    invoke-static {}, Lcom/texa/careapp/model/ScheduleType;->values()[Lcom/texa/careapp/model/ScheduleType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 60
    iget-object v4, v3, Lcom/texa/careapp/model/ScheduleType;->value:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/careapp/model/ScheduleType;
    .locals 1

    .line 16
    const-class v0, Lcom/texa/careapp/model/ScheduleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/model/ScheduleType;

    return-object p0
.end method

.method public static values()[Lcom/texa/careapp/model/ScheduleType;
    .locals 1

    .line 16
    sget-object v0, Lcom/texa/careapp/model/ScheduleType;->$VALUES:[Lcom/texa/careapp/model/ScheduleType;

    invoke-virtual {v0}, [Lcom/texa/careapp/model/ScheduleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/careapp/model/ScheduleType;

    return-object v0
.end method


# virtual methods
.method public getStringRes()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/texa/careapp/model/ScheduleType;->stringRes:I

    return v0
.end method

.method public getTypeValue()Lcom/texa/careapp/model/ScheduleType$TypeValue;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/texa/careapp/model/ScheduleType;->typeValue:Lcom/texa/careapp/model/ScheduleType$TypeValue;

    return-object v0
.end method
