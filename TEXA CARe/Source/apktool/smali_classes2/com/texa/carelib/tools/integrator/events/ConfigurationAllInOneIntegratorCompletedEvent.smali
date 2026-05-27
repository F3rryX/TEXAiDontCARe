.class public Lcom/texa/carelib/tools/integrator/events/ConfigurationAllInOneIntegratorCompletedEvent;
.super Lcom/texa/carelib/core/events/ErrorEventBase;
.source "ConfigurationAllInOneIntegratorCompletedEvent.java"


# instance fields
.field private final mIsDiagnosticConfigurationUpgraded:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;ZLcom/texa/carelib/core/CareError;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p3}, Lcom/texa/carelib/core/events/ErrorEventBase;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    .line 27
    iput-boolean p2, p0, Lcom/texa/carelib/tools/integrator/events/ConfigurationAllInOneIntegratorCompletedEvent;->mIsDiagnosticConfigurationUpgraded:Z

    return-void
.end method


# virtual methods
.method public isDiagnosticConfigurationUpgraded()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/texa/carelib/tools/integrator/events/ConfigurationAllInOneIntegratorCompletedEvent;->mIsDiagnosticConfigurationUpgraded:Z

    return v0
.end method
