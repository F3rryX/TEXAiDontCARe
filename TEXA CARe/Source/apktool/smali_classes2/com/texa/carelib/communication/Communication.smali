.class public interface abstract Lcom/texa/carelib/communication/Communication;
.super Ljava/lang/Object;
.source "Communication.java"

# interfaces
.implements Lcom/texa/carelib/core/ObservableObject;


# static fields
.field public static final EXTRA_AUTO_RECONNECT_ON_CONNECTION_LOST:Ljava/lang/String; = "Communication#EXTRA_AUTO_RECONNECT_ON_CONNECTION_LOST"

.field public static final EXTRA_ENDLESS_CONNECTION:Ljava/lang/String; = "Communication#EXTRA_ENDLESS_CONNECTION"

.field public static final EXTRA_IS_MASTER:Ljava/lang/String; = "Communication#EXTRA_IS_MASTER"

.field public static final EXTRA_MAX_CONNECTION_INTERVAL:Ljava/lang/String; = "Communication#EXTRA_MAX_CONNECTION_INTERVAL"

.field public static final EXTRA_USE_FALLBACK_SOCKET:Ljava/lang/String; = "Communication#EXTRA_USE_FALLBACK_SOCKET"

.field public static final EXTRA_USE_SECURE_SOCKET:Ljava/lang/String; = "Communication#EXTRA_USE_SECURE_SOCKET"

.field public static final PROPERTY_STATUS:Ljava/lang/String; = "com.texa.carelib.communication.Communication#PROPERTY_STATUS"


# virtual methods
.method public abstract addDeviceDiscoveryListener(Lcom/texa/carelib/communication/DeviceDiscoveryListener;)Lcom/texa/carelib/communication/DeviceDiscoveryListener;
.end method

.method public abstract connect(Lcom/texa/carelib/communication/DeviceInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method

.method public abstract disconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method

.method public abstract forgetKnownDevices()V
.end method

.method public abstract getArguments()Landroid/os/Bundle;
.end method

.method public abstract getCommunicationDelegate()Lcom/texa/carelib/communication/CommunicationDelegate;
.end method

.method public abstract getCurrentDevice()Lcom/texa/carelib/communication/DeviceInfo;
.end method

.method public abstract getDevices()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/carelib/communication/DeviceInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getKnownDevices()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/carelib/communication/DeviceInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRemote()Ljava/lang/Object;
.end method

.method public abstract getStatus()Lcom/texa/carelib/communication/CommunicationStatus;
.end method

.method public abstract isConnected()Z
.end method

.method public abstract reconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method

.method public abstract reconnectToDevices(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/carelib/communication/DeviceInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method

.method public abstract removeBond(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method

.method public abstract removeDeviceDiscoveryListener(Lcom/texa/carelib/communication/DeviceDiscoveryListener;)V
.end method

.method public abstract setCommunicationDelegate(Lcom/texa/carelib/communication/CommunicationDelegate;)V
.end method

.method public abstract setDeviceFilter(Lcom/texa/carelib/communication/DeviceFilter;)V
.end method

.method public abstract setKnownDeviceHistory(Lcom/texa/carelib/communication/KnownDeviceHistory;)V
.end method

.method public abstract shutdown()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method

.method public abstract startScan()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method

.method public abstract stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method

.method public abstract stopReconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method

.method public abstract stopScan()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method
