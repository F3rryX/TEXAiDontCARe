.class public final Lcom/texa/carelib/care/accessory/internal/AccessoryStatusEvaluator;
.super Ljava/lang/Object;
.source "AccessoryStatusEvaluator.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static evaluate(ILjava/math/BigInteger;)I
    .locals 1

    const/4 v0, 0x4

    if-ne v0, p0, :cond_0

    .line 32
    invoke-static {p1}, Lcom/texa/carelib/core/internal/ConfigurationIDSupport;->isSet(Ljava/math/BigInteger;)Z

    move-result p1

    if-nez p1, :cond_1

    const/16 p0, 0x84

    return p0

    :cond_0
    const/4 v0, 0x2

    if-ne v0, p0, :cond_1

    .line 37
    invoke-static {p1}, Lcom/texa/carelib/core/internal/ConfigurationIDSupport;->isSet(Ljava/math/BigInteger;)Z

    move-result p1

    if-nez p1, :cond_1

    const/16 p0, 0x82

    :cond_1
    return p0
.end method
