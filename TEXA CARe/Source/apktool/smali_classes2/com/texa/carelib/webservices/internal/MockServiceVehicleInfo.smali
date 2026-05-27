.class Lcom/texa/carelib/webservices/internal/MockServiceVehicleInfo;
.super Lcom/texa/carelib/webservices/internal/ServiceVehicleInfoBase;
.source "MockServiceVehicleInfo.java"


# static fields
.field private static final DELAY_RESPONSE:I = 0x3e8

.field private static final KEY_BRAND:Ljava/lang/String; = "brand"

.field private static final KEY_ENGINE:Ljava/lang/String; = "engine"

.field private static final KEY_MODEL:Ljava/lang/String; = "model"

.field private static final KEY_VEHICLE_CODE:Ljava/lang/String; = "vehicle_code"

.field private static final MOCK_BRAND:Ljava/lang/String; = "ALFA ROMEO"

.field private static final MOCK_ENGINE:Ljava/lang/String; = "2.0 16v JTDm"

.field private static final MOCK_MODEL:Ljava/lang/String; = "Giulietta [10>] (940)"

.field private static final MOCK_PLATE:Ljava/lang/String; = "D3M0003"

.field private static final MOCK_VEHICLE_CODE:Ljava/lang/String; = "940 B 4.000 (Kw 129) [--/14>]"

.field private static final MOCK_VEHICLE_ID:Ljava/lang/String; = "2BEDC652-4AAC-4A2E-8FBC-3D02CDC6AA91"

.field private static final mExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/texa/carelib/webservices/internal/MockServiceVehicleInfo;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/texa/carelib/webservices/internal/ServiceVehicleInfoBase;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$loadVehicleInfo$0$com-texa-carelib-webservices-internal-MockServiceVehicleInfo([Ljava/lang/String;Lcom/texa/carelib/core/Callback;)V
    .locals 9

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 65
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    .line 66
    new-instance v5, Lcom/texa/carelib/webservices/VehicleInfo;

    invoke-direct {v5}, Lcom/texa/carelib/webservices/VehicleInfo;-><init>()V

    .line 68
    invoke-virtual {v5, v4}, Lcom/texa/carelib/webservices/VehicleInfo;->setHardwareID(Ljava/lang/String;)Lcom/texa/carelib/webservices/VehicleInfo;

    const-string v4, "D3M0003"

    .line 69
    invoke-virtual {v5, v4}, Lcom/texa/carelib/webservices/VehicleInfo;->setPlate(Ljava/lang/String;)Lcom/texa/carelib/webservices/VehicleInfo;

    const-string v4, "2BEDC652-4AAC-4A2E-8FBC-3D02CDC6AA91"

    .line 70
    invoke-virtual {v5, v4}, Lcom/texa/carelib/webservices/VehicleInfo;->setVehicleID(Ljava/lang/String;)Lcom/texa/carelib/webservices/VehicleInfo;

    .line 72
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 73
    new-instance v6, Lcom/texa/carelib/webservices/SelectionItem;

    const-string v7, "ALFA ROMEO"

    invoke-direct {v6, v2, v7}, Lcom/texa/carelib/webservices/SelectionItem;-><init>(ILjava/lang/String;)V

    const-string v7, "brand"

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance v6, Lcom/texa/carelib/webservices/SelectionItem;

    const/4 v7, 0x1

    const-string v8, "Giulietta [10>] (940)"

    invoke-direct {v6, v7, v8}, Lcom/texa/carelib/webservices/SelectionItem;-><init>(ILjava/lang/String;)V

    const-string v7, "model"

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance v6, Lcom/texa/carelib/webservices/SelectionItem;

    const/4 v7, 0x2

    const-string v8, "2.0 16v JTDm"

    invoke-direct {v6, v7, v8}, Lcom/texa/carelib/webservices/SelectionItem;-><init>(ILjava/lang/String;)V

    const-string v7, "engine"

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    new-instance v6, Lcom/texa/carelib/webservices/SelectionItem;

    const/4 v7, 0x3

    const-string v8, "940 B 4.000 (Kw 129) [--/14>]"

    invoke-direct {v6, v7, v8}, Lcom/texa/carelib/webservices/SelectionItem;-><init>(ILjava/lang/String;)V

    const-string/jumbo v7, "vehicle_code"

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-virtual {v5, v4}, Lcom/texa/carelib/webservices/VehicleInfo;->setVehicleSelection(Ljava/util/Map;)Lcom/texa/carelib/webservices/VehicleInfo;

    .line 80
    invoke-virtual {v5}, Lcom/texa/carelib/webservices/VehicleInfo;->getHardwareID()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p0, v0}, Lcom/texa/carelib/webservices/internal/MockServiceVehicleInfo;->setVehicles(Ljava/util/Map;)V

    .line 85
    new-instance p1, Lcom/texa/carelib/webservices/VehicleInfoLoadedEvent;

    invoke-virtual {p0}, Lcom/texa/carelib/webservices/internal/MockServiceVehicleInfo;->getVehicles()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lcom/texa/carelib/webservices/VehicleInfoLoadedEvent;-><init>(Ljava/lang/Object;Ljava/util/Map;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {p2, p1}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    return-void
.end method

.method public loadVehicleInfo([Ljava/lang/String;[Ljava/util/Locale;Lcom/texa/carelib/core/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/util/Locale;",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/webservices/VehicleInfoLoadedEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 50
    sget-object p2, Lcom/texa/carelib/webservices/ServiceVehicleInfoStatus;->Pending:Lcom/texa/carelib/webservices/ServiceVehicleInfoStatus;

    invoke-virtual {p0}, Lcom/texa/carelib/webservices/internal/MockServiceVehicleInfo;->getStatus()Lcom/texa/carelib/webservices/ServiceVehicleInfoStatus;

    move-result-object v0

    if-eq p2, v0, :cond_1

    .line 55
    array-length p2, p1

    if-eqz p2, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/texa/carelib/webservices/internal/MockServiceVehicleInfo;->clear()V

    .line 62
    sget-object p2, Lcom/texa/carelib/webservices/internal/MockServiceVehicleInfo;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lcom/texa/carelib/webservices/internal/MockServiceVehicleInfo$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p3}, Lcom/texa/carelib/webservices/internal/MockServiceVehicleInfo$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/webservices/internal/MockServiceVehicleInfo;[Ljava/lang/String;Lcom/texa/carelib/core/Callback;)V

    const-wide/16 v1, 0x3e8

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2, v0, v1, v2, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void

    .line 57
    :cond_0
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string p2, "Could not getItems vehicles info. Hardware IDs list cannot be null or empty."

    invoke-direct {p1, p2}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_1
    new-instance p1, Lcom/texa/carelib/core/OperationAlreadyRunningException;

    const-string p2, "Load vehicle info is already running."

    invoke-direct {p1, p2}, Lcom/texa/carelib/core/OperationAlreadyRunningException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
