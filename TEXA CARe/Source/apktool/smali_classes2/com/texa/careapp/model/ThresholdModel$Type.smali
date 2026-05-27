.class public final enum Lcom/texa/careapp/model/ThresholdModel$Type;
.super Ljava/lang/Enum;
.source "ThresholdModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/model/ThresholdModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/careapp/model/ThresholdModel$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/careapp/model/ThresholdModel$Type;

.field public static final enum AC_SUBSCR_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ac_subscr_exp"
    .end annotation
.end field

.field public static final enum CAR_PAYM_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "car_paym_exp"
    .end annotation
.end field

.field public static final enum EXHAUST_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "exhaust_exp"
    .end annotation
.end field

.field public static final enum GARAGE_RENT_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "garage_rent_exp"
    .end annotation
.end field

.field public static final enum GPL_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gpl_exp"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum HWY_PASS_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hwy_pass_exp"
    .end annotation
.end field

.field public static final enum INSPECTION:Lcom/texa/careapp/model/ThresholdModel$Type;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "inspection"
    .end annotation
.end field

.field public static final enum INSURANCE_2_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "insurance_2_exp"
    .end annotation
.end field

.field public static final enum INSURANCE_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "insurance_exp"
    .end annotation
.end field

.field public static final enum INS_2_PAYM_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ins_2_paym_exp"
    .end annotation
.end field

.field public static final enum INS_PAYM_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ins_paym_exp"
    .end annotation
.end field

.field public static final enum LICENCE:Lcom/texa/careapp/model/ThresholdModel$Type;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "license"
    .end annotation
.end field

.field public static final enum METH_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "meth_exp"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum PARK_SUBSCR_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "park_subscr_exp"
    .end annotation
.end field

.field public static final enum SERVICE:Lcom/texa/careapp/model/ThresholdModel$Type;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "service"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum TAX_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tax_exp"
    .end annotation
.end field

.field public static final enum TYRES_FITTING:Lcom/texa/careapp/model/ThresholdModel$Type;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tyres_fitting"
    .end annotation
.end field

.field public static final enum TYRES_SWAP:Lcom/texa/careapp/model/ThresholdModel$Type;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tyres_swap"
    .end annotation
.end field

.field public static final enum WARRANTY_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "warranty_exp"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum ZTL_PASS_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ztl_pass_exp"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 128
    new-instance v0, Lcom/texa/careapp/model/ThresholdModel$Type;

    const-string v1, "INSPECTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/careapp/model/ThresholdModel$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/careapp/model/ThresholdModel$Type;->INSPECTION:Lcom/texa/careapp/model/ThresholdModel$Type;

    .line 130
    new-instance v1, Lcom/texa/careapp/model/ThresholdModel$Type;

    const-string v3, "SERVICE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/careapp/model/ThresholdModel$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/careapp/model/ThresholdModel$Type;->SERVICE:Lcom/texa/careapp/model/ThresholdModel$Type;

    .line 133
    new-instance v3, Lcom/texa/careapp/model/ThresholdModel$Type;

    const-string v5, "TYRES_FITTING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/texa/careapp/model/ThresholdModel$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/texa/careapp/model/ThresholdModel$Type;->TYRES_FITTING:Lcom/texa/careapp/model/ThresholdModel$Type;

    .line 135
    new-instance v5, Lcom/texa/careapp/model/ThresholdModel$Type;

    const-string v7, "TYRES_SWAP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/texa/careapp/model/ThresholdModel$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/texa/careapp/model/ThresholdModel$Type;->TYRES_SWAP:Lcom/texa/careapp/model/ThresholdModel$Type;

    .line 137
    new-instance v7, Lcom/texa/careapp/model/ThresholdModel$Type;

    const-string v9, "INSURANCE_EXP"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/texa/careapp/model/ThresholdModel$Type;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/texa/careapp/model/ThresholdModel$Type;->INSURANCE_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    .line 139
    new-instance v9, Lcom/texa/careapp/model/ThresholdModel$Type;

    const-string v11, "TAX_EXP"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/texa/careapp/model/ThresholdModel$Type;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/texa/careapp/model/ThresholdModel$Type;->TAX_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    .line 141
    new-instance v11, Lcom/texa/careapp/model/ThresholdModel$Type;

    const-string v13, "INSURANCE_2_EXP"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/texa/careapp/model/ThresholdModel$Type;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/texa/careapp/model/ThresholdModel$Type;->INSURANCE_2_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    .line 143
    new-instance v13, Lcom/texa/careapp/model/ThresholdModel$Type;

    const-string v15, "GPL_EXP"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/texa/careapp/model/ThresholdModel$Type;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/texa/careapp/model/ThresholdModel$Type;->GPL_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    .line 146
    new-instance v15, Lcom/texa/careapp/model/ThresholdModel$Type;

    const-string v14, "METH_EXP"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/texa/careapp/model/ThresholdModel$Type;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/texa/careapp/model/ThresholdModel$Type;->METH_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    .line 149
    new-instance v14, Lcom/texa/careapp/model/ThresholdModel$Type;

    const-string v12, "EXHAUST_EXP"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/texa/careapp/model/ThresholdModel$Type;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/texa/careapp/model/ThresholdModel$Type;->EXHAUST_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    .line 151
    new-instance v12, Lcom/texa/careapp/model/ThresholdModel$Type;

    const-string v10, "AC_SUBSCR_EXP"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/texa/careapp/model/ThresholdModel$Type;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/texa/careapp/model/ThresholdModel$Type;->AC_SUBSCR_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    .line 153
    new-instance v10, Lcom/texa/careapp/model/ThresholdModel$Type;

    const-string v8, "PARK_SUBSCR_EXP"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/texa/careapp/model/ThresholdModel$Type;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/texa/careapp/model/ThresholdModel$Type;->PARK_SUBSCR_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    .line 155
    new-instance v8, Lcom/texa/careapp/model/ThresholdModel$Type;

    const-string v6, "GARAGE_RENT_EXP"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/texa/careapp/model/ThresholdModel$Type;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/texa/careapp/model/ThresholdModel$Type;->GARAGE_RENT_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    .line 157
    new-instance v6, Lcom/texa/careapp/model/ThresholdModel$Type;

    const-string v4, "INS_PAYM_EXP"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/texa/careapp/model/ThresholdModel$Type;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/texa/careapp/model/ThresholdModel$Type;->INS_PAYM_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    .line 159
    new-instance v4, Lcom/texa/careapp/model/ThresholdModel$Type;

    const-string v2, "INS_2_PAYM_EXP"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/texa/careapp/model/ThresholdModel$Type;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/texa/careapp/model/ThresholdModel$Type;->INS_2_PAYM_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    .line 161
    new-instance v2, Lcom/texa/careapp/model/ThresholdModel$Type;

    const-string v6, "CAR_PAYM_EXP"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/texa/careapp/model/ThresholdModel$Type;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/texa/careapp/model/ThresholdModel$Type;->CAR_PAYM_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    .line 163
    new-instance v6, Lcom/texa/careapp/model/ThresholdModel$Type;

    const-string v4, "HWY_PASS_EXP"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/texa/careapp/model/ThresholdModel$Type;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/texa/careapp/model/ThresholdModel$Type;->HWY_PASS_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    .line 165
    new-instance v4, Lcom/texa/careapp/model/ThresholdModel$Type;

    const-string v2, "ZTL_PASS_EXP"

    move-object/from16 v20, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/texa/careapp/model/ThresholdModel$Type;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/texa/careapp/model/ThresholdModel$Type;->ZTL_PASS_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    .line 167
    new-instance v2, Lcom/texa/careapp/model/ThresholdModel$Type;

    const-string v6, "WARRANTY_EXP"

    move-object/from16 v21, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/texa/careapp/model/ThresholdModel$Type;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/texa/careapp/model/ThresholdModel$Type;->WARRANTY_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    .line 170
    new-instance v6, Lcom/texa/careapp/model/ThresholdModel$Type;

    const-string v4, "LICENCE"

    move-object/from16 v22, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lcom/texa/careapp/model/ThresholdModel$Type;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/texa/careapp/model/ThresholdModel$Type;->LICENCE:Lcom/texa/careapp/model/ThresholdModel$Type;

    const/16 v4, 0x14

    new-array v4, v4, [Lcom/texa/careapp/model/ThresholdModel$Type;

    const/16 v16, 0x0

    aput-object v0, v4, v16

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    const/16 v0, 0x10

    aput-object v20, v4, v0

    const/16 v0, 0x11

    aput-object v21, v4, v0

    const/16 v0, 0x12

    aput-object v22, v4, v0

    aput-object v6, v4, v2

    .line 127
    sput-object v4, Lcom/texa/careapp/model/ThresholdModel$Type;->$VALUES:[Lcom/texa/careapp/model/ThresholdModel$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 127
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getValueOf(Ljava/lang/String;)Lcom/texa/careapp/model/ThresholdModel$Type;
    .locals 3

    if-eqz p0, :cond_14

    const-string v0, "inspection"

    .line 175
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    sget-object p0, Lcom/texa/careapp/model/ThresholdModel$Type;->INSPECTION:Lcom/texa/careapp/model/ThresholdModel$Type;

    return-object p0

    :cond_0
    const-string v0, "service"

    .line 177
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    sget-object p0, Lcom/texa/careapp/model/ThresholdModel$Type;->SERVICE:Lcom/texa/careapp/model/ThresholdModel$Type;

    return-object p0

    :cond_1
    const-string/jumbo v0, "tyres_fitting"

    .line 179
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    sget-object p0, Lcom/texa/careapp/model/ThresholdModel$Type;->TYRES_FITTING:Lcom/texa/careapp/model/ThresholdModel$Type;

    return-object p0

    :cond_2
    const-string/jumbo v0, "tyres_swap"

    .line 181
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 182
    sget-object p0, Lcom/texa/careapp/model/ThresholdModel$Type;->TYRES_SWAP:Lcom/texa/careapp/model/ThresholdModel$Type;

    return-object p0

    :cond_3
    const-string v0, "insurance_exp"

    .line 183
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 184
    sget-object p0, Lcom/texa/careapp/model/ThresholdModel$Type;->INSURANCE_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    return-object p0

    :cond_4
    const-string v0, "tax_exp"

    .line 185
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 186
    sget-object p0, Lcom/texa/careapp/model/ThresholdModel$Type;->TAX_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    return-object p0

    :cond_5
    const-string v0, "insurance_2_exp"

    .line 187
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 188
    sget-object p0, Lcom/texa/careapp/model/ThresholdModel$Type;->INSURANCE_2_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    return-object p0

    :cond_6
    const-string v0, "gpl_exp"

    .line 189
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 190
    sget-object p0, Lcom/texa/careapp/model/ThresholdModel$Type;->GPL_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    return-object p0

    :cond_7
    const-string v0, "meth_exp"

    .line 191
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 192
    sget-object p0, Lcom/texa/careapp/model/ThresholdModel$Type;->METH_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    return-object p0

    :cond_8
    const-string v0, "exhaust_exp"

    .line 193
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 194
    sget-object p0, Lcom/texa/careapp/model/ThresholdModel$Type;->EXHAUST_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    return-object p0

    :cond_9
    const-string v0, "ac_subscr_exp"

    .line 195
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 196
    sget-object p0, Lcom/texa/careapp/model/ThresholdModel$Type;->AC_SUBSCR_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    return-object p0

    :cond_a
    const-string v0, "park_subscr_exp"

    .line 197
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 198
    sget-object p0, Lcom/texa/careapp/model/ThresholdModel$Type;->PARK_SUBSCR_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    return-object p0

    :cond_b
    const-string v0, "garage_rent_exp"

    .line 199
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 200
    sget-object p0, Lcom/texa/careapp/model/ThresholdModel$Type;->GARAGE_RENT_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    return-object p0

    :cond_c
    const-string v0, "ins_paym_exp"

    .line 201
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 202
    sget-object p0, Lcom/texa/careapp/model/ThresholdModel$Type;->INS_PAYM_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    return-object p0

    :cond_d
    const-string v0, "ins_2_paym_exp"

    .line 203
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 204
    sget-object p0, Lcom/texa/careapp/model/ThresholdModel$Type;->INS_2_PAYM_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    return-object p0

    :cond_e
    const-string v0, "car_paym_exp"

    .line 205
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 206
    sget-object p0, Lcom/texa/careapp/model/ThresholdModel$Type;->CAR_PAYM_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    return-object p0

    :cond_f
    const-string v0, "hwy_pass_exp"

    .line 207
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 208
    sget-object p0, Lcom/texa/careapp/model/ThresholdModel$Type;->HWY_PASS_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    return-object p0

    :cond_10
    const-string/jumbo v0, "ztl_pass_exp"

    .line 209
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 210
    sget-object p0, Lcom/texa/careapp/model/ThresholdModel$Type;->ZTL_PASS_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    return-object p0

    :cond_11
    const-string/jumbo v0, "warranty_exp"

    .line 211
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 212
    sget-object p0, Lcom/texa/careapp/model/ThresholdModel$Type;->WARRANTY_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    return-object p0

    :cond_12
    const-string v0, "license"

    .line 213
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 214
    sget-object p0, Lcom/texa/careapp/model/ThresholdModel$Type;->LICENCE:Lcom/texa/careapp/model/ThresholdModel$Type;

    return-object p0

    .line 215
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no Threshold Type for -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "server Threshold Type can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/careapp/model/ThresholdModel$Type;
    .locals 1

    .line 127
    const-class v0, Lcom/texa/careapp/model/ThresholdModel$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/model/ThresholdModel$Type;

    return-object p0
.end method

.method public static values()[Lcom/texa/careapp/model/ThresholdModel$Type;
    .locals 1

    .line 127
    sget-object v0, Lcom/texa/careapp/model/ThresholdModel$Type;->$VALUES:[Lcom/texa/careapp/model/ThresholdModel$Type;

    invoke-virtual {v0}, [Lcom/texa/careapp/model/ThresholdModel$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/careapp/model/ThresholdModel$Type;

    return-object v0
.end method
