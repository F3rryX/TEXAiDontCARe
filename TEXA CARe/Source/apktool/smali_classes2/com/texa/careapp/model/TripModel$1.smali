.class synthetic Lcom/texa/careapp/model/TripModel$1;
.super Ljava/lang/Object;
.source "TripModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/model/TripModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$texa$carelib$care$trips$TripEndInfo$OdometerEstimationMethod:[I

.field static final synthetic $SwitchMap$com$texa$carelib$care$trips$TripEndInfo$TripEndCause:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 233
    invoke-static {}, Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;->values()[Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/texa/careapp/model/TripModel$1;->$SwitchMap$com$texa$carelib$care$trips$TripEndInfo$TripEndCause:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;->ExternalCommand:Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;

    invoke-virtual {v2}, Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/texa/careapp/model/TripModel$1;->$SwitchMap$com$texa$carelib$care$trips$TripEndInfo$TripEndCause:[I

    sget-object v3, Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;->LowRPM:Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;

    invoke-virtual {v3}, Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v2, Lcom/texa/careapp/model/TripModel$1;->$SwitchMap$com$texa$carelib$care$trips$TripEndInfo$TripEndCause:[I

    sget-object v3, Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;->CommunicationLost:Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;

    invoke-virtual {v3}, Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v2, Lcom/texa/careapp/model/TripModel$1;->$SwitchMap$com$texa$carelib$care$trips$TripEndInfo$TripEndCause:[I

    sget-object v3, Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;->LowBatteryVoltage:Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;

    invoke-virtual {v3}, Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;->ordinal()I

    move-result v3

    const/4 v4, 0x4

    aput v4, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 218
    :catch_3
    invoke-static {}, Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;->values()[Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/texa/careapp/model/TripModel$1;->$SwitchMap$com$texa$carelib$care$trips$TripEndInfo$OdometerEstimationMethod:[I

    :try_start_4
    sget-object v3, Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;->Diagnostic:Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;

    invoke-virtual {v3}, Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Lcom/texa/careapp/model/TripModel$1;->$SwitchMap$com$texa$carelib$care$trips$TripEndInfo$OdometerEstimationMethod:[I

    sget-object v2, Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;->Estimated:Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;

    invoke-virtual {v2}, Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
