.class public Lcom/texa/careapp/app/walkthrough/WalkthroughPresenter;
.super Ljava/lang/Object;
.source "WalkthroughPresenter.java"


# instance fields
.field protected mContext:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mWalkthroughModel:Lcom/texa/careapp/app/walkthrough/WalkthroughModel;


# direct methods
.method constructor <init>(Lcom/texa/careapp/CareApplication$ApplicationComponent;Lcom/texa/careapp/app/walkthrough/WalkthroughModel;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/walkthrough/WalkthroughPresenter;)V

    .line 26
    iput-object p2, p0, Lcom/texa/careapp/app/walkthrough/WalkthroughPresenter;->mWalkthroughModel:Lcom/texa/careapp/app/walkthrough/WalkthroughModel;

    return-void
.end method


# virtual methods
.method public afterViewInjection(Lcom/texa/careapp/databinding/ScreenWalkthroughBinding;)V
    .locals 2

    .line 31
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenWalkthroughBinding;->screenWalkthroughTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/texa/careapp/app/walkthrough/WalkthroughPresenter;->mWalkthroughModel:Lcom/texa/careapp/app/walkthrough/WalkthroughModel;

    invoke-virtual {v1}, Lcom/texa/careapp/app/walkthrough/WalkthroughModel;->getTitleRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 32
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenWalkthroughBinding;->screenWalkthroughDescription:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/texa/careapp/app/walkthrough/WalkthroughPresenter;->mWalkthroughModel:Lcom/texa/careapp/app/walkthrough/WalkthroughModel;

    invoke-virtual {v0}, Lcom/texa/careapp/app/walkthrough/WalkthroughModel;->getDescriptionRes()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
