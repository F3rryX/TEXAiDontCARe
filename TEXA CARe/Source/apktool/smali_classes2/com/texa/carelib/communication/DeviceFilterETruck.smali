.class public Lcom/texa/carelib/communication/DeviceFilterETruck;
.super Lcom/texa/carelib/communication/DeviceFilterCare;
.source "DeviceFilterETruck.java"


# static fields
.field private static final DEVICE_PREFIX_ETRUCK_EVALUATION:Ljava/lang/String; = "EVE"

.field private static final DEVICE_PREFIX_ETRUCK_TEXA:Ljava/lang/String; = "TOE"


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 23
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "EVE"

    const-string v2, "TOE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/texa/carelib/communication/DeviceFilterCare;-><init>(Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1}, Lcom/texa/carelib/communication/DeviceFilterCare;-><init>(Ljava/util/Set;)V

    return-void
.end method
