.class public final synthetic Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/texa/carelib/core/Callback;


# instance fields
.field public final synthetic f$0:Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;

.field public final synthetic f$1:Lcom/texa/carelib/core/Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;Lcom/texa/carelib/core/Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$$ExternalSyntheticLambda0;->f$0:Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;

    iput-object p2, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$$ExternalSyntheticLambda0;->f$1:Lcom/texa/carelib/core/Callback;

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$$ExternalSyntheticLambda0;->f$0:Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;

    iget-object v1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$$ExternalSyntheticLambda0;->f$1:Lcom/texa/carelib/core/Callback;

    check-cast p1, Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationErasedEvent;

    invoke-virtual {v0, v1, p1}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->lambda$clearConfiguration$1$com-texa-carelib-care-diagnosticconfiguration-internal-SerialDiagnosticConfiguration(Lcom/texa/carelib/core/Callback;Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationErasedEvent;)V

    return-void
.end method
