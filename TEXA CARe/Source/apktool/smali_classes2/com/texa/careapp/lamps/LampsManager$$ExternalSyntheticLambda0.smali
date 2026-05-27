.class public final synthetic Lcom/texa/careapp/lamps/LampsManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Action;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/lamps/LampsManager;

.field public final synthetic f$1:Lcom/texa/carelib/care/vehicle/Vehicle;

.field public final synthetic f$2:J

.field public final synthetic f$3:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/lamps/LampsManager;Lcom/texa/carelib/care/vehicle/Vehicle;JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/lamps/LampsManager$$ExternalSyntheticLambda0;->f$0:Lcom/texa/careapp/lamps/LampsManager;

    iput-object p2, p0, Lcom/texa/careapp/lamps/LampsManager$$ExternalSyntheticLambda0;->f$1:Lcom/texa/carelib/care/vehicle/Vehicle;

    iput-wide p3, p0, Lcom/texa/careapp/lamps/LampsManager$$ExternalSyntheticLambda0;->f$2:J

    iput-object p5, p0, Lcom/texa/careapp/lamps/LampsManager$$ExternalSyntheticLambda0;->f$3:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/texa/careapp/lamps/LampsManager$$ExternalSyntheticLambda0;->f$0:Lcom/texa/careapp/lamps/LampsManager;

    iget-object v1, p0, Lcom/texa/careapp/lamps/LampsManager$$ExternalSyntheticLambda0;->f$1:Lcom/texa/carelib/care/vehicle/Vehicle;

    iget-wide v2, p0, Lcom/texa/careapp/lamps/LampsManager$$ExternalSyntheticLambda0;->f$2:J

    iget-object v4, p0, Lcom/texa/careapp/lamps/LampsManager$$ExternalSyntheticLambda0;->f$3:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/texa/careapp/lamps/LampsManager;->lambda$beginUpdateValuesDelayed$5$com-texa-careapp-lamps-LampsManager(Lcom/texa/carelib/care/vehicle/Vehicle;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method
