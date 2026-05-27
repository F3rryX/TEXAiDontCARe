.class public Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener;
.super Ljava/lang/Object;
.source "StickyRecyclerHeadersTouchListener.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener$SingleTapDetector;,
        Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener$OnHeaderClickListener;
    }
.end annotation


# instance fields
.field private final mDecor:Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersDecoration;

.field private mOnHeaderClickListener:Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener$OnHeaderClickListener;

.field private final mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final mTapDetector:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersDecoration;)V
    .locals 4

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener$SingleTapDetector;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener$SingleTapDetector;-><init>(Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener;Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener;->mTapDetector:Landroid/view/GestureDetector;

    .line 22
    iput-object p1, p0, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 23
    iput-object p2, p0, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener;->mDecor:Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersDecoration;

    return-void
.end method

.method static synthetic access$100(Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener;)Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersDecoration;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener;->mDecor:Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersDecoration;

    return-object p0
.end method

.method static synthetic access$200(Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener;)Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener$OnHeaderClickListener;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener;->mOnHeaderClickListener:Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener$OnHeaderClickListener;

    return-object p0
.end method


# virtual methods
.method public getAdapter()Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersAdapter;
    .locals 3

    .line 27
    iget-object v0, p0, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersAdapter;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersAdapter;

    return-object v0

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A RecyclerView with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "StickyRecyclerHeadersTouchListener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " requires a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersAdapter;

    const-string v2, "StickyRecyclerHeadersAdapter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 43
    iget-object p1, p0, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener;->mOnHeaderClickListener:Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener$OnHeaderClickListener;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 44
    iget-object p1, p0, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener;->mTapDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    return v1

    .line 49
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    .line 50
    iget-object p1, p0, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener;->mDecor:Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersDecoration;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, v2, p2}, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersDecoration;->findHeaderPositionUnder(II)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public setOnHeaderClickListener(Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener$OnHeaderClickListener;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener;->mOnHeaderClickListener:Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersTouchListener$OnHeaderClickListener;

    return-void
.end method
