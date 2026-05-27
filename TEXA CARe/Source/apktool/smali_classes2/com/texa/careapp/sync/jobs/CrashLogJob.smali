.class public Lcom/texa/careapp/sync/jobs/CrashLogJob;
.super Landroidx/work/Worker;
.source "CrashLogJob.java"


# instance fields
.field mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 26
    invoke-virtual {p0, p1}, Lcom/texa/careapp/sync/jobs/CrashLogJob;->getComponent(Landroid/content/Context;)Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/sync/jobs/CrashLogJob;)V

    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$Result;
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "SyncCrashLogTask onRunTask"

    .line 37
    invoke-static {v2, v1}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    invoke-static {}, Lcom/texa/careapp/model/CrashLogModel;->getNotSyncedData()Ljava/util/List;

    move-result-object v1

    .line 41
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 43
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/careapp/model/CrashLogModel;

    .line 44
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 45
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v4, p0, Lcom/texa/careapp/sync/jobs/CrashLogJob;->mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    new-instance v5, Lcom/texa/careapp/model/CrashLogModelEntity;

    invoke-direct {v5, v3}, Lcom/texa/careapp/model/CrashLogModelEntity;-><init>(Ljava/util/List;)V

    invoke-interface {v4, v5}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->sendRawCrashLog(Lcom/texa/careapp/model/CrashLogModelEntity;)Lretrofit2/Call;

    move-result-object v3

    invoke-interface {v3}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 47
    invoke-virtual {v2}, Lcom/texa/careapp/model/CrashLogModel;->delete()V

    goto :goto_0

    .line 49
    :cond_0
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "CrashLog sync error"

    .line 51
    invoke-static {v1, v2, v0}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->retry()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0

    .line 55
    :cond_1
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0
.end method

.method protected getComponent(Landroid/content/Context;)Lcom/texa/careapp/CareApplication$ApplicationComponent;
    .locals 0

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/CareApplication;

    .line 31
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    return-object p1
.end method
