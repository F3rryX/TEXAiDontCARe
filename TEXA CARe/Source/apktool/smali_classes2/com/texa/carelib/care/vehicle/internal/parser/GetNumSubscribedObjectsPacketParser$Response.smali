.class public Lcom/texa/carelib/care/vehicle/internal/parser/GetNumSubscribedObjectsPacketParser$Response;
.super Ljava/lang/Object;
.source "GetNumSubscribedObjectsPacketParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/care/vehicle/internal/parser/GetNumSubscribedObjectsPacketParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation


# instance fields
.field private mActiveSubscriptionCount:Ljava/lang/Integer;

.field private mMaximumSubscriptionCount:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/parser/GetNumSubscribedObjectsPacketParser$Response;->mActiveSubscriptionCount:Ljava/lang/Integer;

    .line 57
    iput-object p2, p0, Lcom/texa/carelib/care/vehicle/internal/parser/GetNumSubscribedObjectsPacketParser$Response;->mMaximumSubscriptionCount:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getActiveSubscriptionCount()Ljava/lang/Integer;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/parser/GetNumSubscribedObjectsPacketParser$Response;->mActiveSubscriptionCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMaximumSubscriptionCount()Ljava/lang/Integer;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/parser/GetNumSubscribedObjectsPacketParser$Response;->mMaximumSubscriptionCount:Ljava/lang/Integer;

    return-object v0
.end method
