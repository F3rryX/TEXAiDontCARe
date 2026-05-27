.class Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter$IVehicleItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "VehicleDialogAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IVehicleItemViewHolder"
.end annotation


# instance fields
.field private final mAdapter:Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter;

.field final mModel:Landroid/widget/TextView;

.field final mPlate:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter;


# direct methods
.method private constructor <init>(Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter;Lcom/texa/careapp/databinding/ScreenDialogVehicleItemBinding;Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter$IVehicleItemViewHolder;->this$0:Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter;

    .line 132
    invoke-virtual {p2}, Lcom/texa/careapp/databinding/ScreenDialogVehicleItemBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 133
    iget-object p1, p2, Lcom/texa/careapp/databinding/ScreenDialogVehicleItemBinding;->screenDialogVehicleItemModel:Landroid/widget/TextView;

    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter$IVehicleItemViewHolder;->mModel:Landroid/widget/TextView;

    .line 134
    iget-object p1, p2, Lcom/texa/careapp/databinding/ScreenDialogVehicleItemBinding;->screenDialogVehicleItemPlate:Landroid/widget/TextView;

    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter$IVehicleItemViewHolder;->mPlate:Landroid/widget/TextView;

    .line 135
    iput-object p3, p0, Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter$IVehicleItemViewHolder;->mAdapter:Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter;

    .line 136
    invoke-virtual {p2}, Lcom/texa/careapp/databinding/ScreenDialogVehicleItemBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter;Lcom/texa/careapp/databinding/ScreenDialogVehicleItemBinding;Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter;Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter$1;)V
    .locals 0

    .line 124
    invoke-direct {p0, p1, p2, p3}, Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter$IVehicleItemViewHolder;-><init>(Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter;Lcom/texa/careapp/databinding/ScreenDialogVehicleItemBinding;Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 141
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter$IVehicleItemViewHolder;->mAdapter:Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter;

    invoke-static {p1, p0}, Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter;->access$100(Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter;Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter$IVehicleItemViewHolder;)V

    return-void
.end method
