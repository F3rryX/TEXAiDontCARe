.class public final synthetic Lcom/texa/careapp/app/sos/MechanicActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/sos/MechanicActivity;

.field public final synthetic f$1:Lcom/texa/careapp/model/MechanicModel$Location;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/sos/MechanicActivity;Lcom/texa/careapp/model/MechanicModel$Location;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/sos/MechanicActivity$$ExternalSyntheticLambda4;->f$0:Lcom/texa/careapp/app/sos/MechanicActivity;

    iput-object p2, p0, Lcom/texa/careapp/app/sos/MechanicActivity$$ExternalSyntheticLambda4;->f$1:Lcom/texa/careapp/model/MechanicModel$Location;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity$$ExternalSyntheticLambda4;->f$0:Lcom/texa/careapp/app/sos/MechanicActivity;

    iget-object v1, p0, Lcom/texa/careapp/app/sos/MechanicActivity$$ExternalSyntheticLambda4;->f$1:Lcom/texa/careapp/model/MechanicModel$Location;

    invoke-virtual {v0, v1, p1}, Lcom/texa/careapp/app/sos/MechanicActivity;->lambda$setOnClickListenerToButtonNavigation$2$com-texa-careapp-app-sos-MechanicActivity(Lcom/texa/careapp/model/MechanicModel$Location;Landroid/view/View;)V

    return-void
.end method
