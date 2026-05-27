.class public final synthetic Lcom/texa/careapp/app/schedule/ScheduleScreen$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/schedule/ScheduleScreen;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/schedule/ScheduleScreen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen$$ExternalSyntheticLambda3;->f$0:Lcom/texa/careapp/app/schedule/ScheduleScreen;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen$$ExternalSyntheticLambda3;->f$0:Lcom/texa/careapp/app/schedule/ScheduleScreen;

    check-cast p1, Lcom/texa/careapp/networking/response/VehicleResponse;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/app/schedule/ScheduleScreen;->lambda$syncSchedules$2$com-texa-careapp-app-schedule-ScheduleScreen(Lcom/texa/careapp/networking/response/VehicleResponse;)V

    return-void
.end method
