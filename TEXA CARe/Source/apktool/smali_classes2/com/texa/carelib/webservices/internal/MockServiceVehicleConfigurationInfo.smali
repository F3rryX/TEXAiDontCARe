.class Lcom/texa/carelib/webservices/internal/MockServiceVehicleConfigurationInfo;
.super Lcom/texa/carelib/webservices/internal/ServiceVehicleConfigurationInfoBase;
.source "MockServiceVehicleConfigurationInfo.java"


# static fields
.field private static final DELAY_RESPONSE:I = 0x3e8

.field private static final mExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/texa/carelib/webservices/internal/MockServiceVehicleConfigurationInfo;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/texa/carelib/webservices/internal/ServiceVehicleConfigurationInfoBase;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$loadVehicleConfigurationInfo$0$com-texa-carelib-webservices-internal-MockServiceVehicleConfigurationInfo(Lcom/texa/carelib/core/Callback;)V
    .locals 3

    .line 42
    sget-object v0, Lcom/texa/carelib/webservices/VehicleConfigurationStatus;->NeedsUpdated:Lcom/texa/carelib/webservices/VehicleConfigurationStatus;

    invoke-virtual {p0, v0}, Lcom/texa/carelib/webservices/internal/MockServiceVehicleConfigurationInfo;->setVehicleConfigurationStatus(Lcom/texa/carelib/webservices/VehicleConfigurationStatus;)V

    .line 43
    new-instance v0, Lcom/texa/carelib/webservices/VehicleConfigurationInfoLoadedEvent;

    sget-object v1, Lcom/texa/carelib/webservices/VehicleConfigurationStatus;->NeedsUpdated:Lcom/texa/carelib/webservices/VehicleConfigurationStatus;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/texa/carelib/webservices/VehicleConfigurationInfoLoadedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/webservices/VehicleConfigurationStatus;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {p1, v0}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    return-void
.end method

.method public loadVehicleConfigurationInfo(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;Lcom/texa/carelib/core/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/math/BigInteger;",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/webservices/VehicleConfigurationInfoLoadedEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 37
    invoke-virtual {p0, p1, p3}, Lcom/texa/carelib/webservices/internal/MockServiceVehicleConfigurationInfo;->ensureCanLoadVehicleConfigurationInfo(Ljava/lang/String;Ljava/math/BigInteger;)V

    .line 39
    invoke-virtual {p0}, Lcom/texa/carelib/webservices/internal/MockServiceVehicleConfigurationInfo;->clear()V

    .line 41
    sget-object p1, Lcom/texa/carelib/webservices/internal/MockServiceVehicleConfigurationInfo;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p2, Lcom/texa/carelib/webservices/internal/MockServiceVehicleConfigurationInfo$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p4}, Lcom/texa/carelib/webservices/internal/MockServiceVehicleConfigurationInfo$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/webservices/internal/MockServiceVehicleConfigurationInfo;Lcom/texa/carelib/core/Callback;)V

    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x3e8

    invoke-interface {p1, p2, v0, v1, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
