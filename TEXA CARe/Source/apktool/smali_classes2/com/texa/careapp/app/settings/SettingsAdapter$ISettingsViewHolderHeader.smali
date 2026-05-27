.class Lcom/texa/careapp/app/settings/SettingsAdapter$ISettingsViewHolderHeader;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SettingsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/settings/SettingsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ISettingsViewHolderHeader"
.end annotation


# instance fields
.field final mSettingsHeaderTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/texa/careapp/app/settings/SettingsAdapter;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/settings/SettingsAdapter;Lcom/texa/careapp/databinding/SettingsHeaderItemBinding;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/texa/careapp/app/settings/SettingsAdapter$ISettingsViewHolderHeader;->this$0:Lcom/texa/careapp/app/settings/SettingsAdapter;

    .line 285
    invoke-virtual {p2}, Lcom/texa/careapp/databinding/SettingsHeaderItemBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 286
    iget-object p1, p2, Lcom/texa/careapp/databinding/SettingsHeaderItemBinding;->settingsHeaderTitle:Landroid/widget/TextView;

    iput-object p1, p0, Lcom/texa/careapp/app/settings/SettingsAdapter$ISettingsViewHolderHeader;->mSettingsHeaderTitle:Landroid/widget/TextView;

    return-void
.end method
