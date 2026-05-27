.class public final synthetic Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;

.field public final synthetic f$1:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen$$ExternalSyntheticLambda2;->f$0:Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;

    iput-object p2, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen$$ExternalSyntheticLambda2;->f$1:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen$$ExternalSyntheticLambda2;->f$0:Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;

    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen$$ExternalSyntheticLambda2;->f$1:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;->lambda$scoreUpdateCall$11$com-texa-careapp-app-ecodriving-EcoDrivingScreen(Landroid/os/Handler;)V

    return-void
.end method
