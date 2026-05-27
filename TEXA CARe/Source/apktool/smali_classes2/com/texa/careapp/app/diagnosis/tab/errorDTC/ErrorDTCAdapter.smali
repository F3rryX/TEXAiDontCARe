.class public Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ErrorDTCAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCAdapter$ErrorHeaderDTCViewHolder;,
        Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCAdapter$ErrorDTCViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ErrorDTCAdapter"


# instance fields
.field private final TYPE_HEADER:I

.field private mContext:Landroid/content/Context;

.field private final mLampStatusList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/errorsDTC/LampStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCAdapter;->TYPE_HEADER:I

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCAdapter;->mLampStatusList:Ljava/util/List;

    .line 40
    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCAdapter;->mLampStatusList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCAdapter;->mLampStatusList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/app/errorsDTC/LampStatus;

    invoke-virtual {p1}, Lcom/texa/careapp/app/errorsDTC/LampStatus;->getHeaderTitle()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .line 57
    instance-of v0, p1, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCAdapter$ErrorHeaderDTCViewHolder;

    if-eqz v0, :cond_0

    .line 58
    check-cast p1, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCAdapter$ErrorHeaderDTCViewHolder;

    .line 59
    iget-object p1, p1, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCAdapter$ErrorHeaderDTCViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCAdapter;->mLampStatusList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/texa/careapp/app/errorsDTC/LampStatus;

    invoke-virtual {p2}, Lcom/texa/careapp/app/errorsDTC/LampStatus;->getHeaderTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 60
    :cond_0
    instance-of v0, p1, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCAdapter$ErrorDTCViewHolder;

    if-eqz v0, :cond_2

    .line 61
    check-cast p1, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCAdapter$ErrorDTCViewHolder;

    .line 62
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCAdapter;->mLampStatusList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/texa/careapp/app/errorsDTC/LampStatus;

    .line 63
    invoke-virtual {p2}, Lcom/texa/careapp/app/errorsDTC/LampStatus;->getDataId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p1, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCAdapter$ErrorDTCViewHolder;->mLampColorStatus:Landroid/view/View;

    invoke-virtual {p2}, Lcom/texa/careapp/app/errorsDTC/LampStatus;->getColor()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 65
    iget-object v0, p1, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCAdapter$ErrorDTCViewHolder;->mLampInfo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/texa/careapp/utils/Utils;->getLampLabel(Landroid/content/Context;Lcom/texa/careapp/app/errorsDTC/LampStatus;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p1, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCAdapter$ErrorDTCViewHolder;->mLampImg:Landroid/widget/ImageView;

    sget-object v1, Lcom/texa/careapp/Constants;->LAMP_STATUS_IMAGES:Landroid/util/LongSparseArray;

    invoke-virtual {p2}, Lcom/texa/careapp/app/errorsDTC/LampStatus;->getDataId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 68
    :cond_1
    invoke-virtual {p2}, Lcom/texa/careapp/app/errorsDTC/LampStatus;->getTime()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 69
    iget-object p1, p1, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCAdapter$ErrorDTCViewHolder;->mLampTimeStamp:Lcom/texa/careapp/views/RelativeTimeTextView;

    invoke-virtual {p2}, Lcom/texa/careapp/app/errorsDTC/LampStatus;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/texa/careapp/views/RelativeTimeTextView;->setReferenceTime(J)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const p2, 0x7f0d0083

    .line 48
    new-instance v1, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCAdapter$ErrorHeaderDTCViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-static {v2, p2, p1, v0}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ErrorDtcHeaderItemBinding;

    invoke-direct {v1, p1}, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCAdapter$ErrorHeaderDTCViewHolder;-><init>(Lcom/texa/careapp/databinding/ErrorDtcHeaderItemBinding;)V

    return-object v1

    :cond_0
    const p2, 0x7f0d0084

    .line 51
    new-instance v1, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCAdapter$ErrorDTCViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-static {v2, p2, p1, v0}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ErrorDtcItemBinding;

    invoke-direct {v1, p1}, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCAdapter$ErrorDTCViewHolder;-><init>(Lcom/texa/careapp/databinding/ErrorDtcItemBinding;)V

    return-object v1
.end method

.method public update(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/errorsDTC/LampStatus;",
            ">;)V"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCAdapter;->mLampStatusList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 86
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCAdapter;->mLampStatusList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 87
    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCAdapter;->notifyDataSetChanged()V

    return-void
.end method
