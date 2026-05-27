.class public final synthetic Lcom/texa/careapp/parameters/VehicleParametersManagerV2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/parameters/VehicleParametersManagerV2;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/parameters/VehicleParametersManagerV2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2$$ExternalSyntheticLambda0;->f$0:Lcom/texa/careapp/parameters/VehicleParametersManagerV2;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2$$ExternalSyntheticLambda0;->f$0:Lcom/texa/careapp/parameters/VehicleParametersManagerV2;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->lambda$restartUpdateValues$7$com-texa-careapp-parameters-VehicleParametersManagerV2(Ljava/lang/Integer;)V

    return-void
.end method
