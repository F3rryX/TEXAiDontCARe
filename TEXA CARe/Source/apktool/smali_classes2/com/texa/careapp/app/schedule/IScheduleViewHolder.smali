.class Lcom/texa/careapp/app/schedule/IScheduleViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SchedulesAdapter.java"


# instance fields
.field public mBetweenText:Landroid/widget/TextView;

.field public mCircleBackground:Landroid/widget/LinearLayout;

.field public mContainer:Landroid/view/View;

.field public mDeleteButton:Landroid/view/View;

.field public mDescription:Landroid/widget/TextView;

.field public mRefreshButton:Landroid/view/View;

.field public mScheduleMeasure:Landroidx/appcompat/widget/AppCompatTextView;

.field public mScheduleValue:Landroidx/appcompat/widget/AppCompatTextView;

.field public mTitle:Landroidx/appcompat/widget/AppCompatTextView;

.field public mUnDeletableButton:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/texa/careapp/databinding/ScheduleListItem2Binding;)V
    .locals 1

    .line 200
    invoke-virtual {p1}, Lcom/texa/careapp/databinding/ScheduleListItem2Binding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 201
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScheduleListItem2Binding;->scheduleDay:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mScheduleValue:Landroidx/appcompat/widget/AppCompatTextView;

    .line 202
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScheduleListItem2Binding;->scheduleMonth:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mScheduleMeasure:Landroidx/appcompat/widget/AppCompatTextView;

    .line 203
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScheduleListItem2Binding;->betweenText:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mBetweenText:Landroid/widget/TextView;

    .line 204
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScheduleListItem2Binding;->scheduleTitle:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mTitle:Landroidx/appcompat/widget/AppCompatTextView;

    .line 205
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScheduleListItem2Binding;->scheduleDescription:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mDescription:Landroid/widget/TextView;

    .line 206
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScheduleListItem2Binding;->scheduleListCircleBackground:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mCircleBackground:Landroid/widget/LinearLayout;

    .line 207
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScheduleListItem2Binding;->cardView:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mContainer:Landroid/view/View;

    .line 208
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScheduleListItem2Binding;->deleteButton:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mDeleteButton:Landroid/view/View;

    .line 209
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScheduleListItem2Binding;->refreshButton:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mRefreshButton:Landroid/view/View;

    .line 210
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScheduleListItem2Binding;->undeletableButton:Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mUnDeletableButton:Landroid/view/View;

    return-void
.end method
