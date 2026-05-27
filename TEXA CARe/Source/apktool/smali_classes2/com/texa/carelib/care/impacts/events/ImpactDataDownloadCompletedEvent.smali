.class public Lcom/texa/carelib/care/impacts/events/ImpactDataDownloadCompletedEvent;
.super Lcom/texa/carelib/core/events/ErrorEventBase;
.source "ImpactDataDownloadCompletedEvent.java"


# instance fields
.field private final mAccelerationEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/impacts/CrashReport;",
            ">;"
        }
    .end annotation
.end field

.field private final mImpacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/impacts/Impact;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Lcom/texa/carelib/core/CareError;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/impacts/Impact;",
            ">;",
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/impacts/CrashReport;",
            ">;",
            "Lcom/texa/carelib/core/CareError;",
            ")V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p4}, Lcom/texa/carelib/core/events/ErrorEventBase;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    if-nez p2, :cond_0

    .line 34
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/care/impacts/events/ImpactDataDownloadCompletedEvent;->mImpacts:Ljava/util/List;

    goto :goto_0

    .line 36
    :cond_0
    iput-object p2, p0, Lcom/texa/carelib/care/impacts/events/ImpactDataDownloadCompletedEvent;->mImpacts:Ljava/util/List;

    :goto_0
    if-nez p3, :cond_1

    .line 40
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/care/impacts/events/ImpactDataDownloadCompletedEvent;->mAccelerationEvents:Ljava/util/List;

    goto :goto_1

    .line 42
    :cond_1
    iput-object p3, p0, Lcom/texa/carelib/care/impacts/events/ImpactDataDownloadCompletedEvent;->mAccelerationEvents:Ljava/util/List;

    :goto_1
    return-void
.end method


# virtual methods
.method public getAccelerationEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/impacts/CrashReport;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/events/ImpactDataDownloadCompletedEvent;->mAccelerationEvents:Ljava/util/List;

    return-object v0
.end method

.method public getImpacts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/impacts/Impact;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/events/ImpactDataDownloadCompletedEvent;->mImpacts:Ljava/util/List;

    return-object v0
.end method
