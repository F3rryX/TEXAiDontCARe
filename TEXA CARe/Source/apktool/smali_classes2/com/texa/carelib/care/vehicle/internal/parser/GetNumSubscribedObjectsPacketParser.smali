.class public Lcom/texa/carelib/care/vehicle/internal/parser/GetNumSubscribedObjectsPacketParser;
.super Ljava/lang/Object;
.source "GetNumSubscribedObjectsPacketParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/care/vehicle/internal/parser/GetNumSubscribedObjectsPacketParser$Response;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "GetNumSubscribedObjectsPacketParser"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lcom/texa/carelib/communication/Message;)Lcom/texa/carelib/care/vehicle/internal/parser/GetNumSubscribedObjectsPacketParser$Response;
    .locals 4

    .line 29
    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getStatus()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 30
    new-instance p0, Lcom/texa/carelib/care/vehicle/internal/parser/GetNumSubscribedObjectsPacketParser$Response;

    invoke-direct {p0, v1, v1}, Lcom/texa/carelib/care/vehicle/internal/parser/GetNumSubscribedObjectsPacketParser$Response;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object p0

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object v0

    if-nez v0, :cond_1

    .line 34
    new-instance p0, Lcom/texa/carelib/care/vehicle/internal/parser/GetNumSubscribedObjectsPacketParser$Response;

    invoke-direct {p0, v1, v1}, Lcom/texa/carelib/care/vehicle/internal/parser/GetNumSubscribedObjectsPacketParser$Response;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object p0

    .line 37
    :cond_1
    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 38
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 43
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v2, 0x4

    if-lt v0, v2, :cond_2

    .line 44
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 47
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-lt v3, v2, :cond_3

    .line 48
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 51
    :cond_3
    new-instance p0, Lcom/texa/carelib/care/vehicle/internal/parser/GetNumSubscribedObjectsPacketParser$Response;

    invoke-direct {p0, v0, v1}, Lcom/texa/carelib/care/vehicle/internal/parser/GetNumSubscribedObjectsPacketParser$Response;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object p0
.end method
