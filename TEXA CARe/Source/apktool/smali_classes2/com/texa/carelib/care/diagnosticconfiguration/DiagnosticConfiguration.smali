.class public interface abstract Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;
.super Ljava/lang/Object;
.source "DiagnosticConfiguration.java"


# static fields
.field public static final EXTRA_RECEIVE_REPORT_TIMEOUT:Ljava/lang/String; = "EXTRA_RECEIVE_REPORT_TIMEOUT"

.field public static final EXTRA_WAIT_ENGINE_ON_TIMEOUT:Ljava/lang/String; = "EXTRA_WAIT_ENGINE_ON_TIMEOUT"


# virtual methods
.method public abstract clearConfiguration(Lcom/texa/carelib/core/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationErasedEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method

.method public abstract getArguments()Landroid/os/Bundle;
.end method

.method public abstract getStatus()Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;
.end method

.method public abstract loadConfigurations(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method

.method public abstract setDiagnosticConfigurationListener(Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationListener;)V
.end method
