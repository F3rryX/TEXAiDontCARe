.class public final Lcom/texa/careapp/utils/broadcastreceiver/BootCompletedReceiver_MembersInjector;
.super Ljava/lang/Object;
.source "BootCompletedReceiver_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/utils/broadcastreceiver/BootCompletedReceiver;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDongleDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
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

.field private final mPrefsProvider:Ljavax/inject/Provider;
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
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/texa/careapp/utils/broadcastreceiver/BootCompletedReceiver_MembersInjector;->mLoggerManagerProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p2, p0, Lcom/texa/careapp/utils/broadcastreceiver/BootCompletedReceiver_MembersInjector;->mPrefsProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p3, p0, Lcom/texa/careapp/utils/broadcastreceiver/BootCompletedReceiver_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

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
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/utils/broadcastreceiver/BootCompletedReceiver;",
            ">;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/texa/careapp/utils/broadcastreceiver/BootCompletedReceiver_MembersInjector;

    invoke-direct {v0, p0, p1, p2}, Lcom/texa/careapp/utils/broadcastreceiver/BootCompletedReceiver_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectMDongleDataManager(Lcom/texa/careapp/utils/broadcastreceiver/BootCompletedReceiver;Lcom/texa/careapp/model/DongleDataManager;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/texa/careapp/utils/broadcastreceiver/BootCompletedReceiver;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    return-void
.end method

.method public static injectMLoggerManager(Lcom/texa/careapp/utils/broadcastreceiver/BootCompletedReceiver;Lcom/texa/careapp/remotelogger/LoggerManager;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/texa/careapp/utils/broadcastreceiver/BootCompletedReceiver;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    return-void
.end method

.method public static injectMPrefs(Lcom/texa/careapp/utils/broadcastreceiver/BootCompletedReceiver;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/texa/careapp/utils/broadcastreceiver/BootCompletedReceiver;->mPrefs:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/utils/broadcastreceiver/BootCompletedReceiver;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/texa/careapp/utils/broadcastreceiver/BootCompletedReceiver_MembersInjector;->mLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/broadcastreceiver/BootCompletedReceiver_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/utils/broadcastreceiver/BootCompletedReceiver;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 41
    iget-object v0, p0, Lcom/texa/careapp/utils/broadcastreceiver/BootCompletedReceiver_MembersInjector;->mPrefsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/broadcastreceiver/BootCompletedReceiver_MembersInjector;->injectMPrefs(Lcom/texa/careapp/utils/broadcastreceiver/BootCompletedReceiver;Landroid/content/SharedPreferences;)V

    .line 42
    iget-object v0, p0, Lcom/texa/careapp/utils/broadcastreceiver/BootCompletedReceiver_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/broadcastreceiver/BootCompletedReceiver_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/utils/broadcastreceiver/BootCompletedReceiver;Lcom/texa/careapp/model/DongleDataManager;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Lcom/texa/careapp/utils/broadcastreceiver/BootCompletedReceiver;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/utils/broadcastreceiver/BootCompletedReceiver_MembersInjector;->injectMembers(Lcom/texa/careapp/utils/broadcastreceiver/BootCompletedReceiver;)V

    return-void
.end method
