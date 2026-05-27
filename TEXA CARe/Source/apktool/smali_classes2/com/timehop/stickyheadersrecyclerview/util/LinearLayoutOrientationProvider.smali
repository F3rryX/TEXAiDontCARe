.class public Lcom/timehop/stickyheadersrecyclerview/util/LinearLayoutOrientationProvider;
.super Ljava/lang/Object;
.source "LinearLayoutOrientationProvider.java"

# interfaces
.implements Lcom/timehop/stickyheadersrecyclerview/util/OrientationProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private throwIfNotLinearLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 1

    .line 26
    instance-of p1, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p1, :cond_0

    return-void

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "StickyListHeadersDecoration can only be used with a LinearLayoutManager."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getOrientation(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 0

    .line 13
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 14
    invoke-direct {p0, p1}, Lcom/timehop/stickyheadersrecyclerview/util/LinearLayoutOrientationProvider;->throwIfNotLinearLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 15
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result p1

    return p1
.end method

.method public isReverseLayout(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 0

    .line 20
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 21
    invoke-direct {p0, p1}, Lcom/timehop/stickyheadersrecyclerview/util/LinearLayoutOrientationProvider;->throwIfNotLinearLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 22
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getReverseLayout()Z

    move-result p1

    return p1
.end method
