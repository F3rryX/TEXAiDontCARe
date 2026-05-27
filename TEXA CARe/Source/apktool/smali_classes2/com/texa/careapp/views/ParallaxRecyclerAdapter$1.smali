.class Lcom/texa/careapp/views/ParallaxRecyclerAdapter$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "ParallaxRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->setParallaxHeader(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/views/ParallaxRecyclerAdapter;


# direct methods
.method constructor <init>(Lcom/texa/careapp/views/ParallaxRecyclerAdapter;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/texa/careapp/views/ParallaxRecyclerAdapter$1;->this$0:Lcom/texa/careapp/views/ParallaxRecyclerAdapter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 111
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 112
    iget-object p1, p0, Lcom/texa/careapp/views/ParallaxRecyclerAdapter$1;->this$0:Lcom/texa/careapp/views/ParallaxRecyclerAdapter;

    invoke-static {p1}, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->access$000(Lcom/texa/careapp/views/ParallaxRecyclerAdapter;)Lcom/texa/careapp/views/ParallaxRecyclerAdapter$CustomRelativeWrapper;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 113
    iget-object p1, p0, Lcom/texa/careapp/views/ParallaxRecyclerAdapter$1;->this$0:Lcom/texa/careapp/views/ParallaxRecyclerAdapter;

    invoke-static {p1}, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->access$100(Lcom/texa/careapp/views/ParallaxRecyclerAdapter;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/texa/careapp/views/ParallaxRecyclerAdapter$1;->this$0:Lcom/texa/careapp/views/ParallaxRecyclerAdapter;

    invoke-static {p3}, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->access$000(Lcom/texa/careapp/views/ParallaxRecyclerAdapter;)Lcom/texa/careapp/views/ParallaxRecyclerAdapter$CustomRelativeWrapper;

    move-result-object p3

    if-ne p2, p3, :cond_0

    .line 114
    iget-object p2, p0, Lcom/texa/careapp/views/ParallaxRecyclerAdapter$1;->this$0:Lcom/texa/careapp/views/ParallaxRecyclerAdapter;

    invoke-static {p2}, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->access$100(Lcom/texa/careapp/views/ParallaxRecyclerAdapter;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/texa/careapp/views/ParallaxRecyclerAdapter$1;->this$0:Lcom/texa/careapp/views/ParallaxRecyclerAdapter;

    invoke-static {p2}, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->access$000(Lcom/texa/careapp/views/ParallaxRecyclerAdapter;)Lcom/texa/careapp/views/ParallaxRecyclerAdapter$CustomRelativeWrapper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/texa/careapp/views/ParallaxRecyclerAdapter$CustomRelativeWrapper;->getHeight()I

    move-result p2

    :goto_0
    int-to-float p2, p2

    .line 113
    invoke-virtual {p1, p2}, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->translateHeader(F)V

    :cond_1
    return-void
.end method
