.class public Lcom/texa/carelib/communication/internal/serial/SlaveReconnectionController;
.super Ljava/lang/Object;
.source "SlaveReconnectionController.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SlaveReconnectionController"


# instance fields
.field private final mDevices:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/texa/carelib/communication/DeviceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/texa/carelib/communication/internal/serial/SlaveReconnectionController;->mDevices:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/carelib/communication/DeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lcom/texa/carelib/communication/internal/serial/SlaveReconnectionController;-><init>()V

    .line 39
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/serial/SlaveReconnectionController;->mDevices:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public getNextDevice()Lcom/texa/carelib/communication/DeviceInfo;
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/serial/SlaveReconnectionController;->mDevices:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/DeviceInfo;

    if-eqz v0, :cond_0

    .line 51
    iget-object v1, p0, Lcom/texa/carelib/communication/internal/serial/SlaveReconnectionController;->mDevices:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/serial/SlaveReconnectionController;->mDevices:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/serial/SlaveReconnectionController;->mDevices:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    return v0
.end method
