.class public Lcom/texa/care/navigation/NavigatorDialogFullWidthFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "NavigatorDialogFullWidthFragment.java"


# instance fields
.field private mNavigator:Lcom/texa/care/navigation/Navigator;

.field private mScreen:Lcom/texa/care/navigation/Screen;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 36
    invoke-static {p1}, Lcom/texa/care/navigation/Navigator;->getInstanceFor(Landroid/app/Activity;)Lcom/texa/care/navigation/Navigator;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/care/navigation/NavigatorDialogFullWidthFragment;->mNavigator:Lcom/texa/care/navigation/Navigator;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 28
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 29
    sget p1, Lcom/texa/care/navigation/R$style;->Navigator_Dialog:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/texa/care/navigation/NavigatorDialogFullWidthFragment;->setStyle(II)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 42
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    .line 43
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 52
    iget-object p3, p0, Lcom/texa/care/navigation/NavigatorDialogFullWidthFragment;->mNavigator:Lcom/texa/care/navigation/Navigator;

    if-eqz p3, :cond_1

    .line 56
    invoke-virtual {p3}, Lcom/texa/care/navigation/Navigator;->getCurrentFullWidthDialogScreen()Lcom/texa/care/navigation/Screen;

    move-result-object p3

    iput-object p3, p0, Lcom/texa/care/navigation/NavigatorDialogFullWidthFragment;->mScreen:Lcom/texa/care/navigation/Screen;

    if-eqz p3, :cond_0

    .line 62
    invoke-virtual {p3}, Lcom/texa/care/navigation/Screen;->getLayoutId()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 63
    iget-object p2, p0, Lcom/texa/care/navigation/NavigatorDialogFullWidthFragment;->mScreen:Lcom/texa/care/navigation/Screen;

    invoke-virtual {p2, p1}, Lcom/texa/care/navigation/Screen;->afterViewInjection(Landroid/view/View;)V

    return-object p1

    .line 59
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "mScreen is null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "mNavigator is null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onPause()V
    .locals 1

    .line 78
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onPause()V

    .line 79
    iget-object v0, p0, Lcom/texa/care/navigation/NavigatorDialogFullWidthFragment;->mScreen:Lcom/texa/care/navigation/Screen;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Lcom/texa/care/navigation/Screen;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 70
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onResume()V

    .line 71
    iget-object v0, p0, Lcom/texa/care/navigation/NavigatorDialogFullWidthFragment;->mScreen:Lcom/texa/care/navigation/Screen;

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0}, Lcom/texa/care/navigation/Screen;->onResume()V

    :cond_0
    return-void
.end method
