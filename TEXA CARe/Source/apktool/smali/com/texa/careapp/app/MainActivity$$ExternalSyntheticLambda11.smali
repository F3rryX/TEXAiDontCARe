.class public final synthetic Lcom/texa/careapp/app/MainActivity$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/MainActivity;

.field public final synthetic f$1:Lcom/texa/careapp/model/VehicleModel;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/MainActivity;Lcom/texa/careapp/model/VehicleModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/MainActivity$$ExternalSyntheticLambda11;->f$0:Lcom/texa/careapp/app/MainActivity;

    iput-object p2, p0, Lcom/texa/careapp/app/MainActivity$$ExternalSyntheticLambda11;->f$1:Lcom/texa/careapp/model/VehicleModel;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/texa/careapp/app/MainActivity$$ExternalSyntheticLambda11;->f$0:Lcom/texa/careapp/app/MainActivity;

    iget-object v1, p0, Lcom/texa/careapp/app/MainActivity$$ExternalSyntheticLambda11;->f$1:Lcom/texa/careapp/model/VehicleModel;

    check-cast p1, Lcom/texa/careapp/networking/response/VehicleResponse;

    invoke-virtual {v0, v1, p1}, Lcom/texa/careapp/app/MainActivity;->lambda$getVehiclesDetails$4$com-texa-careapp-app-MainActivity(Lcom/texa/careapp/model/VehicleModel;Lcom/texa/careapp/networking/response/VehicleResponse;)V

    return-void
.end method
