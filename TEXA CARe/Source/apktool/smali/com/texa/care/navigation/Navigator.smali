.class public Lcom/texa/care/navigation/Navigator;
.super Ljava/lang/Object;
.source "Navigator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Navigator"


# instance fields
.field private dialogFullWidthTxController:Lcom/texa/care/navigation/DialogFullWidthTransactionController;

.field private dialogTxController:Lcom/texa/care/navigation/DialogTransactionController;

.field private mActionBar:Landroidx/appcompat/app/ActionBar;

.field private mApplication:Landroid/app/Application;

.field private mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private mContainerResId:I

.field private mCurrentFragment:Lcom/texa/care/navigation/NavigatorFragment;

.field private mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private mScreens:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/texa/care/navigation/Screen;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/texa/care/navigation/Navigator;->mScreens:Ljava/util/Stack;

    .line 29
    new-instance v0, Lcom/texa/care/navigation/DialogTransactionController;

    invoke-direct {v0}, Lcom/texa/care/navigation/DialogTransactionController;-><init>()V

    iput-object v0, p0, Lcom/texa/care/navigation/Navigator;->dialogTxController:Lcom/texa/care/navigation/DialogTransactionController;

    .line 30
    new-instance v0, Lcom/texa/care/navigation/DialogFullWidthTransactionController;

    invoke-direct {v0}, Lcom/texa/care/navigation/DialogFullWidthTransactionController;-><init>()V

    iput-object v0, p0, Lcom/texa/care/navigation/Navigator;->dialogFullWidthTxController:Lcom/texa/care/navigation/DialogFullWidthTransactionController;

    return-void
.end method

.method public static getInstanceFor(Landroid/app/Activity;)Lcom/texa/care/navigation/Navigator;
    .locals 4

    .line 34
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 36
    sget-object v2, Lcom/texa/care/navigation/NavigatorDataFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/texa/care/navigation/NavigatorDataFragment;

    if-nez v2, :cond_0

    .line 39
    new-instance v2, Lcom/texa/care/navigation/NavigatorDataFragment;

    invoke-direct {v2}, Lcom/texa/care/navigation/NavigatorDataFragment;-><init>()V

    .line 40
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    sget-object v3, Lcom/texa/care/navigation/NavigatorDataFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 43
    :cond_0
    invoke-virtual {v2}, Lcom/texa/care/navigation/NavigatorDataFragment;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v1

    if-nez v1, :cond_1

    .line 46
    new-instance v1, Lcom/texa/care/navigation/Navigator;

    invoke-direct {v1}, Lcom/texa/care/navigation/Navigator;-><init>()V

    .line 47
    invoke-virtual {v2, v1}, Lcom/texa/care/navigation/NavigatorDataFragment;->setNavigator(Lcom/texa/care/navigation/Navigator;)V

    .line 50
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/texa/care/navigation/Navigator;->setFragmentManager(Landroidx/fragment/app/FragmentManager;)V

    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/texa/care/navigation/Navigator;->setApplication(Landroid/app/Application;)V

    return-object v1
.end method

.method private goTo(Lcom/texa/care/navigation/Screen;I)V
    .locals 2

    .line 131
    invoke-direct {p0, p1}, Lcom/texa/care/navigation/Navigator;->isCurrentScreen(Lcom/texa/care/navigation/Screen;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    sget-object p1, Lcom/texa/care/navigation/Navigator;->TAG:Ljava/lang/String;

    const-string p2, "screen already displayed, doing nothing"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 136
    :cond_0
    invoke-virtual {p1, p0}, Lcom/texa/care/navigation/Screen;->setNavigator(Lcom/texa/care/navigation/Navigator;)V

    .line 138
    invoke-virtual {p1}, Lcom/texa/care/navigation/Screen;->getType()Lcom/texa/care/navigation/ScreenType;

    move-result-object v0

    sget-object v1, Lcom/texa/care/navigation/ScreenType;->DIALOG:Lcom/texa/care/navigation/ScreenType;

    if-ne v0, v1, :cond_1

    .line 139
    iget-object p2, p0, Lcom/texa/care/navigation/Navigator;->dialogTxController:Lcom/texa/care/navigation/DialogTransactionController;

    iget-object v0, p0, Lcom/texa/care/navigation/Navigator;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p2, p1, v0}, Lcom/texa/care/navigation/DialogTransactionController;->display(Lcom/texa/care/navigation/Screen;Landroidx/fragment/app/FragmentManager;)V

    return-void

    .line 143
    :cond_1
    invoke-virtual {p1}, Lcom/texa/care/navigation/Screen;->getType()Lcom/texa/care/navigation/ScreenType;

    move-result-object v0

    sget-object v1, Lcom/texa/care/navigation/ScreenType;->DIALOG_FULL_WIDTH:Lcom/texa/care/navigation/ScreenType;

    if-ne v0, v1, :cond_2

    .line 144
    iget-object p2, p0, Lcom/texa/care/navigation/Navigator;->dialogFullWidthTxController:Lcom/texa/care/navigation/DialogFullWidthTransactionController;

    iget-object v0, p0, Lcom/texa/care/navigation/Navigator;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p2, p1, v0}, Lcom/texa/care/navigation/DialogFullWidthTransactionController;->display(Lcom/texa/care/navigation/Screen;Landroidx/fragment/app/FragmentManager;)V

    return-void

    .line 148
    :cond_2
    invoke-virtual {p0, p1}, Lcom/texa/care/navigation/Navigator;->trackCurrentScreen(Lcom/texa/care/navigation/Screen;)V

    .line 150
    invoke-virtual {p0, p2}, Lcom/texa/care/navigation/Navigator;->doFragmentTransaction(I)V

    .line 152
    invoke-direct {p0, p1}, Lcom/texa/care/navigation/Navigator;->updateTitle(Lcom/texa/care/navigation/Screen;)V

    return-void
.end method

.method private isCurrentScreen(Lcom/texa/care/navigation/Screen;)Z
    .locals 1

    .line 182
    invoke-virtual {p0}, Lcom/texa/care/navigation/Navigator;->getCurrentScreen()Lcom/texa/care/navigation/Screen;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_0

    .line 184
    invoke-virtual {v0}, Lcom/texa/care/navigation/Screen;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/texa/care/navigation/Screen;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private updateTitle(Lcom/texa/care/navigation/Screen;)V
    .locals 1

    if-nez p1, :cond_0

    .line 105
    sget-object p1, Lcom/texa/care/navigation/Navigator;->TAG:Ljava/lang/String;

    const-string v0, "screen is null!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 109
    :cond_0
    invoke-virtual {p1}, Lcom/texa/care/navigation/Screen;->getTitle()I

    move-result p1

    .line 110
    iget-object v0, p0, Lcom/texa/care/navigation/Navigator;->mActionBar:Landroidx/appcompat/app/ActionBar;

    if-eqz v0, :cond_1

    if-lez p1, :cond_1

    .line 111
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public clearBackStack()V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/texa/care/navigation/Navigator;->mScreens:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    return-void
.end method

.method protected createNavigatorFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 164
    new-instance v0, Lcom/texa/care/navigation/NavigatorFragment;

    invoke-direct {v0}, Lcom/texa/care/navigation/NavigatorFragment;-><init>()V

    iput-object v0, p0, Lcom/texa/care/navigation/Navigator;->mCurrentFragment:Lcom/texa/care/navigation/NavigatorFragment;

    return-object v0
.end method

.method protected doFragmentTransaction(I)V
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/texa/care/navigation/Navigator;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget v1, p0, Lcom/texa/care/navigation/Navigator;->mContainerResId:I

    .line 158
    invoke-virtual {p0}, Lcom/texa/care/navigation/Navigator;->createNavigatorFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 159
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->setTransition(I)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 160
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public getApplication()Landroid/app/Application;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/texa/care/navigation/Navigator;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public getChildFragmentManager()Landroidx/fragment/app/FragmentManager;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/texa/care/navigation/Navigator;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/texa/care/navigation/Navigator;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentDialogScreen()Lcom/texa/care/navigation/Screen;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/texa/care/navigation/Navigator;->dialogTxController:Lcom/texa/care/navigation/DialogTransactionController;

    invoke-virtual {v0}, Lcom/texa/care/navigation/DialogTransactionController;->getCurrentDialogScreen()Lcom/texa/care/navigation/Screen;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentFragment()Lcom/texa/care/navigation/NavigatorFragment;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/texa/care/navigation/Navigator;->mCurrentFragment:Lcom/texa/care/navigation/NavigatorFragment;

    return-object v0
.end method

.method public getCurrentFullWidthDialogScreen()Lcom/texa/care/navigation/Screen;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/texa/care/navigation/Navigator;->dialogFullWidthTxController:Lcom/texa/care/navigation/DialogFullWidthTransactionController;

    invoke-virtual {v0}, Lcom/texa/care/navigation/DialogFullWidthTransactionController;->getCurrentDialogScreen()Lcom/texa/care/navigation/Screen;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentScreen()Lcom/texa/care/navigation/Screen;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/texa/care/navigation/Navigator;->mScreens:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/texa/care/navigation/Navigator;->mScreens:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/navigation/Screen;

    return-object v0
.end method

.method public getFragmentManager()Landroidx/fragment/app/FragmentManager;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/texa/care/navigation/Navigator;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    return-object v0
.end method

.method protected getPreviousScreen()Lcom/texa/care/navigation/Screen;
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/texa/care/navigation/Navigator;->mScreens:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/texa/care/navigation/Navigator;->mScreens:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lcom/texa/care/navigation/Navigator;->mScreens:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/texa/care/navigation/Navigator;->mScreens:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/navigation/Screen;

    return-object v0
.end method

.method public goBack()Z
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/texa/care/navigation/Navigator;->dialogTxController:Lcom/texa/care/navigation/DialogTransactionController;

    iget-object v1, p0, Lcom/texa/care/navigation/Navigator;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, v1}, Lcom/texa/care/navigation/DialogTransactionController;->goBack(Landroidx/fragment/app/FragmentManager;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/texa/care/navigation/Navigator;->dialogFullWidthTxController:Lcom/texa/care/navigation/DialogFullWidthTransactionController;

    iget-object v2, p0, Lcom/texa/care/navigation/Navigator;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 78
    invoke-virtual {v0, v2}, Lcom/texa/care/navigation/DialogFullWidthTransactionController;->goBack(Landroidx/fragment/app/FragmentManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/texa/care/navigation/Navigator;->getCurrentScreen()Lcom/texa/care/navigation/Screen;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {v0}, Lcom/texa/care/navigation/Screen;->getCloseTransaction()I

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x2002

    .line 90
    :goto_0
    invoke-virtual {p0}, Lcom/texa/care/navigation/Navigator;->getPreviousScreen()Lcom/texa/care/navigation/Screen;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v0, 0x0

    return v0

    .line 96
    :cond_2
    invoke-virtual {p0, v0}, Lcom/texa/care/navigation/Navigator;->doFragmentTransaction(I)V

    .line 98
    invoke-direct {p0, v2}, Lcom/texa/care/navigation/Navigator;->updateTitle(Lcom/texa/care/navigation/Screen;)V

    :cond_3
    :goto_1
    return v1
.end method

.method public goTo(Lcom/texa/care/navigation/Screen;)V
    .locals 1

    .line 65
    invoke-virtual {p1}, Lcom/texa/care/navigation/Screen;->getTransaction()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;I)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 192
    invoke-virtual {p0}, Lcom/texa/care/navigation/Navigator;->getCurrentScreen()Lcom/texa/care/navigation/Screen;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0}, Lcom/texa/care/navigation/Screen;->onBackPressed()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 197
    invoke-virtual {p0}, Lcom/texa/care/navigation/Navigator;->goBack()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public setActionBar(Landroidx/appcompat/app/ActionBar;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/texa/care/navigation/Navigator;->mActionBar:Landroidx/appcompat/app/ActionBar;

    return-void
.end method

.method protected setApplication(Landroid/app/Application;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/texa/care/navigation/Navigator;->mApplication:Landroid/app/Application;

    return-void
.end method

.method public setChildFragmentManager(Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/texa/care/navigation/Navigator;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    return-void
.end method

.method public setContainerResId(I)V
    .locals 0

    .line 210
    iput p1, p0, Lcom/texa/care/navigation/Navigator;->mContainerResId:I

    return-void
.end method

.method public setFragmentManager(Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/texa/care/navigation/Navigator;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    return-void
.end method

.method protected trackCurrentScreen(Lcom/texa/care/navigation/Screen;)V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/texa/care/navigation/Navigator;->mScreens:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public updateTitle()V
    .locals 1

    .line 226
    invoke-virtual {p0}, Lcom/texa/care/navigation/Navigator;->getCurrentScreen()Lcom/texa/care/navigation/Screen;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/texa/care/navigation/Navigator;->updateTitle(Lcom/texa/care/navigation/Screen;)V

    return-void
.end method
