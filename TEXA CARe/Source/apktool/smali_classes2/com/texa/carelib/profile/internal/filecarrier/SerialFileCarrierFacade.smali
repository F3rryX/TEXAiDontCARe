.class public Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;
.super Lcom/texa/carelib/profile/ProfileSubModule;
.source "SerialFileCarrierFacade.java"

# interfaces
.implements Lcom/texa/carelib/profile/internal/SerialProfileMessageReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade$FileCarrierListenerFacade;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SerialFileCarrierFacade"

.field private static _Instance:Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;


# instance fields
.field private mFileCarrier:Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier;

.field private final mFileCarrierLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

.field private final mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/profile/internal/SerialProfile;)V
    .locals 3

    .line 37
    invoke-direct {p0}, Lcom/texa/carelib/profile/ProfileSubModule;-><init>()V

    .line 281
    new-instance v0, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    sget-object v1, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;->TAG:Ljava/lang/String;

    const-string v2, "mFileCarrierLock"

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;->mFileCarrierLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    .line 38
    iput-object p1, p0, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    return-void
.end method

.method static synthetic access$102(Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier;)Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;->mFileCarrier:Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier;

    return-object p1
.end method


# virtual methods
.method public getProfile()Lcom/texa/carelib/profile/Profile;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    return-object v0
.end method

.method public isFileTransferPending()Z
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;->mFileCarrierLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    const-string v1, "isFileTransferPending"

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->lock(Ljava/lang/String;)Z

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;->mFileCarrier:Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 55
    :goto_0
    iget-object v2, p0, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;->mFileCarrierLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v2, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    return v0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;->mFileCarrierLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v2, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    throw v0
.end method

.method public onCommunicationStatusChanged(Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;)V
    .locals 2

    .line 224
    sget-object v0, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade$1;->$SwitchMap$com$texa$carelib$communication$CommunicationStatus:[I

    invoke-virtual {p1}, Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;->getCommunicationStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/communication/CommunicationStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;->mFileCarrier:Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier;

    if-eqz v0, :cond_1

    .line 231
    invoke-interface {v0, p1}, Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier;->onCommunicationStatusChanged(Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;)V

    :cond_1
    const/4 p1, 0x0

    .line 233
    iput-object p1, p0, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;->mFileCarrier:Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier;

    :goto_0
    return-void
.end method

.method public onMessageReceived(Ljava/lang/Object;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;->mFileCarrier:Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier;

    instance-of v1, v0, Lcom/texa/carelib/profile/internal/SerialProfileMessageReceiver;

    if-eqz v1, :cond_0

    .line 212
    check-cast v0, Lcom/texa/carelib/profile/internal/SerialProfileMessageReceiver;

    invoke-interface {v0, p1, p2, p3}, Lcom/texa/carelib/profile/internal/SerialProfileMessageReceiver;->onMessageReceived(Ljava/lang/Object;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    :cond_0
    return-void
.end method

.method public receiveFileWithType(Landroid/content/Context;IILcom/texa/carelib/profile/internal/filecarrier/FileCarrierListener;)Z
    .locals 4

    .line 114
    invoke-virtual {p0}, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;->isFileTransferPending()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 115
    sget-object p1, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;->TAG:Ljava/lang/String;

    new-array p2, v0, [Ljava/lang/Object;

    const-string p3, "A file transfer operation is pending. "

    invoke-static {p1, p3, p2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_0
    const/16 p1, 0xff

    if-ne p1, p2, :cond_1

    .line 121
    sget-object p1, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;->TAG:Ljava/lang/String;

    new-array p2, v0, [Ljava/lang/Object;

    const-string p3, "File type cannot be FILE_TYPE_UNDEFINED."

    invoke-static {p1, p3, p2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 126
    :cond_1
    new-instance p1, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrierFactory;

    invoke-direct {p1}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrierFactory;-><init>()V

    .line 129
    iget-object v1, p0, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;->mFileCarrierLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    const-string v2, "receiveFileWithType"

    invoke-virtual {v1, v2}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->lock(Ljava/lang/String;)Z

    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    invoke-virtual {p1, v1, p2}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrierFactory;->create(Lcom/texa/carelib/profile/internal/SerialProfile;I)Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;->mFileCarrier:Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier;

    if-eqz p1, :cond_3

    .line 136
    new-instance v1, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade$FileCarrierListenerFacade;

    const/4 v3, 0x0

    invoke-direct {v1, p0, p4, v3}, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade$FileCarrierListenerFacade;-><init>(Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;Lcom/texa/carelib/profile/internal/filecarrier/FileCarrierListener;Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade$1;)V

    invoke-interface {p1, v1}, Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier;->setFileCarrierListener(Lcom/texa/carelib/profile/internal/filecarrier/FileCarrierListener;)V

    .line 139
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;->mFileCarrier:Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier;

    invoke-interface {p1, p2, p3}, Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier;->receiveFileWithType(II)Z

    move-result p1

    if-nez p1, :cond_2

    .line 142
    sget-object p2, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;->TAG:Ljava/lang/String;

    const-string p3, "receiveFileWithType returns false."

    new-array p4, v0, [Ljava/lang/Object;

    invoke-static {p2, p3, p4}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    iput-object v3, p0, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;->mFileCarrier:Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier;

    :cond_2
    move v0, p1

    goto :goto_0

    .line 147
    :cond_3
    sget-object p1, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;->TAG:Ljava/lang/String;

    const-string p3, "Could not create FileCarrier instance for file type: %d"

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p4, v0

    invoke-static {p1, p3, p4}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :goto_0
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;->mFileCarrierLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {p1, v2}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    return v0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;->mFileCarrierLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {p2, v2}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    throw p1
.end method

.method public receiveFileWithType(Landroid/content/Context;ILjava/lang/String;Lcom/texa/carelib/profile/internal/filecarrier/FileCarrierListener;)Z
    .locals 4

    .line 167
    invoke-virtual {p0}, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;->isFileTransferPending()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 168
    sget-object p1, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;->TAG:Ljava/lang/String;

    new-array p2, v0, [Ljava/lang/Object;

    const-string p3, "A file transfer operation is pending. "

    invoke-static {p1, p3, p2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_0
    const/16 p1, 0xff

    if-ne p1, p2, :cond_1

    .line 174
    sget-object p1, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;->TAG:Ljava/lang/String;

    new-array p2, v0, [Ljava/lang/Object;

    const-string p3, "File type cannot be FILE_TYPE_UNDEFINED."

    invoke-static {p1, p3, p2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 179
    :cond_1
    new-instance p1, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrierFactory;

    invoke-direct {p1}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrierFactory;-><init>()V

    .line 182
    iget-object v1, p0, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;->mFileCarrierLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    const-string v2, "receiveFileWithType"

    invoke-virtual {v1, v2}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->lock(Ljava/lang/String;)Z

    .line 184
    :try_start_0
    iget-object v1, p0, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    invoke-virtual {p1, v1, p2}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrierFactory;->create(Lcom/texa/carelib/profile/internal/SerialProfile;I)Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;->mFileCarrier:Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier;

    if-eqz p1, :cond_3

    .line 189
    new-instance v1, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade$FileCarrierListenerFacade;

    const/4 v3, 0x0

    invoke-direct {v1, p0, p4, v3}, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade$FileCarrierListenerFacade;-><init>(Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;Lcom/texa/carelib/profile/internal/filecarrier/FileCarrierListener;Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade$1;)V

    invoke-interface {p1, v1}, Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier;->setFileCarrierListener(Lcom/texa/carelib/profile/internal/filecarrier/FileCarrierListener;)V

    .line 192
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;->mFileCarrier:Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier;

    invoke-interface {p1, p2, p3}, Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier;->receiveFileWithType(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 195
    sget-object p2, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;->TAG:Ljava/lang/String;

    const-string p3, "receiveFileWithType returns false."

    new-array p4, v0, [Ljava/lang/Object;

    invoke-static {p2, p3, p4}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    iput-object v3, p0, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;->mFileCarrier:Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier;

    :cond_2
    move v0, p1

    goto :goto_0

    .line 200
    :cond_3
    sget-object p1, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;->TAG:Ljava/lang/String;

    const-string p3, "Could not create FileCarrier instance for file type: %d"

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p4, v0

    invoke-static {p1, p3, p4}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :goto_0
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;->mFileCarrierLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {p1, v2}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    return v0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;->mFileCarrierLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {p2, v2}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    throw p1
.end method

.method public sendFile(Landroid/content/Context;Ljava/io/InputStream;ILcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;Ljava/lang/String;Lcom/texa/carelib/profile/internal/filecarrier/FileCarrierListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 72
    invoke-virtual {p0}, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;->isFileTransferPending()Z

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, 0xff

    if-eq p1, p3, :cond_1

    .line 81
    new-instance p1, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrierFactory;

    invoke-direct {p1}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrierFactory;-><init>()V

    .line 84
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;->mFileCarrierLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    const-string v1, "sendFile"

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->lock(Ljava/lang/String;)Z

    const/4 v0, 0x0

    .line 86
    :try_start_0
    iget-object v2, p0, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    invoke-virtual {p1, v2, p3}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrierFactory;->create(Lcom/texa/carelib/profile/internal/SerialProfile;I)Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;->mFileCarrier:Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier;

    if-eqz p1, :cond_0

    .line 91
    new-instance v2, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade$FileCarrierListenerFacade;

    invoke-direct {v2, p0, p6, v0}, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade$FileCarrierListenerFacade;-><init>(Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;Lcom/texa/carelib/profile/internal/filecarrier/FileCarrierListener;Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade$1;)V

    invoke-interface {p1, v2}, Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier;->setFileCarrierListener(Lcom/texa/carelib/profile/internal/filecarrier/FileCarrierListener;)V

    .line 93
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;->mFileCarrier:Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier;

    invoke-interface {p1, p2, p3, p4, p5}, Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier;->sendFile(Ljava/io/InputStream;ILcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_0
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string p2, "Unsupported file type."

    invoke-direct {p1, p2}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 97
    :catch_0
    :try_start_1
    iput-object v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;->mFileCarrier:Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    :goto_0
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;->mFileCarrierLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {p1, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    return-void

    :goto_1
    iget-object p2, p0, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;->mFileCarrierLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {p2, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    throw p1

    .line 77
    :cond_1
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string p2, "File type cannot be FILE_TYPE_UNDEFINED."

    invoke-direct {p1, p2}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_2
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string p2, "A file transfer operation is pending."

    invoke-direct {p1, p2}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
