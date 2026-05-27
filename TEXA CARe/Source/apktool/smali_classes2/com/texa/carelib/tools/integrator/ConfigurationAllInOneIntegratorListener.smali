.class public abstract Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorListener;
.super Ljava/lang/Object;
.source "ConfigurationAllInOneIntegratorListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onConfigurationCompleted(Lcom/texa/carelib/tools/integrator/events/ConfigurationAllInOneIntegratorCompletedEvent;)V
.end method

.method public abstract onConfirmationNeeded(Lcom/texa/carelib/tools/integrator/events/ConfigurationAllInOneIntegratorConfirmationRequiredEvent;)V
.end method

.method public onProgressChanged(Lcom/texa/carelib/tools/integrator/events/ConfigurationAllInOneIntegratorProgressChangedEvent;)V
    .locals 0

    return-void
.end method
