.class public final Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen_MembersInjector;
.super Ljava/lang/Object;
.source "InsertNewThresholdScreen_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mVehicleDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleDataManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen_MembersInjector;->mVehicleDataManagerProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p2, p0, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen_MembersInjector;->mContextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen;",
            ">;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen_MembersInjector;

    invoke-direct {v0, p0, p1}, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectMContext(Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen;Landroid/content/Context;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static injectMVehicleDataManager(Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen;Lcom/texa/careapp/utils/VehicleDataManager;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen;->mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen_MembersInjector;->mVehicleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen_MembersInjector;->injectMVehicleDataManager(Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen;Lcom/texa/careapp/utils/VehicleDataManager;)V

    .line 37
    iget-object v0, p0, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen_MembersInjector;->mContextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen_MembersInjector;->injectMContext(Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen;Landroid/content/Context;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen_MembersInjector;->injectMembers(Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen;)V

    return-void
.end method
