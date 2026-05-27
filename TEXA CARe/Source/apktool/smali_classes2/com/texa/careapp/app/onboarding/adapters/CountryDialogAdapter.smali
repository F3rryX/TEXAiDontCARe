.class public Lcom/texa/careapp/app/onboarding/adapters/CountryDialogAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CountryDialogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/app/onboarding/adapters/CountryDialogAdapter$CountryItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$CountryItem;",
            ">;"
        }
    .end annotation
.end field

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$CountryItem;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/adapters/CountryDialogAdapter;->list:Ljava/util/List;

    return-void
.end method

.method static synthetic access$100(Lcom/texa/careapp/app/onboarding/adapters/CountryDialogAdapter;Lcom/texa/careapp/app/onboarding/adapters/CountryDialogAdapter$CountryItemViewHolder;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/onboarding/adapters/CountryDialogAdapter;->onItemHolderClick(Lcom/texa/careapp/app/onboarding/adapters/CountryDialogAdapter$CountryItemViewHolder;)V

    return-void
.end method

.method private onItemHolderClick(Lcom/texa/careapp/app/onboarding/adapters/CountryDialogAdapter$CountryItemViewHolder;)V
    .locals 6

    .line 48
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/adapters/CountryDialogAdapter;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 49
    iget-object v2, p1, Lcom/texa/careapp/app/onboarding/adapters/CountryDialogAdapter$CountryItemViewHolder;->itemView:Landroid/view/View;

    .line 50
    invoke-virtual {p1}, Lcom/texa/careapp/app/onboarding/adapters/CountryDialogAdapter$CountryItemViewHolder;->getAdapterPosition()I

    move-result v3

    invoke-virtual {p1}, Lcom/texa/careapp/app/onboarding/adapters/CountryDialogAdapter$CountryItemViewHolder;->getItemId()J

    move-result-wide v4

    .line 49
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/adapters/CountryDialogAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 39
    check-cast p1, Lcom/texa/careapp/app/onboarding/adapters/CountryDialogAdapter$CountryItemViewHolder;

    .line 40
    iget-object p1, p1, Lcom/texa/careapp/app/onboarding/adapters/CountryDialogAdapter$CountryItemViewHolder;->mName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/adapters/CountryDialogAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$CountryItem;

    invoke-virtual {p2}, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$CountryItem;->getVisualValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/texa/careapp/app/onboarding/adapters/CountryDialogAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/texa/careapp/app/onboarding/adapters/CountryDialogAdapter$CountryItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/texa/careapp/app/onboarding/adapters/CountryDialogAdapter$CountryItemViewHolder;
    .locals 3

    .line 34
    new-instance p2, Lcom/texa/careapp/app/onboarding/adapters/CountryDialogAdapter$CountryItemViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00b5

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScreenDialogCountryItemBinding;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, p0, v0}, Lcom/texa/careapp/app/onboarding/adapters/CountryDialogAdapter$CountryItemViewHolder;-><init>(Lcom/texa/careapp/app/onboarding/adapters/CountryDialogAdapter;Lcom/texa/careapp/databinding/ScreenDialogCountryItemBinding;Lcom/texa/careapp/app/onboarding/adapters/CountryDialogAdapter;Lcom/texa/careapp/app/onboarding/adapters/CountryDialogAdapter$1;)V

    return-object p2
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/adapters/CountryDialogAdapter;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method
