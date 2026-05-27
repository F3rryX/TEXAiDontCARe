.class public final Lcom/texa/careapp/utils/BatteryServiceAnalyzer_MembersInjector;
.super Ljava/lang/Object;
.source "BatteryServiceAnalyzer_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/utils/BatteryServiceAnalyzer;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBatteryAnalyzerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/batteryanalyzer/BatteryAnalyzer;",
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

.field private final mDongleDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mTexaCareApiServiceUserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/batteryanalyzer/BatteryAnalyzer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/sync/CAReWorkerManager;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/texa/careapp/utils/BatteryServiceAnalyzer_MembersInjector;->mBatteryAnalyzerProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p2, p0, Lcom/texa/careapp/utils/BatteryServiceAnalyzer_MembersInjector;->mTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p3, p0, Lcom/texa/careapp/utils/BatteryServiceAnalyzer_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p4, p0, Lcom/texa/careapp/utils/BatteryServiceAnalyzer_MembersInjector;->mCAReWorkerManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/batteryanalyzer/BatteryAnalyzer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/sync/CAReWorkerManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/utils/BatteryServiceAnalyzer;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/texa/careapp/utils/BatteryServiceAnalyzer_MembersInjector;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/texa/careapp/utils/BatteryServiceAnalyzer_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectMBatteryAnalyzer(Lcom/texa/careapp/utils/BatteryServiceAnalyzer;Lcom/texa/carelib/care/batteryanalyzer/BatteryAnalyzer;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/texa/careapp/utils/BatteryServiceAnalyzer;->mBatteryAnalyzer:Lcom/texa/carelib/care/batteryanalyzer/BatteryAnalyzer;

    return-void
.end method

.method public static injectMCAReWorkerManager(Lcom/texa/careapp/utils/BatteryServiceAnalyzer;Lcom/texa/careapp/sync/CAReWorkerManager;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/texa/careapp/utils/BatteryServiceAnalyzer;->mCAReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;

    return-void
.end method

.method public static injectMDongleDataManager(Lcom/texa/careapp/utils/BatteryServiceAnalyzer;Lcom/texa/careapp/model/DongleDataManager;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/texa/careapp/utils/BatteryServiceAnalyzer;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    return-void
.end method

.method public static injectMTexaCareApiServiceUser(Lcom/texa/careapp/utils/BatteryServiceAnalyzer;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/texa/careapp/utils/BatteryServiceAnalyzer;->mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/utils/BatteryServiceAnalyzer;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/texa/careapp/utils/BatteryServiceAnalyzer_MembersInjector;->mBatteryAnalyzerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/batteryanalyzer/BatteryAnalyzer;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/BatteryServiceAnalyzer_MembersInjector;->injectMBatteryAnalyzer(Lcom/texa/careapp/utils/BatteryServiceAnalyzer;Lcom/texa/carelib/care/batteryanalyzer/BatteryAnalyzer;)V

    .line 48
    iget-object v0, p0, Lcom/texa/careapp/utils/BatteryServiceAnalyzer_MembersInjector;->mTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/BatteryServiceAnalyzer_MembersInjector;->injectMTexaCareApiServiceUser(Lcom/texa/careapp/utils/BatteryServiceAnalyzer;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 49
    iget-object v0, p0, Lcom/texa/careapp/utils/BatteryServiceAnalyzer_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/BatteryServiceAnalyzer_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/utils/BatteryServiceAnalyzer;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 50
    iget-object v0, p0, Lcom/texa/careapp/utils/BatteryServiceAnalyzer_MembersInjector;->mCAReWorkerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/BatteryServiceAnalyzer_MembersInjector;->injectMCAReWorkerManager(Lcom/texa/careapp/utils/BatteryServiceAnalyzer;Lcom/texa/careapp/sync/CAReWorkerManager;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Lcom/texa/careapp/utils/BatteryServiceAnalyzer;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/utils/BatteryServiceAnalyzer_MembersInjector;->injectMembers(Lcom/texa/careapp/utils/BatteryServiceAnalyzer;)V

    return-void
.end method
