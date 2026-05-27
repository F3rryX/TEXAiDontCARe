.class public Lcom/texa/carelib/care/vehicleinfo/internal/MockVehicleInfo;
.super Lcom/texa/carelib/care/vehicleinfo/internal/VehicleInfoBase;
.source "MockVehicleInfo.java"


# static fields
.field public static final DELAY_DATA_UPDATED:I = 0x7d0

.field public static final READY_STATE_DELAY:I = 0x3e8

.field public static final TAG:Ljava/lang/String; = "MockVehicleInfo"

.field public static final VEHICLE_ID:Ljava/lang/String; = "WF6AXXGCASRY00667"

.field private static final mExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field private final mFeatureVerifier:Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

.field private mIsDataAvailable:Z

.field private final mProfile:Lcom/texa/carelib/profile/internal/MockProfile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/texa/carelib/care/vehicleinfo/internal/MockVehicleInfo;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/texa/carelib/care/vehicleinfo/internal/VehicleInfoBase;-><init>()V

    .line 36
    check-cast p1, Lcom/texa/carelib/profile/internal/MockProfile;

    iput-object p1, p0, Lcom/texa/carelib/care/vehicleinfo/internal/MockVehicleInfo;->mProfile:Lcom/texa/carelib/profile/internal/MockProfile;

    .line 37
    iput-object p2, p0, Lcom/texa/carelib/care/vehicleinfo/internal/MockVehicleInfo;->mFeatureVerifier:Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/texa/carelib/care/vehicleinfo/internal/MockVehicleInfo;->mIsDataAvailable:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic getProfile()Lcom/texa/carelib/profile/Profile;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicleinfo/internal/MockVehicleInfo;->getProfile()Lcom/texa/carelib/profile/internal/MockProfile;

    move-result-object v0

    return-object v0
.end method

.method public getProfile()Lcom/texa/carelib/profile/internal/MockProfile;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/texa/carelib/care/vehicleinfo/internal/MockVehicleInfo;->mProfile:Lcom/texa/carelib/profile/internal/MockProfile;

    return-object v0
.end method

.method public getVehicleID()Ljava/lang/String;
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/texa/carelib/care/vehicleinfo/internal/MockVehicleInfo;->mIsDataAvailable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "WF6AXXGCASRY00667"

    return-object v0
.end method

.method public synthetic lambda$loadVehicleInfo$0$com-texa-carelib-care-vehicleinfo-internal-MockVehicleInfo()V
    .locals 4

    const-wide/16 v0, 0x7d0

    .line 63
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 65
    sget-object v1, Lcom/texa/carelib/care/vehicleinfo/internal/MockVehicleInfo;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Wait has failed."

    invoke-static {v1, v0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const-string v0, "WF6AXXGCASRY00667"

    .line 68
    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/vehicleinfo/internal/MockVehicleInfo;->setVehicleID(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onCommunicationStatusChanged$1$com-texa-carelib-care-vehicleinfo-internal-MockVehicleInfo()Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lcom/texa/carelib/care/vehicleinfo/internal/MockVehicleInfo;->mIsDataAvailable:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public loadVehicleInfo()Z
    .locals 4

    .line 57
    iget-object v0, p0, Lcom/texa/carelib/care/vehicleinfo/internal/MockVehicleInfo;->mFeatureVerifier:Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isVehicleInfoAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/texa/carelib/care/vehicleinfo/internal/MockVehicleInfo$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/carelib/care/vehicleinfo/internal/MockVehicleInfo$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/care/vehicleinfo/internal/MockVehicleInfo;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/texa/carelib/care/vehicleinfo/internal/MockVehicleInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_LoadVehicleInfo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 73
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return v1
.end method

.method public onCommunicationStatusChanged(Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;)V
    .locals 4

    .line 80
    invoke-virtual {p1}, Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;->getCommunicationStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object p1

    .line 82
    sget-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    if-ne v0, p1, :cond_0

    .line 83
    sget-object p1, Lcom/texa/carelib/care/vehicleinfo/internal/MockVehicleInfo;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lcom/texa/carelib/care/vehicleinfo/internal/MockVehicleInfo$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/texa/carelib/care/vehicleinfo/internal/MockVehicleInfo$$ExternalSyntheticLambda1;-><init>(Lcom/texa/carelib/care/vehicleinfo/internal/MockVehicleInfo;)V

    const-wide/16 v1, 0x3e8

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 85
    iput-boolean p1, p0, Lcom/texa/carelib/care/vehicleinfo/internal/MockVehicleInfo;->mIsDataAvailable:Z

    :goto_0
    return-void
.end method
