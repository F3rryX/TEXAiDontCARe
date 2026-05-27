.class public Lcom/texa/carelib/communication/internal/serial/FixedKnownDeviceHistory;
.super Ljava/lang/Object;
.source "FixedKnownDeviceHistory.java"

# interfaces
.implements Lcom/texa/carelib/communication/KnownDeviceHistory;


# instance fields
.field private mDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/carelib/communication/DeviceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/carelib/communication/DeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/texa/carelib/communication/internal/serial/FixedKnownDeviceHistory;->mDevices:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Lcom/texa/carelib/communication/DeviceInfo;)V
    .locals 0

    return-void
.end method

.method public clear()V
    .locals 0

    return-void
.end method

.method public get(I)Lcom/texa/carelib/communication/DeviceInfo;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/serial/FixedKnownDeviceHistory;->mDevices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/carelib/communication/DeviceInfo;

    return-object p1
.end method

.method public getItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/carelib/communication/DeviceInfo;",
            ">;"
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/texa/carelib/communication/internal/serial/FixedKnownDeviceHistory;->mDevices:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public indexOf(Lcom/texa/carelib/communication/DeviceInfo;)I
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/serial/FixedKnownDeviceHistory;->mDevices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public setKnownDeviceHistoryListener(Lcom/texa/carelib/communication/KnownDeviceHistoryListener;)V
    .locals 0

    return-void
.end method

.method public setMaxSize(I)V
    .locals 0

    return-void
.end method

.method public size()I
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/serial/FixedKnownDeviceHistory;->mDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
