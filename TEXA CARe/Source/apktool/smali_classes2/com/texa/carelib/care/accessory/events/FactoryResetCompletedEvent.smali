.class public Lcom/texa/carelib/care/accessory/events/FactoryResetCompletedEvent;
.super Lcom/texa/carelib/core/events/ErrorEventBase;
.source "FactoryResetCompletedEvent.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/content/Context;Lcom/texa/carelib/core/CareError;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p3}, Lcom/texa/carelib/core/events/ErrorEventBase;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    .line 28
    iput-object p2, p0, Lcom/texa/carelib/care/accessory/events/FactoryResetCompletedEvent;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/events/FactoryResetCompletedEvent;->mContext:Landroid/content/Context;

    return-object v0
.end method
