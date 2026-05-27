.class public final Lcom/texa/careapp/dagger/CareModule_ProvideCrashLogReaderFactory;
.super Ljava/lang/Object;
.source "CareModule_ProvideCrashLogReaderFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/texa/careapp/utils/CrashLogReader;",
        ">;"
    }
.end annotation


# instance fields
.field private final dongleDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mCAReWorkerManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/sync/CAReWorkerManager;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/texa/careapp/dagger/CareModule;


# direct methods
.method public constructor <init>(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/dagger/CareModule;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/sync/CAReWorkerManager;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideCrashLogReaderFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    .line 28
    iput-object p2, p0, Lcom/texa/careapp/dagger/CareModule_ProvideCrashLogReaderFactory;->dongleDataManagerProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p3, p0, Lcom/texa/careapp/dagger/CareModule_ProvideCrashLogReaderFactory;->mCAReWorkerManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideCrashLogReaderFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/dagger/CareModule;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/sync/CAReWorkerManager;",
            ">;)",
            "Lcom/texa/careapp/dagger/CareModule_ProvideCrashLogReaderFactory;"
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/texa/careapp/dagger/CareModule_ProvideCrashLogReaderFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/texa/careapp/dagger/CareModule_ProvideCrashLogReaderFactory;-><init>(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideCrashLogReader(Lcom/texa/careapp/dagger/CareModule;Lcom/texa/careapp/model/DongleDataManager;Lcom/texa/careapp/sync/CAReWorkerManager;)Lcom/texa/careapp/utils/CrashLogReader;
    .locals 0

    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/texa/careapp/dagger/CareModule;->provideCrashLogReader(Lcom/texa/careapp/model/DongleDataManager;Lcom/texa/careapp/sync/CAReWorkerManager;)Lcom/texa/careapp/utils/CrashLogReader;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/utils/CrashLogReader;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/texa/careapp/utils/CrashLogReader;
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/texa/careapp/dagger/CareModule_ProvideCrashLogReaderFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    iget-object v1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideCrashLogReaderFactory;->dongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/model/DongleDataManager;

    iget-object v2, p0, Lcom/texa/careapp/dagger/CareModule_ProvideCrashLogReaderFactory;->mCAReWorkerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-static {v0, v1, v2}, Lcom/texa/careapp/dagger/CareModule_ProvideCrashLogReaderFactory;->provideCrashLogReader(Lcom/texa/careapp/dagger/CareModule;Lcom/texa/careapp/model/DongleDataManager;Lcom/texa/careapp/sync/CAReWorkerManager;)Lcom/texa/careapp/utils/CrashLogReader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/texa/careapp/dagger/CareModule_ProvideCrashLogReaderFactory;->get()Lcom/texa/careapp/utils/CrashLogReader;

    move-result-object v0

    return-object v0
.end method
