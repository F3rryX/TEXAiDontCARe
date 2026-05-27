.class public final Lcom/texa/careapp/sync/jobs/TripJob_MembersInjector;
.super Ljava/lang/Object;
.source "TripJob_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/sync/jobs/TripJob;",
        ">;"
    }
.end annotation


# instance fields
.field private final mLoginHelperRxProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/LoginHelperRx;",
            ">;"
        }
    .end annotation
.end field

.field private final mRetrofitErrorParserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/RetrofitErrorParser;",
            ">;"
        }
    .end annotation
.end field

.field private final mTripDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/TripDataManager;",
            ">;"
        }
    .end annotation
.end field

.field private final texaCareApiServiceUserProvider:Ljavax/inject/Provider;
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
            "Lcom/texa/careapp/utils/LoginHelperRx;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/TripDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/RetrofitErrorParser;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/texa/careapp/sync/jobs/TripJob_MembersInjector;->mLoginHelperRxProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p2, p0, Lcom/texa/careapp/sync/jobs/TripJob_MembersInjector;->mTripDataManagerProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p3, p0, Lcom/texa/careapp/sync/jobs/TripJob_MembersInjector;->texaCareApiServiceUserProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p4, p0, Lcom/texa/careapp/sync/jobs/TripJob_MembersInjector;->mRetrofitErrorParserProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/LoginHelperRx;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/TripDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/RetrofitErrorParser;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/sync/jobs/TripJob;",
            ">;"
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/texa/careapp/sync/jobs/TripJob_MembersInjector;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/texa/careapp/sync/jobs/TripJob_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectMLoginHelperRx(Lcom/texa/careapp/sync/jobs/TripJob;Lcom/texa/careapp/utils/LoginHelperRx;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/texa/careapp/sync/jobs/TripJob;->mLoginHelperRx:Lcom/texa/careapp/utils/LoginHelperRx;

    return-void
.end method

.method public static injectMRetrofitErrorParser(Lcom/texa/careapp/sync/jobs/TripJob;Lcom/texa/careapp/utils/RetrofitErrorParser;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/texa/careapp/sync/jobs/TripJob;->mRetrofitErrorParser:Lcom/texa/careapp/utils/RetrofitErrorParser;

    return-void
.end method

.method public static injectMTripDataManager(Lcom/texa/careapp/sync/jobs/TripJob;Lcom/texa/careapp/utils/TripDataManager;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/texa/careapp/sync/jobs/TripJob;->mTripDataManager:Lcom/texa/careapp/utils/TripDataManager;

    return-void
.end method

.method public static injectTexaCareApiServiceUser(Lcom/texa/careapp/sync/jobs/TripJob;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/texa/careapp/sync/jobs/TripJob;->texaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/sync/jobs/TripJob;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/texa/careapp/sync/jobs/TripJob_MembersInjector;->mLoginHelperRxProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/LoginHelperRx;

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/TripJob_MembersInjector;->injectMLoginHelperRx(Lcom/texa/careapp/sync/jobs/TripJob;Lcom/texa/careapp/utils/LoginHelperRx;)V

    .line 47
    iget-object v0, p0, Lcom/texa/careapp/sync/jobs/TripJob_MembersInjector;->mTripDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/TripDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/TripJob_MembersInjector;->injectMTripDataManager(Lcom/texa/careapp/sync/jobs/TripJob;Lcom/texa/careapp/utils/TripDataManager;)V

    .line 48
    iget-object v0, p0, Lcom/texa/careapp/sync/jobs/TripJob_MembersInjector;->texaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/TripJob_MembersInjector;->injectTexaCareApiServiceUser(Lcom/texa/careapp/sync/jobs/TripJob;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 49
    iget-object v0, p0, Lcom/texa/careapp/sync/jobs/TripJob_MembersInjector;->mRetrofitErrorParserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/RetrofitErrorParser;

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/TripJob_MembersInjector;->injectMRetrofitErrorParser(Lcom/texa/careapp/sync/jobs/TripJob;Lcom/texa/careapp/utils/RetrofitErrorParser;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Lcom/texa/careapp/sync/jobs/TripJob;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/sync/jobs/TripJob_MembersInjector;->injectMembers(Lcom/texa/careapp/sync/jobs/TripJob;)V

    return-void
.end method
