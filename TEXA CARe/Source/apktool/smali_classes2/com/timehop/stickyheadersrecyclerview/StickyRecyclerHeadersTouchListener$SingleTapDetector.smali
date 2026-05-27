.class Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener$SingleTapDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "StickyRecyclerHeadersTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SingleTapDetector"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener;


# direct methods
.method private constructor <init>(Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener$SingleTapDetector;->this$0:Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener;Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener$1;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener$SingleTapDetector;-><init>(Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 67
    iget-object v0, p0, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener$SingleTapDetector;->this$0:Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener;

    invoke-static {v0}, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener;->access$100(Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener;)Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersDecoration;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersDecoration;->findHeaderPositionUnder(II)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 69
    iget-object v2, p0, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener$SingleTapDetector;->this$0:Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener;

    invoke-static {v2}, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener;->access$100(Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener;)Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersDecoration;

    move-result-object v2

    iget-object v3, p0, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener$SingleTapDetector;->this$0:Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener;

    invoke-static {v3}, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener;->access$200(Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersDecoration;->getHeaderView(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/view/View;

    move-result-object v2

    .line 70
    iget-object v3, p0, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener$SingleTapDetector;->this$0:Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener;

    invoke-virtual {v3}, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener;->getAdapter()Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersAdapter;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersAdapter;->getHeaderId(I)J

    move-result-wide v3

    .line 71
    iget-object v5, p0, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener$SingleTapDetector;->this$0:Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener;

    invoke-static {v5}, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener;->access$300(Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener;)Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener$OnHeaderClickListener;

    move-result-object v5

    invoke-interface {v5, v2, v0, v3, v4}, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener$OnHeaderClickListener;->onHeaderClick(Landroid/view/View;IJ)V

    .line 72
    iget-object v0, p0, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener$SingleTapDetector;->this$0:Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener;

    invoke-static {v0}, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener;->access$200(Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->playSoundEffect(I)V

    .line 73
    invoke-virtual {v2, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method
