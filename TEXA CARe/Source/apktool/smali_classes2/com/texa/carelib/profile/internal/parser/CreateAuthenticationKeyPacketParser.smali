.class public final Lcom/texa/carelib/profile/internal/parser/CreateAuthenticationKeyPacketParser;
.super Ljava/lang/Object;
.source "CreateAuthenticationKeyPacketParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/profile/internal/parser/CreateAuthenticationKeyPacketParser$CreateAuthenticationKeyResponse;
    }
.end annotation


# static fields
.field public static final D:Z = false

.field public static final TAG:Ljava/lang/String; = "CreateAuthenticationKeyPacketParser"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lcom/texa/carelib/communication/Message;)Lcom/texa/carelib/profile/internal/parser/CreateAuthenticationKeyPacketParser$CreateAuthenticationKeyResponse;
    .locals 4

    .line 41
    new-instance v0, Lcom/texa/carelib/profile/internal/parser/CreateAuthenticationKeyPacketParser$CreateAuthenticationKeyResponse;

    invoke-direct {v0}, Lcom/texa/carelib/profile/internal/parser/CreateAuthenticationKeyPacketParser$CreateAuthenticationKeyResponse;-><init>()V

    .line 43
    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 45
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    const/4 p0, 0x0

    .line 47
    invoke-static {v1, p0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 49
    array-length v2, v1

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    new-array v2, v3, [B

    .line 51
    invoke-static {v1, p0, v2, p0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    invoke-virtual {v0, v2}, Lcom/texa/carelib/profile/internal/parser/CreateAuthenticationKeyPacketParser$CreateAuthenticationKeyResponse;->setNonce([B)Lcom/texa/carelib/profile/internal/parser/CreateAuthenticationKeyPacketParser$CreateAuthenticationKeyResponse;

    :cond_0
    return-object v0
.end method
