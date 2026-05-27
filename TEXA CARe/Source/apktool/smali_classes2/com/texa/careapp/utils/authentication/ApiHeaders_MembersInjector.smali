.class public final Lcom/texa/careapp/utils/authentication/ApiHeaders_MembersInjector;
.super Ljava/lang/Object;
.source "ApiHeaders_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/utils/authentication/ApiHeaders;",
        ">;"
    }
.end annotation


# instance fields
.field private final fcmManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/fcm/FcmManager;",
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
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/fcm/FcmManager;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/texa/careapp/utils/authentication/ApiHeaders_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p2, p0, Lcom/texa/careapp/utils/authentication/ApiHeaders_MembersInjector;->mSharedPreferencesProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p3, p0, Lcom/texa/careapp/utils/authentication/ApiHeaders_MembersInjector;->fcmManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/fcm/FcmManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/utils/authentication/ApiHeaders;",
            ">;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/texa/careapp/utils/authentication/ApiHeaders_MembersInjector;

    invoke-direct {v0, p0, p1, p2}, Lcom/texa/careapp/utils/authentication/ApiHeaders_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectFcmManager(Lcom/texa/careapp/utils/authentication/ApiHeaders;Lcom/texa/careapp/fcm/FcmManager;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/texa/careapp/utils/authentication/ApiHeaders;->fcmManager:Lcom/texa/careapp/fcm/FcmManager;

    return-void
.end method

.method public static injectMDongleDataManager(Lcom/texa/careapp/utils/authentication/ApiHeaders;Lcom/texa/careapp/model/DongleDataManager;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/texa/careapp/utils/authentication/ApiHeaders;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    return-void
.end method

.method public static injectMSharedPreferences(Lcom/texa/careapp/utils/authentication/ApiHeaders;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/texa/careapp/utils/authentication/ApiHeaders;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/utils/authentication/ApiHeaders;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/texa/careapp/utils/authentication/ApiHeaders_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/authentication/ApiHeaders_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/utils/authentication/ApiHeaders;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 42
    iget-object v0, p0, Lcom/texa/careapp/utils/authentication/ApiHeaders_MembersInjector;->mSharedPreferencesProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/authentication/ApiHeaders_MembersInjector;->injectMSharedPreferences(Lcom/texa/careapp/utils/authentication/ApiHeaders;Landroid/content/SharedPreferences;)V

    .line 43
    iget-object v0, p0, Lcom/texa/careapp/utils/authentication/ApiHeaders_MembersInjector;->fcmManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/fcm/FcmManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/authentication/ApiHeaders_MembersInjector;->injectFcmManager(Lcom/texa/careapp/utils/authentication/ApiHeaders;Lcom/texa/careapp/fcm/FcmManager;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Lcom/texa/careapp/utils/authentication/ApiHeaders;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/utils/authentication/ApiHeaders_MembersInjector;->injectMembers(Lcom/texa/careapp/utils/authentication/ApiHeaders;)V

    return-void
.end method
