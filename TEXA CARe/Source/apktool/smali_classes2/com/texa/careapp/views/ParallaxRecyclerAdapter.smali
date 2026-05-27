.class public abstract Lcom/texa/careapp/views/ParallaxRecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ParallaxRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/views/ParallaxRecyclerAdapter$CustomRelativeWrapper;,
        Lcom/texa/careapp/views/ParallaxRecyclerAdapter$ViewHolder;,
        Lcom/texa/careapp/views/ParallaxRecyclerAdapter$OnParallaxScroll;,
        Lcom/texa/careapp/views/ParallaxRecyclerAdapter$OnLongClickEvent;,
        Lcom/texa/careapp/views/ParallaxRecyclerAdapter$OnClickEvent;,
        Lcom/texa/careapp/views/ParallaxRecyclerAdapter$VIEW_TYPES;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mHeader:Lcom/texa/careapp/views/ParallaxRecyclerAdapter$CustomRelativeWrapper;

.field private mOnClickEvent:Lcom/texa/careapp/views/ParallaxRecyclerAdapter$OnClickEvent;

.field private mOnLongClickEvent:Lcom/texa/careapp/views/ParallaxRecyclerAdapter$OnLongClickEvent;

.field private mParallaxScroll:Lcom/texa/careapp/views/ParallaxRecyclerAdapter$OnParallaxScroll;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mScrollMultiplier:F

.field private mShouldClipView:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 191
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 20
    iput v0, p0, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->mScrollMultiplier:F

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->mShouldClipView:Z

    .line 192
    iput-object p1, p0, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->mData:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/texa/careapp/views/ParallaxRecyclerAdapter;)Lcom/texa/careapp/views/ParallaxRecyclerAdapter$CustomRelativeWrapper;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->mHeader:Lcom/texa/careapp/views/ParallaxRecyclerAdapter$CustomRelativeWrapper;

    return-object p0
.end method

.method static synthetic access$100(Lcom/texa/careapp/views/ParallaxRecyclerAdapter;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method


# virtual methods
.method public addItem(Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 206
    iget-object p1, p0, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->mHeader:Lcom/texa/careapp/views/ParallaxRecyclerAdapter$CustomRelativeWrapper;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    add-int/2addr p2, p1

    invoke-virtual {p0, p2}, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->mData:Ljava/util/List;

    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    .line 219
    invoke-virtual {p0, p0}, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->getItemCountImpl(Lcom/texa/careapp/views/ParallaxRecyclerAdapter;)I

    move-result v0

    iget-object v1, p0, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->mHeader:Lcom/texa/careapp/views/ParallaxRecyclerAdapter$CustomRelativeWrapper;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public abstract getItemCountImpl(Lcom/texa/careapp/views/ParallaxRecyclerAdapter;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/views/ParallaxRecyclerAdapter<",
            "TT;>;)I"
        }
    .end annotation
.end method

.method public getItemViewType(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x3

    return p1

    :cond_0
    if-nez p1, :cond_1

    .line 226
    iget-object p1, p0, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->mHeader:Lcom/texa/careapp/views/ParallaxRecyclerAdapter$CustomRelativeWrapper;

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    :cond_1
    return v0
.end method

.method public getScrollMultiplier()F
    .locals 1

    .line 272
    iget v0, p0, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->mScrollMultiplier:F

    return v0
.end method

.method public hasHeader()Z
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->mHeader:Lcom/texa/careapp/views/ParallaxRecyclerAdapter$CustomRelativeWrapper;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShouldClipView()Z
    .locals 1

    .line 175
    iget-boolean v0, p0, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->mShouldClipView:Z

    return v0
.end method

.method public synthetic lambda$onCreateViewHolder$0$com-texa-careapp-views-ParallaxRecyclerAdapter(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;)V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->mOnClickEvent:Lcom/texa/careapp/views/ParallaxRecyclerAdapter$OnClickEvent;

    .line 147
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    iget-object v1, p0, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->mHeader:Lcom/texa/careapp/views/ParallaxRecyclerAdapter$CustomRelativeWrapper;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    sub-int/2addr p1, v1

    .line 146
    invoke-interface {v0, p2, p1}, Lcom/texa/careapp/views/ParallaxRecyclerAdapter$OnClickEvent;->onClick(Landroid/view/View;I)V

    return-void
.end method

.method public synthetic lambda$onCreateViewHolder$1$com-texa-careapp-views-ParallaxRecyclerAdapter(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;)Z
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->mOnLongClickEvent:Lcom/texa/careapp/views/ParallaxRecyclerAdapter$OnLongClickEvent;

    .line 152
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    iget-object v1, p0, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->mHeader:Lcom/texa/careapp/views/ParallaxRecyclerAdapter$CustomRelativeWrapper;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    sub-int/2addr p1, v1

    .line 151
    invoke-interface {v0, p2, p1}, Lcom/texa/careapp/views/ParallaxRecyclerAdapter$OnLongClickEvent;->onLongClick(Landroid/view/View;I)V

    return v2
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->mHeader:Lcom/texa/careapp/views/ParallaxRecyclerAdapter$CustomRelativeWrapper;

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    return-void

    :cond_0
    add-int/lit8 p2, p2, -0x1

    .line 127
    invoke-virtual {p0, p1, p0, p2}, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->onBindViewHolderImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/texa/careapp/views/ParallaxRecyclerAdapter;I)V

    goto :goto_0

    .line 129
    :cond_1
    invoke-virtual {p0, p1, p0, p2}, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->onBindViewHolderImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/texa/careapp/views/ParallaxRecyclerAdapter;I)V

    :goto_0
    return-void
.end method

.method public abstract onBindViewHolderImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/texa/careapp/views/ParallaxRecyclerAdapter;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "Lcom/texa/careapp/views/ParallaxRecyclerAdapter<",
            "TT;>;I)V"
        }
    .end annotation
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->mHeader:Lcom/texa/careapp/views/ParallaxRecyclerAdapter$CustomRelativeWrapper;

    if-eqz v0, :cond_0

    .line 136
    new-instance p1, Lcom/texa/careapp/views/ParallaxRecyclerAdapter$ViewHolder;

    iget-object p2, p0, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->mHeader:Lcom/texa/careapp/views/ParallaxRecyclerAdapter$CustomRelativeWrapper;

    invoke-direct {p1, p2}, Lcom/texa/careapp/views/ParallaxRecyclerAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p1

    :cond_0
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->mHeader:Lcom/texa/careapp/views/ParallaxRecyclerAdapter$CustomRelativeWrapper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 139
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->translateHeader(F)V

    .line 144
    :cond_1
    invoke-virtual {p0, p1, p0, p2}, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->onCreateViewHolderImpl(Landroid/view/ViewGroup;Lcom/texa/careapp/views/ParallaxRecyclerAdapter;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 145
    iget-object p2, p0, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->mOnClickEvent:Lcom/texa/careapp/views/ParallaxRecyclerAdapter$OnClickEvent;

    if-eqz p2, :cond_2

    .line 146
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/texa/careapp/views/ParallaxRecyclerAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/texa/careapp/views/ParallaxRecyclerAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/views/ParallaxRecyclerAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    :cond_2
    iget-object p2, p0, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->mOnLongClickEvent:Lcom/texa/careapp/views/ParallaxRecyclerAdapter$OnLongClickEvent;

    if-eqz p2, :cond_3

    .line 150
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/texa/careapp/views/ParallaxRecyclerAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/texa/careapp/views/ParallaxRecyclerAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/views/ParallaxRecyclerAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_3
    return-object p1
.end method

.method public abstract onCreateViewHolderImpl(Landroid/view/ViewGroup;Lcom/texa/careapp/views/ParallaxRecyclerAdapter;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/texa/careapp/views/ParallaxRecyclerAdapter<",
            "TT;>;I)",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;"
        }
    .end annotation
.end method

.method public removeItem(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    .line 213
    :cond_0
    iget-object v1, p0, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 214
    iget-object p1, p0, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->mHeader:Lcom/texa/careapp/views/ParallaxRecyclerAdapter$CustomRelativeWrapper;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->notifyItemRemoved(I)V

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 200
    iput-object p1, p0, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->mData:Ljava/util/List;

    .line 201
    invoke-virtual {p0}, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnClickEvent(Lcom/texa/careapp/views/ParallaxRecyclerAdapter$OnClickEvent;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->mOnClickEvent:Lcom/texa/careapp/views/ParallaxRecyclerAdapter$OnClickEvent;

    return-void
.end method

.method public setOnLongClickEvent(Lcom/texa/careapp/views/ParallaxRecyclerAdapter$OnLongClickEvent;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->mOnLongClickEvent:Lcom/texa/careapp/views/ParallaxRecyclerAdapter$OnLongClickEvent;

    return-void
.end method

.method public setOnParallaxScroll(Lcom/texa/careapp/views/ParallaxRecyclerAdapter$OnParallaxScroll;)V
    .locals 2

    .line 187
    iput-object p1, p0, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->mParallaxScroll:Lcom/texa/careapp/views/ParallaxRecyclerAdapter$OnParallaxScroll;

    .line 188
    iget-object v0, p0, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->mHeader:Lcom/texa/careapp/views/ParallaxRecyclerAdapter$CustomRelativeWrapper;

    const/4 v1, 0x0

    invoke-interface {p1, v1, v1, v0}, Lcom/texa/careapp/views/ParallaxRecyclerAdapter$OnParallaxScroll;->onParallaxScroll(FFLandroid/view/View;)V

    return-void
.end method

.method public setParallaxHeader(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    .line 104
    iput-object p2, p0, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 105
    new-instance v0, Lcom/texa/careapp/views/ParallaxRecyclerAdapter$CustomRelativeWrapper;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->mShouldClipView:Z

    invoke-direct {v0, v1, v2}, Lcom/texa/careapp/views/ParallaxRecyclerAdapter$CustomRelativeWrapper;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->mHeader:Lcom/texa/careapp/views/ParallaxRecyclerAdapter$CustomRelativeWrapper;

    .line 106
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/texa/careapp/views/ParallaxRecyclerAdapter$CustomRelativeWrapper;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    iget-object v0, p0, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->mHeader:Lcom/texa/careapp/views/ParallaxRecyclerAdapter$CustomRelativeWrapper;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lcom/texa/careapp/views/ParallaxRecyclerAdapter$CustomRelativeWrapper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    new-instance p1, Lcom/texa/careapp/views/ParallaxRecyclerAdapter$1;

    invoke-direct {p1, p0}, Lcom/texa/careapp/views/ParallaxRecyclerAdapter$1;-><init>(Lcom/texa/careapp/views/ParallaxRecyclerAdapter;)V

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public setScrollMultiplier(F)V
    .locals 0

    .line 264
    iput p1, p0, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->mScrollMultiplier:F

    return-void
.end method

.method public setShouldClipView(Z)V
    .locals 0

    .line 183
    iput-boolean p1, p0, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->mShouldClipView:Z

    return-void
.end method

.method public translateHeader(F)V
    .locals 4

    .line 75
    iget v0, p0, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->mScrollMultiplier:F

    mul-float v0, v0, p1

    .line 76
    iget-object v1, p0, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->mHeader:Lcom/texa/careapp/views/ParallaxRecyclerAdapter$CustomRelativeWrapper;

    invoke-virtual {v1}, Lcom/texa/careapp/views/ParallaxRecyclerAdapter$CustomRelativeWrapper;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->mHeader:Lcom/texa/careapp/views/ParallaxRecyclerAdapter$CustomRelativeWrapper;

    invoke-virtual {v1, v0}, Lcom/texa/careapp/views/ParallaxRecyclerAdapter$CustomRelativeWrapper;->setTranslationY(F)V

    goto :goto_0

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->mHeader:Lcom/texa/careapp/views/ParallaxRecyclerAdapter$CustomRelativeWrapper;

    invoke-virtual {v1}, Lcom/texa/careapp/views/ParallaxRecyclerAdapter$CustomRelativeWrapper;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    .line 79
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v0, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const/4 v2, 0x1

    .line 80
    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    const-wide/16 v2, 0x0

    .line 81
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 82
    iget-object v2, p0, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->mHeader:Lcom/texa/careapp/views/ParallaxRecyclerAdapter$CustomRelativeWrapper;

    invoke-virtual {v2, v1}, Lcom/texa/careapp/views/ParallaxRecyclerAdapter$CustomRelativeWrapper;->startAnimation(Landroid/view/animation/Animation;)V

    .line 84
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->mHeader:Lcom/texa/careapp/views/ParallaxRecyclerAdapter$CustomRelativeWrapper;

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/texa/careapp/views/ParallaxRecyclerAdapter$CustomRelativeWrapper;->setClipY(I)V

    .line 85
    iget-object v1, p0, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->mParallaxScroll:Lcom/texa/careapp/views/ParallaxRecyclerAdapter$OnParallaxScroll;

    if-eqz v1, :cond_3

    .line 86
    iget-object v1, p0, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_2

    .line 89
    iget-object v1, p0, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->mHeader:Lcom/texa/careapp/views/ParallaxRecyclerAdapter$CustomRelativeWrapper;

    invoke-virtual {v1}, Lcom/texa/careapp/views/ParallaxRecyclerAdapter$CustomRelativeWrapper;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->mScrollMultiplier:F

    mul-float v1, v1, v3

    div-float/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->mParallaxScroll:Lcom/texa/careapp/views/ParallaxRecyclerAdapter$OnParallaxScroll;

    iget-object v1, p0, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;->mHeader:Lcom/texa/careapp/views/ParallaxRecyclerAdapter$CustomRelativeWrapper;

    invoke-interface {v0, v2, p1, v1}, Lcom/texa/careapp/views/ParallaxRecyclerAdapter$OnParallaxScroll;->onParallaxScroll(FFLandroid/view/View;)V

    :cond_3
    return-void
.end method
