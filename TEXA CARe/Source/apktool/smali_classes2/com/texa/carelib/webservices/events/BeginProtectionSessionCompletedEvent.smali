.class public Lcom/texa/carelib/webservices/events/BeginProtectionSessionCompletedEvent;
.super Lcom/texa/carelib/core/events/ErrorEventBase;
.source "BeginProtectionSessionCompletedEvent.java"


# instance fields
.field private final mSessionID:Ljava/lang/String;

.field private final mVerificationToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/texa/carelib/core/CareError;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p4}, Lcom/texa/carelib/core/events/ErrorEventBase;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    .line 28
    iput-object p2, p0, Lcom/texa/carelib/webservices/events/BeginProtectionSessionCompletedEvent;->mSessionID:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/texa/carelib/webservices/events/BeginProtectionSessionCompletedEvent;->mVerificationToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSessionID()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/texa/carelib/webservices/events/BeginProtectionSessionCompletedEvent;->mSessionID:Ljava/lang/String;

    return-object v0
.end method

.method public getVerificationToken()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/texa/carelib/webservices/events/BeginProtectionSessionCompletedEvent;->mVerificationToken:Ljava/lang/String;

    return-object v0
.end method
