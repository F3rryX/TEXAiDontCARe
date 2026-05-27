.class Lcom/texa/careapp/views/ArrowViewPagerIndicator$1;
.super Ljava/lang/Object;
.source "ArrowViewPagerIndicator.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/views/ArrowViewPagerIndicator;->bind(Lcom/texa/careapp/views/ControlledViewPager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/views/ArrowViewPagerIndicator;


# direct methods
.method constructor <init>(Lcom/texa/careapp/views/ArrowViewPagerIndicator;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/texa/careapp/views/ArrowViewPagerIndicator$1;->this$0:Lcom/texa/careapp/views/ArrowViewPagerIndicator;

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
    .locals 0

    .line 70
    iget-object p1, p0, Lcom/texa/careapp/views/ArrowViewPagerIndicator$1;->this$0:Lcom/texa/careapp/views/ArrowViewPagerIndicator;

    invoke-virtual {p1}, Lcom/texa/careapp/views/ArrowViewPagerIndicator;->handleVisibility()V

    return-void
.end method
