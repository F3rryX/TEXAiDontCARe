.class public final synthetic Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter$$ExternalSyntheticLambda7;->f$0:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter$$ExternalSyntheticLambda7;->f$0:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->lambda$addMarker$4(Ljava/util/HashMap;)Lio/reactivex/SingleSource;

    move-result-object v0

    return-object v0
.end method
