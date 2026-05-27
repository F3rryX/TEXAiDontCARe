.class public final Lcom/texa/carelib/profile/internal/parser/BeginFileDownloadPacketParser;
.super Ljava/lang/Object;
.source "BeginFileDownloadPacketParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/profile/internal/parser/BeginFileDownloadPacketParser$Response;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "BeginFileDownloadPacketParser"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lcom/texa/carelib/communication/Message;)Lcom/texa/carelib/profile/internal/parser/BeginFileDownloadPacketParser$Response;
    .locals 3

    if-nez p0, :cond_0

    .line 33
    new-instance p0, Lcom/texa/carelib/profile/internal/parser/BeginFileDownloadPacketParser$Response;

    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/parser/BeginFileDownloadPacketParser$Response;-><init>()V

    return-object p0

    .line 36
    :cond_0
    new-instance v0, Lcom/texa/carelib/profile/internal/parser/BeginFileDownloadPacketParser$Response;

    invoke-direct {v0}, Lcom/texa/carelib/profile/internal/parser/BeginFileDownloadPacketParser$Response;-><init>()V

    .line 37
    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object v1

    if-eqz v1, :cond_2

    .line 38
    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 39
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 41
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    .line 42
    invoke-static {p0}, Lcom/texa/carelib/core/utils/internal/ByteBufferUtils;->getUnsignedByte(Ljava/nio/ByteBuffer;)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/profile/internal/parser/BeginFileDownloadPacketParser$Response;->setFileType(I)Lcom/texa/carelib/profile/internal/parser/BeginFileDownloadPacketParser$Response;

    .line 44
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_2

    .line 45
    invoke-static {p0}, Lcom/texa/carelib/core/utils/internal/ByteBufferUtils;->getUnsignedInt(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    long-to-int p0, v1

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lcom/texa/carelib/profile/internal/parser/BeginFileDownloadPacketParser$Response;->setFileSize(J)Lcom/texa/carelib/profile/internal/parser/BeginFileDownloadPacketParser$Response;

    :cond_2
    return-object v0
.end method
