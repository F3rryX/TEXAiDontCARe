.class public abstract Lcom/texa/carelib/communication/internal/CommunicationBase;
.super Lcom/texa/carelib/core/ObservableObjectBase;
.source "CommunicationBase.java"

# interfaces
.implements Lcom/texa/carelib/communication/Communication;


# static fields
.field private static final AUTO_RECONNECT_ON_CONNECTION_LOST:Z = true

.field public static final TAG:Ljava/lang/String; = "CommunicationBase"


# instance fields
.field private final mArguments:Landroid/os/Bundle;

.field private mCommunicationDelegate:Lcom/texa/carelib/communication/CommunicationDelegate;

.field private mCurrentDevice:Lcom/texa/carelib/communication/DeviceInfo;

.field private final mDeviceDiscoveryListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/carelib/communication/DeviceDiscoveryListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceDiscoveryListenersLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

.field private mStatus:Lcom/texa/carelib/communication/CommunicationStatus;

.field private final mStatusLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    .line 115
    invoke-direct {p0}, Lcom/texa/carelib/core/ObservableObjectBase;-><init>()V

    .line 38
    new-instance v0, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    sget-object v1, Lcom/texa/carelib/communication/internal/CommunicationBase;->TAG:Ljava/lang/String;

    const-string v2, "mDeviceDiscoveryListenersLock"

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/texa/carelib/communication/internal/CommunicationBase;->mDeviceDiscoveryListenersLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    .line 39
    new-instance v2, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    const-string v3, "mStatusLock"

    invoke-direct {v2, v1, v3}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/texa/carelib/communication/internal/CommunicationBase;->mStatusLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    const/4 v1, 0x0

    .line 116
    iput-object v1, p0, Lcom/texa/carelib/communication/internal/CommunicationBase;->mCurrentDevice:Lcom/texa/carelib/communication/DeviceInfo;

    .line 117
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/texa/carelib/communication/internal/CommunicationBase;->mArguments:Landroid/os/Bundle;

    const-string v1, "CommunicationBase()"

    .line 119
    invoke-virtual {v2, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->lock(Ljava/lang/String;)Z

    .line 121
    :try_start_0
    sget-object v3, Lcom/texa/carelib/communication/CommunicationStatus;->IDLE:Lcom/texa/carelib/communication/CommunicationStatus;

    iput-object v3, p0, Lcom/texa/carelib/communication/internal/CommunicationBase;->mStatus:Lcom/texa/carelib/communication/CommunicationStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 124
    invoke-virtual {v2, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    .line 127
    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->lock(Ljava/lang/String;)Z

    .line 129
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/texa/carelib/communication/internal/CommunicationBase;->mDeviceDiscoveryListeners:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    return-void

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/texa/carelib/communication/internal/CommunicationBase;->mDeviceDiscoveryListenersLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v2, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    throw v0

    :catchall_1
    move-exception v0

    .line 124
    iget-object v2, p0, Lcom/texa/carelib/communication/internal/CommunicationBase;->mStatusLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v2, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    throw v0
.end method


# virtual methods
.method public addDeviceDiscoveryListener(Lcom/texa/carelib/communication/DeviceDiscoveryListener;)Lcom/texa/carelib/communication/DeviceDiscoveryListener;
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/CommunicationBase;->mDeviceDiscoveryListenersLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    const-string v1, "addDeviceDiscoveryListener"

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->lock(Ljava/lang/String;)Z

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/CommunicationBase;->mDeviceDiscoveryListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/CommunicationBase;->mDeviceDiscoveryListenersLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/texa/carelib/communication/internal/CommunicationBase;->mDeviceDiscoveryListenersLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    throw p1
.end method

.method protected fireDeviceBondStateChanged(Lcom/texa/carelib/communication/DeviceInfo;)V
    .locals 4

    .line 185
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/CommunicationBase;->mDeviceDiscoveryListeners:Ljava/util/List;

    invoke-static {v0}, Lcom/texa/carelib/core/utils/internal/Utils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 188
    :cond_0
    new-instance v0, Lcom/texa/carelib/communication/events/DeviceBondStateChangedEvent;

    invoke-direct {v0, p0, p1}, Lcom/texa/carelib/communication/events/DeviceBondStateChangedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/communication/DeviceInfo;)V

    .line 191
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/CommunicationBase;->mDeviceDiscoveryListenersLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    const-string v1, "fireDeviceBondStateChanged"

    invoke-virtual {p1, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->lock(Ljava/lang/String;)Z

    .line 193
    :try_start_0
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/CommunicationBase;->mDeviceDiscoveryListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array v2, p1, [Lcom/texa/carelib/communication/DeviceDiscoveryListener;

    .line 194
    iget-object v3, p0, Lcom/texa/carelib/communication/internal/CommunicationBase;->mDeviceDiscoveryListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    iget-object v3, p0, Lcom/texa/carelib/communication/internal/CommunicationBase;->mDeviceDiscoveryListenersLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v3, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    .line 200
    aget-object v3, v2, v1

    if-eqz v3, :cond_1

    .line 202
    invoke-virtual {v3, v0}, Lcom/texa/carelib/communication/DeviceDiscoveryListener;->onDeviceBondStateChanged(Lcom/texa/carelib/communication/events/DeviceBondStateChangedEvent;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 197
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/CommunicationBase;->mDeviceDiscoveryListenersLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    throw p1
.end method

.method protected fireDeviceFound(Lcom/texa/carelib/communication/DeviceInfo;)V
    .locals 4

    .line 162
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/CommunicationBase;->mDeviceDiscoveryListeners:Ljava/util/List;

    invoke-static {v0}, Lcom/texa/carelib/core/utils/internal/Utils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 165
    :cond_0
    new-instance v0, Lcom/texa/carelib/communication/events/DeviceFoundEvent;

    invoke-direct {v0, p0, p1}, Lcom/texa/carelib/communication/events/DeviceFoundEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/communication/DeviceInfo;)V

    .line 168
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/CommunicationBase;->mDeviceDiscoveryListenersLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    const-string v1, "fireDeviceFound"

    invoke-virtual {p1, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->lock(Ljava/lang/String;)Z

    .line 170
    :try_start_0
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/CommunicationBase;->mDeviceDiscoveryListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array v2, p1, [Lcom/texa/carelib/communication/DeviceDiscoveryListener;

    .line 171
    iget-object v3, p0, Lcom/texa/carelib/communication/internal/CommunicationBase;->mDeviceDiscoveryListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    iget-object v3, p0, Lcom/texa/carelib/communication/internal/CommunicationBase;->mDeviceDiscoveryListenersLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v3, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    .line 177
    aget-object v3, v2, v1

    if-eqz v3, :cond_1

    .line 179
    invoke-virtual {v3, v0}, Lcom/texa/carelib/communication/DeviceDiscoveryListener;->onDeviceFound(Lcom/texa/carelib/communication/events/DeviceFoundEvent;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 174
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/CommunicationBase;->mDeviceDiscoveryListenersLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    throw p1
.end method

.method protected fireDeviceNameChanged(Lcom/texa/carelib/communication/DeviceInfo;)V
    .locals 4

    .line 208
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/CommunicationBase;->mDeviceDiscoveryListeners:Ljava/util/List;

    invoke-static {v0}, Lcom/texa/carelib/core/utils/internal/Utils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 211
    :cond_0
    new-instance v0, Lcom/texa/carelib/communication/events/DeviceNameChangedEvent;

    invoke-direct {v0, p0, p1}, Lcom/texa/carelib/communication/events/DeviceNameChangedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/communication/DeviceInfo;)V

    .line 214
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/CommunicationBase;->mDeviceDiscoveryListenersLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    const-string v1, "fireDeviceNameChanged"

    invoke-virtual {p1, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->lock(Ljava/lang/String;)Z

    .line 216
    :try_start_0
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/CommunicationBase;->mDeviceDiscoveryListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array v2, p1, [Lcom/texa/carelib/communication/DeviceDiscoveryListener;

    .line 217
    iget-object v3, p0, Lcom/texa/carelib/communication/internal/CommunicationBase;->mDeviceDiscoveryListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    iget-object v3, p0, Lcom/texa/carelib/communication/internal/CommunicationBase;->mDeviceDiscoveryListenersLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v3, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    .line 223
    aget-object v3, v2, v1

    if-eqz v3, :cond_1

    .line 225
    invoke-virtual {v3, v0}, Lcom/texa/carelib/communication/DeviceDiscoveryListener;->onDeviceNameChanged(Lcom/texa/carelib/communication/events/DeviceNameChangedEvent;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 220
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/CommunicationBase;->mDeviceDiscoveryListenersLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    throw p1
.end method

.method public getArguments()Landroid/os/Bundle;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/CommunicationBase;->mArguments:Landroid/os/Bundle;

    return-object v0
.end method

.method public getCommunicationDelegate()Lcom/texa/carelib/communication/CommunicationDelegate;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/CommunicationBase;->mCommunicationDelegate:Lcom/texa/carelib/communication/CommunicationDelegate;

    return-object v0
.end method

.method public getCurrentDevice()Lcom/texa/carelib/communication/DeviceInfo;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/CommunicationBase;->mCurrentDevice:Lcom/texa/carelib/communication/DeviceInfo;

    return-object v0
.end method

.method public getStatus()Lcom/texa/carelib/communication/CommunicationStatus;
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/CommunicationBase;->mStatusLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    const-string v1, "getStatus"

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->lock(Ljava/lang/String;)Z

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/CommunicationBase;->mStatus:Lcom/texa/carelib/communication/CommunicationStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    iget-object v2, p0, Lcom/texa/carelib/communication/internal/CommunicationBase;->mStatusLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v2, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/texa/carelib/communication/internal/CommunicationBase;->mStatusLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v2, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    throw v0
.end method

.method protected isAutoReconnectOnCommunicationLostEnabled()Z
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/CommunicationBase;->mArguments:Landroid/os/Bundle;

    const-string v1, "Communication#EXTRA_AUTO_RECONNECT_ON_CONNECTION_LOST"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public removeDeviceDiscoveryListener(Lcom/texa/carelib/communication/DeviceDiscoveryListener;)V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/CommunicationBase;->mDeviceDiscoveryListenersLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    const-string v1, "removeDeviceDiscoveryListener"

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->lock(Ljava/lang/String;)Z

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/CommunicationBase;->mDeviceDiscoveryListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/CommunicationBase;->mDeviceDiscoveryListenersLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {p1, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/texa/carelib/communication/internal/CommunicationBase;->mDeviceDiscoveryListenersLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    throw p1
.end method

.method public setCommunicationDelegate(Lcom/texa/carelib/communication/CommunicationDelegate;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/texa/carelib/communication/internal/CommunicationBase;->mCommunicationDelegate:Lcom/texa/carelib/communication/CommunicationDelegate;

    return-void
.end method

.method public setCurrentDevice(Lcom/texa/carelib/communication/DeviceInfo;)Lcom/texa/carelib/communication/internal/CommunicationBase;
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/texa/carelib/communication/internal/CommunicationBase;->mCurrentDevice:Lcom/texa/carelib/communication/DeviceInfo;

    return-object p0
.end method

.method protected setStatus(Lcom/texa/carelib/communication/CommunicationStatus;)V
    .locals 4

    const-string v0, "setStatus"

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/texa/carelib/communication/internal/CommunicationBase;->mStatusLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v1, v0}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->lock(Ljava/lang/String;)Z

    .line 80
    iget-object v1, p0, Lcom/texa/carelib/communication/internal/CommunicationBase;->mStatus:Lcom/texa/carelib/communication/CommunicationStatus;

    .line 81
    iput-object p1, p0, Lcom/texa/carelib/communication/internal/CommunicationBase;->mStatus:Lcom/texa/carelib/communication/CommunicationStatus;

    .line 82
    new-instance v2, Ljava/beans/PropertyChangeEvent;

    const-string v3, "com.texa.carelib.communication.Communication#PROPERTY_STATUS"

    invoke-direct {v2, p0, v3, v1, p1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/texa/carelib/communication/internal/CommunicationBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/CommunicationBase;->mStatusLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {p1, v0}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    return-void

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/texa/carelib/communication/internal/CommunicationBase;->mStatusLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v1, v0}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    throw p1
.end method
