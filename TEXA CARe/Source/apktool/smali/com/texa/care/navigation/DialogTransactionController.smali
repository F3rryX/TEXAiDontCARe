.class public Lcom/texa/care/navigation/DialogTransactionController;
.super Ljava/lang/Object;
.source "DialogTransactionController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DialogTransactionController"


# instance fields
.field private mCurrentDialogScreen:Lcom/texa/care/navigation/Screen;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public display(Lcom/texa/care/navigation/Screen;Landroidx/fragment/app/FragmentManager;)V
    .locals 1

    .line 20
    iput-object p1, p0, Lcom/texa/care/navigation/DialogTransactionController;->mCurrentDialogScreen:Lcom/texa/care/navigation/Screen;

    .line 21
    new-instance v0, Lcom/texa/care/navigation/NavigatorDialogFragment;

    invoke-direct {v0}, Lcom/texa/care/navigation/NavigatorDialogFragment;-><init>()V

    .line 22
    invoke-virtual {p1}, Lcom/texa/care/navigation/Screen;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/texa/care/navigation/NavigatorDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public getCurrentDialogScreen()Lcom/texa/care/navigation/Screen;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/texa/care/navigation/DialogTransactionController;->mCurrentDialogScreen:Lcom/texa/care/navigation/Screen;

    return-object v0
.end method

.method public goBack(Landroidx/fragment/app/FragmentManager;)Z
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/texa/care/navigation/DialogTransactionController;->mCurrentDialogScreen:Lcom/texa/care/navigation/Screen;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 35
    :cond_0
    invoke-virtual {v0}, Lcom/texa/care/navigation/Screen;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    .line 40
    :cond_1
    instance-of v0, p1, Landroidx/fragment/app/DialogFragment;

    if-eqz v0, :cond_2

    .line 41
    check-cast p1, Landroidx/fragment/app/DialogFragment;

    .line 42
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lcom/texa/care/navigation/DialogTransactionController;->mCurrentDialogScreen:Lcom/texa/care/navigation/Screen;

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method
