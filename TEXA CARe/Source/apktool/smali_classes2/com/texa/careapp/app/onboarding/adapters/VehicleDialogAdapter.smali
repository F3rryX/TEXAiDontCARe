.class public Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "VehicleDialogAdapter.java"

# interfaces
.implements Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter$IVehicleHeaderViewHolder;,
        Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter$IVehicleItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;",
        "Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersAdapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/onboarding/IVehicleModel;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/onboarding/IVehicleModel;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter;->list:Ljava/util/List;

    return-void
.end method

.method static synthetic access$100(Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter;Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter$IVehicleItemViewHolder;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter;->onItemHolderClick(Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter$IVehicleItemViewHolder;)V

    return-void
.end method

.method private onItemHolderClick(Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter$IVehicleItemViewHolder;)V
    .locals 6

    .line 112
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 113
    iget-object v2, p1, Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter$IVehicleItemViewHolder;->itemView:Landroid/view/View;

    .line 114
    invoke-virtual {p1}, Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter$IVehicleItemViewHolder;->getAdapterPosition()I

    move-result v3

    invoke-virtual {p1}, Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter$IVehicleItemViewHolder;->getItemId()J

    move-result-wide v4

    .line 113
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getHeaderId(I)J
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/app/onboarding/IVehicleModel;

    invoke-interface {p1}, Lcom/texa/careapp/app/onboarding/IVehicleModel;->getHeaderId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemCount()I
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindHeaderViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 61
    check-cast p1, Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter$IVehicleHeaderViewHolder;

    .line 62
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/texa/careapp/app/onboarding/IVehicleModel;

    invoke-interface {p2}, Lcom/texa/careapp/app/onboarding/IVehicleModel;->getHeader()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 64
    iget-object p1, p1, Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter$IVehicleHeaderViewHolder;->mVehicleHeader:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 66
    :cond_0
    iget-object p1, p1, Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter$IVehicleHeaderViewHolder;->mVehicleHeader:Landroid/widget/TextView;

    const p2, 0x7f110d32

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    .line 72
    check-cast p1, Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter$IVehicleItemViewHolder;

    .line 73
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/texa/careapp/app/onboarding/IVehicleModel;

    .line 74
    invoke-interface {p2}, Lcom/texa/careapp/app/onboarding/IVehicleModel;->getHeaderId()J

    move-result-wide v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x1

    cmp-long v5, v0, v3

    if-nez v5, :cond_4

    .line 75
    invoke-interface {p2}, Lcom/texa/careapp/app/onboarding/IVehicleModel;->getVehicleInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const-string v1, " "

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 76
    invoke-interface {p2}, Lcom/texa/careapp/app/onboarding/IVehicleModel;->getVehicleInfo()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "||"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    invoke-interface {p2}, Lcom/texa/careapp/app/onboarding/IVehicleModel;->getVehicleInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 78
    array-length v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 79
    aget-object v4, v0, v3

    invoke-static {v4}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    aget-object v5, v0, v4

    invoke-static {v5}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 80
    iget-object v5, p1, Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter$IVehicleItemViewHolder;->mModel:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v0, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v4

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->formatVehicleModel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p1, Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter$IVehicleItemViewHolder;->mModel:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/texa/careapp/app/onboarding/IVehicleModel;->getVehicleInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 86
    :cond_1
    iget-object v0, p1, Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter$IVehicleItemViewHolder;->mModel:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/texa/careapp/app/onboarding/IVehicleModel;->getVehicleInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 89
    :cond_2
    iget-object v0, p1, Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter$IVehicleItemViewHolder;->mModel:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, p2

    check-cast v5, Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v5}, Lcom/texa/careapp/model/VehicleModel;->getBrandName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/texa/careapp/model/VehicleModel;->getModelName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/texa/careapp/utils/Utils;->formatVehicleModel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :goto_0
    iget-object v0, p1, Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter$IVehicleItemViewHolder;->mModel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0600ab

    invoke-static {v1, v4, v2}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    iget-object v0, p1, Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter$IVehicleItemViewHolder;->mPlate:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    invoke-interface {p2}, Lcom/texa/careapp/app/onboarding/IVehicleModel;->getVehiclePlate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 95
    iget-object p1, p1, Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter$IVehicleItemViewHolder;->mPlate:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/texa/careapp/app/onboarding/IVehicleModel;->getVehiclePlate()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 97
    :cond_3
    iget-object p1, p1, Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter$IVehicleItemViewHolder;->mPlate:Landroid/widget/TextView;

    check-cast p2, Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {p2}, Lcom/texa/careapp/model/VehicleModel;->getPlate()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 99
    :cond_4
    iget-object v0, p1, Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter$IVehicleItemViewHolder;->mModel:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/texa/careapp/app/onboarding/IVehicleModel;->getVehicleInfo()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object p2, p1, Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter$IVehicleItemViewHolder;->mModel:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600ac

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    iget-object p1, p1, Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter$IVehicleItemViewHolder;->mPlate:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateHeaderViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter;->onCreateHeaderViewHolder(Landroid/view/ViewGroup;)Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter$IVehicleHeaderViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateHeaderViewHolder(Landroid/view/ViewGroup;)Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter$IVehicleHeaderViewHolder;
    .locals 4

    .line 56
    new-instance v0, Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter$IVehicleHeaderViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d00ba

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScreenDialogVehicleHeaderBinding;

    invoke-direct {v0, p0, p1}, Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter$IVehicleHeaderViewHolder;-><init>(Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter;Lcom/texa/careapp/databinding/ScreenDialogVehicleHeaderBinding;)V

    return-object v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter$IVehicleItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter$IVehicleItemViewHolder;
    .locals 3

    .line 46
    new-instance p2, Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter$IVehicleItemViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00bb

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScreenDialogVehicleItemBinding;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, p0, v0}, Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter$IVehicleItemViewHolder;-><init>(Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter;Lcom/texa/careapp/databinding/ScreenDialogVehicleItemBinding;Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter;Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter$1;)V

    return-object p2
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method
