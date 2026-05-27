.class Lcom/texa/careapp/app/onboarding/adapters/CountryDialogAdapter$CountryItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CountryDialogAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/onboarding/adapters/CountryDialogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CountryItemViewHolder"
.end annotation


# instance fields
.field private final mAdapter:Lcom/texa/careapp/app/onboarding/adapters/CountryDialogAdapter;

.field final mName:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/texa/careapp/app/onboarding/adapters/CountryDialogAdapter;


# direct methods
.method private constructor <init>(Lcom/texa/careapp/app/onboarding/adapters/CountryDialogAdapter;Lcom/texa/careapp/databinding/ScreenDialogCountryItemBinding;Lcom/texa/careapp/app/onboarding/adapters/CountryDialogAdapter;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/adapters/CountryDialogAdapter$CountryItemViewHolder;->this$0:Lcom/texa/careapp/app/onboarding/adapters/CountryDialogAdapter;

    .line 66
    invoke-virtual {p2}, Lcom/texa/careapp/databinding/ScreenDialogCountryItemBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 67
    iput-object p3, p0, Lcom/texa/careapp/app/onboarding/adapters/CountryDialogAdapter$CountryItemViewHolder;->mAdapter:Lcom/texa/careapp/app/onboarding/adapters/CountryDialogAdapter;

    .line 68
    iget-object p1, p2, Lcom/texa/careapp/databinding/ScreenDialogCountryItemBinding;->screenDialogCountryItem:Landroid/widget/TextView;

    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/adapters/CountryDialogAdapter$CountryItemViewHolder;->mName:Landroid/widget/TextView;

    .line 69
    invoke-virtual {p2}, Lcom/texa/careapp/databinding/ScreenDialogCountryItemBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/texa/careapp/app/onboarding/adapters/CountryDialogAdapter;Lcom/texa/careapp/databinding/ScreenDialogCountryItemBinding;Lcom/texa/careapp/app/onboarding/adapters/CountryDialogAdapter;Lcom/texa/careapp/app/onboarding/adapters/CountryDialogAdapter$1;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/texa/careapp/app/onboarding/adapters/CountryDialogAdapter$CountryItemViewHolder;-><init>(Lcom/texa/careapp/app/onboarding/adapters/CountryDialogAdapter;Lcom/texa/careapp/databinding/ScreenDialogCountryItemBinding;Lcom/texa/careapp/app/onboarding/adapters/CountryDialogAdapter;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 74
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/adapters/CountryDialogAdapter$CountryItemViewHolder;->mAdapter:Lcom/texa/careapp/app/onboarding/adapters/CountryDialogAdapter;

    invoke-static {p1, p0}, Lcom/texa/careapp/app/onboarding/adapters/CountryDialogAdapter;->access$100(Lcom/texa/careapp/app/onboarding/adapters/CountryDialogAdapter;Lcom/texa/careapp/app/onboarding/adapters/CountryDialogAdapter$CountryItemViewHolder;)V

    return-void
.end method
