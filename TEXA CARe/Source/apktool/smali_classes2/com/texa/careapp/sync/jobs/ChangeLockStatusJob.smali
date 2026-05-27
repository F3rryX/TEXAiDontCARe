.class public Lcom/texa/careapp/sync/jobs/ChangeLockStatusJob;
.super Landroidx/work/Worker;
.source "ChangeLockStatusJob.java"


# instance fields
.field texaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 24
    invoke-virtual {p0, p1}, Lcom/texa/careapp/sync/jobs/ChangeLockStatusJob;->getComponent(Landroid/content/Context;)Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/sync/jobs/ChangeLockStatusJob;)V

    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$Result;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "onRunTask ChangeLockStatusJob"

    .line 36
    invoke-static {v2, v1}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    invoke-virtual {p0}, Lcom/texa/careapp/sync/jobs/ChangeLockStatusJob;->getInputData()Landroidx/work/Data;

    move-result-object v1

    const-string v2, "extra-ticket-id"

    invoke-virtual {v1, v2}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 40
    :try_start_0
    iget-object v2, p0, Lcom/texa/careapp/sync/jobs/ChangeLockStatusJob;->texaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    const-string v3, "temporary"

    invoke-interface {v2, v1, v3}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->changeLockStatus(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/Observable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 41
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "sendChangeLockStatusBlocking exception"

    .line 43
    invoke-static {v1, v2, v0}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->retry()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0

    .line 47
    :cond_0
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0
.end method

.method protected getComponent(Landroid/content/Context;)Lcom/texa/careapp/CareApplication$ApplicationComponent;
    .locals 0

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/CareApplication;

    .line 30
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    return-object p1
.end method
