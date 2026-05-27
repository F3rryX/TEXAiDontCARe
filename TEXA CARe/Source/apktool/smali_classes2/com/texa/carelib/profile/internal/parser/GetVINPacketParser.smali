.class public final Lcom/texa/carelib/profile/internal/parser/GetVINPacketParser;
.super Ljava/lang/Object;
.source "GetVINPacketParser.java"


# static fields
.field private static final INVALID_VIN_CODES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/texa/carelib/profile/internal/parser/GetVINPacketParser;->INVALID_VIN_CODES:Ljava/util/List;

    const-string v1, "00000000000000000"

    .line 23
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isTVIN([B)Z
    .locals 5

    .line 87
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-lt v0, v2, :cond_0

    .line 88
    array-length v0, p0

    .line 89
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x2a

    if-ne v3, v2, :cond_0

    const/4 v2, 0x1

    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    if-ne v3, v4, :cond_0

    add-int/lit8 v4, v0, -0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    if-nez v4, :cond_0

    add-int/lit8 v4, v0, -0x2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    if-ne v3, v4, :cond_0

    add-int/lit8 v0, v0, -0x3

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    if-ne v3, p0, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method public static parse(Lcom/texa/carelib/communication/Message;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getStatus()I

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 45
    :cond_1
    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object v1

    invoke-static {v1}, Lcom/texa/carelib/profile/internal/parser/GetVINPacketParser;->isTVIN([B)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 53
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 59
    :cond_3
    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object v1

    aget-byte v1, v1, v2

    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-ne v2, v1, :cond_4

    goto :goto_0

    .line 63
    :cond_4
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 67
    sget-object v1, Lcom/texa/carelib/profile/internal/parser/GetVINPacketParser;->INVALID_VIN_CODES:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    return-object v0

    :cond_5
    return-object p0

    :cond_6
    :goto_0
    return-object v0
.end method
