.class public final Lcom/texa/carelib/profile/internal/parser/GetConfigurationIDPacketParser;
.super Ljava/lang/Object;
.source "GetConfigurationIDPacketParser.java"


# static fields
.field public static final D:Z = false

.field private static final DEFAULT_INTERPRETER_VERSION:Ljava/math/BigInteger;

.field public static final TAG:Ljava/lang/String; = "GetConfigurationIDPacketParser"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    sput-object v0, Lcom/texa/carelib/profile/internal/parser/GetConfigurationIDPacketParser;->DEFAULT_INTERPRETER_VERSION:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lcom/texa/carelib/communication/Message;)Ljava/math/BigInteger;
    .locals 3

    .line 42
    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object v0

    array-length v0, v0

    new-array v1, v0, [B

    .line 44
    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    invoke-static {v1}, Lcom/texa/carelib/core/utils/internal/Utils;->reverse([B)V

    .line 54
    invoke-static {v1}, Lcom/texa/carelib/profile/internal/parser/GetConfigurationIDPacketParser;->parseInterpreterVersion([B)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 57
    :cond_0
    sget-object p0, Lcom/texa/carelib/profile/internal/parser/GetConfigurationIDPacketParser;->DEFAULT_INTERPRETER_VERSION:Ljava/math/BigInteger;

    return-object p0
.end method

.method public static parseInterpreterVersion([B)Ljava/math/BigInteger;
    .locals 5

    if-nez p0, :cond_0

    .line 85
    sget-object p0, Lcom/texa/carelib/profile/internal/parser/GetConfigurationIDPacketParser;->DEFAULT_INTERPRETER_VERSION:Ljava/math/BigInteger;

    return-object p0

    :cond_0
    const/16 v0, 0x8

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 89
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 91
    array-length v3, p0

    rsub-int/lit8 v3, v3, 0x8

    array-length v4, p0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p0, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static parseInterpreterVersion([C)Ljava/math/BigInteger;
    .locals 0

    if-eqz p0, :cond_0

    .line 70
    invoke-static {p0}, Lcom/texa/carelib/core/utils/internal/ConversionUtils;->toByteArray([C)[B

    move-result-object p0

    invoke-static {p0}, Lcom/texa/carelib/profile/internal/parser/GetConfigurationIDPacketParser;->parseInterpreterVersion([B)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 73
    :cond_0
    sget-object p0, Lcom/texa/carelib/profile/internal/parser/GetConfigurationIDPacketParser;->DEFAULT_INTERPRETER_VERSION:Ljava/math/BigInteger;

    return-object p0
.end method
