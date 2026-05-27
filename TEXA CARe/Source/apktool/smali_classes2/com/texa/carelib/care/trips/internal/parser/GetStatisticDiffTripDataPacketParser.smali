.class public Lcom/texa/carelib/care/trips/internal/parser/GetStatisticDiffTripDataPacketParser;
.super Ljava/lang/Object;
.source "GetStatisticDiffTripDataPacketParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/care/trips/internal/parser/GetStatisticDiffTripDataPacketParser$GetStatisticDiffTripDataResponse;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lcom/texa/carelib/communication/Message;)Lcom/texa/carelib/care/trips/internal/parser/GetStatisticDiffTripDataPacketParser$GetStatisticDiffTripDataResponse;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getStatus()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 32
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-lez v1, :cond_0

    .line 33
    invoke-static {p0}, Lcom/texa/carelib/core/utils/internal/ByteBufferUtils;->getUnsignedShort(Ljava/nio/ByteBuffer;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 35
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x2

    new-array v1, v1, [B

    .line 36
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 41
    :goto_0
    new-instance p0, Lcom/texa/carelib/care/trips/internal/parser/GetStatisticDiffTripDataPacketParser$GetStatisticDiffTripDataResponse;

    invoke-direct {p0, v0, v1}, Lcom/texa/carelib/care/trips/internal/parser/GetStatisticDiffTripDataPacketParser$GetStatisticDiffTripDataResponse;-><init>(Ljava/lang/Integer;[B)V

    return-object p0
.end method
