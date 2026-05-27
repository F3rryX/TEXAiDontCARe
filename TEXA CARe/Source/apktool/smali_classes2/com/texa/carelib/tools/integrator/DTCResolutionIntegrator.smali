.class public Lcom/texa/carelib/tools/integrator/DTCResolutionIntegrator;
.super Ljava/lang/Object;
.source "DTCResolutionIntegrator.java"

# interfaces
.implements Lcom/texa/carelib/care/vehicletroubles/DTCTranslator;


# static fields
.field private static final TAG:Ljava/lang/String; = "DTCResolutionIntegrator"


# instance fields
.field private mHardwareID:Ljava/lang/String;

.field private mLanguages:[Ljava/util/Locale;

.field private mServiceDTCResolutionProcedure:Lcom/texa/carelib/webservices/ServiceDTCResolutionProcedure;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/webservices/ServiceDTCResolutionProcedure;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/texa/carelib/tools/integrator/DTCResolutionIntegrator;->mServiceDTCResolutionProcedure:Lcom/texa/carelib/webservices/ServiceDTCResolutionProcedure;

    return-void
.end method

.method static synthetic lambda$translateDTCsForECU$0(JLcom/texa/carelib/care/vehicletroubles/VehicleTroubles;Lcom/texa/carelib/webservices/DTCTranslationCompletedEvent;)V
    .locals 7

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    invoke-virtual {p3}, Lcom/texa/carelib/webservices/DTCTranslationCompletedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 79
    sget-object v1, Lcom/texa/carelib/tools/integrator/DTCResolutionIntegrator;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {p3}, Lcom/texa/carelib/webservices/DTCTranslationCompletedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "DTC translation for ECU %d fails. Error: %s"

    invoke-static {v1, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 81
    :cond_0
    sget-object v1, Lcom/texa/carelib/tools/integrator/DTCResolutionIntegrator;->TAG:Ljava/lang/String;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v4

    const-string v6, "DTC translation for ECU %d completed."

    invoke-static {v1, v6, v5}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    invoke-virtual {p3}, Lcom/texa/carelib/webservices/DTCTranslationCompletedEvent;->getDTCs()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p3}, Lcom/texa/carelib/webservices/DTCTranslationCompletedEvent;->getDTCs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    new-array v2, v2, [Ljava/lang/Object;

    .line 83
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v2, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "ECU %d has %d DTC translated successfully."

    invoke-static {v1, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-lez v5, :cond_2

    .line 85
    invoke-virtual {p3}, Lcom/texa/carelib/webservices/DTCTranslationCompletedEvent;->getDTCs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 88
    :cond_2
    :goto_1
    invoke-virtual {p3}, Lcom/texa/carelib/webservices/DTCTranslationCompletedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object p3

    invoke-interface {p2, v0, p0, p1, p3}, Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;->updateDTC(Ljava/util/List;JLcom/texa/carelib/core/CareError;)V

    return-void
.end method


# virtual methods
.method public setHardwareID(Ljava/lang/String;)Lcom/texa/carelib/tools/integrator/DTCResolutionIntegrator;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/texa/carelib/tools/integrator/DTCResolutionIntegrator;->mHardwareID:Ljava/lang/String;

    return-object p0
.end method

.method public setLanguages([Ljava/util/Locale;)Lcom/texa/carelib/tools/integrator/DTCResolutionIntegrator;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/texa/carelib/tools/integrator/DTCResolutionIntegrator;->mLanguages:[Ljava/util/Locale;

    return-object p0
.end method

.method public setServiceDTCResolutionProcedure(Lcom/texa/carelib/webservices/ServiceDTCResolutionProcedure;)Lcom/texa/carelib/tools/integrator/DTCResolutionIntegrator;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/texa/carelib/tools/integrator/DTCResolutionIntegrator;->mServiceDTCResolutionProcedure:Lcom/texa/carelib/webservices/ServiceDTCResolutionProcedure;

    return-object p0
.end method

.method public translateDTCsForECU(Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;JLjava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/texa/carelib/care/vehicletroubles/DTCDetail;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/DTCResolutionIntegrator;->mServiceDTCResolutionProcedure:Lcom/texa/carelib/webservices/ServiceDTCResolutionProcedure;

    iget-object v2, p0, Lcom/texa/carelib/tools/integrator/DTCResolutionIntegrator;->mLanguages:[Ljava/util/Locale;

    iget-object v3, p0, Lcom/texa/carelib/tools/integrator/DTCResolutionIntegrator;->mHardwareID:Ljava/lang/String;

    invoke-static {}, Lcom/texa/carelib/core/utils/internal/Utils;->getUTCNow()Ljava/util/Date;

    move-result-object v4

    new-instance v5, Lcom/texa/carelib/tools/integrator/DTCResolutionIntegrator$$ExternalSyntheticLambda0;

    invoke-direct {v5, p2, p3, p1}, Lcom/texa/carelib/tools/integrator/DTCResolutionIntegrator$$ExternalSyntheticLambda0;-><init>(JLcom/texa/carelib/care/vehicletroubles/VehicleTroubles;)V

    move-object v1, p4

    invoke-interface/range {v0 .. v5}, Lcom/texa/carelib/webservices/ServiceDTCResolutionProcedure;->resolveDTCIDs(Ljava/util/Map;[Ljava/util/Locale;Ljava/lang/String;Ljava/util/Date;Lcom/texa/carelib/core/Callback;)V

    return-void
.end method
