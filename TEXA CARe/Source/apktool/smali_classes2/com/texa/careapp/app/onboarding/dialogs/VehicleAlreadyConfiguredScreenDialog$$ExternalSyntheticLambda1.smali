.class public final synthetic Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog$$ExternalSyntheticLambda1;->f$0:Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog$$ExternalSyntheticLambda1;->f$0:Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog;

    check-cast p1, Lcom/texa/careapp/networking/response/ServerResponse;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog;->lambda$openReport$1$com-texa-careapp-app-onboarding-dialogs-VehicleAlreadyConfiguredScreenDialog(Lcom/texa/careapp/networking/response/ServerResponse;)V

    return-void
.end method
