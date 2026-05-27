.class public final enum Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;
.super Ljava/lang/Enum;
.source "InvalidVehicleValueException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;

.field public static final enum DataRead:Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;

.field public static final enum DataTypeMismatch:Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;

.field public static final enum NoDataAvailable:Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;

.field public static final enum NotSupported:Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 62
    new-instance v0, Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;

    const-string v1, "NoDataAvailable"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;->NoDataAvailable:Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;

    .line 67
    new-instance v1, Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;

    const-string v3, "DataRead"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;->DataRead:Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;

    .line 72
    new-instance v3, Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;

    const-string v5, "DataTypeMismatch"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;->DataTypeMismatch:Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;

    .line 77
    new-instance v5, Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;

    const-string v7, "NotSupported"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;->NotSupported:Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 57
    sput-object v7, Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;->$VALUES:[Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;
    .locals 1

    .line 57
    const-class v0, Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;
    .locals 1

    .line 57
    sget-object v0, Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;->$VALUES:[Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;

    invoke-virtual {v0}, [Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;

    return-object v0
.end method
