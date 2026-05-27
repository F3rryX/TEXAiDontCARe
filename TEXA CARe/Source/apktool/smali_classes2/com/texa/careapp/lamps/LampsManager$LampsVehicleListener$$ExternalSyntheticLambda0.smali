.class public final synthetic Lcom/texa/careapp/lamps/LampsManager$LampsVehicleListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/lamps/LampsManager$LampsVehicleListener;

.field public final synthetic f$1:Lcom/texa/careapp/utils/Timestamped;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/lamps/LampsManager$LampsVehicleListener;Lcom/texa/careapp/utils/Timestamped;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/lamps/LampsManager$LampsVehicleListener$$ExternalSyntheticLambda0;->f$0:Lcom/texa/careapp/lamps/LampsManager$LampsVehicleListener;

    iput-object p2, p0, Lcom/texa/careapp/lamps/LampsManager$LampsVehicleListener$$ExternalSyntheticLambda0;->f$1:Lcom/texa/careapp/utils/Timestamped;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/texa/careapp/lamps/LampsManager$LampsVehicleListener$$ExternalSyntheticLambda0;->f$0:Lcom/texa/careapp/lamps/LampsManager$LampsVehicleListener;

    iget-object v1, p0, Lcom/texa/careapp/lamps/LampsManager$LampsVehicleListener$$ExternalSyntheticLambda0;->f$1:Lcom/texa/careapp/utils/Timestamped;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/lamps/LampsManager$LampsVehicleListener;->lambda$onParametersUpdated$0$com-texa-careapp-lamps-LampsManager$LampsVehicleListener(Lcom/texa/careapp/utils/Timestamped;)V

    return-void
.end method
