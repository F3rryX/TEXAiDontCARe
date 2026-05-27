.class public Lcom/texa/careapp/app/events/ModelUpdateEvent;
.super Ljava/lang/Object;
.source "ModelUpdateEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/app/events/ModelUpdateEvent$DatabaseAction;
    }
.end annotation


# instance fields
.field private final action:Lcom/texa/careapp/app/events/ModelUpdateEvent$DatabaseAction;

.field private final model:Lcom/activeandroid/Model;


# direct methods
.method public constructor <init>(Lcom/activeandroid/Model;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/texa/careapp/app/events/ModelUpdateEvent;->model:Lcom/activeandroid/Model;

    .line 23
    sget-object p1, Lcom/texa/careapp/app/events/ModelUpdateEvent$DatabaseAction;->UPDATE:Lcom/texa/careapp/app/events/ModelUpdateEvent$DatabaseAction;

    iput-object p1, p0, Lcom/texa/careapp/app/events/ModelUpdateEvent;->action:Lcom/texa/careapp/app/events/ModelUpdateEvent$DatabaseAction;

    return-void
.end method

.method public constructor <init>(Lcom/activeandroid/Model;Lcom/texa/careapp/app/events/ModelUpdateEvent$DatabaseAction;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/texa/careapp/app/events/ModelUpdateEvent;->model:Lcom/activeandroid/Model;

    .line 28
    iput-object p2, p0, Lcom/texa/careapp/app/events/ModelUpdateEvent;->action:Lcom/texa/careapp/app/events/ModelUpdateEvent$DatabaseAction;

    return-void
.end method


# virtual methods
.method public getAction()Lcom/texa/careapp/app/events/ModelUpdateEvent$DatabaseAction;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/texa/careapp/app/events/ModelUpdateEvent;->action:Lcom/texa/careapp/app/events/ModelUpdateEvent$DatabaseAction;

    return-object v0
.end method

.method public getModel()Lcom/activeandroid/Model;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/texa/careapp/app/events/ModelUpdateEvent;->model:Lcom/activeandroid/Model;

    return-object v0
.end method
