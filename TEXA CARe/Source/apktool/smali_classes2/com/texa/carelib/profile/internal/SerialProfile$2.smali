.class synthetic Lcom/texa/carelib/profile/internal/SerialProfile$2;
.super Ljava/lang/Object;
.source "SerialProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/profile/internal/SerialProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$texa$carelib$profile$internal$SerialProfile$DataWriterTaskState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 633
    invoke-static {}, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;->values()[Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/texa/carelib/profile/internal/SerialProfile$2;->$SwitchMap$com$texa$carelib$profile$internal$SerialProfile$DataWriterTaskState:[I

    :try_start_0
    sget-object v1, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;->Idle:Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;

    invoke-virtual {v1}, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/texa/carelib/profile/internal/SerialProfile$2;->$SwitchMap$com$texa$carelib$profile$internal$SerialProfile$DataWriterTaskState:[I

    sget-object v1, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;->SendMessage:Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;

    invoke-virtual {v1}, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/texa/carelib/profile/internal/SerialProfile$2;->$SwitchMap$com$texa$carelib$profile$internal$SerialProfile$DataWriterTaskState:[I

    sget-object v1, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;->WaitResponse:Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;

    invoke-virtual {v1}, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/texa/carelib/profile/internal/SerialProfile$2;->$SwitchMap$com$texa$carelib$profile$internal$SerialProfile$DataWriterTaskState:[I

    sget-object v1, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;->ResponseReceived:Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;

    invoke-virtual {v1}, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/texa/carelib/profile/internal/SerialProfile$2;->$SwitchMap$com$texa$carelib$profile$internal$SerialProfile$DataWriterTaskState:[I

    sget-object v1, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;->Timeout:Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;

    invoke-virtual {v1}, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
