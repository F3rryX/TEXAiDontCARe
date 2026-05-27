.class Lcom/texa/careapp/app/schedule/IScheduleHeaderViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SchedulesAdapter.java"


# instance fields
.field public mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/texa/careapp/databinding/ScheduleHeaderListItemBinding;)V
    .locals 1

    .line 219
    invoke-virtual {p1}, Lcom/texa/careapp/databinding/ScheduleHeaderListItemBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 220
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScheduleHeaderListItemBinding;->titleHeader:Landroid/widget/TextView;

    iput-object p1, p0, Lcom/texa/careapp/app/schedule/IScheduleHeaderViewHolder;->mTitle:Landroid/widget/TextView;

    return-void
.end method
