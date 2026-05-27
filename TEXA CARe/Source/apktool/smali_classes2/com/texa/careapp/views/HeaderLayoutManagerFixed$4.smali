.class Lcom/texa/careapp/views/HeaderLayoutManagerFixed$4;
.super Ljava/lang/Object;
.source "HeaderLayoutManagerFixed.java"

# interfaces
.implements Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->createHorizontalOrientationHelper()Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/views/HeaderLayoutManagerFixed;


# direct methods
.method constructor <init>(Lcom/texa/careapp/views/HeaderLayoutManagerFixed;)V
    .locals 0

    .line 1527
    iput-object p1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$4;->this$0:Lcom/texa/careapp/views/HeaderLayoutManagerFixed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDecoratedEnd(Landroid/view/View;)I
    .locals 2

    .line 1560
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 1561
    iget-object v1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$4;->this$0:Lcom/texa/careapp/views/HeaderLayoutManagerFixed;

    invoke-virtual {v1, p1}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getDecoratedRight(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public getDecoratedMeasurement(Landroid/view/View;)I
    .locals 2

    .line 1546
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 1547
    iget-object v1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$4;->this$0:Lcom/texa/careapp/views/HeaderLayoutManagerFixed;

    invoke-virtual {v1, p1}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result p1

    iget v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public getDecoratedMeasurementInOther(Landroid/view/View;)I
    .locals 2

    .line 1553
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 1554
    iget-object v1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$4;->this$0:Lcom/texa/careapp/views/HeaderLayoutManagerFixed;

    invoke-virtual {v1, p1}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result p1

    iget v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public getDecoratedStart(Landroid/view/View;)I
    .locals 2

    .line 1567
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 1568
    iget-object v1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$4;->this$0:Lcom/texa/careapp/views/HeaderLayoutManagerFixed;

    invoke-virtual {v1, p1}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getDecoratedLeft(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public getEndAfterPadding()I
    .locals 2

    .line 1530
    iget-object v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$4;->this$0:Lcom/texa/careapp/views/HeaderLayoutManagerFixed;

    invoke-virtual {v0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$4;->this$0:Lcom/texa/careapp/views/HeaderLayoutManagerFixed;

    invoke-virtual {v1}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getStartAfterPadding()I
    .locals 1

    .line 1540
    iget-object v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$4;->this$0:Lcom/texa/careapp/views/HeaderLayoutManagerFixed;

    invoke-virtual {v0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method public getTotalSpace()I
    .locals 2

    .line 1573
    iget-object v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$4;->this$0:Lcom/texa/careapp/views/HeaderLayoutManagerFixed;

    invoke-virtual {v0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$4;->this$0:Lcom/texa/careapp/views/HeaderLayoutManagerFixed;

    invoke-virtual {v1}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$4;->this$0:Lcom/texa/careapp/views/HeaderLayoutManagerFixed;

    invoke-virtual {v1}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public offsetChildren(I)V
    .locals 1

    .line 1535
    iget-object v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$4;->this$0:Lcom/texa/careapp/views/HeaderLayoutManagerFixed;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->offsetChildrenHorizontal(I)V

    return-void
.end method
