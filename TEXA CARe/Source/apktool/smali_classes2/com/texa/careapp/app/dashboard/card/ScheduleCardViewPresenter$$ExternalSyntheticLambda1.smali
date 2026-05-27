.class public final synthetic Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;

.field public final synthetic f$1:Lcom/texa/careapp/model/VehicleModel;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;Lcom/texa/careapp/model/VehicleModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter$$ExternalSyntheticLambda1;->f$0:Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;

    iput-object p2, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter$$ExternalSyntheticLambda1;->f$1:Lcom/texa/careapp/model/VehicleModel;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 2

    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter$$ExternalSyntheticLambda1;->f$0:Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;

    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter$$ExternalSyntheticLambda1;->f$1:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v0, v1, p1}, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->lambda$getSchedulesObservable$4$com-texa-careapp-app-dashboard-card-ScheduleCardViewPresenter(Lcom/texa/careapp/model/VehicleModel;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
