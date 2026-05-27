.class public final synthetic Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/utils/VehicleDataManager;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/utils/VehicleDataManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda13;->f$0:Lcom/texa/careapp/utils/VehicleDataManager;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda13;->f$0:Lcom/texa/careapp/utils/VehicleDataManager;

    check-cast p1, Lcom/texa/careapp/networking/response/VehicleResponse;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/utils/VehicleDataManager;->insertVehicle(Lcom/texa/careapp/networking/response/VehicleResponse;)Lio/reactivex/Observable;

    move-result-object p1

    check-cast p1, Lio/reactivex/ObservableSource;

    return-object p1
.end method
