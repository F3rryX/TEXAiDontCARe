.class public Lcom/texa/care/navigation/NavigatorFragment;
.super Landroidx/fragment/app/Fragment;
.source "NavigatorFragment.java"


# instance fields
.field private mNavigator:Lcom/texa/care/navigation/Navigator;

.field private mScreen:Lcom/texa/care/navigation/Screen;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 29
    invoke-virtual {p0}, Lcom/texa/care/navigation/NavigatorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/texa/care/navigation/Navigator;->getInstanceFor(Landroid/app/Activity;)Lcom/texa/care/navigation/Navigator;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/care/navigation/NavigatorFragment;->mNavigator:Lcom/texa/care/navigation/Navigator;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 22
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 23
    invoke-virtual {p0, p1}, Lcom/texa/care/navigation/NavigatorFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/texa/care/navigation/NavigatorFragment;->mScreen:Lcom/texa/care/navigation/Screen;

    invoke-virtual {v0, p1, p2}, Lcom/texa/care/navigation/Screen;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 35
    iget-object p3, p0, Lcom/texa/care/navigation/NavigatorFragment;->mNavigator:Lcom/texa/care/navigation/Navigator;

    if-eqz p3, :cond_1

    .line 39
    invoke-virtual {p3}, Lcom/texa/care/navigation/Navigator;->getCurrentScreen()Lcom/texa/care/navigation/Screen;

    move-result-object p3

    iput-object p3, p0, Lcom/texa/care/navigation/NavigatorFragment;->mScreen:Lcom/texa/care/navigation/Screen;

    if-eqz p3, :cond_0

    .line 45
    invoke-virtual {p3}, Lcom/texa/care/navigation/Screen;->getLayoutId()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 46
    iget-object p2, p0, Lcom/texa/care/navigation/NavigatorFragment;->mScreen:Lcom/texa/care/navigation/Screen;

    invoke-virtual {p2, p1}, Lcom/texa/care/navigation/Screen;->afterViewInjection(Landroid/view/View;)V

    .line 47
    iget-object p2, p0, Lcom/texa/care/navigation/NavigatorFragment;->mNavigator:Lcom/texa/care/navigation/Navigator;

    invoke-virtual {p0}, Lcom/texa/care/navigation/NavigatorFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/texa/care/navigation/Navigator;->setChildFragmentManager(Landroidx/fragment/app/FragmentManager;)V

    return-object p1

    .line 42
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "mScreen is null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "mNavigator is null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 71
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 72
    iget-object v0, p0, Lcom/texa/care/navigation/NavigatorFragment;->mScreen:Lcom/texa/care/navigation/Screen;

    invoke-virtual {v0}, Lcom/texa/care/navigation/Screen;->onDestroyView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/texa/care/navigation/NavigatorFragment;->mScreen:Lcom/texa/care/navigation/Screen;

    invoke-virtual {v0, p1}, Lcom/texa/care/navigation/Screen;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 62
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 63
    iget-object v0, p0, Lcom/texa/care/navigation/NavigatorFragment;->mScreen:Lcom/texa/care/navigation/Screen;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Lcom/texa/care/navigation/Screen;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 54
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 55
    iget-object v0, p0, Lcom/texa/care/navigation/NavigatorFragment;->mScreen:Lcom/texa/care/navigation/Screen;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Lcom/texa/care/navigation/Screen;->onResume()V

    :cond_0
    return-void
.end method
