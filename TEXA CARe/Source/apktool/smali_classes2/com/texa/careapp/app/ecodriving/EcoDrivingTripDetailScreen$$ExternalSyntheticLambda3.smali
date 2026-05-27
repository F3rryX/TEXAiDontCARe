.class public final synthetic Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen$$ExternalSyntheticLambda3;->f$0:Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen$$ExternalSyntheticLambda3;->f$0:Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;

    check-cast p1, Lcom/texa/careapp/app/ecodriving/UpdateEcoDrivingDataEvent;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->lambda$onResume$2$com-texa-careapp-app-ecodriving-EcoDrivingTripDetailScreen(Lcom/texa/careapp/app/ecodriving/UpdateEcoDrivingDataEvent;)V

    return-void
.end method
