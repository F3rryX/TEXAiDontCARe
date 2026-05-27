.class Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity$1;
.super Ljava/lang/Object;
.source "EcoDrivingTutorialActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity$1;->this$0:Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity$1;->this$0:Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity;

    invoke-static {v0}, Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity;->access$000(Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity;)Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 85
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity$1;->this$0:Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity;

    invoke-static {p1}, Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity;->access$100(Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity;)Landroid/widget/TextView;

    move-result-object p1

    const v0, 0x7f1109b2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 87
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity$1;->this$0:Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity;

    invoke-static {p1}, Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity;->access$100(Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity;)Landroid/widget/TextView;

    move-result-object p1

    const v0, 0x7f1109b3

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method
