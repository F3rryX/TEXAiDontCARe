.class public final Lcom/texa/carelib/profile/internal/parser/GetStatusPacketParser;
.super Ljava/lang/Object;
.source "GetStatusPacketParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/profile/internal/parser/GetStatusPacketParser$GetStatusResponse;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lcom/texa/carelib/communication/Message;)Lcom/texa/carelib/profile/internal/parser/GetStatusPacketParser$GetStatusResponse;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 37
    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object v1

    if-eqz v1, :cond_1

    .line 38
    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object p0

    .line 41
    array-length v1, p0

    if-lez v1, :cond_1

    .line 42
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 43
    :goto_0
    aget-byte p0, p0, v0

    and-int/lit8 p0, p0, 0x7f

    move v0, v1

    goto :goto_1

    :cond_1
    const/16 p0, 0xff

    .line 47
    :goto_1
    new-instance v1, Lcom/texa/carelib/profile/internal/parser/GetStatusPacketParser$GetStatusResponse;

    invoke-direct {v1, v0, p0}, Lcom/texa/carelib/profile/internal/parser/GetStatusPacketParser$GetStatusResponse;-><init>(ZI)V

    return-object v1
.end method
