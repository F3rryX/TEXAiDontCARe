.class Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter$IVehicleHeaderViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "VehicleDialogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IVehicleHeaderViewHolder"
.end annotation


# instance fields
.field final mVehicleHeader:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter;Lcom/texa/careapp/databinding/ScreenDialogVehicleHeaderBinding;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter$IVehicleHeaderViewHolder;->this$0:Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter;

    .line 150
    invoke-virtual {p2}, Lcom/texa/careapp/databinding/ScreenDialogVehicleHeaderBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 151
    iget-object p1, p2, Lcom/texa/careapp/databinding/ScreenDialogVehicleHeaderBinding;->screenDialogVehicleHeader:Landroid/widget/TextView;

    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/adapters/VehicleDialogAdapter$IVehicleHeaderViewHolder;->mVehicleHeader:Landroid/widget/TextView;

    return-void
.end method
