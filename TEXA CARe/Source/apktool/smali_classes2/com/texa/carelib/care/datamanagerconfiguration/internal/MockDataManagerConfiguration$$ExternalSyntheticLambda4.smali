.class public final synthetic Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;

.field public final synthetic f$1:Ljava/util/UUID;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;Ljava/util/UUID;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration$$ExternalSyntheticLambda4;->f$0:Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;

    iput-object p2, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration$$ExternalSyntheticLambda4;->f$1:Ljava/util/UUID;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration$$ExternalSyntheticLambda4;->f$0:Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;

    iget-object v1, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration$$ExternalSyntheticLambda4;->f$1:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;->lambda$setDriverID$6$com-texa-carelib-care-datamanagerconfiguration-internal-MockDataManagerConfiguration(Ljava/util/UUID;)V

    return-void
.end method
