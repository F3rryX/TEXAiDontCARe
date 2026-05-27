.class Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController;
.super Ljava/lang/Object;
.source "SerialProfileCommandSubscriptionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController$NotificationListener;,
        Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController$MessageNotificationEvent;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SerialProfileCommandSubscriptionController"


# instance fields
.field private final mNotificationListener:Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController$NotificationListener;

.field private final mNotifiedMessages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubscriptions:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController$NotificationListener;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController;->mNotificationListener:Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController$NotificationListener;

    .line 25
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController;->mNotifiedMessages:Ljava/util/Set;

    .line 26
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController;->mSubscriptions:Landroid/util/SparseIntArray;

    return-void
.end method


# virtual methods
.method protected consumeNotification(Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController$NotificationListener;I)V
    .locals 1

    .line 113
    new-instance v0, Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController$MessageNotificationEvent;

    invoke-direct {v0, p2}, Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController$MessageNotificationEvent;-><init>(I)V

    .line 114
    invoke-interface {p1, v0}, Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController$NotificationListener;->onNotificationReceived(Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController$MessageNotificationEvent;)V

    .line 115
    invoke-virtual {v0}, Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController$MessageNotificationEvent;->isConsumed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 116
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController;->mNotifiedMessages:Ljava/util/Set;

    monitor-enter p1

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController;->mNotifiedMessages:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 118
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_0
    :goto_0
    return-void
.end method

.method protected enqueueNotification(Ljava/lang/Integer;)V
    .locals 2

    .line 87
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController;->mNotifiedMessages:Ljava/util/Set;

    monitor-enter p1

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController;->mNotifiedMessages:Ljava/util/Set;

    const v1, 0x102000b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 89
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected isSubscribed(I)Z
    .locals 4

    .line 101
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController;->mSubscriptions:Landroid/util/SparseIntArray;

    monitor-enter v0

    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController;->mSubscriptions:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    const/4 v2, 0x1

    if-gez v1, :cond_0

    .line 104
    monitor-exit v0

    return v2

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController;->mSubscriptions:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    .line 108
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method onCommandNotify(I)V
    .locals 5

    .line 35
    invoke-virtual {p0, p1}, Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController;->isSubscribed(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    .line 36
    sget-object v0, Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController;->TAG:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/texa/carelib/core/utils/internal/Hex;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/texa/carelib/communication/Commands;->getName(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    const-string v1, "Received notification for command 0x%1$s(%2$s)..."

    invoke-static {v0, v1, v3}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController;->mNotificationListener:Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController$NotificationListener;

    invoke-virtual {p0, v0, p1}, Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController;->consumeNotification(Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController$NotificationListener;I)V

    goto :goto_0

    .line 40
    :cond_0
    sget-object v0, Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController;->TAG:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/texa/carelib/core/utils/internal/Hex;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/texa/carelib/communication/Commands;->getName(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    const-string v1, "Received notification for command 0x%1$s(%2$s) from the dongle but no subscriber is yet registered to handle them..."

    invoke-static {v0, v1, v3}, Lcom/texa/carelib/core/logging/CareLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController;->enqueueNotification(Ljava/lang/Integer;)V

    :goto_0
    return-void
.end method

.method subscribe(I)V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController;->mSubscriptions:Landroid/util/SparseIntArray;

    monitor-enter v0

    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController;->mSubscriptions:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 54
    iget-object v2, p0, Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController;->mSubscriptions:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 55
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController;->mNotifiedMessages:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController;->mNotificationListener:Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController$NotificationListener;

    invoke-virtual {p0, v0, p1}, Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController;->consumeNotification(Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController$NotificationListener;I)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 55
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method unsubscribe(I)V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController;->mSubscriptions:Landroid/util/SparseIntArray;

    monitor-enter v0

    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController;->mSubscriptions:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-lez v1, :cond_0

    .line 75
    iget-object v2, p0, Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController;->mSubscriptions:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 77
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
