.class public Lcom/texa/careapp/sync/jobs/TripJob;
.super Landroidx/work/Worker;
.source "TripJob.java"


# instance fields
.field mLoginHelperRx:Lcom/texa/careapp/utils/LoginHelperRx;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mRetrofitErrorParser:Lcom/texa/careapp/utils/RetrofitErrorParser;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mTripDataManager:Lcom/texa/careapp/utils/TripDataManager;
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

    .line 33
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 34
    invoke-virtual {p0, p1}, Lcom/texa/careapp/sync/jobs/TripJob;->getComponent(Landroid/content/Context;)Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/sync/jobs/TripJob;)V

    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$Result;
    .locals 9

    const-string v0, "cancello viaggio: %s"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "onRunTask TRIP"

    .line 45
    invoke-static {v3, v2}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    iget-object v2, p0, Lcom/texa/careapp/sync/jobs/TripJob;->mLoginHelperRx:Lcom/texa/careapp/utils/LoginHelperRx;

    invoke-virtual {v2}, Lcom/texa/careapp/utils/LoginHelperRx;->isUserLogged()Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "user is null!"

    .line 48
    invoke-static {v3, v2}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    :cond_0
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v2

    .line 53
    iget-object v3, p0, Lcom/texa/careapp/sync/jobs/TripJob;->mTripDataManager:Lcom/texa/careapp/utils/TripDataManager;

    invoke-virtual {v3}, Lcom/texa/careapp/utils/TripDataManager;->getAll()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    .line 54
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v6, "create TripList, size -> %s"

    invoke-static {v6, v5}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/texa/careapp/model/TripModel;

    :try_start_0
    const-string v6, "carico sul server il viaggio: %s"

    new-array v7, v4, [Ljava/lang/Object;

    .line 58
    invoke-virtual {v5}, Lcom/texa/careapp/model/TripModel;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v6, v7}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    iget-object v6, p0, Lcom/texa/careapp/sync/jobs/TripJob;->texaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-interface {v6, v5}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->updateTripDataBlocking(Lcom/texa/careapp/model/TripModel;)Lretrofit2/Call;

    move-result-object v6

    invoke-interface {v6}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v6

    invoke-virtual {v6}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/texa/careapp/networking/response/ServerResponse;

    const-string v7, "risposta dal server: %s"

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v6, v8, v1

    .line 60
    invoke-static {v7, v8}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v6, v4, [Ljava/lang/Object;

    .line 61
    invoke-virtual {v5}, Lcom/texa/careapp/model/TripModel;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v0, v6}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    invoke-virtual {v5}, Lcom/texa/careapp/model/TripModel;->delete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-array v6, v4, [Ljava/lang/Object;

    .line 64
    invoke-virtual {v5}, Lcom/texa/careapp/model/TripModel;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    const-string v7, "Cannot upload trip data: %s"

    invoke-static {v2, v7, v6}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iget-object v6, p0, Lcom/texa/careapp/sync/jobs/TripJob;->mRetrofitErrorParser:Lcom/texa/careapp/utils/RetrofitErrorParser;

    invoke-virtual {v6, v2}, Lcom/texa/careapp/utils/RetrofitErrorParser;->isRawDataInvalid(Ljava/lang/Exception;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v5, v2, v1

    const-string v6, "deleting record with invalid raw data: %s"

    .line 67
    invoke-static {v6, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v2, v4, [Ljava/lang/Object;

    .line 69
    invoke-virtual {v5}, Lcom/texa/careapp/model/TripModel;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v1

    invoke-static {v0, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    invoke-virtual {v5}, Lcom/texa/careapp/model/TripModel;->delete()V

    .line 73
    :cond_1
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->retry()Landroidx/work/ListenableWorker$Result;

    move-result-object v2

    goto :goto_0

    .line 78
    :cond_2
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    if-ne v2, v0, :cond_3

    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "viaggi caricati con successo"

    .line 79
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "si sono verificati degli errori nel caricamento dei viaggi"

    .line 81
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-object v2
.end method

.method protected getComponent(Landroid/content/Context;)Lcom/texa/careapp/CareApplication$ApplicationComponent;
    .locals 0

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/CareApplication;

    .line 39
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    return-object p1
.end method
