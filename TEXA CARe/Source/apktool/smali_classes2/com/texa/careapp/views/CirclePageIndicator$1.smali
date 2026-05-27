.class Lcom/texa/careapp/views/CirclePageIndicator$1;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
.source "CirclePageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/views/CirclePageIndicator;->setUpListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/views/CirclePageIndicator;


# direct methods
.method constructor <init>(Lcom/texa/careapp/views/CirclePageIndicator;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/texa/careapp/views/CirclePageIndicator$1;->this$0:Lcom/texa/careapp/views/CirclePageIndicator;

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrolled(IFI)V
    .locals 1

    .line 100
    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;->onPageScrolled(IFI)V

    .line 101
    iget-object p3, p0, Lcom/texa/careapp/views/CirclePageIndicator$1;->this$0:Lcom/texa/careapp/views/CirclePageIndicator;

    invoke-static {p3}, Lcom/texa/careapp/views/CirclePageIndicator;->access$000(Lcom/texa/careapp/views/CirclePageIndicator;)Lcom/texa/careapp/views/CirclePageIndicator$Mode;

    move-result-object p3

    sget-object v0, Lcom/texa/careapp/views/CirclePageIndicator$Mode;->SOLO:Lcom/texa/careapp/views/CirclePageIndicator$Mode;

    if-eq p3, v0, :cond_0

    .line 102
    iget-object p3, p0, Lcom/texa/careapp/views/CirclePageIndicator$1;->this$0:Lcom/texa/careapp/views/CirclePageIndicator;

    invoke-static {p3, p1, p2}, Lcom/texa/careapp/views/CirclePageIndicator;->access$100(Lcom/texa/careapp/views/CirclePageIndicator;IF)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 108
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;->onPageSelected(I)V

    .line 109
    iget-object v0, p0, Lcom/texa/careapp/views/CirclePageIndicator$1;->this$0:Lcom/texa/careapp/views/CirclePageIndicator;

    invoke-static {v0}, Lcom/texa/careapp/views/CirclePageIndicator;->access$000(Lcom/texa/careapp/views/CirclePageIndicator;)Lcom/texa/careapp/views/CirclePageIndicator$Mode;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/views/CirclePageIndicator$Mode;->SOLO:Lcom/texa/careapp/views/CirclePageIndicator$Mode;

    if-ne v0, v1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/texa/careapp/views/CirclePageIndicator$1;->this$0:Lcom/texa/careapp/views/CirclePageIndicator;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/texa/careapp/views/CirclePageIndicator;->access$100(Lcom/texa/careapp/views/CirclePageIndicator;IF)V

    :cond_0
    return-void
.end method
