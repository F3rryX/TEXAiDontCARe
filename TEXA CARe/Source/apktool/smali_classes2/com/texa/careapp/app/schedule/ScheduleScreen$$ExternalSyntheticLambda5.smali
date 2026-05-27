.class public final synthetic Lcom/texa/careapp/app/schedule/ScheduleScreen$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/schedule/ScheduleScreen;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/schedule/ScheduleScreen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen$$ExternalSyntheticLambda5;->f$0:Lcom/texa/careapp/app/schedule/ScheduleScreen;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen$$ExternalSyntheticLambda5;->f$0:Lcom/texa/careapp/app/schedule/ScheduleScreen;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/app/schedule/ScheduleScreen;->lambda$updateSchedulesWithDelay$5$com-texa-careapp-app-schedule-ScheduleScreen(Ljava/lang/Long;)V

    return-void
.end method
