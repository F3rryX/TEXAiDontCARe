.class public Lcom/robotium/solo/Timeout;
.super Ljava/lang/Object;
.source "Timeout.java"


# static fields
.field private static largeTimeout:I

.field private static smallTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLargeTimeout()I
    .locals 1

    .line 56
    sget v0, Lcom/robotium/solo/Timeout;->largeTimeout:I

    return v0
.end method

.method public static getSmallTimeout()I
    .locals 1

    .line 66
    sget v0, Lcom/robotium/solo/Timeout;->smallTimeout:I

    return v0
.end method

.method public static setLargeTimeout(I)V
    .locals 0

    .line 32
    sput p0, Lcom/robotium/solo/Timeout;->largeTimeout:I

    return-void
.end method

.method public static setSmallTimeout(I)V
    .locals 0

    .line 46
    sput p0, Lcom/robotium/solo/Timeout;->smallTimeout:I

    return-void
.end method
