.class public Lcom/texa/carelib/care/impacts/internal/parser/BeginFileDataCrashParser;
.super Ljava/lang/Object;
.source "BeginFileDataCrashParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/care/impacts/internal/parser/BeginFileDataCrashParser$BeginFileDataCrashResponse;
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

.method public static parse(Lcom/texa/carelib/communication/Message;)Lcom/texa/carelib/care/impacts/internal/parser/BeginFileDataCrashParser$BeginFileDataCrashResponse;
    .locals 4

    if-nez p0, :cond_0

    .line 37
    new-instance p0, Lcom/texa/carelib/care/impacts/internal/parser/BeginFileDataCrashParser$BeginFileDataCrashResponse;

    invoke-direct {p0}, Lcom/texa/carelib/care/impacts/internal/parser/BeginFileDataCrashParser$BeginFileDataCrashResponse;-><init>()V

    return-object p0

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getStatus()I

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    new-instance p0, Lcom/texa/carelib/care/impacts/internal/parser/BeginFileDataCrashParser$BeginFileDataCrashResponse;

    invoke-direct {p0}, Lcom/texa/carelib/care/impacts/internal/parser/BeginFileDataCrashParser$BeginFileDataCrashResponse;-><init>()V

    return-object p0

    :cond_1
    const/16 v0, 0xff

    const/4 v1, 0x0

    .line 46
    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object v2

    if-eqz v2, :cond_3

    .line 47
    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 48
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 50
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 51
    invoke-static {p0}, Lcom/texa/carelib/core/utils/internal/ByteBufferUtils;->getUnsignedByte(Ljava/nio/ByteBuffer;)S

    move-result v0

    .line 54
    :cond_2
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 55
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_3

    .line 56
    invoke-static {p0}, Lcom/texa/carelib/core/utils/internal/ByteBufferUtils;->getUnsignedInt(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    long-to-int v1, v1

    .line 60
    :cond_3
    new-instance p0, Lcom/texa/carelib/care/impacts/internal/parser/BeginFileDataCrashParser$BeginFileDataCrashResponse;

    invoke-direct {p0, v0, v1}, Lcom/texa/carelib/care/impacts/internal/parser/BeginFileDataCrashParser$BeginFileDataCrashResponse;-><init>(II)V

    return-object p0
.end method
