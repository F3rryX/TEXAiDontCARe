.class public Lcom/texa/carelib/utils/internal/FlavorSupport;
.super Ljava/lang/Object;
.source "FlavorSupport.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isOEMFlavor(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "oem"

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isSTDFlavor(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "std"

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
