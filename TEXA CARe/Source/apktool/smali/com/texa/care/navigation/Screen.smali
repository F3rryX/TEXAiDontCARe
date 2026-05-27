.class public abstract Lcom/texa/care/navigation/Screen;
.super Ljava/lang/Object;
.source "Screen.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Screen"


# instance fields
.field private mNavigator:Lcom/texa/care/navigation/Navigator;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract afterViewInjection(Landroid/view/View;)V
.end method

.method public getCloseTransaction()I
    .locals 1

    const/16 v0, 0x2002

    return v0
.end method

.method protected final getContext()Landroid/content/Context;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/texa/care/navigation/Screen;->mNavigator:Lcom/texa/care/navigation/Navigator;

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getLayoutId()I
.end method

.method public getNavigator()Lcom/texa/care/navigation/Navigator;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/texa/care/navigation/Screen;->mNavigator:Lcom/texa/care/navigation/Navigator;

    return-object v0
.end method

.method public getTitle()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTransaction()I
    .locals 1

    const/16 v0, 0x1001

    return v0
.end method

.method public getType()Lcom/texa/care/navigation/ScreenType;
    .locals 1

    .line 84
    sget-object v0, Lcom/texa/care/navigation/ScreenType;->DEFAULT:Lcom/texa/care/navigation/ScreenType;

    return-object v0
.end method

.method protected final goBack()V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/texa/care/navigation/Screen;->mNavigator:Lcom/texa/care/navigation/Navigator;

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->goBack()Z

    return-void
.end method

.method protected final goTo(Lcom/texa/care/navigation/Screen;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/texa/care/navigation/Screen;->mNavigator:Lcom/texa/care/navigation/Navigator;

    invoke-virtual {v0, p1}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public final setNavigator(Lcom/texa/care/navigation/Navigator;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/texa/care/navigation/Screen;->mNavigator:Lcom/texa/care/navigation/Navigator;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/texa/care/navigation/Screen;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
