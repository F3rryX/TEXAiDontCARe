.class public Lcom/texa/careapp/sync/jobs/EmergencyInfoMessageJob;
.super Landroidx/work/Worker;
.source "EmergencyInfoMessageJob.java"


# static fields
.field private static sGson:Lcom/google/gson/Gson;


# instance fields
.field mPreferences:Landroid/content/SharedPreferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field texaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    invoke-static {}, Lcom/texa/careapp/utils/Utils;->buildGsonInstance()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lcom/texa/careapp/sync/jobs/EmergencyInfoMessageJob;->sGson:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 39
    invoke-virtual {p0, p1}, Lcom/texa/careapp/sync/jobs/EmergencyInfoMessageJob;->getComponent(Landroid/content/Context;)Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/sync/jobs/EmergencyInfoMessageJob;)V

    return-void
.end method


# virtual methods
.method protected deleteCachedEmergencyInfo()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/texa/careapp/sync/jobs/EmergencyInfoMessageJob;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "emergency-info-cache-key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public doWork()Landroidx/work/ListenableWorker$Result;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "onRunTask EmergencyInfoJob"

    .line 61
    invoke-static {v2, v1}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    invoke-virtual {p0}, Lcom/texa/careapp/sync/jobs/EmergencyInfoMessageJob;->getEmergencyInfo()Lcom/texa/careapp/model/EmergencyInfo;

    move-result-object v1

    if-nez v1, :cond_0

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "emergencyInfo is null"

    .line 66
    invoke-static {v3, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/texa/careapp/sync/jobs/EmergencyInfoMessageJob;->texaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-interface {v2, v1}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->addEmergencyMessagesBlocking(Lcom/texa/careapp/model/EmergencyInfo;)Lretrofit2/Call;

    move-result-object v1

    invoke-interface {v1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v1

    invoke-virtual {v1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/networking/response/AddEmergencyResponse;

    const-string v2, "addEmergencyMessagesBlocking response: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v0

    .line 71
    invoke-static {v2, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    invoke-virtual {p0}, Lcom/texa/careapp/sync/jobs/EmergencyInfoMessageJob;->deleteCachedEmergencyInfo()V

    .line 73
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "addEmergencyMessagesBlocking exception"

    .line 75
    invoke-static {v1, v2, v0}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->retry()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0
.end method

.method protected getComponent(Landroid/content/Context;)Lcom/texa/careapp/CareApplication$ApplicationComponent;
    .locals 0

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/CareApplication;

    .line 54
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    return-object p1
.end method

.method protected getEmergencyInfo()Lcom/texa/careapp/model/EmergencyInfo;
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/texa/careapp/sync/jobs/EmergencyInfoMessageJob;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "emergency-info-cache-key"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    sget-object v1, Lcom/texa/careapp/sync/jobs/EmergencyInfoMessageJob;->sGson:Lcom/google/gson/Gson;

    const-class v2, Lcom/texa/careapp/model/EmergencyInfo;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/EmergencyInfo;

    return-object v0
.end method
