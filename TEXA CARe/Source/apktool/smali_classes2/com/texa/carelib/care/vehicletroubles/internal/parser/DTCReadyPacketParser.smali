.class public Lcom/texa/carelib/care/vehicletroubles/internal/parser/DTCReadyPacketParser;
.super Ljava/lang/Object;
.source "DTCReadyPacketParser.java"


# static fields
.field public static final DTCID_SIZE:I = 0x10

.field public static final FIELD_SIZE:I = 0x14

.field public static final STATUS_SIZE:I = 0x4

.field public static final TAG:Ljava/lang/String; = "DTCReadyPacketParser"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/texa/carelib/communication/Message;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/communication/Message;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 41
    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 44
    :cond_0
    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    .line 45
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1

    .line 47
    :cond_1
    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object v0

    array-length v0, v0

    .line 49
    new-instance v2, Ljava/util/HashMap;

    div-int/2addr v0, v1

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 51
    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object p1

    if-eqz p1, :cond_4

    .line 53
    array-length v0, p1

    if-nez v0, :cond_2

    goto :goto_1

    .line 56
    :cond_2
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 58
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_3

    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 61
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 63
    invoke-static {v1}, Lcom/texa/carelib/core/utils/internal/Base64Helper;->encode([B)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    new-array v3, v3, [B

    .line 66
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    .line 68
    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    const/4 v5, 0x1

    .line 69
    aget-byte v5, v3, v5

    shl-int/lit8 v5, v5, 0x8

    const v6, 0xff00

    and-int/2addr v5, v6

    add-int/2addr v4, v5

    const/4 v5, 0x2

    .line 70
    aget-byte v5, v3, v5

    shl-int/lit8 v0, v5, 0x10

    const/high16 v5, 0xff0000

    and-int/2addr v0, v5

    add-int/2addr v4, v0

    const/4 v0, 0x3

    .line 71
    aget-byte v0, v3, v0

    shl-int/lit8 v0, v0, 0x18

    const/high16 v3, -0x1000000

    and-int/2addr v0, v3

    add-int/2addr v4, v0

    .line 73
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object v2

    .line 54
    :cond_4
    :goto_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1

    :cond_5
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method
