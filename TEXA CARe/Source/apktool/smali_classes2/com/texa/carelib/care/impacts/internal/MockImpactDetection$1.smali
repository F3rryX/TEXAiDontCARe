.class Lcom/texa/carelib/care/impacts/internal/MockImpactDetection$1;
.super Ljava/util/TimerTask;
.source "MockImpactDetection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/carelib/care/impacts/internal/MockImpactDetection;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/carelib/care/impacts/internal/MockImpactDetection;


# direct methods
.method constructor <init>(Lcom/texa/carelib/care/impacts/internal/MockImpactDetection;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/texa/carelib/care/impacts/internal/MockImpactDetection$1;->this$0:Lcom/texa/carelib/care/impacts/internal/MockImpactDetection;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 108
    new-instance v0, Lcom/texa/carelib/care/impacts/Impact;

    invoke-direct {v0}, Lcom/texa/carelib/care/impacts/Impact;-><init>()V

    .line 109
    iget-object v1, p0, Lcom/texa/carelib/care/impacts/internal/MockImpactDetection$1;->this$0:Lcom/texa/carelib/care/impacts/internal/MockImpactDetection;

    invoke-virtual {v0}, Lcom/texa/carelib/care/impacts/Impact;->getDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/texa/carelib/care/impacts/internal/MockImpactDetection;->access$000(Lcom/texa/carelib/care/impacts/internal/MockImpactDetection;Ljava/util/Date;)Lcom/texa/carelib/care/impacts/CrashReport;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/care/impacts/Impact;->setCrashReport(Lcom/texa/carelib/care/impacts/CrashReport;)Lcom/texa/carelib/care/impacts/Impact;

    .line 112
    iget-object v1, p0, Lcom/texa/carelib/care/impacts/internal/MockImpactDetection$1;->this$0:Lcom/texa/carelib/care/impacts/internal/MockImpactDetection;

    invoke-virtual {v1, v0}, Lcom/texa/carelib/care/impacts/internal/MockImpactDetection;->setLastImpact(Lcom/texa/carelib/care/impacts/Impact;)V

    .line 113
    iget-object v1, p0, Lcom/texa/carelib/care/impacts/internal/MockImpactDetection$1;->this$0:Lcom/texa/carelib/care/impacts/internal/MockImpactDetection;

    new-instance v2, Lcom/texa/carelib/care/impacts/events/ImpactDetectedEvent;

    invoke-direct {v2, p0, v0}, Lcom/texa/carelib/care/impacts/events/ImpactDetectedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/care/impacts/Impact;)V

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/impacts/internal/MockImpactDetection;->fireCrashDetected(Lcom/texa/carelib/care/impacts/events/ImpactDetectedEvent;)V

    return-void
.end method
