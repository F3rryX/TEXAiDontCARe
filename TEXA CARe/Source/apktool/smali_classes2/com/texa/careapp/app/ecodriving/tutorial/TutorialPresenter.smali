.class public Lcom/texa/careapp/app/ecodriving/tutorial/TutorialPresenter;
.super Ljava/lang/Object;
.source "TutorialPresenter.java"


# instance fields
.field private final item:Lcom/texa/careapp/app/ecodriving/tutorial/TutorialItem;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/ecodriving/tutorial/TutorialItem;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/tutorial/TutorialPresenter;->item:Lcom/texa/careapp/app/ecodriving/tutorial/TutorialItem;

    return-void
.end method


# virtual methods
.method public afterViewInjection(Lcom/texa/careapp/databinding/ScreenEcoDrivingTutorialBinding;)V
    .locals 2

    .line 21
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingTutorialBinding;->screenEcoDrivingTutorialImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/tutorial/TutorialPresenter;->item:Lcom/texa/careapp/app/ecodriving/tutorial/TutorialItem;

    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/tutorial/TutorialItem;->getIconRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 22
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingTutorialBinding;->screenEcoDrivingTutorialTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/tutorial/TutorialPresenter;->item:Lcom/texa/careapp/app/ecodriving/tutorial/TutorialItem;

    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/tutorial/TutorialItem;->getTitleRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 23
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingTutorialBinding;->screenEcoDrivingTutorialDescription:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/tutorial/TutorialPresenter;->item:Lcom/texa/careapp/app/ecodriving/tutorial/TutorialItem;

    invoke-virtual {v0}, Lcom/texa/careapp/app/ecodriving/tutorial/TutorialItem;->getDescriptionRes()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    return-void
.end method
