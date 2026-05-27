.class public final enum Lcom/texa/careapp/model/ServerLogModel$LogEvent;
.super Ljava/lang/Enum;
.source "ServerLogModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/model/ServerLogModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/careapp/model/ServerLogModel$LogEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/careapp/model/ServerLogModel$LogEvent;

.field public static final enum CARE_CONN:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

.field public static final enum CARE_DISCONN:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

.field public static final enum CARE_NOT_CONF:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

.field public static final enum CARE_RECON:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

.field public static final enum CARE_STATUS:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

.field public static final enum DTCS_DETECTED:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

.field public static final enum IMPACT_DET:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

.field public static final enum IMPACT_DETECTED_BY_PHONE:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

.field public static final enum IMPACT_DETECTED_BY_PHONE_DATA_DUMP:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

.field public static final enum IMPACT_DETECTED_DATA_DUMP:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

.field public static final enum INVALID_ODOMETER:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

.field public static final enum LAMPS_ON_DETECTED:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

.field public static final enum MANUAL_SOS:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

.field public static final enum PARKING_LOC:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

.field public static final enum SOS_LOCATION_ACQUISITION:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

.field public static final enum UNDEFINED:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

.field public static final enum USER_INTERATION:Lcom/texa/careapp/model/ServerLogModel$LogEvent;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 158
    new-instance v0, Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/texa/careapp/model/ServerLogModel$LogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->UNDEFINED:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    .line 159
    new-instance v1, Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    const-string v3, "PARKING_LOC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/texa/careapp/model/ServerLogModel$LogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->PARKING_LOC:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    .line 160
    new-instance v3, Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    const-string v5, "IMPACT_DET"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/texa/careapp/model/ServerLogModel$LogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->IMPACT_DET:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    .line 161
    new-instance v5, Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    const-string v7, "CARE_CONN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/texa/careapp/model/ServerLogModel$LogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->CARE_CONN:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    .line 162
    new-instance v7, Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    const-string v9, "CARE_DISCONN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/texa/careapp/model/ServerLogModel$LogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->CARE_DISCONN:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    .line 163
    new-instance v9, Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    const-string v11, "CARE_NOT_CONF"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/texa/careapp/model/ServerLogModel$LogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->CARE_NOT_CONF:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    .line 164
    new-instance v11, Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    const-string v13, "USER_INTERATION"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/texa/careapp/model/ServerLogModel$LogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->USER_INTERATION:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    .line 165
    new-instance v13, Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    const-string v15, "SOS_LOCATION_ACQUISITION"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/texa/careapp/model/ServerLogModel$LogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->SOS_LOCATION_ACQUISITION:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    .line 166
    new-instance v15, Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    const-string v14, "IMPACT_DETECTED_BY_PHONE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/texa/careapp/model/ServerLogModel$LogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->IMPACT_DETECTED_BY_PHONE:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    .line 168
    new-instance v14, Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    const-string v12, "IMPACT_DETECTED_BY_PHONE_DATA_DUMP"

    const/16 v10, 0x9

    const/16 v8, 0xa

    invoke-direct {v14, v12, v10, v8}, Lcom/texa/careapp/model/ServerLogModel$LogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->IMPACT_DETECTED_BY_PHONE_DATA_DUMP:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    .line 169
    new-instance v12, Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    const-string v10, "MANUAL_SOS"

    const/16 v6, 0xb

    invoke-direct {v12, v10, v8, v6}, Lcom/texa/careapp/model/ServerLogModel$LogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->MANUAL_SOS:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    .line 170
    new-instance v10, Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    const-string v8, "IMPACT_DETECTED_DATA_DUMP"

    const/16 v4, 0xc

    invoke-direct {v10, v8, v6, v4}, Lcom/texa/careapp/model/ServerLogModel$LogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->IMPACT_DETECTED_DATA_DUMP:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    .line 171
    new-instance v8, Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    const-string v6, "CARE_STATUS"

    const/16 v2, 0xd

    invoke-direct {v8, v6, v4, v2}, Lcom/texa/careapp/model/ServerLogModel$LogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->CARE_STATUS:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    .line 172
    new-instance v6, Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    const-string v4, "INVALID_ODOMETER"

    move-object/from16 v16, v8

    const/16 v8, 0xe

    invoke-direct {v6, v4, v2, v8}, Lcom/texa/careapp/model/ServerLogModel$LogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->INVALID_ODOMETER:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    .line 173
    new-instance v4, Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    const-string v2, "CARE_RECON"

    move-object/from16 v17, v6

    const/16 v6, 0xf

    invoke-direct {v4, v2, v8, v6}, Lcom/texa/careapp/model/ServerLogModel$LogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->CARE_RECON:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    .line 174
    new-instance v2, Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    const-string v8, "LAMPS_ON_DETECTED"

    move-object/from16 v18, v4

    const/16 v4, 0x10

    invoke-direct {v2, v8, v6, v4}, Lcom/texa/careapp/model/ServerLogModel$LogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->LAMPS_ON_DETECTED:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    .line 175
    new-instance v8, Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    const-string v6, "DTCS_DETECTED"

    move-object/from16 v19, v2

    const/16 v2, 0x11

    invoke-direct {v8, v6, v4, v2}, Lcom/texa/careapp/model/ServerLogModel$LogEvent;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->DTCS_DETECTED:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    new-array v2, v2, [Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    const/4 v6, 0x0

    aput-object v0, v2, v6

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    aput-object v8, v2, v4

    .line 157
    sput-object v2, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->$VALUES:[Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 186
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 187
    iput p3, p0, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/careapp/model/ServerLogModel$LogEvent;
    .locals 1

    .line 157
    const-class v0, Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    return-object p0
.end method

.method public static values()[Lcom/texa/careapp/model/ServerLogModel$LogEvent;
    .locals 1

    .line 157
    sget-object v0, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->$VALUES:[Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    invoke-virtual {v0}, [Lcom/texa/careapp/model/ServerLogModel$LogEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 183
    iget v0, p0, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->value:I

    return v0
.end method
