.class synthetic Lcom/texa/carelib/care/attitude/internal/SerialAttitude$1;
.super Ljava/lang/Object;
.source "SerialAttitude.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/care/attitude/internal/SerialAttitude;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$texa$carelib$care$attitude$AttitudeEstimationStatus:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    invoke-static {}, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;->values()[Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/texa/carelib/care/attitude/internal/SerialAttitude$1;->$SwitchMap$com$texa$carelib$care$attitude$AttitudeEstimationStatus:[I

    :try_start_0
    sget-object v1, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;->Init:Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    invoke-virtual {v1}, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/texa/carelib/care/attitude/internal/SerialAttitude$1;->$SwitchMap$com$texa$carelib$care$attitude$AttitudeEstimationStatus:[I

    sget-object v1, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;->PlaneInProgress:Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    invoke-virtual {v1}, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/texa/carelib/care/attitude/internal/SerialAttitude$1;->$SwitchMap$com$texa$carelib$care$attitude$AttitudeEstimationStatus:[I

    sget-object v1, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;->Undefined:Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    invoke-virtual {v1}, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/texa/carelib/care/attitude/internal/SerialAttitude$1;->$SwitchMap$com$texa$carelib$care$attitude$AttitudeEstimationStatus:[I

    sget-object v1, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;->Z_InProgress:Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;

    invoke-virtual {v1}, Lcom/texa/carelib/care/attitude/AttitudeEstimationStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
