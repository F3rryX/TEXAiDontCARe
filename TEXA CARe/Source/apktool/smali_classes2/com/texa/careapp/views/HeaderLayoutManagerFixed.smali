.class public Lcom/texa/careapp/views/HeaderLayoutManagerFixed;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.source "HeaderLayoutManagerFixed.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;,
        Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;,
        Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field public static final HORIZONTAL:I = 0x0

.field public static final INVALID_OFFSET:I = -0x80000000

.field private static final MAX_SCROLL_FACTOR:F = 0.33f

.field private static final TAG:Ljava/lang/String; = "LinearLayoutManager"

.field public static final VERTICAL:I = 0x1


# instance fields
.field private mHeaderIncrementFixer:I

.field private mLastStackFromEnd:Z

.field private mOrientation:I

.field mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

.field private mPendingSavedState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;

.field private mPendingScrollPosition:I

.field private mPendingScrollPositionOffset:I

.field private mRenderState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;

.field private mReverseLayout:Z

.field private mShouldReverseLayout:Z

.field private mStackFromEnd:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 114
    invoke-direct {p0, p1, v0, v1}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    .line 124
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    const/4 p1, 0x0

    .line 44
    iput p1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mHeaderIncrementFixer:I

    .line 78
    iput-boolean p1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mReverseLayout:Z

    .line 85
    iput-boolean p1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mShouldReverseLayout:Z

    .line 92
    iput-boolean p1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mStackFromEnd:Z

    const/4 p1, -0x1

    .line 98
    iput p1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mPendingScrollPosition:I

    const/high16 p1, -0x80000000

    .line 104
    iput p1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mPendingScrollPositionOffset:I

    const/4 p1, 0x0

    .line 106
    iput-object p1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mPendingSavedState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;

    .line 125
    invoke-virtual {p0, p2}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->setOrientation(I)V

    .line 126
    invoke-virtual {p0, p3}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->setReverseLayout(Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/texa/careapp/views/HeaderLayoutManagerFixed;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mHeaderIncrementFixer:I

    return p1
.end method

.method private convertFocusDirectionToLayoutDirection(I)I
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_9

    const/4 v2, 0x2

    if-eq p1, v2, :cond_8

    const/16 v2, 0x11

    const/high16 v3, -0x80000000

    if-eq p1, v2, :cond_6

    const/16 v2, 0x21

    if-eq p1, v2, :cond_4

    const/16 v0, 0x42

    if-eq p1, v0, :cond_2

    const/16 v0, 0x82

    if-eq p1, v0, :cond_0

    .line 1104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown focus request:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LinearLayoutManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1094
    :cond_0
    iget p1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientation:I

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v1, -0x80000000

    :goto_0
    return v1

    .line 1100
    :cond_2
    iget p1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientation:I

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/high16 v1, -0x80000000

    :goto_1
    return v1

    .line 1091
    :cond_4
    iget p1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientation:I

    if-ne p1, v1, :cond_5

    goto :goto_2

    :cond_5
    const/high16 v0, -0x80000000

    :goto_2
    return v0

    .line 1097
    :cond_6
    iget p1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientation:I

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    const/high16 v0, -0x80000000

    :goto_3
    return v0

    :cond_8
    return v1

    :cond_9
    return v0
.end method

.method private fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    .line 979
    iget v8, v7, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mAvailable:I

    .line 980
    iget v0, v7, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mScrollingOffset:I

    const/high16 v9, -0x80000000

    if-eq v0, v9, :cond_1

    .line 981
    iget v0, v7, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mAvailable:I

    if-gez v0, :cond_0

    .line 982
    iget v0, v7, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mScrollingOffset:I

    iget v1, v7, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mAvailable:I

    add-int/2addr v0, v1

    iput v0, v7, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mScrollingOffset:I

    .line 984
    :cond_0
    invoke-direct/range {p0 .. p2}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->recycleByRenderState(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;)V

    .line 986
    :cond_1
    iget v0, v7, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mAvailable:I

    iget v1, v7, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mExtra:I

    add-int/2addr v0, v1

    iget v1, v6, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mHeaderIncrementFixer:I

    add-int/2addr v0, v1

    move v10, v0

    :cond_2
    if-lez v10, :cond_10

    .line 987
    invoke-virtual/range {p2 .. p3}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->hasMore(Landroidx/recyclerview/widget/RecyclerView$State;)Z

    move-result v0

    if-eqz v0, :cond_10

    move-object/from16 v11, p1

    .line 988
    invoke-virtual {v7, v11}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->next(Landroidx/recyclerview/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v12

    if-nez v12, :cond_4

    .line 990
    iget-object v0, v7, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mScrapList:Ljava/util/List;

    if-eqz v0, :cond_3

    goto/16 :goto_5

    .line 991
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "received null view when unexpected"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 997
    :cond_4
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 998
    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v0, :cond_7

    iget-object v0, v6, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mRenderState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;

    iget-object v0, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mScrapList:Ljava/util/List;

    if-nez v0, :cond_7

    .line 999
    iget-boolean v0, v6, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mShouldReverseLayout:Z

    iget v4, v7, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mLayoutDirection:I

    if-ne v4, v2, :cond_5

    const/4 v4, 0x1

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    :goto_0
    if-ne v0, v4, :cond_6

    .line 1001
    invoke-virtual {v6, v12}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 1003
    :cond_6
    invoke-virtual {v6, v12, v3}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->addView(Landroid/view/View;I)V

    .line 1006
    :cond_7
    :goto_1
    invoke-virtual {v6, v12, v3, v3}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->measureChildWithMargins(Landroid/view/View;II)V

    .line 1007
    iget-object v0, v6, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    invoke-interface {v0, v12}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v14

    .line 1009
    iget v0, v6, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientation:I

    if-ne v0, v1, :cond_a

    .line 1010
    invoke-direct/range {p0 .. p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1011
    invoke-virtual/range {p0 .. p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1012
    iget-object v1, v6, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    invoke-interface {v1, v12}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v1

    sub-int v1, v0, v1

    goto :goto_2

    .line 1014
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getPaddingLeft()I

    move-result v1

    .line 1015
    iget-object v0, v6, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    invoke-interface {v0, v12}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v1

    .line 1017
    :goto_2
    iget v3, v7, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mLayoutDirection:I

    if-ne v3, v2, :cond_9

    .line 1018
    iget v2, v7, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mOffset:I

    .line 1019
    iget v3, v7, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mOffset:I

    sub-int/2addr v3, v14

    goto :goto_3

    .line 1021
    :cond_9
    iget v3, v7, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mOffset:I

    .line 1022
    iget v2, v7, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mOffset:I

    add-int/2addr v2, v14

    :goto_3
    move v15, v0

    move/from16 v16, v1

    move/from16 v17, v2

    goto :goto_4

    .line 1025
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getPaddingTop()I

    move-result v3

    .line 1026
    iget-object v0, v6, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    invoke-interface {v0, v12}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v3

    .line 1028
    iget v1, v7, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mLayoutDirection:I

    if-ne v1, v2, :cond_b

    .line 1029
    iget v1, v7, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mOffset:I

    .line 1030
    iget v2, v7, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mOffset:I

    sub-int/2addr v2, v14

    move/from16 v17, v0

    move v15, v1

    move/from16 v16, v2

    goto :goto_4

    .line 1032
    :cond_b
    iget v1, v7, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mOffset:I

    .line 1033
    iget v2, v7, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mOffset:I

    add-int/2addr v2, v14

    move/from16 v17, v0

    move/from16 v16, v1

    move v15, v2

    :goto_4
    move/from16 v18, v3

    .line 1038
    iget v0, v13, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int v2, v16, v0

    iget v0, v13, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int v3, v18, v0

    iget v0, v13, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    sub-int v4, v15, v0

    iget v0, v13, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    sub-int v5, v17, v0

    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual/range {v0 .. v5}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->layoutDecorated(Landroid/view/View;IIII)V

    .line 1041
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "laid out child at position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", with l:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v13, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int v1, v16, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", t:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v13, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int v1, v18, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", r:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v13, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    sub-int/2addr v15, v1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", b:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v13, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    sub-int v1, v17, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LinearLayoutManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    iget v0, v7, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mOffset:I

    iget v1, v7, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mLayoutDirection:I

    mul-int v1, v1, v14

    add-int/2addr v0, v1

    iput v0, v7, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mOffset:I

    .line 1047
    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1048
    iget v0, v7, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mAvailable:I

    sub-int/2addr v0, v14

    iput v0, v7, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mAvailable:I

    sub-int/2addr v10, v14

    .line 1053
    :cond_c
    iget v0, v7, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mScrollingOffset:I

    if-eq v0, v9, :cond_e

    .line 1054
    iget v0, v7, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mScrollingOffset:I

    add-int/2addr v0, v14

    iput v0, v7, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mScrollingOffset:I

    .line 1055
    iget v0, v7, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mAvailable:I

    if-gez v0, :cond_d

    .line 1056
    iget v0, v7, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mScrollingOffset:I

    iget v1, v7, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mAvailable:I

    add-int/2addr v0, v1

    iput v0, v7, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mScrollingOffset:I

    .line 1058
    :cond_d
    invoke-direct/range {p0 .. p2}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->recycleByRenderState(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;)V

    :cond_e
    if-eqz p4, :cond_f

    .line 1060
    invoke-virtual {v12}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_5

    :cond_f
    if-eqz p3, :cond_2

    .line 1064
    invoke-virtual/range {p3 .. p3}, Landroidx/recyclerview/widget/RecyclerView$State;->getTargetScrollPosition()I

    move-result v0

    invoke-virtual {v6, v12}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getPosition(Landroid/view/View;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 1069
    :cond_10
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->validateChildOrder()V

    .line 1071
    iget v0, v7, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mAvailable:I

    sub-int/2addr v8, v0

    return v8
.end method

.method private fixLayoutEndGap(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)I
    .locals 1

    .line 602
    iget-object v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    invoke-interface {v0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getEndAfterPadding()I

    move-result v0

    sub-int/2addr v0, p1

    if-lez v0, :cond_1

    neg-int v0, v0

    .line 605
    invoke-direct {p0, v0, p2, p3}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p2

    neg-int p2, p2

    add-int/2addr p1, p2

    if-eqz p4, :cond_0

    .line 613
    iget-object p3, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    invoke-interface {p3}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getEndAfterPadding()I

    move-result p3

    sub-int/2addr p3, p1

    if-lez p3, :cond_0

    .line 615
    iget-object p1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    invoke-interface {p1, p3}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->offsetChildren(I)V

    add-int/2addr p3, p2

    return p3

    :cond_0
    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private fixLayoutStartGap(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)I
    .locals 1

    .line 627
    iget-object v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    invoke-interface {v0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getStartAfterPadding()I

    move-result v0

    sub-int v0, p1, v0

    if-lez v0, :cond_1

    .line 631
    invoke-direct {p0, v0, p2, p3}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p2

    neg-int p2, p2

    add-int/2addr p1, p2

    if-eqz p4, :cond_0

    .line 638
    iget-object p3, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    invoke-interface {p3}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getStartAfterPadding()I

    move-result p3

    sub-int/2addr p1, p3

    if-lez p1, :cond_0

    .line 640
    iget-object p3, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    neg-int p4, p1

    invoke-interface {p3, p4}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->offsetChildren(I)V

    sub-int/2addr p2, p1

    :cond_0
    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private getChildClosestToEnd()Landroid/view/View;
    .locals 1

    .line 1128
    iget-boolean v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getChildClosestToStart()Landroid/view/View;
    .locals 1

    .line 1118
    iget-boolean v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private isLayoutRTL()Z
    .locals 2

    .line 670
    invoke-virtual {p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private logChildren()V
    .locals 5

    const-string v0, "LinearLayoutManager"

    const-string v1, "internal representation of views on the screen"

    .line 1266
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 1267
    :goto_0
    invoke-virtual {p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1268
    invoke-virtual {p0, v1}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1269
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getPosition(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", coord:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    .line 1270
    invoke-interface {v4, v2}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1269
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "=============="

    .line 1272
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private recycleByRenderState(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;)V
    .locals 2

    .line 957
    iget v0, p2, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mLayoutDirection:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 958
    iget p2, p2, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mScrollingOffset:I

    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->recycleViewsFromEnd(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V

    goto :goto_0

    .line 960
    :cond_0
    iget p2, p2, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mScrollingOffset:I

    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->recycleViewsFromStart(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V

    :goto_0
    return-void
.end method

.method private recycleChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)V
    .locals 2

    if-ne p2, p3, :cond_0

    return-void

    .line 855
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Recycling "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v1, p2, p3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " items"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LinearLayoutManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-le p3, p2, :cond_1

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-lt p3, p2, :cond_2

    .line 859
    invoke-virtual {p0, p3, p1}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->removeAndRecycleViewAt(ILandroidx/recyclerview/widget/RecyclerView$Recycler;)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-le p2, p3, :cond_2

    .line 863
    invoke-virtual {p0, p2, p1}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->removeAndRecycleViewAt(ILandroidx/recyclerview/widget/RecyclerView$Recycler;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private recycleViewsFromEnd(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V
    .locals 5

    .line 916
    invoke-virtual {p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getChildCount()I

    move-result v0

    if-gez p2, :cond_0

    const-string p1, "LinearLayoutManager"

    const-string p2, "Called recycle from end with a negative value. This might happen during layout changes but may be sign of a bug"

    .line 919
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 924
    :cond_0
    iget-object v1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    invoke-interface {v1}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getEndAfterPadding()I

    move-result v1

    sub-int/2addr v1, p2

    iget p2, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mHeaderIncrementFixer:I

    add-int/2addr v1, p2

    .line 925
    iget-boolean p2, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mShouldReverseLayout:Z

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 927
    invoke-virtual {p0, v2}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 928
    iget-object v4, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    invoke-interface {v4, v3}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    if-ge v3, v1, :cond_1

    .line 929
    invoke-direct {p0, p1, p2, v2}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->recycleChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)V

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    move p2, v0

    :goto_1
    if-ltz p2, :cond_4

    .line 935
    invoke-virtual {p0, p2}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 936
    iget-object v3, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    invoke-interface {v3, v2}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    if-ge v2, v1, :cond_3

    .line 937
    invoke-direct {p0, p1, v0, p2}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->recycleChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)V

    return-void

    :cond_3
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private recycleViewsFromStart(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V
    .locals 5

    if-gez p2, :cond_0

    const-string p1, "LinearLayoutManager"

    const-string p2, "Called recycle from start with a negative value. This might happen during layout changes but may be sign of a bug"

    .line 880
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 885
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    invoke-interface {v0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getStartAfterPadding()I

    move-result v0

    add-int/2addr v0, p2

    iget p2, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mHeaderIncrementFixer:I

    sub-int/2addr v0, p2

    .line 886
    invoke-virtual {p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getChildCount()I

    move-result p2

    .line 887
    iget-boolean v1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mShouldReverseLayout:Z

    if-eqz v1, :cond_2

    add-int/lit8 p2, p2, -0x1

    move v1, p2

    :goto_0
    if-ltz v1, :cond_4

    .line 889
    invoke-virtual {p0, v1}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 890
    iget-object v3, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    invoke-interface {v3, v2}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v2

    if-le v2, v0, :cond_1

    .line 891
    invoke-direct {p0, p1, p2, v1}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->recycleChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)V

    return-void

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p2, :cond_4

    .line 897
    invoke-virtual {p0, v2}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 898
    iget-object v4, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    invoke-interface {v4, v3}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    if-le v3, v0, :cond_3

    .line 899
    invoke-direct {p0, p1, v1, v2}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->recycleChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)V

    return-void

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private resolveShouldLayoutReverse()V
    .locals 2

    .line 256
    iget v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->isLayoutRTL()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    iget-boolean v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mReverseLayout:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mShouldReverseLayout:Z

    goto :goto_1

    .line 257
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mReverseLayout:Z

    iput-boolean v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mShouldReverseLayout:Z

    :goto_1
    return-void
.end method

.method private scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 5

    .line 821
    invoke-virtual {p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_2

    .line 824
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->ensureRenderState()V

    const/4 v0, 0x1

    if-lez p1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    .line 826
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 827
    invoke-direct {p0, v2, v3, v0, p3}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->updateRenderState(IIZLandroidx/recyclerview/widget/RecyclerView$State;)V

    .line 828
    iget-object v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mRenderState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;

    iget v0, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mScrollingOffset:I

    .line 829
    iget-object v4, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mRenderState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;

    invoke-direct {p0, p2, v4, p3, v1}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    move-result p2

    add-int/2addr v0, p2

    const-string p2, "LinearLayoutManager"

    if-gez v0, :cond_2

    const-string p1, "Don\'t have any more elements to scroll"

    .line 832
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    if-le v3, v0, :cond_3

    mul-int v2, v2, v0

    goto :goto_1

    :cond_3
    move v2, p1

    .line 837
    :goto_1
    iget-object p3, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    neg-int v0, v2

    invoke-interface {p3, v0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->offsetChildren(I)V

    .line 839
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "scroll req: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " scrolled: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_4
    :goto_2
    return v1
.end method

.method private updateRenderState(IIZLandroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 3

    .line 789
    iget-object v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mRenderState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;

    invoke-virtual {p0, p4}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p4

    iput p4, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mExtra:I

    .line 790
    iget-object p4, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mRenderState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;

    iput p1, p4, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mLayoutDirection:I

    const/4 p4, -0x1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 794
    invoke-direct {p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getChildClosestToEnd()Landroid/view/View;

    move-result-object p1

    .line 796
    iget-object v1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mRenderState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;

    iget-boolean v2, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mShouldReverseLayout:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x1

    .line 797
    :goto_0
    iput p4, v1, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mItemDirection:I

    .line 798
    iget-object p4, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mRenderState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getPosition(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mRenderState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;

    iget v1, v1, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mItemDirection:I

    add-int/2addr v0, v1

    iput v0, p4, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mCurrentPosition:I

    .line 799
    iget-object p4, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mRenderState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;

    iget-object v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    invoke-interface {v0, p1}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mOffset:I

    .line 801
    iget-object p4, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    invoke-interface {p4, p1}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    iget-object p4, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    .line 802
    invoke-interface {p4}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getEndAfterPadding()I

    move-result p4

    sub-int/2addr p1, p4

    goto :goto_1

    .line 805
    :cond_1
    invoke-direct {p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getChildClosestToStart()Landroid/view/View;

    move-result-object p1

    .line 806
    iget-object v1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mRenderState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;

    iget-boolean v2, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mShouldReverseLayout:Z

    if-eqz v2, :cond_2

    const/4 p4, 0x1

    .line 807
    :cond_2
    iput p4, v1, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mItemDirection:I

    .line 808
    iget-object p4, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mRenderState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getPosition(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mRenderState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;

    iget v1, v1, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mItemDirection:I

    add-int/2addr v0, v1

    iput v0, p4, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mCurrentPosition:I

    .line 809
    iget-object p4, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mRenderState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;

    iget-object v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    invoke-interface {v0, p1}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mOffset:I

    .line 810
    iget-object p4, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    invoke-interface {p4, p1}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    neg-int p1, p1

    iget-object p4, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    .line 811
    invoke-interface {p4}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getStartAfterPadding()I

    move-result p4

    add-int/2addr p1, p4

    .line 813
    :goto_1
    iget-object p4, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mRenderState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;

    iput p2, p4, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mAvailable:I

    if-eqz p3, :cond_3

    .line 815
    iget-object p2, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mRenderState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;

    iget p3, p2, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mAvailable:I

    sub-int/2addr p3, p1

    iput p3, p2, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mAvailable:I

    .line 817
    :cond_3
    iget-object p2, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mRenderState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;

    iput p1, p2, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mScrollingOffset:I

    return-void
.end method

.method private updateRenderStateToFillEnd(II)V
    .locals 3

    .line 648
    iget-object v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mRenderState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;

    iget-object v1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    invoke-interface {v1}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getEndAfterPadding()I

    move-result v1

    sub-int/2addr v1, p2

    iput v1, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mAvailable:I

    .line 649
    iget-object v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mRenderState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;

    iget-boolean v1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mShouldReverseLayout:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 650
    :goto_0
    iput v1, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mItemDirection:I

    .line 651
    iget-object v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mRenderState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;

    iput p1, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mCurrentPosition:I

    .line 652
    iget-object p1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mRenderState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;

    iput v2, p1, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mLayoutDirection:I

    .line 653
    iget-object p1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mRenderState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;

    iput p2, p1, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mOffset:I

    .line 654
    iget-object p1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mRenderState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;

    const/high16 p2, -0x80000000

    iput p2, p1, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mScrollingOffset:I

    return-void
.end method

.method private updateRenderStateToFillStart(II)V
    .locals 2

    .line 658
    iget-object v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mRenderState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;

    iget-object v1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    invoke-interface {v1}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getStartAfterPadding()I

    move-result v1

    sub-int v1, p2, v1

    iput v1, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mAvailable:I

    .line 659
    iget-object v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mRenderState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;

    iput p1, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mCurrentPosition:I

    .line 660
    iget-object p1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mRenderState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;

    iget-boolean v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mShouldReverseLayout:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 661
    :goto_0
    iput v0, p1, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mItemDirection:I

    .line 662
    iget-object p1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mRenderState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;

    iput v1, p1, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mLayoutDirection:I

    .line 663
    iget-object p1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mRenderState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;

    iput p2, p1, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mOffset:I

    .line 664
    iget-object p1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mRenderState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;

    const/high16 p2, -0x80000000

    iput p2, p1, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mScrollingOffset:I

    return-void
.end method

.method private validateChildOrder()V
    .locals 10

    .line 1286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "validating child count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LinearLayoutManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    invoke-virtual {p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1290
    invoke-virtual {p0, v0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 1291
    iget-object v3, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    invoke-virtual {p0, v0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    .line 1292
    iget-boolean v4, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mShouldReverseLayout:Z

    const-string v5, "detected invalid location"

    const-string v6, "detected invalid position. loc invalid? "

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    .line 1293
    :goto_0
    invoke-virtual {p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getChildCount()I

    move-result v7

    if-ge v4, v7, :cond_8

    .line 1294
    invoke-virtual {p0, v4}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1295
    invoke-virtual {p0, v7}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getPosition(Landroid/view/View;)I

    move-result v8

    .line 1296
    iget-object v9, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    invoke-interface {v9, v7}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    if-ge v8, v2, :cond_2

    .line 1298
    invoke-direct {p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->logChildren()V

    .line 1299
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v7, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    if-gt v7, v3, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1303
    :cond_3
    invoke-direct {p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->logChildren()V

    .line 1304
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/4 v4, 0x1

    .line 1308
    :goto_2
    invoke-virtual {p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getChildCount()I

    move-result v7

    if-ge v4, v7, :cond_8

    .line 1309
    invoke-virtual {p0, v4}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1310
    invoke-virtual {p0, v7}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getPosition(Landroid/view/View;)I

    move-result v8

    .line 1311
    iget-object v9, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    invoke-interface {v9, v7}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    if-ge v8, v2, :cond_6

    .line 1313
    invoke-direct {p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->logChildren()V

    .line 1314
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v7, v3, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    if-lt v7, v3, :cond_7

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1318
    :cond_7
    invoke-direct {p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->logChildren()V

    .line 1319
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    return-void
.end method


# virtual methods
.method public canScrollHorizontally()Z
    .locals 1

    .line 186
    iget v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientation:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canScrollVertically()Z
    .locals 2

    .line 194
    iget v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public computeHorizontalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 769
    invoke-virtual {p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getChildCount()I

    move-result p1

    return p1
.end method

.method public computeHorizontalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2

    .line 751
    invoke-virtual {p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 754
    :cond_0
    invoke-direct {p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getChildClosestToStart()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 755
    iget-boolean v1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mShouldReverseLayout:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    sub-int v0, p1, v0

    :cond_1
    return v0
.end method

.method public computeHorizontalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 779
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    return p1
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 3

    .line 352
    invoke-virtual {p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 355
    invoke-virtual {p0, v0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getPosition(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-ge p1, v1, :cond_1

    const/4 v0, 0x1

    .line 356
    :cond_1
    iget-boolean p1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mShouldReverseLayout:Z

    if-eq v0, p1, :cond_2

    const/4 v2, -0x1

    .line 357
    :cond_2
    iget p1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientation:I

    const/4 v0, 0x0

    if-nez p1, :cond_3

    .line 358
    new-instance p1, Landroid/graphics/PointF;

    int-to-float v1, v2

    invoke-direct {p1, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1

    .line 360
    :cond_3
    new-instance p1, Landroid/graphics/PointF;

    int-to-float v1, v2

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method

.method public computeVerticalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 774
    invoke-virtual {p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getChildCount()I

    move-result p1

    return p1
.end method

.method public computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2

    .line 760
    invoke-virtual {p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 763
    :cond_0
    invoke-direct {p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getChildClosestToStart()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 764
    iget-boolean v1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mShouldReverseLayout:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    sub-int v0, p1, v0

    :cond_1
    return v0
.end method

.method public computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 784
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    return p1
.end method

.method createHorizontalOrientationHelper()Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;
    .locals 1

    .line 1527
    new-instance v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$4;

    invoke-direct {v0, p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$4;-><init>(Lcom/texa/careapp/views/HeaderLayoutManagerFixed;)V

    return-object v0
.end method

.method createVerticalOrientationHelper()Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;
    .locals 1

    .line 1475
    new-instance v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$3;

    invoke-direct {v0, p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$3;-><init>(Lcom/texa/careapp/views/HeaderLayoutManagerFixed;)V

    return-object v0
.end method

.method ensureRenderState()V
    .locals 2

    .line 674
    iget-object v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mRenderState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;

    if-nez v0, :cond_0

    .line 675
    new-instance v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;-><init>(Lcom/texa/careapp/views/HeaderLayoutManagerFixed$1;)V

    iput-object v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mRenderState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    if-nez v0, :cond_2

    .line 678
    iget v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientation:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->createHorizontalOrientationHelper()Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    move-result-object v0

    goto :goto_0

    .line 679
    :cond_1
    invoke-virtual {p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->createVerticalOrientationHelper()Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    :cond_2
    return-void
.end method

.method public findFirstCompletelyVisibleItemPosition()I
    .locals 3

    .line 1164
    invoke-virtual {p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->findOneVisibleChild(IIZ)I

    move-result v0

    return v0
.end method

.method public findFirstVisibleItemPosition()I
    .locals 2

    .line 1149
    invoke-virtual {p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->findOneVisibleChild(IIZ)I

    move-result v0

    return v0
.end method

.method public findLastCompletelyVisibleItemPosition()I
    .locals 3

    .line 1200
    invoke-virtual {p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->findOneVisibleChild(IIZ)I

    move-result v0

    return v0
.end method

.method public findLastVisibleItemPosition()I
    .locals 3

    .line 1185
    invoke-virtual {p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->findOneVisibleChild(IIZ)I

    move-result v0

    return v0
.end method

.method findOneVisibleChild(IIZ)I
    .locals 7

    .line 1204
    iget-object v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    invoke-interface {v0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getStartAfterPadding()I

    move-result v0

    .line 1205
    iget-object v1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    invoke-interface {v1}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getEndAfterPadding()I

    move-result v1

    const/4 v2, -0x1

    if-le p2, p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    :goto_0
    if-eq p1, p2, :cond_3

    .line 1208
    invoke-virtual {p0, p1}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1209
    iget-object v5, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    invoke-interface {v5, v4}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    .line 1210
    iget-object v6, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    invoke-interface {v6, v4}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    if-ge v5, v1, :cond_2

    if-le v6, v0, :cond_2

    if-eqz p3, :cond_1

    if-lt v5, v0, :cond_2

    if-gt v6, v1, :cond_2

    .line 1214
    invoke-virtual {p0, v4}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getPosition(Landroid/view/View;)I

    move-result p1

    return p1

    .line 1217
    :cond_1
    invoke-virtual {p0, v4}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getPosition(Landroid/view/View;)I

    move-result p1

    return p1

    :cond_2
    add-int/2addr p1, v3

    goto :goto_0

    :cond_3
    return v2
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 3

    .line 304
    invoke-virtual {p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    .line 308
    invoke-virtual {p0, v2}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getPosition(Landroid/view/View;)I

    move-result v2

    sub-int/2addr p1, v2

    if-ltz p1, :cond_1

    if-ge p1, v0, :cond_1

    .line 311
    invoke-virtual {p0, p1}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 2

    .line 134
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected getExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 329
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->hasTargetScrollPosition()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 330
    iget-object p1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    invoke-interface {p1}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getTotalSpace()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getHeaderIncrementFixer()I
    .locals 1

    .line 1456
    iget v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mHeaderIncrementFixer:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 224
    iget v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientation:I

    return v0
.end method

.method public getReverseLayout()Z
    .locals 1

    .line 270
    iget-boolean v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mReverseLayout:Z

    return v0
.end method

.method public getStackFromEnd()Z
    .locals 1

    .line 213
    iget-boolean v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mStackFromEnd:Z

    return v0
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;
    .locals 6

    .line 1228
    invoke-direct {p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->resolveShouldLayoutReverse()V

    .line 1229
    invoke-virtual {p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1233
    :cond_0
    invoke-direct {p0, p2}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->convertFocusDirectionToLayoutDirection(I)I

    move-result p1

    const/high16 p2, -0x80000000

    if-ne p1, p2, :cond_1

    return-object v0

    :cond_1
    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    .line 1239
    invoke-direct {p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getChildClosestToStart()Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 1241
    :cond_2
    invoke-direct {p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v2

    .line 1243
    :goto_0
    invoke-virtual {p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->ensureRenderState()V

    const v3, 0x3ea8f5c3    # 0.33f

    .line 1244
    iget-object v4, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    invoke-interface {v4}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getEndAfterPadding()I

    move-result v4

    iget-object v5, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    .line 1245
    invoke-interface {v5}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getStartAfterPadding()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float v4, v4, v3

    float-to-int v3, v4

    const/4 v4, 0x0

    .line 1246
    invoke-direct {p0, p1, v3, v4, p4}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->updateRenderState(IIZLandroidx/recyclerview/widget/RecyclerView$State;)V

    .line 1247
    iget-object v3, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mRenderState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;

    iput p2, v3, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mScrollingOffset:I

    .line 1248
    iget-object p2, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mRenderState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;

    const/4 v3, 0x1

    invoke-direct {p0, p3, p2, p4, v3}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    if-ne p1, v1, :cond_3

    .line 1251
    invoke-direct {p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getChildClosestToStart()Landroid/view/View;

    move-result-object p1

    goto :goto_1

    .line 1253
    :cond_3
    invoke-direct {p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getChildClosestToEnd()Landroid/view/View;

    move-result-object p1

    :goto_1
    if-eq p1, v2, :cond_5

    .line 1255
    invoke-virtual {p1}, Landroid/view/View;->isFocusable()Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    return-object p1

    :cond_5
    :goto_2
    return-object v0
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 377
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "is pre layout:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LinearLayoutManager"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v3, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mPendingSavedState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;

    if-eqz v3, :cond_0

    .line 380
    iget v3, v3, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;->mOrientation:I

    invoke-virtual {v0, v3}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->setOrientation(I)V

    .line 381
    iget-object v3, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mPendingSavedState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;

    iget-boolean v3, v3, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;->mReverseLayout:Z

    invoke-virtual {v0, v3}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->setReverseLayout(Z)V

    .line 382
    iget-object v3, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mPendingSavedState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;

    iget-boolean v3, v3, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;->mStackFromEnd:Z

    invoke-virtual {v0, v3}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->setStackFromEnd(Z)V

    .line 383
    iget-object v3, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mPendingSavedState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;

    iget v3, v3, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;->mAnchorPosition:I

    iput v3, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mPendingScrollPosition:I

    .line 386
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->ensureRenderState()V

    .line 388
    invoke-direct/range {p0 .. p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->resolveShouldLayoutReverse()V

    .line 391
    iget v3, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mPendingScrollPosition:I

    const/high16 v5, -0x80000000

    const/4 v6, -0x1

    if-eq v3, v6, :cond_2

    if-ltz v3, :cond_1

    .line 393
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v7

    if-lt v3, v7, :cond_2

    .line 394
    :cond_1
    iput v6, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mPendingScrollPosition:I

    .line 395
    iput v5, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mPendingScrollPositionOffset:I

    .line 397
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ignoring invalid scroll position "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mPendingScrollPosition:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_2
    iget-boolean v3, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mShouldReverseLayout:Z

    iget-boolean v7, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mStackFromEnd:Z

    xor-int v8, v3, v7

    .line 404
    iget-boolean v9, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mLastStackFromEnd:Z

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eq v9, v7, :cond_3

    const/4 v7, 0x1

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    .line 407
    :goto_0
    iget v9, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mPendingScrollPosition:I

    if-eq v9, v6, :cond_12

    .line 411
    iget-object v7, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mPendingSavedState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;

    if-eqz v7, :cond_5

    .line 414
    iget-boolean v8, v7, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;->mAnchorLayoutFromEnd:Z

    if-eqz v8, :cond_4

    .line 416
    iget-object v3, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    invoke-interface {v3}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getEndAfterPadding()I

    move-result v3

    iget-object v7, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mPendingSavedState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;

    iget v7, v7, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;->mAnchorOffset:I

    sub-int/2addr v3, v7

    goto/16 :goto_7

    .line 419
    :cond_4
    iget-object v3, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    invoke-interface {v3}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getStartAfterPadding()I

    move-result v3

    iget-object v7, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mPendingSavedState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;

    iget v7, v7, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;->mAnchorOffset:I

    add-int/2addr v3, v7

    goto/16 :goto_7

    .line 422
    :cond_5
    iget v7, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mPendingScrollPositionOffset:I

    if-ne v7, v5, :cond_10

    .line 423
    invoke-virtual {v0, v9}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 425
    iget-object v7, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    invoke-interface {v7, v3}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    iget-object v12, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    .line 426
    invoke-interface {v12}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getStartAfterPadding()I

    move-result v12

    sub-int/2addr v7, v12

    .line 427
    iget-object v12, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    invoke-interface {v12}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getEndAfterPadding()I

    move-result v12

    iget-object v13, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    .line 428
    invoke-interface {v13, v3}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v13

    sub-int/2addr v12, v13

    .line 429
    iget-object v13, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    invoke-interface {v13, v3}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v13

    .line 430
    iget-object v14, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    invoke-interface {v14}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getTotalSpace()I

    move-result v14

    if-le v13, v14, :cond_7

    if-eqz v8, :cond_6

    .line 432
    iget-object v3, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    invoke-interface {v3}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getEndAfterPadding()I

    move-result v3

    goto/16 :goto_7

    .line 433
    :cond_6
    iget-object v3, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    invoke-interface {v3}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getStartAfterPadding()I

    move-result v3

    goto/16 :goto_7

    :cond_7
    if-gez v7, :cond_8

    .line 435
    iget-object v3, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    invoke-interface {v3}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getStartAfterPadding()I

    move-result v3

    goto/16 :goto_4

    :cond_8
    if-gez v12, :cond_9

    .line 438
    iget-object v3, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    invoke-interface {v3}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getEndAfterPadding()I

    move-result v3

    goto :goto_3

    :cond_9
    if-eqz v8, :cond_a

    .line 442
    iget-object v7, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    invoke-interface {v7, v3}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    goto/16 :goto_7

    .line 443
    :cond_a
    iget-object v7, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    invoke-interface {v7, v3}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    goto/16 :goto_7

    .line 446
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getChildCount()I

    move-result v3

    if-lez v3, :cond_e

    .line 448
    invoke-virtual {v0, v11}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getPosition(Landroid/view/View;)I

    move-result v3

    .line 449
    iget v7, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mPendingScrollPosition:I

    if-ge v7, v3, :cond_c

    const/4 v3, 0x1

    goto :goto_1

    :cond_c
    const/4 v3, 0x0

    :goto_1
    iget-boolean v7, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mShouldReverseLayout:Z

    if-ne v3, v7, :cond_d

    .line 450
    iget-object v3, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    invoke-interface {v3}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getEndAfterPadding()I

    move-result v3

    const/4 v7, 0x1

    goto :goto_2

    .line 453
    :cond_d
    iget-object v3, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    invoke-interface {v3}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getStartAfterPadding()I

    move-result v3

    const/4 v7, 0x0

    :goto_2
    move v8, v7

    goto/16 :goto_7

    :cond_e
    if-eqz v8, :cond_f

    .line 457
    iget-object v3, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    invoke-interface {v3}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getEndAfterPadding()I

    move-result v3

    goto :goto_7

    .line 458
    :cond_f
    iget-object v3, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    invoke-interface {v3}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getStartAfterPadding()I

    move-result v3

    goto :goto_7

    :cond_10
    if-eqz v3, :cond_11

    .line 464
    iget-object v3, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    invoke-interface {v3}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getEndAfterPadding()I

    move-result v3

    iget v7, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mPendingScrollPositionOffset:I

    sub-int/2addr v3, v7

    :goto_3
    const/4 v8, 0x1

    goto :goto_7

    .line 468
    :cond_11
    iget-object v3, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    invoke-interface {v3}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getStartAfterPadding()I

    move-result v3

    iget v7, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mPendingScrollPositionOffset:I

    add-int/2addr v3, v7

    :goto_4
    const/4 v8, 0x0

    goto :goto_7

    .line 473
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getChildCount()I

    move-result v3

    if-lez v3, :cond_14

    if-nez v7, :cond_14

    if-eqz v8, :cond_13

    .line 475
    invoke-direct/range {p0 .. p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v3

    .line 476
    iget-object v7, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    invoke-interface {v7, v3}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v7

    .line 477
    invoke-virtual {v0, v3}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getPosition(Landroid/view/View;)I

    move-result v9

    goto :goto_5

    .line 479
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getChildClosestToStart()Landroid/view/View;

    move-result-object v3

    .line 480
    iget-object v7, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    invoke-interface {v7, v3}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    .line 481
    invoke-virtual {v0, v3}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getPosition(Landroid/view/View;)I

    move-result v9

    :goto_5
    move v3, v7

    goto :goto_7

    :cond_14
    if-eqz v8, :cond_15

    .line 484
    iget-object v3, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    invoke-interface {v3}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getEndAfterPadding()I

    move-result v3

    goto :goto_6

    .line 485
    :cond_15
    iget-object v3, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    invoke-interface {v3}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getStartAfterPadding()I

    move-result v3

    .line 486
    :goto_6
    iget-boolean v7, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mStackFromEnd:Z

    if-eqz v7, :cond_16

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v7

    sub-int/2addr v7, v10

    move v9, v7

    goto :goto_7

    :cond_16
    const/4 v9, 0x0

    .line 489
    :goto_7
    invoke-virtual/range {p0 .. p1}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 492
    invoke-virtual {v0, v2}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v7

    .line 493
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getTargetScrollPosition()I

    move-result v12

    if-ge v12, v9, :cond_17

    const/4 v12, 0x1

    goto :goto_8

    :cond_17
    const/4 v12, 0x0

    .line 494
    :goto_8
    iget-boolean v13, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mShouldReverseLayout:Z

    if-ne v12, v13, :cond_18

    move v12, v7

    const/4 v7, 0x0

    goto :goto_9

    :cond_18
    const/4 v12, 0x0

    .line 502
    :goto_9
    invoke-direct {v0, v9, v3}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->updateRenderStateToFillStart(II)V

    .line 503
    iget-object v13, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mRenderState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;

    iput v7, v13, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mExtra:I

    if-nez v8, :cond_19

    .line 505
    iget-object v7, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mRenderState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;

    iget v13, v7, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mCurrentPosition:I

    iget-object v14, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mRenderState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;

    iget v14, v14, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mItemDirection:I

    add-int/2addr v13, v14

    iput v13, v7, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mCurrentPosition:I

    .line 507
    :cond_19
    iget-object v7, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mRenderState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;

    invoke-direct {v0, v1, v7, v2, v11}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    .line 508
    iget-object v7, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mRenderState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;

    iget v7, v7, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mOffset:I

    .line 510
    invoke-direct {v0, v9, v3}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->updateRenderStateToFillEnd(II)V

    .line 511
    iget-object v3, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mRenderState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;

    iput v12, v3, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mExtra:I

    if-eqz v8, :cond_1a

    .line 513
    iget-object v3, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mRenderState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;

    iget v8, v3, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mCurrentPosition:I

    iget-object v9, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mRenderState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;

    iget v9, v9, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mItemDirection:I

    add-int/2addr v8, v9

    iput v8, v3, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mCurrentPosition:I

    .line 515
    :cond_1a
    iget-object v3, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mRenderState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;

    invoke-direct {v0, v1, v3, v2, v11}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    .line 516
    iget-object v3, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mRenderState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;

    iget v3, v3, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mOffset:I

    .line 518
    invoke-virtual/range {p0 .. p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getChildCount()I

    move-result v8

    if-lez v8, :cond_1c

    .line 522
    iget-boolean v8, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mShouldReverseLayout:Z

    iget-boolean v9, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mStackFromEnd:Z

    xor-int/2addr v8, v9

    if-eqz v8, :cond_1b

    .line 523
    invoke-direct {v0, v3, v1, v2, v10}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->fixLayoutEndGap(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v3, v8

    .line 526
    invoke-direct {v0, v7, v1, v2, v11}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->fixLayoutStartGap(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    move-result v8

    goto :goto_a

    .line 530
    :cond_1b
    invoke-direct {v0, v7, v1, v2, v10}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->fixLayoutStartGap(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v3, v8

    .line 533
    invoke-direct {v0, v3, v1, v2, v11}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->fixLayoutEndGap(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    move-result v8

    :goto_a
    add-int/2addr v7, v8

    add-int/2addr v3, v8

    .line 543
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getChildCount()I

    move-result v8

    if-lez v8, :cond_25

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v8

    if-nez v8, :cond_25

    invoke-virtual/range {p0 .. p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->supportsPredictiveItemAnimations()Z

    move-result v8

    if-eqz v8, :cond_25

    .line 546
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getScrapList()Ljava/util/List;

    move-result-object v8

    .line 547
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    .line 548
    invoke-virtual {v0, v11}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v0, v13}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getPosition(Landroid/view/View;)I

    move-result v13

    const/4 v10, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_b
    if-ge v14, v12, :cond_20

    .line 550
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 551
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getPosition()I

    move-result v9

    if-ge v9, v13, :cond_1d

    const/4 v9, 0x1

    goto :goto_c

    :cond_1d
    const/4 v9, 0x0

    .line 552
    :goto_c
    iget-boolean v11, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mShouldReverseLayout:Z

    if-eq v9, v11, :cond_1e

    const/4 v9, -0x1

    goto :goto_d

    :cond_1e
    const/4 v9, 0x1

    :goto_d
    if-ne v9, v6, :cond_1f

    .line 555
    iget-object v9, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v9, v5}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v5

    add-int/2addr v15, v5

    goto :goto_e

    .line 557
    :cond_1f
    iget-object v9, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v9, v5}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v5

    add-int/2addr v10, v5

    :goto_e
    add-int/lit8 v14, v14, 0x1

    const/high16 v5, -0x80000000

    const/4 v11, 0x0

    goto :goto_b

    .line 562
    :cond_20
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "for unused scrap, decided to add "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " towards start and "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " towards end"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v4, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mRenderState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;

    iput-object v8, v4, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mScrapList:Ljava/util/List;

    if-lez v15, :cond_22

    .line 567
    invoke-direct/range {p0 .. p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getChildClosestToStart()Landroid/view/View;

    move-result-object v4

    .line 568
    invoke-virtual {v0, v4}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getPosition(Landroid/view/View;)I

    move-result v4

    invoke-direct {v0, v4, v7}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->updateRenderStateToFillStart(II)V

    .line 569
    iget-object v4, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mRenderState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;

    iput v15, v4, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mExtra:I

    .line 570
    iget-object v4, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mRenderState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;

    const/4 v5, 0x0

    iput v5, v4, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mAvailable:I

    .line 571
    iget-object v4, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mRenderState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;

    iget v7, v4, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mCurrentPosition:I

    iget-boolean v8, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mShouldReverseLayout:Z

    if-eqz v8, :cond_21

    const/4 v8, 0x1

    goto :goto_f

    :cond_21
    const/4 v8, -0x1

    :goto_f
    add-int/2addr v7, v8

    iput v7, v4, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mCurrentPosition:I

    .line 572
    iget-object v4, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mRenderState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;

    invoke-direct {v0, v1, v4, v2, v5}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    goto :goto_10

    :cond_22
    const/4 v5, 0x0

    :goto_10
    if-lez v10, :cond_24

    .line 576
    invoke-direct/range {p0 .. p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v4

    .line 577
    invoke-virtual {v0, v4}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getPosition(Landroid/view/View;)I

    move-result v4

    invoke-direct {v0, v4, v3}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->updateRenderStateToFillEnd(II)V

    .line 579
    iget-object v3, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mRenderState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;

    iput v10, v3, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mExtra:I

    .line 580
    iget-object v3, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mRenderState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;

    iput v5, v3, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mAvailable:I

    .line 581
    iget-object v3, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mRenderState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;

    iget v4, v3, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mCurrentPosition:I

    iget-boolean v7, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mShouldReverseLayout:Z

    if-eqz v7, :cond_23

    const/4 v10, -0x1

    goto :goto_11

    :cond_23
    const/4 v10, 0x1

    :goto_11
    add-int/2addr v4, v10

    iput v4, v3, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mCurrentPosition:I

    .line 582
    iget-object v3, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mRenderState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;

    invoke-direct {v0, v1, v3, v2, v5}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    .line 584
    :cond_24
    iget-object v1, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mRenderState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$RenderState;->mScrapList:Ljava/util/List;

    goto :goto_12

    :cond_25
    const/4 v2, 0x0

    .line 587
    :goto_12
    iput v6, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mPendingScrollPosition:I

    const/high16 v1, -0x80000000

    .line 588
    iput v1, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mPendingScrollPositionOffset:I

    .line 589
    iget-boolean v1, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mStackFromEnd:Z

    iput-boolean v1, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mLastStackFromEnd:Z

    .line 590
    iput-object v2, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mPendingSavedState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;

    .line 593
    invoke-direct/range {p0 .. p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->validateChildOrder()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 170
    instance-of v0, p1, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;

    const-string v1, "LinearLayoutManager"

    if-eqz v0, :cond_0

    .line 171
    check-cast p1, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;

    iput-object p1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mPendingSavedState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;

    .line 172
    invoke-virtual {p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->requestLayout()V

    const-string p1, "loaded saved state"

    .line 174
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "invalid saved state class"

    .line 177
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 140
    iget-object v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mPendingSavedState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;

    if-eqz v0, :cond_0

    .line 141
    new-instance v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;

    iget-object v1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mPendingSavedState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;

    invoke-direct {v0, v1}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;-><init>(Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;)V

    return-object v0

    .line 143
    :cond_0
    new-instance v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;

    invoke-direct {v0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;-><init>()V

    .line 144
    invoke-virtual {p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 145
    iget-boolean v1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mLastStackFromEnd:Z

    iget-boolean v2, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mShouldReverseLayout:Z

    xor-int/2addr v1, v2

    .line 146
    iput-boolean v1, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;->mAnchorLayoutFromEnd:Z

    if-eqz v1, :cond_1

    .line 148
    invoke-direct {p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v1

    .line 149
    iget-object v2, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    invoke-interface {v2}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getEndAfterPadding()I

    move-result v2

    iget-object v3, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    .line 150
    invoke-interface {v3, v1}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;->mAnchorOffset:I

    .line 151
    invoke-virtual {p0, v1}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getPosition(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;->mAnchorPosition:I

    goto :goto_0

    .line 153
    :cond_1
    invoke-direct {p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getChildClosestToStart()Landroid/view/View;

    move-result-object v1

    .line 154
    invoke-virtual {p0, v1}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->getPosition(Landroid/view/View;)I

    move-result v2

    iput v2, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;->mAnchorPosition:I

    .line 155
    iget-object v2, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    invoke-interface {v2, v1}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    .line 156
    invoke-interface {v2}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;->getStartAfterPadding()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;->mAnchorOffset:I

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 159
    iput v1, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;->mAnchorPosition:I

    .line 160
    iput v1, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;->mAnchorOffset:I

    .line 162
    :goto_0
    iget-boolean v1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mStackFromEnd:Z

    iput-boolean v1, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;->mStackFromEnd:Z

    .line 163
    iget-boolean v1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mReverseLayout:Z

    iput-boolean v1, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;->mReverseLayout:Z

    .line 164
    iget v1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientation:I

    iput v1, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;->mOrientation:I

    return-object v0
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2

    .line 731
    iget v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 734
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public scrollToPosition(I)V
    .locals 0

    .line 699
    iput p1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mPendingScrollPosition:I

    const/high16 p1, -0x80000000

    .line 700
    iput p1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mPendingScrollPositionOffset:I

    .line 701
    invoke-virtual {p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->requestLayout()V

    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .locals 0

    .line 719
    iput p1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mPendingScrollPosition:I

    .line 720
    iput p2, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mPendingScrollPositionOffset:I

    .line 721
    invoke-virtual {p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->requestLayout()V

    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    .line 743
    iget v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientation:I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 746
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public setHeaderIncrementFixer(Landroid/view/View;)V
    .locals 2

    .line 1460
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$2;

    invoke-direct {v1, p0, p1}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$2;-><init>(Lcom/texa/careapp/views/HeaderLayoutManagerFixed;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid orientation."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 237
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mPendingSavedState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;

    if-eqz v0, :cond_2

    iget v0, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;->mOrientation:I

    if-eq v0, p1, :cond_2

    .line 239
    iget-object v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mPendingSavedState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;

    iput p1, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;->mOrientation:I

    .line 241
    :cond_2
    iget v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientation:I

    if-ne p1, v0, :cond_3

    return-void

    .line 244
    :cond_3
    iput p1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientation:I

    const/4 p1, 0x0

    .line 245
    iput-object p1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mOrientationHelper:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$OrientationHelper;

    .line 246
    invoke-virtual {p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->requestLayout()V

    return-void
.end method

.method public setReverseLayout(Z)V
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mPendingSavedState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;->mReverseLayout:Z

    if-eq v0, p1, :cond_0

    .line 290
    iget-object v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mPendingSavedState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;

    iput-boolean p1, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;->mReverseLayout:Z

    .line 292
    :cond_0
    iget-boolean v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mReverseLayout:Z

    if-ne p1, v0, :cond_1

    return-void

    .line 295
    :cond_1
    iput-boolean p1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mReverseLayout:Z

    .line 296
    invoke-virtual {p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->requestLayout()V

    return-void
.end method

.method public setStackFromEnd(Z)V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mPendingSavedState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;->mStackFromEnd:Z

    if-eq v0, p1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mPendingSavedState:Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;

    iput-boolean p1, v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;->mStackFromEnd:Z

    .line 205
    :cond_0
    iget-boolean v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mStackFromEnd:Z

    if-ne v0, p1, :cond_1

    return-void

    .line 208
    :cond_1
    iput-boolean p1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->mStackFromEnd:Z

    .line 209
    invoke-virtual {p0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->requestLayout()V

    return-void
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 0

    .line 339
    new-instance p2, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$1;

    .line 340
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$1;-><init>(Lcom/texa/careapp/views/HeaderLayoutManagerFixed;Landroid/content/Context;)V

    .line 347
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 348
    invoke-virtual {p0, p2}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
