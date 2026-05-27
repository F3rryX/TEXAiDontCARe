.class public interface abstract Lcom/texa/carelib/communication/KnownDeviceHistory;
.super Ljava/lang/Object;
.source "KnownDeviceHistory.java"


# virtual methods
.method public abstract add(Lcom/texa/carelib/communication/DeviceInfo;)V
.end method

.method public abstract clear()V
.end method

.method public abstract get(I)Lcom/texa/carelib/communication/DeviceInfo;
.end method

.method public abstract getItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/carelib/communication/DeviceInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract indexOf(Lcom/texa/carelib/communication/DeviceInfo;)I
.end method

.method public abstract setKnownDeviceHistoryListener(Lcom/texa/carelib/communication/KnownDeviceHistoryListener;)V
.end method

.method public abstract setMaxSize(I)V
.end method

.method public abstract size()I
.end method
