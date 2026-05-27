.class public Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;
.super Lcom/texa/carelib/core/CareLibException;
.source "InvalidVehicleValueException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;
    }
.end annotation


# instance fields
.field private mDetail:I

.field private mErrorCode:Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;


# direct methods
.method public constructor <init>(Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p2}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;->mErrorCode:Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;Ljava/lang/String;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p2}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;->mErrorCode:Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;

    .line 49
    iput p3, p0, Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;->mDetail:I

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 23
    invoke-direct {p0, p2, p3}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;->mErrorCode:Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;

    return-void
.end method


# virtual methods
.method public getCode()Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;->mErrorCode:Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;

    return-object v0
.end method

.method public getDetail()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;->mDetail:I

    return v0
.end method
