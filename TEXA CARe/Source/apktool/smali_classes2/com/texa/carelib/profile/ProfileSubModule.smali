.class public abstract Lcom/texa/carelib/profile/ProfileSubModule;
.super Lcom/texa/carelib/core/ObservableObjectBase;
.source "ProfileSubModule.java"


# instance fields
.field private final mArguments:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/texa/carelib/core/ObservableObjectBase;-><init>()V

    .line 23
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/texa/carelib/profile/ProfileSubModule;->mArguments:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final getArguments()Landroid/os/Bundle;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/texa/carelib/profile/ProfileSubModule;->mArguments:Landroid/os/Bundle;

    return-object v0
.end method

.method public abstract getProfile()Lcom/texa/carelib/profile/Profile;
.end method

.method public loadInfo()V
    .locals 0

    return-void
.end method

.method public abstract onCommunicationStatusChanged(Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;)V
.end method

.method public onMessageReceived(Ljava/lang/Object;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 0

    return-void
.end method
