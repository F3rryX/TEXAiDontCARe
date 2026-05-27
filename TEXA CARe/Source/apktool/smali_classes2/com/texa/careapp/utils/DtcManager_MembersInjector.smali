.class public final Lcom/texa/careapp/utils/DtcManager_MembersInjector;
.super Ljava/lang/Object;
.source "DtcManager_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/utils/DtcManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCAReWorkerManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/sync/CAReWorkerManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoggerManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/remotelogger/LoggerManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mSharedPreferencesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/remotelogger/LoggerManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/sync/CAReWorkerManager;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/texa/careapp/utils/DtcManager_MembersInjector;->mLoggerManagerProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p2, p0, Lcom/texa/careapp/utils/DtcManager_MembersInjector;->mSharedPreferencesProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p3, p0, Lcom/texa/careapp/utils/DtcManager_MembersInjector;->mCAReWorkerManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/remotelogger/LoggerManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/sync/CAReWorkerManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/utils/DtcManager;",
            ">;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/texa/careapp/utils/DtcManager_MembersInjector;

    invoke-direct {v0, p0, p1, p2}, Lcom/texa/careapp/utils/DtcManager_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectMCAReWorkerManager(Lcom/texa/careapp/utils/DtcManager;Lcom/texa/careapp/sync/CAReWorkerManager;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/texa/careapp/utils/DtcManager;->mCAReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;

    return-void
.end method

.method public static injectMLoggerManager(Lcom/texa/careapp/utils/DtcManager;Lcom/texa/careapp/remotelogger/LoggerManager;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/texa/careapp/utils/DtcManager;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    return-void
.end method

.method public static injectMSharedPreferences(Lcom/texa/careapp/utils/DtcManager;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/texa/careapp/utils/DtcManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/utils/DtcManager;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/texa/careapp/utils/DtcManager_MembersInjector;->mLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/DtcManager_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/utils/DtcManager;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 41
    iget-object v0, p0, Lcom/texa/careapp/utils/DtcManager_MembersInjector;->mSharedPreferencesProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/DtcManager_MembersInjector;->injectMSharedPreferences(Lcom/texa/careapp/utils/DtcManager;Landroid/content/SharedPreferences;)V

    .line 42
    iget-object v0, p0, Lcom/texa/careapp/utils/DtcManager_MembersInjector;->mCAReWorkerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/DtcManager_MembersInjector;->injectMCAReWorkerManager(Lcom/texa/careapp/utils/DtcManager;Lcom/texa/careapp/sync/CAReWorkerManager;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Lcom/texa/careapp/utils/DtcManager;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/utils/DtcManager_MembersInjector;->injectMembers(Lcom/texa/careapp/utils/DtcManager;)V

    return-void
.end method
