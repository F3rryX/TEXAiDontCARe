.class Lcom/texa/careapp/views/HeaderLayoutManagerFixed$1;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "HeaderLayoutManagerFixed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/views/HeaderLayoutManagerFixed;


# direct methods
.method constructor <init>(Lcom/texa/careapp/views/HeaderLayoutManagerFixed;Landroid/content/Context;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$1;->this$0:Lcom/texa/careapp/views/HeaderLayoutManagerFixed;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$1;->this$0:Lcom/texa/careapp/views/HeaderLayoutManagerFixed;

    .line 344
    invoke-virtual {v0, p1}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method
