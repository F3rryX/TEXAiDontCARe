.class Lcom/texa/carelib/profile/internal/SerialProfile$OutgoingMessageQueue;
.super Ljava/lang/Object;
.source "SerialProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/profile/internal/SerialProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OutgoingMessageQueue"
.end annotation


# instance fields
.field private final mIgnoreDuplicatedMessages:Z

.field private final mMessages:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/texa/carelib/communication/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1041
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1042
    iput-boolean p1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$OutgoingMessageQueue;->mIgnoreDuplicatedMessages:Z

    .line 1043
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$OutgoingMessageQueue;->mMessages:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method addHead(Lcom/texa/carelib/communication/Message;)Z
    .locals 7

    .line 1047
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProfile$OutgoingMessageQueue;->mMessages:Ljava/util/LinkedList;

    monitor-enter v0

    .line 1048
    :try_start_0
    iget-boolean v1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$OutgoingMessageQueue;->mIgnoreDuplicatedMessages:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1049
    iget-object v1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$OutgoingMessageQueue;->mMessages:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 1050
    monitor-exit v0

    return v2

    .line 1051
    :cond_0
    iget-object v1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$OutgoingMessageQueue;->mMessages:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1052
    iget-object v1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$OutgoingMessageQueue;->mMessages:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 1053
    monitor-exit v0

    return v2

    .line 1055
    :cond_1
    sget-object v1, Lcom/texa/carelib/profile/internal/SerialProfile;->TAG:Ljava/lang/String;

    const-string v3, "Skipping message %1$d(%2$s). It\'s already in outgoing message queue."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/texa/carelib/communication/Commands;->getName(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {v1, v3, v4}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1057
    monitor-exit v0

    return v6

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method addTail(Lcom/texa/carelib/communication/Message;)Z
    .locals 7

    .line 1063
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProfile$OutgoingMessageQueue;->mMessages:Ljava/util/LinkedList;

    monitor-enter v0

    .line 1064
    :try_start_0
    iget-boolean v1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$OutgoingMessageQueue;->mIgnoreDuplicatedMessages:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1065
    iget-object v1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$OutgoingMessageQueue;->mMessages:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1066
    monitor-exit v0

    return v2

    .line 1067
    :cond_0
    iget-object v1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$OutgoingMessageQueue;->mMessages:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1068
    iget-object v1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$OutgoingMessageQueue;->mMessages:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1069
    monitor-exit v0

    return v2

    .line 1071
    :cond_1
    sget-object v1, Lcom/texa/carelib/profile/internal/SerialProfile;->TAG:Ljava/lang/String;

    const-string v3, "Skipping message %1$d(%2$s). It\'s already in outgoing message queue."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/texa/carelib/communication/Commands;->getName(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {v1, v3, v4}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1073
    monitor-exit v0

    return v6

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method clear()V
    .locals 2

    .line 1079
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProfile$OutgoingMessageQueue;->mMessages:Ljava/util/LinkedList;

    monitor-enter v0

    .line 1080
    :try_start_0
    iget-object v1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$OutgoingMessageQueue;->mMessages:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 1081
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isEmpty()Z
    .locals 1

    .line 1102
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProfile$OutgoingMessageQueue;->mMessages:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method poll()Lcom/texa/carelib/communication/Message;
    .locals 2

    .line 1086
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProfile$OutgoingMessageQueue;->mMessages:Ljava/util/LinkedList;

    monitor-enter v0

    .line 1087
    :try_start_0
    iget-object v1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$OutgoingMessageQueue;->mMessages:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1088
    iget-object v1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$OutgoingMessageQueue;->mMessages:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/carelib/communication/Message;

    monitor-exit v0

    return-object v1

    .line 1090
    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method size()I
    .locals 2

    .line 1096
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProfile$OutgoingMessageQueue;->mMessages:Ljava/util/LinkedList;

    monitor-enter v0

    .line 1097
    :try_start_0
    iget-object v1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$OutgoingMessageQueue;->mMessages:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 1098
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
