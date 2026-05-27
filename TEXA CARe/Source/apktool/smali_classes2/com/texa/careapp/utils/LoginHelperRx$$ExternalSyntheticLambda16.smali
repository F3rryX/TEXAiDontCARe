.class public final synthetic Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/utils/LoginHelperRx;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/utils/LoginHelperRx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda16;->f$0:Lcom/texa/careapp/utils/LoginHelperRx;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda16;->f$0:Lcom/texa/careapp/utils/LoginHelperRx;

    check-cast p1, Lcom/texa/careapp/networking/response/UserVehicleListResponse$UserVehicleData;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/utils/LoginHelperRx;->lambda$userVehiclesObservable$8$com-texa-careapp-utils-LoginHelperRx(Lcom/texa/careapp/networking/response/UserVehicleListResponse$UserVehicleData;)Z

    move-result p1

    return p1
.end method
