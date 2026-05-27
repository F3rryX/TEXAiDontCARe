.class public Lcom/texa/carelib/care/vehicle/events/ParametersUpdatedEvent;
.super Lcom/texa/carelib/core/events/EventBase;
.source "ParametersUpdatedEvent.java"


# instance fields
.field private final mUpdatedParameterIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1}, Lcom/texa/carelib/core/events/EventBase;-><init>(Ljava/lang/Object;)V

    .line 16
    iput-object p2, p0, Lcom/texa/carelib/care/vehicle/events/ParametersUpdatedEvent;->mUpdatedParameterIds:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public getUpdatedParametersIDs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/events/ParametersUpdatedEvent;->mUpdatedParameterIds:Ljava/util/Set;

    return-object v0
.end method
