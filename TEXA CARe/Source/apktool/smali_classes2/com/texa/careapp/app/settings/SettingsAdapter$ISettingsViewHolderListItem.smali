.class Lcom/texa/careapp/app/settings/SettingsAdapter$ISettingsViewHolderListItem;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SettingsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/settings/SettingsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ISettingsViewHolderListItem"
.end annotation


# instance fields
.field final mSettingsItemContainer:Landroid/widget/RelativeLayout;

.field final mSettingsItemImage:Landroid/widget/ImageView;

.field final mSettingsItemSubtitle:Landroid/widget/TextView;

.field final mSettingsItemTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/texa/careapp/app/settings/SettingsAdapter;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/settings/SettingsAdapter;Lcom/texa/careapp/databinding/SettingsListItemBinding;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/texa/careapp/app/settings/SettingsAdapter$ISettingsViewHolderListItem;->this$0:Lcom/texa/careapp/app/settings/SettingsAdapter;

    .line 298
    invoke-virtual {p2}, Lcom/texa/careapp/databinding/SettingsListItemBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 299
    iget-object p1, p2, Lcom/texa/careapp/databinding/SettingsListItemBinding;->settingsItemContainer:Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/texa/careapp/app/settings/SettingsAdapter$ISettingsViewHolderListItem;->mSettingsItemContainer:Landroid/widget/RelativeLayout;

    .line 300
    iget-object p1, p2, Lcom/texa/careapp/databinding/SettingsListItemBinding;->settingsItemTitle:Landroid/widget/TextView;

    iput-object p1, p0, Lcom/texa/careapp/app/settings/SettingsAdapter$ISettingsViewHolderListItem;->mSettingsItemTitle:Landroid/widget/TextView;

    .line 301
    iget-object p1, p2, Lcom/texa/careapp/databinding/SettingsListItemBinding;->settingsItemSubtitle:Landroid/widget/TextView;

    iput-object p1, p0, Lcom/texa/careapp/app/settings/SettingsAdapter$ISettingsViewHolderListItem;->mSettingsItemSubtitle:Landroid/widget/TextView;

    .line 302
    iget-object p1, p2, Lcom/texa/careapp/databinding/SettingsListItemBinding;->settingsItemImage:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/texa/careapp/app/settings/SettingsAdapter$ISettingsViewHolderListItem;->mSettingsItemImage:Landroid/widget/ImageView;

    return-void
.end method
