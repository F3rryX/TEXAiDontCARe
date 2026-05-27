.class public final synthetic Lcom/texa/careapp/app/schedule/SchedulesAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/schedule/SchedulesAdapter;

.field public final synthetic f$1:Lcom/texa/careapp/model/IScheduleModel;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/schedule/SchedulesAdapter;Lcom/texa/careapp/model/IScheduleModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/schedule/SchedulesAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/texa/careapp/app/schedule/SchedulesAdapter;

    iput-object p2, p0, Lcom/texa/careapp/app/schedule/SchedulesAdapter$$ExternalSyntheticLambda1;->f$1:Lcom/texa/careapp/model/IScheduleModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/texa/careapp/app/schedule/SchedulesAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/texa/careapp/app/schedule/SchedulesAdapter;

    iget-object v1, p0, Lcom/texa/careapp/app/schedule/SchedulesAdapter$$ExternalSyntheticLambda1;->f$1:Lcom/texa/careapp/model/IScheduleModel;

    invoke-virtual {v0, v1, p1}, Lcom/texa/careapp/app/schedule/SchedulesAdapter;->lambda$onBindViewHolder$2$com-texa-careapp-app-schedule-SchedulesAdapter(Lcom/texa/careapp/model/IScheduleModel;Landroid/view/View;)V

    return-void
.end method
