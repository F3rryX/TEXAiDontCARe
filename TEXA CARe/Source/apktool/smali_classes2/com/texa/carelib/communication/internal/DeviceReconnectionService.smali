.class public interface abstract Lcom/texa/carelib/communication/internal/DeviceReconnectionService;
.super Ljava/lang/Object;
.source "DeviceReconnectionService.java"


# virtual methods
.method public abstract isReconnecting()Z
.end method

.method public abstract reconnectToDevices(Landroid/content/Context;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/texa/carelib/communication/DeviceInfo;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract setCallback(Lcom/texa/carelib/communication/internal/DeviceReconnectionServiceCallback;)V
.end method

.method public abstract stopReconnection(Landroid/content/Context;)Z
.end method
