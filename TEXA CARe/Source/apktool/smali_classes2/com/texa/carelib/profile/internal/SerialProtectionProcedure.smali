.class Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;
.super Lcom/texa/carelib/profile/ProfileSubModule;
.source "SerialProtectionProcedure.java"

# interfaces
.implements Lcom/texa/carelib/profile/internal/SerialProfileMessageReceiver;


# static fields
.field public static final TAG:Ljava/lang/String; = "SerialProtectionProcedure"


# instance fields
.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/care/profile/CareProxyProtectionSessionCompletedEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCallbacksLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

.field private final mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

.field private mProtectionStatus:Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatus;

.field private final mProtectionStatusLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

.field private mSerialNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/texa/carelib/profile/internal/SerialProfile;)V
    .locals 4

    .line 55
    invoke-direct {p0}, Lcom/texa/carelib/profile/ProfileSubModule;-><init>()V

    .line 43
    new-instance v0, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    sget-object v1, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->TAG:Ljava/lang/String;

    const-string v2, "mProtectionStatusLock"

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->mProtectionStatusLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    .line 47
    new-instance v2, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    const-string v3, "mCallbacksLock"

    invoke-direct {v2, v1, v3}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->mCallbacksLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    .line 56
    iput-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    const-string p1, "ctor"

    .line 58
    invoke-virtual {v2, p1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->lock(Ljava/lang/String;)Z

    .line 60
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->mCallbacks:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 63
    invoke-virtual {v2, p1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    .line 66
    invoke-virtual {v0, p1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->lock(Ljava/lang/String;)Z

    const/4 v1, 0x0

    .line 68
    :try_start_1
    iput-object v1, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->mProtectionStatus:Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    invoke-virtual {v0, p1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->mProtectionStatusLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v1, p1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    throw v0

    :catchall_1
    move-exception v0

    .line 63
    iget-object v1, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->mCallbacksLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v1, p1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    throw v0
.end method

.method private fireEventProtectionSessionCompleted(Lcom/texa/carelib/core/CareError;)V
    .locals 3

    .line 239
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->mCallbacksLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    const-string v1, "fireEventProtectionSessionCompleted"

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->lock(Ljava/lang/String;)Z

    .line 242
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->mCallbacks:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    iget-object v2, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->mCallbacksLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v2, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    .line 248
    new-instance v1, Lcom/texa/carelib/care/profile/CareProxyProtectionSessionCompletedEvent;

    invoke-direct {v1, p0, p1}, Lcom/texa/carelib/care/profile/CareProxyProtectionSessionCompletedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    .line 249
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/core/Callback;

    .line 250
    invoke-interface {v0, v1}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 245
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->mCallbacksLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    throw p1
.end method

.method private handleGetSerialNumberCommand(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 276
    sget-object p2, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->TAG:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "handleGetSerialNumberCommand"

    invoke-static {p2, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    invoke-static {p1}, Lcom/texa/carelib/profile/internal/parser/GetSerialNumberPacketParser;->parse(Lcom/texa/carelib/communication/Message;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->mSerialNumber:Ljava/lang/String;

    goto :goto_0

    .line 280
    :cond_0
    sget-object p1, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    const-string p2, "handleGetSerialNumberCommand error: %s"

    invoke-static {p1, p2, v1}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private handleGetStatusCommand(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 0

    return-void
.end method

.method private isRunning()Z
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->mProtectionStatusLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    const-string v1, "isRunning"

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->lock(Ljava/lang/String;)Z

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->mProtectionStatus:Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 203
    :goto_0
    iget-object v2, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->mProtectionStatusLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v2, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    return v0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->mProtectionStatusLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v2, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    throw v0
.end method


# virtual methods
.method beginProtection(Lcom/texa/carelib/core/Callback;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/care/profile/CareProxyProtectionSessionCompletedEvent;",
            ">;)Z"
        }
    .end annotation

    .line 168
    sget-object v0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->mSerialNumber:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "beginProtection for %s"

    invoke-static {v0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    iget-object v2, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->mSerialNumber:Ljava/lang/String;

    invoke-static {v2}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-array p1, v4, [Ljava/lang/Object;

    const-string v1, "Could not open session with a null hardware ID."

    .line 172
    invoke-static {v0, v1, p1}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    .line 176
    :cond_0
    iget-object v2, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->mCallbacksLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    const-string v3, "beginProtection"

    invoke-virtual {v2, v3}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->lock(Ljava/lang/String;)Z

    .line 179
    :try_start_0
    iget-object v2, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->mCallbacks:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->mCallbacksLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {p1, v3}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    .line 185
    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    new-array p1, v4, [Ljava/lang/Object;

    const-string v2, "CARe protection procedure is already running..."

    .line 186
    invoke-static {v0, v2, p1}, Lcom/texa/carelib/core/logging/CareLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 190
    :cond_1
    new-instance p1, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusBeginSession;

    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->mSerialNumber:Ljava/lang/String;

    invoke-direct {p1, p0, v0}, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusBeginSession;-><init>(Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->setStatus(Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatus;)V

    return v1

    :catchall_0
    move-exception p1

    .line 182
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->mCallbacksLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v0, v3}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    throw p1
.end method

.method public getContext()Landroid/content/Context;
    .locals 2

    .line 88
    invoke-virtual {p0}, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->getProfile()Lcom/texa/carelib/profile/Profile;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/profile/Profile;->getProfileDelegate()Lcom/texa/carelib/profile/ProfileDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->getProfile()Lcom/texa/carelib/profile/Profile;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/profile/Profile;->getProfileDelegate()Lcom/texa/carelib/profile/ProfileDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/profile/ProfileDelegate;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "profile delegate not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getProfile()Lcom/texa/carelib/profile/Profile;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    return-object v0
.end method

.method getServiceProxy()Lcom/texa/carelib/webservices/ServiceProxy;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    invoke-virtual {v0}, Lcom/texa/carelib/profile/internal/SerialProfile;->getServiceProxy()Lcom/texa/carelib/webservices/ServiceProxy;

    move-result-object v0

    return-object v0
.end method

.method public onCommunicationStatusChanged(Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;)V
    .locals 3

    .line 286
    invoke-virtual {p1}, Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;->getCommunicationStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object p1

    .line 287
    sget-object v0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure$1;->$SwitchMap$com$texa$carelib$communication$CommunicationStatus:[I

    invoke-virtual {p1}, Lcom/texa/carelib/communication/CommunicationStatus;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 293
    :cond_0
    sget-object p1, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Not connected!!"

    invoke-static {p1, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 295
    iput-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->mSerialNumber:Ljava/lang/String;

    .line 297
    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 298
    new-instance p1, Lcom/texa/carelib/core/CareError$Builder;

    const/16 v1, 0x13

    invoke-direct {p1, v0, v1}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    invoke-virtual {p0}, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/texa/carelib/profile/R$string;->error_connection_lost:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->terminate(Lcom/texa/carelib/core/CareError;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onMessageReceived(Ljava/lang/Object;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 2

    .line 107
    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result v0

    const/16 v1, 0xe6

    if-eq v0, v1, :cond_1

    const/16 v1, 0xee

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->handleGetSerialNumberCommand(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    goto :goto_0

    .line 109
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->handleGetStatusCommand(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    .line 118
    :goto_0
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->mProtectionStatus:Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatus;

    if-eqz v0, :cond_2

    .line 119
    invoke-virtual {v0, p1, p2, p3}, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatus;->onMessageReceived(Ljava/lang/Object;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    :cond_2
    return-void
.end method

.method public sendMessage(Lcom/texa/carelib/communication/Message;)V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/texa/carelib/profile/internal/SerialProfile;->sendMessage(Lcom/texa/carelib/communication/Message;Z)V

    return-void
.end method

.method public setStatus(Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatus;)V
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->mProtectionStatusLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    const-string v1, "setStatus"

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->lock(Ljava/lang/String;)Z

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->mProtectionStatus:Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatus;

    .line 136
    iput-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->mProtectionStatus:Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    iget-object v2, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->mProtectionStatusLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v2, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0}, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatus;->release()V

    :cond_0
    if-eqz p1, :cond_1

    .line 148
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatus;->init()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 140
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->mProtectionStatusLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    throw p1
.end method

.method terminate(Lcom/texa/carelib/core/CareError;)V
    .locals 3

    .line 216
    sget-object v0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Terminating protection procedure."

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 217
    invoke-virtual {p0, v0}, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->setStatus(Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatus;)V

    .line 219
    invoke-direct {p0, p1}, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->fireEventProtectionSessionCompleted(Lcom/texa/carelib/core/CareError;)V

    .line 222
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->mCallbacksLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    const-string v0, "terminate"

    invoke-virtual {p1, v0}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->lock(Ljava/lang/String;)Z

    .line 224
    :try_start_0
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->mCallbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->mCallbacksLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {p1, v0}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    return-void

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->mCallbacksLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v1, v0}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    throw p1
.end method
