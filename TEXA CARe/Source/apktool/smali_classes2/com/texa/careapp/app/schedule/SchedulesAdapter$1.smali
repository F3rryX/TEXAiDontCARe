.class Lcom/texa/careapp/app/schedule/SchedulesAdapter$1;
.super Ljava/lang/Object;
.source "SchedulesAdapter.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/app/schedule/SchedulesAdapter;->createAnimation(Lcom/texa/careapp/app/schedule/IScheduleViewHolder;)Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/schedule/SchedulesAdapter;

.field final synthetic val$bounce:Landroid/view/animation/Animation;

.field final synthetic val$viewHolder:Lcom/texa/careapp/app/schedule/IScheduleViewHolder;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/schedule/SchedulesAdapter;Lcom/texa/careapp/app/schedule/IScheduleViewHolder;Landroid/view/animation/Animation;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/texa/careapp/app/schedule/SchedulesAdapter$1;->this$0:Lcom/texa/careapp/app/schedule/SchedulesAdapter;

    iput-object p2, p0, Lcom/texa/careapp/app/schedule/SchedulesAdapter$1;->val$viewHolder:Lcom/texa/careapp/app/schedule/IScheduleViewHolder;

    iput-object p3, p0, Lcom/texa/careapp/app/schedule/SchedulesAdapter$1;->val$bounce:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 161
    iget-object p1, p0, Lcom/texa/careapp/app/schedule/SchedulesAdapter$1;->this$0:Lcom/texa/careapp/app/schedule/SchedulesAdapter;

    iget-object v0, p0, Lcom/texa/careapp/app/schedule/SchedulesAdapter$1;->val$viewHolder:Lcom/texa/careapp/app/schedule/IScheduleViewHolder;

    invoke-virtual {v0}, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/texa/careapp/app/schedule/SchedulesAdapter;->notifyItemChanged(I)V

    .line 162
    iget-object p1, p0, Lcom/texa/careapp/app/schedule/SchedulesAdapter$1;->val$bounce:Landroid/view/animation/Animation;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
