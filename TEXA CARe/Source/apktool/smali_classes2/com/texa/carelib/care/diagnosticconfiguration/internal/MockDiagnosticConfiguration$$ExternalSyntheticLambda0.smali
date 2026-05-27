.class public final synthetic Lcom/texa/carelib/care/diagnosticconfiguration/internal/MockDiagnosticConfiguration$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/texa/carelib/care/diagnosticconfiguration/internal/MockDiagnosticConfiguration;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/carelib/care/diagnosticconfiguration/internal/MockDiagnosticConfiguration;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/MockDiagnosticConfiguration$$ExternalSyntheticLambda0;->f$0:Lcom/texa/carelib/care/diagnosticconfiguration/internal/MockDiagnosticConfiguration;

    iput-object p2, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/MockDiagnosticConfiguration$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/MockDiagnosticConfiguration$$ExternalSyntheticLambda0;->f$0:Lcom/texa/carelib/care/diagnosticconfiguration/internal/MockDiagnosticConfiguration;

    iget-object v1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/MockDiagnosticConfiguration$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/MockDiagnosticConfiguration;->lambda$loadConfigurations$0$com-texa-carelib-care-diagnosticconfiguration-internal-MockDiagnosticConfiguration(Ljava/util/List;)V

    return-void
.end method
