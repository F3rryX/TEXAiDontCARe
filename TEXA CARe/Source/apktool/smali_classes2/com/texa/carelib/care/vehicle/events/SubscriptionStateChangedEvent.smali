.class public Lcom/texa/carelib/care/vehicle/events/SubscriptionStateChangedEvent;
.super Lcom/texa/carelib/core/events/ErrorEventBase;
.source "SubscriptionStateChangedEvent.java"


# instance fields
.field private final mSubscriptionStates:[Lcom/texa/carelib/care/vehicle/SubscriptionState;

.field private final mUpdatedParameterIds:[Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/Object;[Ljava/lang/Long;[Lcom/texa/carelib/care/vehicle/SubscriptionState;Lcom/texa/carelib/core/CareError;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p4}, Lcom/texa/carelib/core/events/ErrorEventBase;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    .line 26
    iput-object p3, p0, Lcom/texa/carelib/care/vehicle/events/SubscriptionStateChangedEvent;->mSubscriptionStates:[Lcom/texa/carelib/care/vehicle/SubscriptionState;

    .line 27
    iput-object p2, p0, Lcom/texa/carelib/care/vehicle/events/SubscriptionStateChangedEvent;->mUpdatedParameterIds:[Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public getSubscriptionStates()[Lcom/texa/carelib/care/vehicle/SubscriptionState;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/events/SubscriptionStateChangedEvent;->mSubscriptionStates:[Lcom/texa/carelib/care/vehicle/SubscriptionState;

    return-object v0
.end method

.method public getUpdatedParametersIDs()[Ljava/lang/Long;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/events/SubscriptionStateChangedEvent;->mUpdatedParameterIds:[Ljava/lang/Long;

    return-object v0
.end method
