.class public Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DongleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter$DongleViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter$DongleViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDongles:Lcom/texa/careapp/utils/UniqueList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/texa/careapp/utils/UniqueList<",
            "Lcom/texa/careapp/app/onboarding/DeviceInfoExt;",
            ">;"
        }
    .end annotation
.end field

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/texa/careapp/utils/UniqueList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/texa/careapp/utils/UniqueList<",
            "Lcom/texa/careapp/app/onboarding/DeviceInfoExt;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter;->mDongles:Lcom/texa/careapp/utils/UniqueList;

    return-void
.end method

.method static synthetic access$000(Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter;Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter$DongleViewHolder;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter;->onItemHolderClick(Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter$DongleViewHolder;)V

    return-void
.end method

.method private onItemHolderClick(Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter$DongleViewHolder;)V
    .locals 6

    .line 74
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 75
    iget-object v2, p1, Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter$DongleViewHolder;->itemView:Landroid/view/View;

    .line 76
    invoke-virtual {p1}, Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter$DongleViewHolder;->getAdapterPosition()I

    move-result v3

    invoke-virtual {p1}, Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter$DongleViewHolder;->getItemId()J

    move-result-wide v4

    .line 75
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter;->mDongles:Lcom/texa/careapp/utils/UniqueList;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/UniqueList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 29
    check-cast p1, Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter$DongleViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter;->onBindViewHolder(Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter$DongleViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter$DongleViewHolder;I)V
    .locals 6

    .line 53
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter;->mDongles:Lcom/texa/careapp/utils/UniqueList;

    invoke-virtual {v0, p2}, Lcom/texa/careapp/utils/UniqueList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/texa/careapp/app/onboarding/DeviceInfoExt;

    .line 54
    invoke-virtual {p2}, Lcom/texa/careapp/app/onboarding/DeviceInfoExt;->isSelectable()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "%s"

    const/4 v4, 0x1

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p1, Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter$DongleViewHolder;->mDongleModel:Landroidx/appcompat/widget/AppCompatTextView;

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/texa/careapp/app/onboarding/DeviceInfoExt;->getDeviceInfo()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/texa/carelib/communication/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v5, v2

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object p2, p1, Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter$DongleViewHolder;->mDongleSubtitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f11096a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object p2, p1, Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter$DongleViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 58
    iget-object p1, p1, Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter$DongleViewHolder;->mDongleItemIcon:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter;->mContext:Landroid/content/Context;

    .line 59
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f080108

    .line 58
    invoke-static {p2, v0, v1}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p1, Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter$DongleViewHolder;->mDongleModel:Landroidx/appcompat/widget/AppCompatTextView;

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/texa/careapp/app/onboarding/DeviceInfoExt;->getDeviceInfo()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/texa/carelib/communication/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v5, v2

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object p2, p1, Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter$DongleViewHolder;->mDongleSubtitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f110969

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object p2, p1, Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter$DongleViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 64
    iget-object p1, p1, Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter$DongleViewHolder;->mDongleItemIcon:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter;->mContext:Landroid/content/Context;

    .line 65
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f080107

    .line 64
    invoke-static {p2, v0, v1}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter$DongleViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter$DongleViewHolder;
    .locals 3

    .line 42
    new-instance p2, Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter$DongleViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d004d

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/CareDongleItemBinding;

    invoke-direct {p2, p0, p1, p0}, Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter$DongleViewHolder;-><init>(Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter;Lcom/texa/careapp/databinding/CareDongleItemBinding;Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter;)V

    return-object p2
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method
