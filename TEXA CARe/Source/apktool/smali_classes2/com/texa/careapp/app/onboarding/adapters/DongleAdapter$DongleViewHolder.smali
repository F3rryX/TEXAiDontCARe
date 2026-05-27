.class Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter$DongleViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DongleAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DongleViewHolder"
.end annotation


# instance fields
.field private final mAdapter:Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter;

.field final mDongleItemIcon:Landroid/widget/ImageView;

.field final mDongleModel:Landroidx/appcompat/widget/AppCompatTextView;

.field final mDongleSubtitle:Landroid/widget/TextView;

.field final mVehicleDetails:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter;Lcom/texa/careapp/databinding/CareDongleItemBinding;Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter$DongleViewHolder;->this$0:Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter;

    .line 90
    invoke-virtual {p2}, Lcom/texa/careapp/databinding/CareDongleItemBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 91
    iget-object p1, p2, Lcom/texa/careapp/databinding/CareDongleItemBinding;->textViewCareDongleModel:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter$DongleViewHolder;->mDongleModel:Landroidx/appcompat/widget/AppCompatTextView;

    .line 92
    iget-object p1, p2, Lcom/texa/careapp/databinding/CareDongleItemBinding;->textViewCareDongleSubtitle:Landroid/widget/TextView;

    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter$DongleViewHolder;->mDongleSubtitle:Landroid/widget/TextView;

    .line 93
    iget-object p1, p2, Lcom/texa/careapp/databinding/CareDongleItemBinding;->careDongleDetails:Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter$DongleViewHolder;->mVehicleDetails:Landroid/widget/LinearLayout;

    .line 94
    iget-object p1, p2, Lcom/texa/careapp/databinding/CareDongleItemBinding;->careDongleItemIcon:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter$DongleViewHolder;->mDongleItemIcon:Landroid/widget/ImageView;

    .line 95
    iput-object p3, p0, Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter$DongleViewHolder;->mAdapter:Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter;

    .line 96
    invoke-virtual {p2}, Lcom/texa/careapp/databinding/CareDongleItemBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 101
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter$DongleViewHolder;->mAdapter:Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter;

    invoke-static {p1, p0}, Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter;->access$000(Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter;Lcom/texa/careapp/app/onboarding/adapters/DongleAdapter$DongleViewHolder;)V

    return-void
.end method
