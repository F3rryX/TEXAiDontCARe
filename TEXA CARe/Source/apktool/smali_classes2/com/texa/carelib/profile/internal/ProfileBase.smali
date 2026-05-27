.class public abstract Lcom/texa/carelib/profile/internal/ProfileBase;
.super Lcom/texa/carelib/core/ObservableObjectBase;
.source "ProfileBase.java"

# interfaces
.implements Lcom/texa/carelib/profile/Profile;


# static fields
.field private static final TAG:Ljava/lang/String; = "ProfileBase"


# instance fields
.field private final mArguments:Landroid/os/Bundle;

.field private mProfileDelegate:Lcom/texa/carelib/profile/ProfileDelegate;

.field private final mProfileListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/texa/carelib/profile/ProfileListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mProfileSubModules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/carelib/profile/ProfileSubModule;",
            ">;"
        }
    .end annotation
.end field

.field private mReady:Z

.field private mServiceProxy:Lcom/texa/carelib/webservices/ServiceProxy;

.field private final mUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Lcom/texa/carelib/core/ObservableObjectBase;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/texa/carelib/profile/internal/ProfileBase;->mReady:Z

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/carelib/profile/internal/ProfileBase;->mProfileListeners:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/carelib/profile/internal/ProfileBase;->mProfileSubModules:Ljava/util/List;

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/texa/carelib/profile/internal/ProfileBase;->mUIHandler:Landroid/os/Handler;

    .line 55
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/texa/carelib/profile/internal/ProfileBase;->mArguments:Landroid/os/Bundle;

    return-void
.end method

.method private getProfileModules()[Lcom/texa/carelib/profile/ProfileSubModule;
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/ProfileBase;->mProfileSubModules:Ljava/util/List;

    monitor-enter v0

    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/texa/carelib/profile/internal/ProfileBase;->mProfileSubModules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/texa/carelib/profile/ProfileSubModule;

    .line 67
    iget-object v2, p0, Lcom/texa/carelib/profile/internal/ProfileBase;->mProfileSubModules:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 68
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addProfileListener(Lcom/texa/carelib/profile/ProfileListener;)Lcom/texa/carelib/profile/ProfileListener;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/ProfileBase;->mProfileListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public addProfileModule(Lcom/texa/carelib/profile/ProfileSubModule;)V
    .locals 5

    .line 99
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/ProfileBase;->mProfileSubModules:Ljava/util/List;

    monitor-enter v0

    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/texa/carelib/profile/internal/ProfileBase;->mProfileSubModules:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 101
    sget-object v1, Lcom/texa/carelib/profile/internal/ProfileBase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding module: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    iget-object v1, p0, Lcom/texa/carelib/profile/internal/ProfileBase;->mProfileSubModules:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-virtual {p0}, Lcom/texa/carelib/profile/internal/ProfileBase;->isReady()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    invoke-virtual {p1}, Lcom/texa/carelib/profile/ProfileSubModule;->loadInfo()V

    goto :goto_0

    .line 108
    :cond_0
    sget-object v1, Lcom/texa/carelib/profile/internal/ProfileBase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping module: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Module is already attached."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, p1, v2}, Lcom/texa/carelib/core/logging/CareLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected fireAuthenticationError(Lcom/texa/carelib/communication/DeviceInfo;Lcom/texa/carelib/core/CareError;)V
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/ProfileBase;->mProfileListeners:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/texa/carelib/core/utils/internal/Utils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 160
    sget-object p1, Lcom/texa/carelib/profile/internal/ProfileBase;->TAG:Ljava/lang/String;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/texa/carelib/profile/internal/ProfileBase;->mProfileListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v1

    const-string v0, "Subscribed listeners: %d"

    invoke-static {p1, v0, p2}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 164
    :cond_0
    new-instance v0, Lcom/texa/carelib/profile/events/AuthenticationErrorEvent;

    invoke-direct {v0, p0, p1, p2}, Lcom/texa/carelib/profile/events/AuthenticationErrorEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/communication/DeviceInfo;Lcom/texa/carelib/core/CareError;)V

    .line 166
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/ProfileBase;->mProfileListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p2, p1, [Lcom/texa/carelib/profile/ProfileListener;

    .line 167
    iget-object v2, p0, Lcom/texa/carelib/profile/internal/ProfileBase;->mProfileListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :goto_0
    if-ge v1, p1, :cond_1

    .line 169
    aget-object v2, p2, v1

    .line 171
    invoke-interface {v2, v0}, Lcom/texa/carelib/profile/ProfileListener;->onAuthenticationError(Lcom/texa/carelib/profile/events/AuthenticationErrorEvent;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getArguments()Landroid/os/Bundle;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/ProfileBase;->mArguments:Landroid/os/Bundle;

    return-object v0
.end method

.method public getProfileDelegate()Lcom/texa/carelib/profile/ProfileDelegate;
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/ProfileBase;->mProfileDelegate:Lcom/texa/carelib/profile/ProfileDelegate;

    if-eqz v0, :cond_0

    return-object v0

    .line 186
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ProfileDelegate has not be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getServiceProxy()Lcom/texa/carelib/webservices/ServiceProxy;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/ProfileBase;->mServiceProxy:Lcom/texa/carelib/webservices/ServiceProxy;

    return-object v0
.end method

.method public isReady()Z
    .locals 1

    .line 202
    iget-boolean v0, p0, Lcom/texa/carelib/profile/internal/ProfileBase;->mReady:Z

    return v0
.end method

.method protected loadAllInfo()V
    .locals 7

    .line 80
    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/ProfileBase;->getProfileModules()[Lcom/texa/carelib/profile/ProfileSubModule;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 81
    sget-object v4, Lcom/texa/carelib/profile/internal/ProfileBase;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loading info from: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {v3}, Lcom/texa/carelib/profile/ProfileSubModule;->loadInfo()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onCommunicationStatusChanged(Ljava/beans/PropertyChangeEvent;)V
    .locals 12

    .line 121
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/Communication;

    .line 122
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getNewValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/carelib/communication/CommunicationStatus;

    .line 124
    sget-object v1, Lcom/texa/carelib/profile/internal/ProfileBase$1;->$SwitchMap$com$texa$carelib$communication$CommunicationStatus:[I

    invoke-virtual {p1}, Lcom/texa/carelib/communication/CommunicationStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    if-eq v1, v2, :cond_0

    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    const/4 v4, 0x4

    if-eq v1, v4, :cond_0

    const/4 v4, 0x5

    if-eq v1, v4, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/texa/carelib/profile/internal/ProfileBase;->getServiceProxy()Lcom/texa/carelib/webservices/ServiceProxy;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/texa/carelib/profile/internal/ProfileBase;->getServiceProxy()Lcom/texa/carelib/webservices/ServiceProxy;

    move-result-object v1

    invoke-interface {v1}, Lcom/texa/carelib/webservices/ServiceProxy;->clear()V

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 138
    invoke-virtual {p0, v1}, Lcom/texa/carelib/profile/internal/ProfileBase;->setReady(Z)V

    .line 139
    sget-object v4, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    if-ne v4, p1, :cond_2

    .line 140
    invoke-virtual {p0}, Lcom/texa/carelib/profile/internal/ProfileBase;->getServiceProxy()Lcom/texa/carelib/webservices/ServiceProxy;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 141
    invoke-virtual {p0}, Lcom/texa/carelib/profile/internal/ProfileBase;->getServiceProxy()Lcom/texa/carelib/webservices/ServiceProxy;

    move-result-object v4

    invoke-interface {v4}, Lcom/texa/carelib/webservices/ServiceProxy;->clear()V

    .line 145
    :cond_2
    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/ProfileBase;->getProfileModules()[Lcom/texa/carelib/profile/ProfileSubModule;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_4

    aget-object v7, v4, v6

    if-eqz v7, :cond_3

    .line 148
    :try_start_0
    sget-object v8, Lcom/texa/carelib/profile/internal/ProfileBase;->TAG:Ljava/lang/String;

    const-string v9, "Forwarding source status %s to:%s."

    new-array v10, v2, [Ljava/lang/Object;

    aput-object p1, v10, v1

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v3

    invoke-static {v8, v9, v10}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    new-instance v8, Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;

    invoke-interface {v0}, Lcom/texa/carelib/communication/Communication;->getCurrentDevice()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object v9

    invoke-direct {v8, p0, p1, v9}, Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/communication/CommunicationStatus;Lcom/texa/carelib/communication/DeviceInfo;)V

    invoke-virtual {v7, v8}, Lcom/texa/carelib/profile/ProfileSubModule;->onCommunicationStatusChanged(Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v7

    .line 152
    sget-object v8, Lcom/texa/carelib/profile/internal/ProfileBase;->TAG:Ljava/lang/String;

    new-array v9, v1, [Ljava/lang/Object;

    const-string v10, "An exception has occurred in the listener."

    invoke-static {v8, v7, v10, v9}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public removeProfileListener(Lcom/texa/carelib/profile/ProfileListener;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/ProfileBase;->mProfileListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeProfileModule(Lcom/texa/carelib/profile/ProfileSubModule;)V
    .locals 3

    .line 114
    sget-object v0, Lcom/texa/carelib/profile/internal/ProfileBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing module: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/ProfileBase;->mProfileSubModules:Ljava/util/List;

    monitor-enter v0

    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/texa/carelib/profile/internal/ProfileBase;->mProfileSubModules:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 117
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setProfileDelegate(Lcom/texa/carelib/profile/ProfileDelegate;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/texa/carelib/profile/internal/ProfileBase;->mProfileDelegate:Lcom/texa/carelib/profile/ProfileDelegate;

    return-void
.end method

.method protected setReady(Z)V
    .locals 3

    .line 210
    iget-boolean v0, p0, Lcom/texa/carelib/profile/internal/ProfileBase;->mReady:Z

    .line 211
    iput-boolean p1, p0, Lcom/texa/carelib/profile/internal/ProfileBase;->mReady:Z

    .line 212
    new-instance v1, Ljava/beans/PropertyChangeEvent;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v2, "com.texa.carelib.profile.Profile#PROPERTY_READY"

    invoke-direct {v1, p0, v2, v0, p1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/texa/carelib/profile/internal/ProfileBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method public setServiceProxy(Lcom/texa/carelib/webservices/ServiceProxy;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/texa/carelib/profile/internal/ProfileBase;->mServiceProxy:Lcom/texa/carelib/webservices/ServiceProxy;

    return-void
.end method
