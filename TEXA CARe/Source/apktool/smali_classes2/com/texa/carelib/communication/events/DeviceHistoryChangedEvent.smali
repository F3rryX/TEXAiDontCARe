.class public Lcom/texa/carelib/communication/events/DeviceHistoryChangedEvent;
.super Lcom/texa/carelib/core/events/EventBase;
.source "DeviceHistoryChangedEvent.java"


# instance fields
.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/carelib/communication/DeviceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Lcom/texa/carelib/communication/DeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1}, Lcom/texa/carelib/core/events/EventBase;-><init>(Ljava/lang/Object;)V

    .line 27
    iput-object p2, p0, Lcom/texa/carelib/communication/events/DeviceHistoryChangedEvent;->mItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/carelib/communication/DeviceInfo;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/texa/carelib/communication/events/DeviceHistoryChangedEvent;->mItems:Ljava/util/List;

    return-object v0
.end method
