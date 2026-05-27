.class public final synthetic Lcom/texa/careapp/app/sos/MechanicActivity$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/sos/MechanicActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/sos/MechanicActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/sos/MechanicActivity$$ExternalSyntheticLambda5;->f$0:Lcom/texa/careapp/app/sos/MechanicActivity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity$$ExternalSyntheticLambda5;->f$0:Lcom/texa/careapp/app/sos/MechanicActivity;

    check-cast p1, Landroid/location/Address;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/app/sos/MechanicActivity;->lambda$setLocationTextFromGeoCode$3$com-texa-careapp-app-sos-MechanicActivity(Landroid/location/Address;)V

    return-void
.end method
