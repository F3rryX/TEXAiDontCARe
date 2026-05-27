.class public final synthetic Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration$$ExternalSyntheticLambda9;->f$0:Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;

    iput p2, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration$$ExternalSyntheticLambda9;->f$1:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration$$ExternalSyntheticLambda9;->f$0:Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;

    iget v1, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration$$ExternalSyntheticLambda9;->f$1:F

    invoke-virtual {v0, v1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;->lambda$setStartingOdometer$5$com-texa-carelib-care-datamanagerconfiguration-internal-MockDataManagerConfiguration(F)V

    return-void
.end method
