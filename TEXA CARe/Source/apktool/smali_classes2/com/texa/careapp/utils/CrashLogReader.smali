.class public Lcom/texa/careapp/utils/CrashLogReader;
.super Ljava/lang/Object;
.source "CrashLogReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/utils/CrashLogReader$CompleteAllOperation;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CrashLogReader"


# instance fields
.field private mCaReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;

.field public mCompleteAllOperation:Lcom/texa/careapp/utils/CrashLogReader$CompleteAllOperation;

.field private mDongleModel:Lcom/texa/careapp/model/DongleModel;

.field private mImpactDetection:Lcom/texa/carelib/care/impacts/ImpactDetection;

.field private mSavedImpactsLoadedEventCallback:Lcom/texa/carelib/care/impacts/ImpactDataDownloadListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/careapp/model/DongleModel;Lcom/texa/careapp/sync/CAReWorkerManager;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/texa/careapp/utils/CrashLogReader$1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/utils/CrashLogReader$1;-><init>(Lcom/texa/careapp/utils/CrashLogReader;)V

    iput-object v0, p0, Lcom/texa/careapp/utils/CrashLogReader;->mSavedImpactsLoadedEventCallback:Lcom/texa/carelib/care/impacts/ImpactDataDownloadListener;

    .line 42
    iput-object p1, p0, Lcom/texa/careapp/utils/CrashLogReader;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    .line 43
    iput-object p2, p0, Lcom/texa/careapp/utils/CrashLogReader;->mCaReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;

    return-void
.end method

.method static synthetic access$000(Lcom/texa/careapp/utils/CrashLogReader;Lcom/texa/carelib/care/impacts/events/ImpactDataDownloadCompletedEvent;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/texa/careapp/utils/CrashLogReader;->saveCrashLog(Lcom/texa/carelib/care/impacts/events/ImpactDataDownloadCompletedEvent;)V

    return-void
.end method

.method private saveCrashLog(Lcom/texa/carelib/care/impacts/events/ImpactDataDownloadCompletedEvent;)V
    .locals 7

    .line 80
    iget-object v0, p0, Lcom/texa/careapp/utils/CrashLogReader;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "Can not download crash log because dongle is null"

    .line 81
    invoke-static {v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    .line 85
    invoke-virtual {p1}, Lcom/texa/carelib/care/impacts/events/ImpactDataDownloadCompletedEvent;->getImpacts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v3, "impacts.size()=%s"

    invoke-static {v3, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v2, v0, [Ljava/lang/Object;

    .line 86
    invoke-virtual {p1}, Lcom/texa/carelib/care/impacts/events/ImpactDataDownloadCompletedEvent;->getAccelerationEvents()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v3, "events.size()=%s"

    invoke-static {v3, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    invoke-virtual {p1}, Lcom/texa/carelib/care/impacts/events/ImpactDataDownloadCompletedEvent;->getAccelerationEvents()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "CrashLog saved: %s"

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/texa/carelib/care/impacts/CrashReport;

    .line 90
    :try_start_0
    iget-object v5, p0, Lcom/texa/careapp/utils/CrashLogReader;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    invoke-static {v3, v5, v1}, Lcom/texa/careapp/model/CrashLogModel;->from(Lcom/texa/carelib/care/impacts/CrashReport;Lcom/texa/careapp/model/DongleModel;Z)Lcom/texa/careapp/model/CrashLogModel;

    move-result-object v3

    .line 91
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v3, v5, v1

    .line 92
    invoke-static {v4, v5}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 94
    invoke-virtual {p1}, Lcom/texa/careapp/exceptions/DatabaseIOException;->printStackTrace()V

    return-void

    .line 99
    :cond_1
    invoke-virtual {p1}, Lcom/texa/carelib/care/impacts/events/ImpactDataDownloadCompletedEvent;->getImpacts()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/carelib/care/impacts/Impact;

    .line 100
    invoke-virtual {v2}, Lcom/texa/carelib/care/impacts/Impact;->getVerboseCrashReport()Lcom/texa/carelib/care/impacts/VerboseCrashReport;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 102
    :try_start_1
    invoke-virtual {v2}, Lcom/texa/carelib/care/impacts/Impact;->getVerboseCrashReport()Lcom/texa/carelib/care/impacts/VerboseCrashReport;

    move-result-object v3

    iget-object v5, p0, Lcom/texa/careapp/utils/CrashLogReader;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    invoke-static {v3, v5}, Lcom/texa/careapp/model/CrashLogModel;->from(Lcom/texa/carelib/care/impacts/VerboseCrashReport;Lcom/texa/careapp/model/DongleModel;)Lcom/texa/careapp/model/CrashLogModel;

    move-result-object v3

    .line 103
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J

    const-string v5, "CrashLogVerbose saved: %s"

    new-array v6, v0, [Ljava/lang/Object;

    aput-object v3, v6, v1

    .line 104
    invoke-static {v5, v6}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 106
    invoke-virtual {p1}, Lcom/texa/careapp/exceptions/DatabaseIOException;->printStackTrace()V

    return-void

    .line 110
    :cond_3
    :goto_2
    invoke-virtual {v2}, Lcom/texa/carelib/care/impacts/Impact;->getCrashReport()Lcom/texa/carelib/care/impacts/CrashReport;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 112
    :try_start_2
    invoke-virtual {v2}, Lcom/texa/carelib/care/impacts/Impact;->getCrashReport()Lcom/texa/carelib/care/impacts/CrashReport;

    move-result-object v2

    iget-object v3, p0, Lcom/texa/careapp/utils/CrashLogReader;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    invoke-static {v2, v3, v0}, Lcom/texa/careapp/model/CrashLogModel;->from(Lcom/texa/carelib/care/impacts/CrashReport;Lcom/texa/careapp/model/DongleModel;Z)Lcom/texa/careapp/model/CrashLogModel;

    move-result-object v2

    .line 113
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J

    new-array v3, v0, [Ljava/lang/Object;

    aput-object v2, v3, v1

    .line 114
    invoke-static {v4, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 116
    invoke-virtual {p1}, Lcom/texa/careapp/exceptions/DatabaseIOException;->printStackTrace()V

    return-void

    .line 123
    :cond_4
    :try_start_3
    iget-object p1, p0, Lcom/texa/careapp/utils/CrashLogReader;->mImpactDetection:Lcom/texa/carelib/care/impacts/ImpactDetection;

    new-instance v0, Lcom/texa/careapp/utils/CrashLogReader$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/texa/careapp/utils/CrashLogReader$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/utils/CrashLogReader;)V

    invoke-interface {p1, v0}, Lcom/texa/carelib/care/impacts/ImpactDetection;->eraseImpacts(Lcom/texa/carelib/core/Callback;)V
    :try_end_3
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 128
    invoke-virtual {p1}, Lcom/texa/carelib/core/CareLibException;->printStackTrace()V

    .line 131
    :goto_3
    invoke-direct {p0}, Lcom/texa/careapp/utils/CrashLogReader;->scheduleCrashSyncTaskOneShot()V

    return-void
.end method

.method private scheduleCrashSyncTaskOneShot()V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/texa/careapp/utils/CrashLogReader;->mCaReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-virtual {v0}, Lcom/texa/careapp/sync/CAReWorkerManager;->scheduleCrashLog()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$saveCrashLog$0$com-texa-careapp-utils-CrashLogReader(Lcom/texa/carelib/care/impacts/events/ImpactDataErasedEvent;)V
    .locals 1

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "CRASH ERASED"

    .line 124
    invoke-static {v0, p1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    iget-object p1, p0, Lcom/texa/careapp/utils/CrashLogReader;->mCompleteAllOperation:Lcom/texa/careapp/utils/CrashLogReader$CompleteAllOperation;

    invoke-interface {p1}, Lcom/texa/careapp/utils/CrashLogReader$CompleteAllOperation;->onCompletedAllOperations()V

    return-void
.end method

.method public read(Lcom/texa/carelib/care/impacts/ImpactDetection;)V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Crash log book read invoked"

    .line 60
    invoke-static {v2, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    iput-object p1, p0, Lcom/texa/careapp/utils/CrashLogReader;->mImpactDetection:Lcom/texa/carelib/care/impacts/ImpactDetection;

    .line 63
    invoke-interface {p1}, Lcom/texa/carelib/care/impacts/ImpactDetection;->isReadingImpactData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    sget-object p1, Lcom/texa/careapp/utils/CrashLogReader;->TAG:Ljava/lang/String;

    const-string v0, "Already reading crash log."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 69
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/texa/careapp/utils/CrashLogReader;->mSavedImpactsLoadedEventCallback:Lcom/texa/carelib/care/impacts/ImpactDataDownloadListener;

    invoke-interface {p1, v1}, Lcom/texa/carelib/care/impacts/ImpactDetection;->loadImpacts(Lcom/texa/carelib/care/impacts/ImpactDataDownloadListener;)V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "Finish reading"

    .line 75
    invoke-static {v0, p1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 71
    :catch_0
    sget-object p1, Lcom/texa/careapp/utils/CrashLogReader;->TAG:Ljava/lang/String;

    const-string v0, "crash log false"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
