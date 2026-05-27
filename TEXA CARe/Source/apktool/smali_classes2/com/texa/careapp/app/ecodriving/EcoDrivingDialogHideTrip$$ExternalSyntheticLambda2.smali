.class public final synthetic Lcom/texa/careapp/app/ecodriving/EcoDrivingDialogHideTrip$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/ecodriving/EcoDrivingDialogHideTrip;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/ecodriving/EcoDrivingDialogHideTrip;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingDialogHideTrip$$ExternalSyntheticLambda2;->f$0:Lcom/texa/careapp/app/ecodriving/EcoDrivingDialogHideTrip;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingDialogHideTrip$$ExternalSyntheticLambda2;->f$0:Lcom/texa/careapp/app/ecodriving/EcoDrivingDialogHideTrip;

    check-cast p1, Lcom/texa/careapp/networking/response/ServerResponse;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/app/ecodriving/EcoDrivingDialogHideTrip;->lambda$onHideClick$2$com-texa-careapp-app-ecodriving-EcoDrivingDialogHideTrip(Lcom/texa/careapp/networking/response/ServerResponse;)V

    return-void
.end method
