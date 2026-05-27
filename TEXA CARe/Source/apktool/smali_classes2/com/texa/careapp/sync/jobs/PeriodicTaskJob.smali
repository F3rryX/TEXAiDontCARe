.class public Lcom/texa/careapp/sync/jobs/PeriodicTaskJob;
.super Landroidx/work/Worker;
.source "PeriodicTaskJob.java"


# instance fields
.field mLoginHelperRx:Lcom/texa/careapp/utils/LoginHelperRx;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 27
    invoke-virtual {p0, p1}, Lcom/texa/careapp/sync/jobs/PeriodicTaskJob;->getComponent(Landroid/content/Context;)Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/sync/jobs/PeriodicTaskJob;)V

    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$Result;
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, " onRunTask PeriodicTaskJob"

    .line 38
    invoke-static {v2, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    iget-object v1, p0, Lcom/texa/careapp/sync/jobs/PeriodicTaskJob;->mLoginHelperRx:Lcom/texa/careapp/utils/LoginHelperRx;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/LoginHelperRx;->isUserLogged()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    :try_start_0
    iget-object v1, p0, Lcom/texa/careapp/sync/jobs/PeriodicTaskJob;->mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-interface {v1}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->dongleServicesBlocking()Lretrofit2/Call;

    move-result-object v1

    invoke-interface {v1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v1

    invoke-virtual {v1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/networking/response/ServiceListResponse;

    .line 43
    iget-object v2, p0, Lcom/texa/careapp/sync/jobs/PeriodicTaskJob;->mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;

    invoke-virtual {v2, v1}, Lcom/texa/careapp/utils/ServiceDataManager;->saveServiceData(Lcom/texa/careapp/networking/response/ServiceListResponse;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, " service data sync error "

    .line 45
    invoke-static {v1, v2, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0

    :cond_0
    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, " service data sync success "

    .line 50
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0
.end method

.method protected getComponent(Landroid/content/Context;)Lcom/texa/careapp/CareApplication$ApplicationComponent;
    .locals 0

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/CareApplication;

    .line 32
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    return-object p1
.end method
