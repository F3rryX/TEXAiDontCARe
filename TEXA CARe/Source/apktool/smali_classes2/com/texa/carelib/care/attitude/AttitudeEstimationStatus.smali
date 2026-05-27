.class public final enum Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;
.super Ljava/lang/Enum;
.source "AttitudeEstimationStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

.field public static final enum Complete:Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

.field public static final enum EstimationError:Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

.field public static final enum Init:Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

.field public static final enum PlaneInProgress:Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

.field public static final enum Undefined:Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

.field public static final enum WaitingCalibrationCommand:Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

.field public static final enum Z_Aborted:Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

.field public static final enum Z_InProgress:Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

.field public static final enum Z_InProgressWaitingSpeed:Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 16
    new-instance v0, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    const-string v1, "Undefined"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;->Undefined:Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    .line 21
    new-instance v1, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    const-string v3, "Init"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;->Init:Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    .line 27
    new-instance v3, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    const-string v5, "WaitingCalibrationCommand"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;->WaitingCalibrationCommand:Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    .line 34
    new-instance v5, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    const-string v7, "Z_InProgress"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;->Z_InProgress:Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    .line 41
    new-instance v7, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    const-string v9, "Z_InProgressWaitingSpeed"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;->Z_InProgressWaitingSpeed:Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    .line 46
    new-instance v9, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    const-string v11, "PlaneInProgress"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;->PlaneInProgress:Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    .line 51
    new-instance v11, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    const-string v13, "Complete"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;->Complete:Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    .line 56
    new-instance v13, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    const-string v15, "EstimationError"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;->EstimationError:Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    .line 61
    new-instance v15, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    const-string v14, "Z_Aborted"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;->Z_Aborted:Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    .line 11
    sput-object v14, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;->$VALUES:[Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;
    .locals 1

    .line 11
    const-class v0, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    return-object p0
.end method

.method public static values()[Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;
    .locals 1

    .line 11
    sget-object v0, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;->$VALUES:[Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    invoke-virtual {v0}, [Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    return-object v0
.end method
