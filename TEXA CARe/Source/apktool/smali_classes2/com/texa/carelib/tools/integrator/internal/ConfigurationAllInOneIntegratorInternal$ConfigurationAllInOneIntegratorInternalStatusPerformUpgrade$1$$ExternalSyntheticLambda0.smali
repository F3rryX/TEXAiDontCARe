.class public final synthetic Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/texa/carelib/core/Callback;


# static fields
.field public static final synthetic INSTANCE:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade$1$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade$1$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade$1$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade$1$$ExternalSyntheticLambda0;->INSTANCE:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade$1$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/texa/carelib/webservices/VehicleConfigurationInfoLoadedEvent;

    invoke-static {p1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade$1;->lambda$onConfigurationProcedureCompleted$0(Lcom/texa/carelib/webservices/VehicleConfigurationInfoLoadedEvent;)V

    return-void
.end method
