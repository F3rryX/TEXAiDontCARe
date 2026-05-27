.class public final synthetic Lcom/texa/careapp/lamps/LampsManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/lamps/LampsManager;

.field public final synthetic f$1:Lcom/texa/carelib/care/vehicle/Vehicle;

.field public final synthetic f$2:J

.field public final synthetic f$3:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/lamps/LampsManager;Lcom/texa/carelib/care/vehicle/Vehicle;JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/lamps/LampsManager$$ExternalSyntheticLambda2;->f$0:Lcom/texa/careapp/lamps/LampsManager;

    iput-object p2, p0, Lcom/texa/careapp/lamps/LampsManager$$ExternalSyntheticLambda2;->f$1:Lcom/texa/carelib/care/vehicle/Vehicle;

    iput-wide p3, p0, Lcom/texa/careapp/lamps/LampsManager$$ExternalSyntheticLambda2;->f$2:J

    iput-object p5, p0, Lcom/texa/careapp/lamps/LampsManager$$ExternalSyntheticLambda2;->f$3:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/texa/careapp/lamps/LampsManager$$ExternalSyntheticLambda2;->f$0:Lcom/texa/careapp/lamps/LampsManager;

    iget-object v1, p0, Lcom/texa/careapp/lamps/LampsManager$$ExternalSyntheticLambda2;->f$1:Lcom/texa/carelib/care/vehicle/Vehicle;

    iget-wide v2, p0, Lcom/texa/careapp/lamps/LampsManager$$ExternalSyntheticLambda2;->f$2:J

    iget-object v4, p0, Lcom/texa/careapp/lamps/LampsManager$$ExternalSyntheticLambda2;->f$3:Ljava/util/concurrent/TimeUnit;

    move-object v5, p1

    check-cast v5, Ljava/lang/Throwable;

    invoke-virtual/range {v0 .. v5}, Lcom/texa/careapp/lamps/LampsManager;->lambda$beginUpdateValuesDelayed$4$com-texa-careapp-lamps-LampsManager(Lcom/texa/carelib/care/vehicle/Vehicle;JLjava/util/concurrent/TimeUnit;Ljava/lang/Throwable;)V

    return-void
.end method
