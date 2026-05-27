.class public final synthetic Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/service/CareService;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/service/CareService;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda9;->f$0:Lcom/texa/careapp/app/service/CareService;

    iput p2, p0, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda9;->f$1:F

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda9;->f$0:Lcom/texa/careapp/app/service/CareService;

    iget v1, p0, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda9;->f$1:F

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, v1, p1}, Lcom/texa/careapp/app/service/CareService;->lambda$updateVehicleOdometer$26$com-texa-careapp-app-service-CareService(FLjava/lang/Integer;)V

    return-void
.end method
