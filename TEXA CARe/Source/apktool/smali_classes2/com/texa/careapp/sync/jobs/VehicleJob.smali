.class public Lcom/texa/careapp/sync/jobs/VehicleJob;
.super Landroidx/work/Worker;
.source "VehicleJob.java"


# instance fields
.field mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field texaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 31
    invoke-virtual {p0, p1}, Lcom/texa/careapp/sync/jobs/VehicleJob;->getComponent(Landroid/content/Context;)Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/sync/jobs/VehicleJob;)V

    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$Result;
    .locals 7

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "onRunTask"

    .line 42
    invoke-static {v2, v1}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    iget-object v1, p0, Lcom/texa/careapp/sync/jobs/VehicleJob;->mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/VehicleDataManager;->getAllVehicles()Ljava/util/List;

    move-result-object v1

    .line 47
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v2

    .line 49
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/texa/careapp/model/VehicleModel;

    .line 50
    invoke-virtual {v3}, Lcom/texa/careapp/model/VehicleModel;->isSyncNeeded()Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    const-string v4, "caricamento su server delle moficihe al veicolo con id: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 52
    invoke-virtual {v3}, Lcom/texa/careapp/model/VehicleModel;->getUid()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    iget-object v4, p0, Lcom/texa/careapp/sync/jobs/VehicleJob;->texaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-virtual {v3}, Lcom/texa/careapp/model/VehicleModel;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->putVehicleBlocking(Ljava/lang/String;Lcom/texa/careapp/model/VehicleModel;)Lretrofit2/Call;

    move-result-object v4

    invoke-interface {v4}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v4

    invoke-virtual {v4}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/texa/careapp/networking/response/ServerResponse;

    .line 55
    invoke-virtual {v3, v0}, Lcom/texa/careapp/model/VehicleModel;->setSyncNeeded(Z)V

    .line 56
    invoke-virtual {p0}, Lcom/texa/careapp/sync/jobs/VehicleJob;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    new-array v4, v0, [Ljava/lang/Object;

    const-string v5, "Caricamento dati veicolo fallito."

    .line 58
    invoke-static {v2, v5, v4}, Ltimber/log/Timber;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->retry()Landroidx/work/ListenableWorker$Result;

    move-result-object v2

    .line 64
    :cond_0
    :goto_1
    :try_start_1
    iget-object v4, p0, Lcom/texa/careapp/sync/jobs/VehicleJob;->texaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-virtual {v3}, Lcom/texa/careapp/model/VehicleModel;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->getVehicleDetailsBlocking(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v4

    invoke-interface {v4}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v4

    invoke-virtual {v4}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/texa/careapp/networking/response/VehicleResponse;

    .line 65
    iget-object v5, v4, Lcom/texa/careapp/networking/response/VehicleResponse;->vehicle:Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;

    iget-boolean v5, v5, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;->haveAdvancedDiagnosis:Z

    invoke-virtual {v3, v5}, Lcom/texa/careapp/model/VehicleModel;->setHaveAdvancedDiagnosis(Z)V

    .line 66
    iget-object v5, v4, Lcom/texa/careapp/networking/response/VehicleResponse;->vehicle:Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;

    iget-boolean v5, v5, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;->customerAvailability:Z

    invoke-virtual {v3, v5}, Lcom/texa/careapp/model/VehicleModel;->setCustomerAvailability(Z)V

    .line 67
    iget-object v4, v4, Lcom/texa/careapp/networking/response/VehicleResponse;->vehicle:Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;

    iget-object v4, v4, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;->deadlines:Ljava/util/List;

    .line 68
    invoke-virtual {v3}, Lcom/texa/careapp/model/VehicleModel;->deleteSchedules()V

    .line 69
    invoke-static {v4}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 70
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/texa/careapp/networking/response/VehicleResponse$Deadline;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 72
    :try_start_2
    invoke-virtual {v3, v5}, Lcom/texa/careapp/model/VehicleModel;->updateSchedule(Lcom/texa/careapp/networking/response/VehicleResponse$Deadline;)V
    :try_end_2
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_1
    move-exception v5

    .line 74
    :try_start_3
    invoke-virtual {v5}, Lcom/texa/careapp/exceptions/DatabaseIOException;->printStackTrace()V

    goto :goto_2

    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/texa/careapp/sync/jobs/VehicleJob;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v2

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "aggiornamento tipo configurazione fallito"

    .line 80
    invoke-static {v2, v4, v3}, Ltimber/log/Timber;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->retry()Landroidx/work/ListenableWorker$Result;

    move-result-object v2

    goto/16 :goto_0

    .line 86
    :cond_2
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v1

    if-ne v1, v2, :cond_3

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "caricamento dati veicolo completato con successo."

    .line 87
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "caricamento dati veicolo non riuscito."

    .line 89
    invoke-static {v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    return-object v2
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
