.class public final Lcom/texa/careapp/sync/jobs/ParameterJob_MembersInjector;
.super Ljava/lang/Object;
.source "ParameterJob_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/sync/jobs/ParameterJob;",
        ">;"
    }
.end annotation


# instance fields
.field private final mTexaCareApiServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
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
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/texa/careapp/sync/jobs/ParameterJob_MembersInjector;->mVehicleDataManagerProvider:Ljavax/inject/Provider;

    .line 24
    iput-object p2, p0, Lcom/texa/careapp/sync/jobs/ParameterJob_MembersInjector;->mTexaCareApiServiceProvider:Ljavax/inject/Provider;

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
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/sync/jobs/ParameterJob;",
            ">;"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/texa/careapp/sync/jobs/ParameterJob_MembersInjector;

    invoke-direct {v0, p0, p1}, Lcom/texa/careapp/sync/jobs/ParameterJob_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectMTexaCareApiService(Lcom/texa/careapp/sync/jobs/ParameterJob;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/texa/careapp/sync/jobs/ParameterJob;->mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    return-void
.end method

.method public static injectMVehicleDataManager(Lcom/texa/careapp/sync/jobs/ParameterJob;Lcom/texa/careapp/utils/VehicleDataManager;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/texa/careapp/sync/jobs/ParameterJob;->mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/sync/jobs/ParameterJob;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/texa/careapp/sync/jobs/ParameterJob_MembersInjector;->mVehicleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/ParameterJob_MembersInjector;->injectMVehicleDataManager(Lcom/texa/careapp/sync/jobs/ParameterJob;Lcom/texa/careapp/utils/VehicleDataManager;)V

    .line 36
    iget-object v0, p0, Lcom/texa/careapp/sync/jobs/ParameterJob_MembersInjector;->mTexaCareApiServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/ParameterJob_MembersInjector;->injectMTexaCareApiService(Lcom/texa/careapp/sync/jobs/ParameterJob;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, Lcom/texa/careapp/sync/jobs/ParameterJob;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/sync/jobs/ParameterJob_MembersInjector;->injectMembers(Lcom/texa/careapp/sync/jobs/ParameterJob;)V

    return-void
.end method
