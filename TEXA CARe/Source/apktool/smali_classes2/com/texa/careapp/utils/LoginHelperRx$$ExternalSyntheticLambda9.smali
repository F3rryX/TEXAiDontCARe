.class public final synthetic Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/utils/LoginHelperRx;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/utils/LoginHelperRx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda9;->f$0:Lcom/texa/careapp/utils/LoginHelperRx;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda9;->f$0:Lcom/texa/careapp/utils/LoginHelperRx;

    check-cast p1, Lcom/texa/careapp/networking/response/UserVehicleListResponse$UserVehicleData;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/utils/LoginHelperRx;->lambda$userVehiclesObservable$9$com-texa-careapp-utils-LoginHelperRx(Lcom/texa/careapp/networking/response/UserVehicleListResponse$UserVehicleData;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
