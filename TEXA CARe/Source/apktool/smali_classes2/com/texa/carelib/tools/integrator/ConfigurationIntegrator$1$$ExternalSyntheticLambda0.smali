.class public final synthetic Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/texa/carelib/core/Callback;


# instance fields
.field public final synthetic f$0:Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator$1;

.field public final synthetic f$1:Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationLoadedEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator$1;Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationLoadedEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator$1$$ExternalSyntheticLambda0;->f$0:Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator$1;

    iput-object p2, p0, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator$1$$ExternalSyntheticLambda0;->f$1:Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationLoadedEvent;

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator$1$$ExternalSyntheticLambda0;->f$0:Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator$1;

    iget-object v1, p0, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator$1$$ExternalSyntheticLambda0;->f$1:Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationLoadedEvent;

    check-cast p1, Lcom/texa/carelib/webservices/ConfigurationReportStoredEvent;

    invoke-virtual {v0, v1, p1}, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator$1;->lambda$onDiagnosticConfigurationLoaded$0$com-texa-carelib-tools-integrator-ConfigurationIntegrator$1(Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationLoadedEvent;Lcom/texa/carelib/webservices/ConfigurationReportStoredEvent;)V

    return-void
.end method
