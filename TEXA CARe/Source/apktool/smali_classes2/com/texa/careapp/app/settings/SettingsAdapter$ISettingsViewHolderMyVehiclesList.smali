.class Lcom/texa/careapp/app/settings/SettingsAdapter$ISettingsViewHolderMyVehiclesList;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SettingsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/settings/SettingsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ISettingsViewHolderMyVehiclesList"
.end annotation


# instance fields
.field final mSettingsMyVehiclesList:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/texa/careapp/app/settings/SettingsAdapter;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/settings/SettingsAdapter;Lcom/texa/careapp/databinding/SettingsMyVehiclesListBinding;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/texa/careapp/app/settings/SettingsAdapter$ISettingsViewHolderMyVehiclesList;->this$0:Lcom/texa/careapp/app/settings/SettingsAdapter;

    .line 311
    invoke-virtual {p2}, Lcom/texa/careapp/databinding/SettingsMyVehiclesListBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 312
    iget-object p1, p2, Lcom/texa/careapp/databinding/SettingsMyVehiclesListBinding;->settingsMyVehiclesList:Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/texa/careapp/app/settings/SettingsAdapter$ISettingsViewHolderMyVehiclesList;->mSettingsMyVehiclesList:Landroid/widget/LinearLayout;

    return-void
.end method
