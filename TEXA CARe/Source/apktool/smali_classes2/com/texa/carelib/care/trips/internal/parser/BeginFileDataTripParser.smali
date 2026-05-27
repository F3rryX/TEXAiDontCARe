.class public Lcom/texa/carelib/care/trips/internal/parser/BeginFileDataTripParser;
.super Ljava/lang/Object;
.source "BeginFileDataTripParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/care/trips/internal/parser/BeginFileDataTripParser$BeginFileDataTripResponse;
    }
.end annotation


# static fields
.field private static final INDEX_FILE_SIZE:I = 0x1

.field private static final INDEX_FILE_TYPE:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lcom/texa/carelib/communication/Message;)Lcom/texa/carelib/care/trips/internal/parser/BeginFileDataTripParser$BeginFileDataTripResponse;
    .locals 6

    if-nez p0, :cond_0

    .line 38
    new-instance p0, Lcom/texa/carelib/care/trips/internal/parser/BeginFileDataTripParser$BeginFileDataTripResponse;

    invoke-direct {p0}, Lcom/texa/carelib/care/trips/internal/parser/BeginFileDataTripParser$BeginFileDataTripResponse;-><init>()V

    return-object p0

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getStatus()I

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    new-instance p0, Lcom/texa/carelib/care/trips/internal/parser/BeginFileDataTripParser$BeginFileDataTripResponse;

    invoke-direct {p0}, Lcom/texa/carelib/care/trips/internal/parser/BeginFileDataTripParser$BeginFileDataTripResponse;-><init>()V

    return-object p0

    :cond_1
    const/16 v0, 0xff

    const-wide/16 v1, 0x0

    .line 48
    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object v3

    if-eqz v3, :cond_3

    .line 50
    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 51
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 53
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_2

    const/4 v0, 0x0

    .line 54
    invoke-static {p0, v0}, Lcom/texa/carelib/core/utils/internal/ByteBufferUtils;->getUnsignedByte(Ljava/nio/ByteBuffer;I)S

    move-result v0

    .line 57
    :cond_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    const/4 v5, 0x5

    if-lt v3, v5, :cond_3

    .line 58
    invoke-static {p0, v4}, Lcom/texa/carelib/core/utils/internal/ByteBufferUtils;->getUnsignedInt(Ljava/nio/ByteBuffer;I)J

    move-result-wide v1

    .line 62
    :cond_3
    new-instance p0, Lcom/texa/carelib/care/trips/internal/parser/BeginFileDataTripParser$BeginFileDataTripResponse;

    long-to-int v2, v1

    invoke-direct {p0, v0, v2}, Lcom/texa/carelib/care/trips/internal/parser/BeginFileDataTripParser$BeginFileDataTripResponse;-><init>(II)V

    return-object p0
.end method
