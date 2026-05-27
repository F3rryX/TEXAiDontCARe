.class public final Lcom/texa/care/navigation/NavigatorDataFragment;
.super Landroidx/fragment/app/Fragment;
.source "NavigatorDataFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "NavigatorDataFragment"


# instance fields
.field private mNavigator:Lcom/texa/care/navigation/Navigator;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getNavigator()Lcom/texa/care/navigation/Navigator;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/texa/care/navigation/NavigatorDataFragment;->mNavigator:Lcom/texa/care/navigation/Navigator;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 14
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 15
    invoke-virtual {p0, p1}, Lcom/texa/care/navigation/NavigatorDataFragment;->setRetainInstance(Z)V

    return-void
.end method

.method public setNavigator(Lcom/texa/care/navigation/Navigator;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/texa/care/navigation/NavigatorDataFragment;->mNavigator:Lcom/texa/care/navigation/Navigator;

    return-void
.end method
