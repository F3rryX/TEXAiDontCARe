.class public final synthetic Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration$$ExternalSyntheticLambda5;->f$0:Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;

    iput-boolean p2, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration$$ExternalSyntheticLambda5;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration$$ExternalSyntheticLambda5;->f$0:Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;

    iget-boolean v1, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration$$ExternalSyntheticLambda5;->f$1:Z

    invoke-virtual {v0, v1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/MockDataManagerConfiguration;->lambda$setSOSEnabled$8$com-texa-carelib-care-datamanagerconfiguration-internal-MockDataManagerConfiguration(Z)V

    return-void
.end method
