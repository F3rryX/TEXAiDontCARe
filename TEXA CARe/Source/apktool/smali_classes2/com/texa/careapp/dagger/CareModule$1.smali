.class Lcom/texa/careapp/dagger/CareModule$1;
.super Lcom/texa/carelib/communication/CommunicationDelegate;
.source "CareModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/dagger/CareModule;->provideCommunication()Lcom/texa/carelib/communication/Communication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/dagger/CareModule;


# direct methods
.method constructor <init>(Lcom/texa/careapp/dagger/CareModule;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/texa/careapp/dagger/CareModule$1;->this$0:Lcom/texa/careapp/dagger/CareModule;

    invoke-direct {p0}, Lcom/texa/carelib/communication/CommunicationDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/texa/careapp/dagger/CareModule$1;->this$0:Lcom/texa/careapp/dagger/CareModule;

    iget-object v0, v0, Lcom/texa/careapp/dagger/CareModule;->mApplication:Lcom/texa/careapp/CareApplication;

    return-object v0
.end method
