.class Lcom/texa/careapp/views/HeaderLayoutManagerFixed$3;
.super Ljava/lang/Object;
.source "HeaderLayoutManagerFixed.java"

# interfaces
.implements Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->createVerticalOrientationHelper()Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;
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

    .line 1475
    iput-object p1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$3;->this$0:Lcom/texa/careapp/views/HeaderLayoutManagerFixed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDecoratedEnd(Landroid/view/View;)I
    .locals 2

    .line 1508
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 1509
    iget-object v1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$3;->this$0:Lcom/texa/careapp/views/HeaderLayoutManagerFixed;

    invoke-virtual {v1, p1}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getDecoratedBottom(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public getDecoratedMeasurement(Landroid/view/View;)I
    .locals 2

    .line 1494
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 1495
    iget-object v1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$3;->this$0:Lcom/texa/careapp/views/HeaderLayoutManagerFixed;

    invoke-virtual {v1, p1}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result p1

    iget v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public getDecoratedMeasurementInOther(Landroid/view/View;)I
    .locals 2

    .line 1501
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 1502
    iget-object v1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$3;->this$0:Lcom/texa/careapp/views/HeaderLayoutManagerFixed;

    invoke-virtual {v1, p1}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result p1

    iget v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public getDecoratedStart(Landroid/view/View;)I
    .locals 2

    .line 1515
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 1516
    iget-object v1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$3;->this$0:Lcom/texa/careapp/views/HeaderLayoutManagerFixed;

    invoke-virtual {v1, p1}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getDecoratedTop(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public getEndAfterPadding()I
    .locals 2

    .line 1478
    iget-object v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$3;->this$0:Lcom/texa/careapp/views/HeaderLayoutManagerFixed;

    invoke-virtual {v0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$3;->this$0:Lcom/texa/careapp/views/HeaderLayoutManagerFixed;

    invoke-virtual {v1}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getStartAfterPadding()I
    .locals 1

    .line 1488
    iget-object v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$3;->this$0:Lcom/texa/careapp/views/HeaderLayoutManagerFixed;

    invoke-virtual {v0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method public getTotalSpace()I
    .locals 2

    .line 1521
    iget-object v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$3;->this$0:Lcom/texa/careapp/views/HeaderLayoutManagerFixed;

    invoke-virtual {v0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$3;->this$0:Lcom/texa/careapp/views/HeaderLayoutManagerFixed;

    invoke-virtual {v1}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$3;->this$0:Lcom/texa/careapp/views/HeaderLayoutManagerFixed;

    invoke-virtual {v1}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public offsetChildren(I)V
    .locals 1

    .line 1483
    iget-object v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$3;->this$0:Lcom/texa/careapp/views/HeaderLayoutManagerFixed;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->offsetChildrenVertical(I)V

    return-void
.end method
