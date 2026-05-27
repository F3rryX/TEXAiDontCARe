.class public final synthetic Lcom/texa/careapp/app/schedule/SchedulesAdapter$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/schedule/SchedulesAdapter;

.field public final synthetic f$1:Lcom/texa/careapp/model/IScheduleModel;

.field public final synthetic f$2:Lcom/texa/careapp/app/schedule/IScheduleViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/schedule/SchedulesAdapter;Lcom/texa/careapp/model/IScheduleModel;Lcom/texa/careapp/app/schedule/IScheduleViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/schedule/SchedulesAdapter$$ExternalSyntheticLambda3;->f$0:Lcom/texa/careapp/app/schedule/SchedulesAdapter;

    iput-object p2, p0, Lcom/texa/careapp/app/schedule/SchedulesAdapter$$ExternalSyntheticLambda3;->f$1:Lcom/texa/careapp/model/IScheduleModel;

    iput-object p3, p0, Lcom/texa/careapp/app/schedule/SchedulesAdapter$$ExternalSyntheticLambda3;->f$2:Lcom/texa/careapp/app/schedule/IScheduleViewHolder;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    iget-object v0, p0, Lcom/texa/careapp/app/schedule/SchedulesAdapter$$ExternalSyntheticLambda3;->f$0:Lcom/texa/careapp/app/schedule/SchedulesAdapter;

    iget-object v1, p0, Lcom/texa/careapp/app/schedule/SchedulesAdapter$$ExternalSyntheticLambda3;->f$1:Lcom/texa/careapp/model/IScheduleModel;

    iget-object v2, p0, Lcom/texa/careapp/app/schedule/SchedulesAdapter$$ExternalSyntheticLambda3;->f$2:Lcom/texa/careapp/app/schedule/IScheduleViewHolder;

    invoke-virtual {v0, v1, v2, p1}, Lcom/texa/careapp/app/schedule/SchedulesAdapter;->lambda$onBindViewHolder$0$com-texa-careapp-app-schedule-SchedulesAdapter(Lcom/texa/careapp/model/IScheduleModel;Lcom/texa/careapp/app/schedule/IScheduleViewHolder;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
