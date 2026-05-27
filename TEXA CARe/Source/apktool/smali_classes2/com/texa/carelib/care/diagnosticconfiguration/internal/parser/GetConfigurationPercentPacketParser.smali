.class public Lcom/texa/carelib/care/diagnosticconfiguration/internal/parser/GetConfigurationPercentPacketParser;
.super Ljava/lang/Object;
.source "GetConfigurationPercentPacketParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lcom/texa/carelib/communication/Message;)Ljava/lang/Integer;
    .locals 1

    if-eqz p0, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getStatus()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object v0

    invoke-static {v0}, Lcom/texa/carelib/core/utils/internal/Utils;->isNotEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object p0

    const/4 v0, 0x0

    .line 34
    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
