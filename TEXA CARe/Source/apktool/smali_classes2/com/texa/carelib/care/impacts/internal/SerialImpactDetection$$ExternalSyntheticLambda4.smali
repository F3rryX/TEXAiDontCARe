.class public final synthetic Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;

.field public final synthetic f$1:Lcom/texa/carelib/core/CareError;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;Lcom/texa/carelib/core/CareError;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$$ExternalSyntheticLambda4;->f$0:Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;

    iput-object p2, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$$ExternalSyntheticLambda4;->f$1:Lcom/texa/carelib/core/CareError;

    iput-object p3, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$$ExternalSyntheticLambda4;->f$2:Ljava/util/List;

    iput-object p4, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$$ExternalSyntheticLambda4;->f$3:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$$ExternalSyntheticLambda4;->f$0:Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;

    iget-object v1, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$$ExternalSyntheticLambda4;->f$1:Lcom/texa/carelib/core/CareError;

    iget-object v2, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$$ExternalSyntheticLambda4;->f$2:Ljava/util/List;

    iget-object v3, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$$ExternalSyntheticLambda4;->f$3:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->lambda$terminateLoadImpacts$2$com-texa-carelib-care-impacts-internal-SerialImpactDetection(Lcom/texa/carelib/core/CareError;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
