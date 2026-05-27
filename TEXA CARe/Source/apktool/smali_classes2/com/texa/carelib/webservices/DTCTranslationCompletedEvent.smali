.class public Lcom/texa/carelib/webservices/DTCTranslationCompletedEvent;
.super Lcom/texa/carelib/core/events/ErrorEventBase;
.source "DTCTranslationCompletedEvent.java"


# instance fields
.field private final mDTCs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/vehicletroubles/DTC;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/util/List;Lcom/texa/carelib/core/CareError;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/vehicletroubles/DTC;",
            ">;",
            "Lcom/texa/carelib/core/CareError;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p3}, Lcom/texa/carelib/core/events/ErrorEventBase;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    .line 30
    iput-object p2, p0, Lcom/texa/carelib/webservices/DTCTranslationCompletedEvent;->mDTCs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getDTCs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/vehicletroubles/DTC;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/texa/carelib/webservices/DTCTranslationCompletedEvent;->mDTCs:Ljava/util/List;

    return-object v0
.end method
