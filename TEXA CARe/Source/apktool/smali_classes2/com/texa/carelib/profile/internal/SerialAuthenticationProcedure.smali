.class Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;
.super Lcom/texa/carelib/profile/ProfileSubModule;
.source "SerialAuthenticationProcedure.java"

# interfaces
.implements Lcom/texa/carelib/profile/internal/AuthenticationProcedure;
.implements Lcom/texa/carelib/profile/internal/SerialProfileMessageReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State;
    }
.end annotation


# static fields
.field private static final CNONCE_BASE64_LEN:I = 0x19

.field private static final CNONCE_LEN:I = 0x10

.field public static final D:Z = false

.field private static final DIGEST_BASE64_LEN:I = 0x2d

.field public static final ENCODING:Ljava/lang/String; = "ISO-8859-1"

.field private static final PWD_LEN:I = 0x9

.field private static final SHARED_SECRET_LEN:I = 0x20

.field public static final TAG:Ljava/lang/String; = "SerialAuthenticationProcedure"

.field private static final TIMESTAMP_LEN:I = 0x4

.field private static final USER_DEFAULT:Ljava/lang/String; = "default"

.field private static final USER_LEN:I = 0x10


# instance fields
.field private mAuthenticationPIN:Ljava/lang/String;

.field private mCallback:Lcom/texa/carelib/core/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/profile/events/AuthenticationCompletedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentState:Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State;

.field private volatile mIsAuthenticating:Z

.field private final mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/profile/internal/SerialProfile;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/texa/carelib/profile/ProfileSubModule;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    const/4 p1, 0x0

    .line 71
    iput-boolean p1, p0, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->mIsAuthenticating:Z

    return-void
.end method

.method static synthetic access$100(Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;Ljava/lang/Object;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->handleCreateAuthenticationKeyCommand(Ljava/lang/Object;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    return-void
.end method

.method static synthetic access$200(Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;Lcom/texa/carelib/core/CareError;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->handleAuthenticationRequestCommand(Lcom/texa/carelib/core/CareError;)V

    return-void
.end method

.method static synthetic access$300(Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->handleGetAccessoryStatusCommand(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    return-void
.end method

.method private authenticateWithKey([B[B[B[B)V
    .locals 5

    const/4 v0, 0x6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_9

    .line 145
    array-length v3, p1

    if-nez v3, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz p2, :cond_8

    .line 152
    array-length v3, p2

    if-nez v3, :cond_1

    goto/16 :goto_2

    :cond_1
    if-eqz p3, :cond_7

    .line 159
    array-length v3, p3

    if-nez v3, :cond_2

    goto/16 :goto_1

    :cond_2
    if-eqz p4, :cond_6

    .line 167
    array-length v3, p4

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0x5a

    new-array v0, v0, [B

    .line 190
    array-length v1, p1

    const/16 v3, 0x10

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x2

    .line 193
    invoke-static {p2, p1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p2

    if-eqz p2, :cond_4

    .line 196
    array-length v1, p2

    const/16 v4, 0x19

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p2, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    const/16 p2, 0x29

    .line 199
    invoke-static {p3, p1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    if-eqz p1, :cond_5

    .line 202
    array-length p3, p1

    const/16 v1, 0x2d

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-static {p1, v2, v0, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    const/16 p1, 0x56

    .line 205
    array-length p2, p4

    const/4 p3, 0x4

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p4, v2, v0, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    sget-object p1, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State;->AuthenticationRequest:Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State;

    iput-object p1, p0, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->mCurrentState:Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State;

    .line 208
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    new-instance p2, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {p2}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 p3, 0xa3

    invoke-virtual {p2, p3}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/texa/carelib/communication/Message$Builder;->setPayload([B)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Lcom/texa/carelib/profile/internal/SerialProfile;->sendMessage(Lcom/texa/carelib/communication/Message;Z)V

    return-void

    .line 169
    :cond_6
    :goto_0
    sget-object p1, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->TAG:Ljava/lang/String;

    new-array p2, v2, [Ljava/lang/Object;

    const-string p3, "Timestamp is null or empty."

    invoke-static {p1, p3, p2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    new-instance p1, Lcom/texa/carelib/core/CareError$Builder;

    invoke-direct {p1, v1, v0}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/texa/carelib/profile/R$string;->error_care_authentication_error_invalid_digest:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->terminate(Lcom/texa/carelib/core/CareError;)V

    return-void

    .line 161
    :cond_7
    :goto_1
    sget-object p1, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->TAG:Ljava/lang/String;

    new-array p2, v2, [Ljava/lang/Object;

    const-string p3, "Digest is null or empty."

    invoke-static {p1, p3, p2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    new-instance p1, Lcom/texa/carelib/core/CareError$Builder;

    invoke-direct {p1, v1, v0}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    .line 163
    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/texa/carelib/profile/R$string;->error_care_authentication_error_invalid_digest:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    .line 162
    invoke-virtual {p0, p1}, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->terminate(Lcom/texa/carelib/core/CareError;)V

    return-void

    .line 154
    :cond_8
    :goto_2
    sget-object p1, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->TAG:Ljava/lang/String;

    new-array p2, v2, [Ljava/lang/Object;

    const-string p3, "cnonce is null or empty."

    invoke-static {p1, p3, p2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    new-instance p1, Lcom/texa/carelib/core/CareError$Builder;

    invoke-direct {p1, v1, v0}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/texa/carelib/profile/R$string;->error_care_authentication_error_invalid_cnonce:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->terminate(Lcom/texa/carelib/core/CareError;)V

    return-void

    .line 147
    :cond_9
    :goto_3
    sget-object p1, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->TAG:Ljava/lang/String;

    new-array p2, v2, [Ljava/lang/Object;

    const-string p3, "User is null or empty."

    invoke-static {p1, p3, p2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    new-instance p1, Lcom/texa/carelib/core/CareError$Builder;

    invoke-direct {p1, v1, v0}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/texa/carelib/profile/R$string;->error_care_authentication_error_invalid_user:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->terminate(Lcom/texa/carelib/core/CareError;)V

    return-void
.end method

.method private fireAuthenticationCompleted(Lcom/texa/carelib/core/CareError;)V
    .locals 2

    .line 401
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->mCallback:Lcom/texa/carelib/core/Callback;

    if-eqz v0, :cond_0

    .line 402
    new-instance v1, Lcom/texa/carelib/profile/events/AuthenticationCompletedEvent;

    invoke-direct {v1, p0, p1}, Lcom/texa/carelib/profile/events/AuthenticationCompletedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {v0, v1}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 2

    .line 443
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    invoke-virtual {v0}, Lcom/texa/carelib/profile/internal/SerialProfile;->getProfileDelegate()Lcom/texa/carelib/profile/ProfileDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    invoke-virtual {v0}, Lcom/texa/carelib/profile/internal/SerialProfile;->getProfileDelegate()Lcom/texa/carelib/profile/ProfileDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/profile/ProfileDelegate;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    .line 444
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "profile delegate not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getProfileDelegate(Lcom/texa/carelib/profile/internal/SerialProfile;)Lcom/texa/carelib/profile/ProfileDelegate;
    .locals 1

    .line 82
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/SerialProfile;->getProfileDelegate()Lcom/texa/carelib/profile/ProfileDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/SerialProfile;->getProfileDelegate()Lcom/texa/carelib/profile/ProfileDelegate;

    move-result-object p1

    return-object p1

    .line 83
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Profile delegate not set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getTimeStampByteArray(J)[B
    .locals 2

    const/4 v0, 0x4

    .line 136
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 137
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 138
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/texa/carelib/core/utils/internal/ByteBufferUtils;->putUnsignedInt(Ljava/nio/ByteBuffer;Ljava/lang/Long;)Z

    const/4 p0, 0x0

    .line 139
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 141
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static getTimeStampByteArray(Ljava/util/Date;)[B
    .locals 4

    .line 130
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 131
    invoke-static {v0, v1}, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->getTimeStampByteArray(J)[B

    move-result-object p0

    return-object p0
.end method

.method private handleAuthenticationRequestCommand(Lcom/texa/carelib/core/CareError;)V
    .locals 3

    .line 364
    sget-object v0, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Received AuthenticationRequest response"

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    .line 369
    sget-object p1, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State;->AccessoryStatusUpdate:Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State;

    iput-object p1, p0, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->mCurrentState:Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State;

    goto :goto_0

    .line 371
    :cond_0
    invoke-virtual {p0, p1}, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->terminate(Lcom/texa/carelib/core/CareError;)V

    :goto_0
    return-void
.end method

.method private handleCreateAuthenticationKeyCommand(Ljava/lang/Object;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 11

    const-string p1, "Unsupported encoding."

    const-string v0, "ISO-8859-1"

    .line 217
    sget-object v1, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Received CreateAuthenticationKey response"

    invoke-static {v1, v4, v3}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x6

    const/4 v4, 0x1

    if-nez p3, :cond_7

    .line 219
    invoke-virtual {p0}, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->getProfile()Lcom/texa/carelib/profile/internal/SerialProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/texa/carelib/profile/internal/SerialProfile;->getProfileDelegate()Lcom/texa/carelib/profile/ProfileDelegate;

    move-result-object v5

    invoke-virtual {v5}, Lcom/texa/carelib/profile/ProfileDelegate;->shouldAuthenticate()Z

    move-result v5

    if-nez v5, :cond_0

    .line 221
    new-instance p1, Lcom/texa/carelib/core/CareError$Builder;

    invoke-direct {p1, v4, v3}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/texa/carelib/profile/R$string;->error_care_authentication_disabled:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->terminate(Lcom/texa/carelib/core/CareError;)V

    return-void

    .line 226
    :cond_0
    invoke-static {p2}, Lcom/texa/carelib/profile/internal/parser/CreateAuthenticationKeyPacketParser;->parse(Lcom/texa/carelib/communication/Message;)Lcom/texa/carelib/profile/internal/parser/CreateAuthenticationKeyPacketParser$CreateAuthenticationKeyResponse;

    move-result-object p2

    if-nez p2, :cond_1

    .line 228
    new-instance p1, Lcom/texa/carelib/core/CareError$Builder;

    invoke-direct {p1, v4, v3}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/texa/carelib/profile/R$string;->error_care_authentication_command_create_authentication_invalid_response:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->terminate(Lcom/texa/carelib/core/CareError;)V

    return-void

    .line 232
    :cond_1
    invoke-virtual {p2}, Lcom/texa/carelib/profile/internal/parser/CreateAuthenticationKeyPacketParser$CreateAuthenticationKeyResponse;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1, v5, v6}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    invoke-virtual {p2}, Lcom/texa/carelib/profile/internal/parser/CreateAuthenticationKeyPacketParser$CreateAuthenticationKeyResponse;->getNonce()[B

    move-result-object v1

    if-nez v1, :cond_2

    .line 235
    new-instance p1, Lcom/texa/carelib/core/CareError$Builder;

    invoke-direct {p1, v4, v3}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/texa/carelib/profile/R$string;->error_care_authentication_command_create_authentication_invalid_nonce:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->terminate(Lcom/texa/carelib/core/CareError;)V

    return-void

    .line 244
    :cond_2
    invoke-virtual {p0}, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->getProfile()Lcom/texa/carelib/profile/internal/SerialProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/profile/internal/SerialProfile;->getProfileDelegate()Lcom/texa/carelib/profile/ProfileDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/profile/ProfileDelegate;->getSharedSecret()[B

    move-result-object v1

    .line 246
    invoke-virtual {p2}, Lcom/texa/carelib/profile/internal/parser/CreateAuthenticationKeyPacketParser$CreateAuthenticationKeyResponse;->getNonce()[B

    move-result-object p2

    .line 248
    invoke-virtual {p0}, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->getProfile()Lcom/texa/carelib/profile/internal/SerialProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/texa/carelib/profile/internal/SerialProfile;->getProfileDelegate()Lcom/texa/carelib/profile/ProfileDelegate;

    move-result-object v5

    invoke-virtual {v5}, Lcom/texa/carelib/profile/ProfileDelegate;->getUser()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0}, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->getProfile()Lcom/texa/carelib/profile/internal/SerialProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/texa/carelib/profile/internal/SerialProfile;->getProfileDelegate()Lcom/texa/carelib/profile/ProfileDelegate;

    move-result-object v5

    invoke-virtual {v5}, Lcom/texa/carelib/profile/ProfileDelegate;->getUser()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_3
    const-string v5, "default"

    .line 249
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xf

    if-le v6, v7, :cond_4

    .line 250
    invoke-virtual {v5, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 252
    :cond_4
    iget-object v6, p0, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->mAuthenticationPIN:Ljava/lang/String;

    .line 253
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x8

    if-le v7, v8, :cond_5

    .line 254
    invoke-virtual {v6, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :cond_5
    const/16 v7, 0x10

    .line 258
    :try_start_0
    invoke-virtual {v5, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 260
    sget-object v8, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->TAG:Ljava/lang/String;

    new-array v9, v2, [Ljava/lang/Object;

    invoke-static {v8, v5, p1, v9}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v5, v7, [B

    :goto_1
    const/16 v8, 0x9

    .line 265
    :try_start_1
    invoke-virtual {v6, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 267
    sget-object v6, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->TAG:Ljava/lang/String;

    new-array v9, v2, [Ljava/lang/Object;

    invoke-static {v6, v0, p1, v9}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array p1, v8, [B

    :goto_2
    new-array v0, v7, [B

    .line 279
    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    .line 280
    invoke-virtual {v6, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 291
    array-length v6, p2

    add-int/lit8 v6, v6, 0x29

    add-int/2addr v6, v7

    add-int/2addr v6, v7

    new-array v6, v6, [B

    .line 293
    array-length v9, v1

    const/16 v10, 0x20

    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v1, v2, v6, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    array-length v1, p2

    invoke-static {p2, v2, v6, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    array-length p2, p2

    add-int/2addr v10, p2

    .line 301
    array-length p2, p1

    invoke-static {p2, v8}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p1, v2, v6, v10, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v10, v8

    .line 305
    array-length p1, v5

    invoke-static {p1, v7}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v5, v2, v6, v10, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v10, v7

    .line 309
    invoke-static {v7, v7}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, v2, v6, v10, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :try_start_2
    const-string p1, "SHA-256"

    .line 317
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_3

    .line 325
    invoke-virtual {p1, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 332
    :try_start_3
    iget-object p2, p0, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    invoke-virtual {p2}, Lcom/texa/carelib/profile/internal/SerialProfile;->getProfileDelegate()Lcom/texa/carelib/profile/ProfileDelegate;

    move-result-object p2

    invoke-virtual {p2}, Lcom/texa/carelib/profile/ProfileDelegate;->getDate()Ljava/util/Date;

    move-result-object p2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception p2

    .line 334
    invoke-static {}, Lcom/texa/carelib/core/utils/internal/Utils;->getUTCNow()Ljava/util/Date;

    move-result-object v1

    .line 335
    sget-object v6, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v7, "ProfileDelegateException."

    invoke-static {v6, p2, v7, v2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object p2, v1

    .line 338
    :goto_3
    invoke-direct {p0, p2}, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->isValidAuthenticationDate(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 339
    invoke-static {p2}, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->getTimeStampByteArray(Ljava/util/Date;)[B

    move-result-object p2

    .line 340
    invoke-direct {p0, v5, v0, p1, p2}, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->authenticateWithKey([B[B[B[B)V

    goto :goto_4

    .line 342
    :cond_6
    new-instance p1, Lcom/texa/carelib/core/CareError$Builder;

    invoke-direct {p1, v4, v3}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/texa/carelib/profile/R$string;->error_care_authentication_command_create_authentication_fails:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/texa/carelib/core/CareError$Builder;->setInnerError(Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->terminate(Lcom/texa/carelib/core/CareError;)V

    goto :goto_4

    :catch_3
    move-exception p1

    .line 319
    sget-object p2, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->TAG:Ljava/lang/String;

    new-array p3, v2, [Ljava/lang/Object;

    const-string v0, "Encryption error"

    invoke-static {p2, p1, v0, p3}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 321
    new-instance p1, Lcom/texa/carelib/core/CareError$Builder;

    invoke-direct {p1, v4, v3}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/texa/carelib/profile/R$string;->error_care_authentication_command_create_authentication_encryption_error:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->terminate(Lcom/texa/carelib/core/CareError;)V

    return-void

    .line 345
    :cond_7
    new-instance p1, Lcom/texa/carelib/core/CareError$Builder;

    invoke-direct {p1, v4, v3}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/texa/carelib/profile/R$string;->error_care_authentication_command_create_authentication_fails:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/texa/carelib/core/CareError$Builder;->setInnerError(Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->terminate(Lcom/texa/carelib/core/CareError;)V

    :goto_4
    return-void
.end method

.method private handleGetAccessoryStatusCommand(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 4

    .line 386
    sget-object v0, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Received GetStatus notification."

    invoke-static {v0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p2, :cond_1

    .line 388
    invoke-static {p1}, Lcom/texa/carelib/profile/internal/parser/GetStatusPacketParser;->parse(Lcom/texa/carelib/communication/Message;)Lcom/texa/carelib/profile/internal/parser/GetStatusPacketParser$GetStatusResponse;

    move-result-object p1

    .line 389
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/parser/GetStatusPacketParser$GetStatusResponse;->isHostAuthenticated()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 390
    sget-object p1, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State;->GetSupportedCommands:Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State;

    iput-object p1, p0, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->mCurrentState:Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State;

    .line 391
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    new-instance p2, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {p2}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v0, 0xef

    invoke-virtual {p2, v0}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lcom/texa/carelib/profile/internal/SerialProfile;->sendMessage(Lcom/texa/carelib/communication/Message;Z)V

    goto :goto_0

    .line 393
    :cond_0
    new-instance p1, Lcom/texa/carelib/core/CareError$Builder;

    const/4 p2, 0x1

    const/4 v0, 0x6

    invoke-direct {p1, p2, v0}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    const-string p2, "Device notify not authenticated state."

    invoke-virtual {p1, p2}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->terminate(Lcom/texa/carelib/core/CareError;)V

    goto :goto_0

    .line 396
    :cond_1
    invoke-virtual {p0, p2}, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->terminate(Lcom/texa/carelib/core/CareError;)V

    :goto_0
    return-void
.end method

.method private isValidAuthenticationDate(Ljava/util/Date;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 353
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 354
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p1, 0x1

    .line 356
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0x7df

    if-ge v1, v2, :cond_1

    return v0

    :cond_1
    return p1
.end method


# virtual methods
.method public declared-synchronized beginAuthentication(Ljava/lang/String;Lcom/texa/carelib/core/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/profile/events/AuthenticationCompletedEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    invoke-direct {p0, v0}, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->getProfileDelegate(Lcom/texa/carelib/profile/internal/SerialProfile;)Lcom/texa/carelib/profile/ProfileDelegate;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lcom/texa/carelib/profile/ProfileDelegate;->shouldAuthenticate()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 105
    sget-object p1, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->TAG:Ljava/lang/String;

    const-string v0, "Authentication seems to be disabled by the customer."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/texa/carelib/core/logging/CareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    new-instance p1, Lcom/texa/carelib/profile/events/AuthenticationCompletedEvent;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/texa/carelib/profile/events/AuthenticationCompletedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {p2, p1}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    monitor-exit p0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 114
    :try_start_1
    invoke-virtual {p0}, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->isAuthenticating()Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    sget-object v0, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->TAG:Ljava/lang/String;

    const-string v2, "Begin authentication..."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x1

    .line 119
    iput-boolean v2, p0, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->mIsAuthenticating:Z

    .line 120
    iput-object p2, p0, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->mCallback:Lcom/texa/carelib/core/Callback;

    .line 121
    iput-object p1, p0, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->mAuthenticationPIN:Ljava/lang/String;

    const-string p1, "Sending create authentication key..."

    new-array p2, v1, [Ljava/lang/Object;

    .line 123
    invoke-static {v0, p1, p2}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    sget-object p1, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State;->CreateAuthenticationKey:Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State;

    iput-object p1, p0, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->mCurrentState:Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State;

    .line 125
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    new-instance p2, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {p2}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v0, 0xa2

    invoke-virtual {p2, v0}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lcom/texa/carelib/profile/internal/SerialProfile;->sendMessage(Lcom/texa/carelib/communication/Message;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    .line 115
    :cond_1
    :try_start_2
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string p2, "Authentication procedure already running"

    invoke-direct {p1, p2}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 111
    :cond_2
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string p2, "Could not authenticate with a null authentication pin."

    invoke-direct {p1, p2}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic getProfile()Lcom/texa/carelib/profile/Profile;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->getProfile()Lcom/texa/carelib/profile/internal/SerialProfile;

    move-result-object v0

    return-object v0
.end method

.method public getProfile()Lcom/texa/carelib/profile/internal/SerialProfile;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    return-object v0
.end method

.method handleGetSupportedCommandsCommand(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 3

    .line 377
    sget-object v0, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Received GetSupportedCommands response"

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 378
    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getStatus()I

    move-result p1

    const/16 v0, 0x7e

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 379
    invoke-virtual {p0, p1}, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->terminate(Lcom/texa/carelib/core/CareError;)V

    goto :goto_0

    .line 381
    :cond_0
    invoke-virtual {p0, p2}, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->terminate(Lcom/texa/carelib/core/CareError;)V

    :goto_0
    return-void
.end method

.method public isAuthenticating()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->mIsAuthenticating:Z

    return v0
.end method

.method public onCommunicationStatusChanged(Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;)V
    .locals 3

    .line 425
    sget-object v0, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$1;->$SwitchMap$com$texa$carelib$communication$CommunicationStatus:[I

    invoke-virtual {p1}, Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;->getCommunicationStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/communication/CommunicationStatus;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 436
    :cond_0
    sget-object p1, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State;->Idle:Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State;

    iput-object p1, p0, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->mCurrentState:Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State;

    goto :goto_0

    .line 430
    :cond_1
    sget-object p1, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Not connected!!"

    invoke-static {p1, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 431
    invoke-virtual {p0}, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->isAuthenticating()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 432
    new-instance p1, Lcom/texa/carelib/core/CareError$Builder;

    const/16 v1, 0x13

    invoke-direct {p1, v0, v1}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/texa/carelib/profile/R$string;->error_connection_lost:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->terminate(Lcom/texa/carelib/core/CareError;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onMessageReceived(Ljava/lang/Object;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->mCurrentState:Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State;->onMessageReceived(Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;Ljava/lang/Object;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    return-void
.end method

.method terminate(Lcom/texa/carelib/core/CareError;)V
    .locals 4

    .line 407
    sget-object v0, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Terminating authentication procedure..."

    invoke-static {v0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 408
    iput-boolean v1, p0, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->mIsAuthenticating:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 413
    new-instance v1, Lcom/texa/carelib/core/CareError$Builder;

    const/4 v2, 0x1

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/texa/carelib/profile/R$string;->error_care_authentication_fails:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/texa/carelib/core/CareError$Builder;->setInnerError(Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 416
    :goto_0
    invoke-direct {p0, p1}, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->fireAuthenticationCompleted(Lcom/texa/carelib/core/CareError;)V

    .line 419
    iput-object v0, p0, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->mCallback:Lcom/texa/carelib/core/Callback;

    .line 420
    sget-object p1, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State;->Idle:Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State;

    iput-object p1, p0, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->mCurrentState:Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State;

    return-void
.end method
