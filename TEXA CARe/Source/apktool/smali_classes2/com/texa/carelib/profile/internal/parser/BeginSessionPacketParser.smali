.class public final Lcom/texa/carelib/profile/internal/parser/BeginSessionPacketParser;
.super Ljava/lang/Object;
.source "BeginSessionPacketParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/profile/internal/parser/BeginSessionPacketParser$BeginSessionResponse;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "BeginSessionPacketParser"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lcom/texa/carelib/communication/Message;)Lcom/texa/carelib/profile/internal/parser/BeginSessionPacketParser$BeginSessionResponse;
    .locals 2

    if-nez p0, :cond_0

    .line 35
    new-instance p0, Lcom/texa/carelib/profile/internal/parser/BeginSessionPacketParser$BeginSessionResponse;

    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/parser/BeginSessionPacketParser$BeginSessionResponse;-><init>()V

    return-object p0

    .line 38
    :cond_0
    new-instance v0, Lcom/texa/carelib/profile/internal/parser/BeginSessionPacketParser$BeginSessionResponse;

    invoke-direct {v0}, Lcom/texa/carelib/profile/internal/parser/BeginSessionPacketParser$BeginSessionResponse;-><init>()V

    .line 39
    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object v1

    if-eqz v1, :cond_1

    .line 40
    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/texa/carelib/profile/internal/parser/BeginSessionPacketParser$BeginSessionResponse;->setHardwareToken([B)Lcom/texa/carelib/profile/internal/parser/BeginSessionPacketParser$BeginSessionResponse;

    :cond_1
    return-object v0
.end method
