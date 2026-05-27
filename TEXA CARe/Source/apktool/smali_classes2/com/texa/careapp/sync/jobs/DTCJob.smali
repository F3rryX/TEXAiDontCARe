.class public Lcom/texa/careapp/sync/jobs/DTCJob;
.super Landroidx/work/Worker;
.source "DTCJob.java"


# instance fields
.field mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 31
    invoke-virtual {p0, p1}, Lcom/texa/careapp/sync/jobs/DTCJob;->getComponent(Landroid/content/Context;)Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/sync/jobs/DTCJob;)V

    return-void
.end method

.method private isValid(Lcom/texa/careapp/model/DtcModel;)Z
    .locals 2

    .line 72
    invoke-virtual {p1}, Lcom/texa/careapp/model/DtcModel;->getDtcECU()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "dtc ecu is null!"

    .line 73
    invoke-static {v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 77
    :cond_0
    invoke-virtual {p1}, Lcom/texa/careapp/model/DtcModel;->getDtcId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "dtc id is null!"

    .line 78
    invoke-static {v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$Result;
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "onRunTask DTC"

    .line 42
    invoke-static {v2, v1}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    iget-object v1, p0, Lcom/texa/careapp/sync/jobs/DTCJob;->mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/VehicleDataManager;->getAllVehicles()Ljava/util/List;

    move-result-object v1

    .line 45
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/careapp/model/VehicleModel;

    .line 47
    invoke-virtual {v2}, Lcom/texa/careapp/model/VehicleModel;->getDtcs()Ljava/util/List;

    move-result-object v3

    .line 49
    new-instance v4, Lcom/texa/careapp/networking/ErrorsArchive;

    invoke-direct {v4}, Lcom/texa/careapp/networking/ErrorsArchive;-><init>()V

    .line 50
    invoke-virtual {v2}, Lcom/texa/careapp/model/VehicleModel;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/texa/careapp/networking/ErrorsArchive;->setVehicleId(Ljava/lang/String;)V

    .line 52
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/texa/careapp/model/DtcModel;

    .line 53
    invoke-direct {p0, v3}, Lcom/texa/careapp/sync/jobs/DTCJob;->isValid(Lcom/texa/careapp/model/DtcModel;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 54
    invoke-virtual {v4, v3}, Lcom/texa/careapp/networking/ErrorsArchive;->addDtcModel(Lcom/texa/careapp/model/DtcModel;)V

    goto :goto_1

    :cond_1
    :try_start_0
    const-string/jumbo v2, "try to upload dtc: %s"

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v4, v5, v0

    .line 59
    invoke-static {v2, v5}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    iget-object v2, p0, Lcom/texa/careapp/sync/jobs/DTCJob;->mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-interface {v2, v4}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->archiveErrorsBlocking(Lcom/texa/careapp/networking/ErrorsArchive;)Lretrofit2/Call;

    move-result-object v2

    invoke-interface {v2}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v2

    invoke-virtual {v2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/careapp/networking/response/ServerResponse;

    const-string v4, "got response= %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v0

    .line 62
    invoke-static {v4, v3}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "dtc sync error"

    .line 64
    invoke-static {v1, v2, v0}, Ltimber/log/Timber;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->retry()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0

    .line 68
    :cond_2
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0
.end method

.method protected getComponent(Landroid/content/Context;)Lcom/texa/careapp/CareApplication$ApplicationComponent;
    .locals 0

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/CareApplication;

    .line 36
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    return-object p1
.end method
