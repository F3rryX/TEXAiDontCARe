.class public final synthetic Lcom/texa/careapp/parameters/VehicleParametersManagerV2$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/parameters/VehicleParametersManagerV2;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/parameters/VehicleParametersManagerV2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2$$ExternalSyntheticLambda8;->f$0:Lcom/texa/careapp/parameters/VehicleParametersManagerV2;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2$$ExternalSyntheticLambda8;->f$0:Lcom/texa/careapp/parameters/VehicleParametersManagerV2;

    check-cast p1, Ljava/util/Set;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->lambda$onCareConnected$1$com-texa-careapp-parameters-VehicleParametersManagerV2(Ljava/util/Set;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
