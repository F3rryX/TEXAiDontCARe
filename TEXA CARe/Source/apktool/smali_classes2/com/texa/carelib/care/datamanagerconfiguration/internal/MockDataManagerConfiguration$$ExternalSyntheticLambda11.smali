.class public final synthetic Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration$$ExternalSyntheticLambda11;->f$0:Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;

    iput p2, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration$$ExternalSyntheticLambda11;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration$$ExternalSyntheticLambda11;->f$0:Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;

    iget v1, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration$$ExternalSyntheticLambda11;->f$1:I

    invoke-virtual {v0, v1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;->lambda$setDrivingTimeLowRPMMaxThreshold$14$com-texa-carelib-care-datamanagerconfiguration-internal-MockDataManagerConfiguration(I)V

    return-void
.end method
