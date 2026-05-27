.class public final Lcom/texa/careapp/sync/jobs/UserTaskJob_MembersInjector;
.super Ljava/lang/Object;
.source "UserTaskJob_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/sync/jobs/UserTaskJob;",
        ">;"
    }
.end annotation


# instance fields
.field private final mUserDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/texa/careapp/sync/jobs/UserTaskJob_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    .line 24
    iput-object p2, p0, Lcom/texa/careapp/sync/jobs/UserTaskJob_MembersInjector;->texaCareApiServiceUserProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/sync/jobs/UserTaskJob;",
            ">;"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/texa/careapp/sync/jobs/UserTaskJob_MembersInjector;

    invoke-direct {v0, p0, p1}, Lcom/texa/careapp/sync/jobs/UserTaskJob_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectMUserDataManager(Lcom/texa/careapp/sync/jobs/UserTaskJob;Lcom/texa/careapp/utils/UserDataManager;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/texa/careapp/sync/jobs/UserTaskJob;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    return-void
.end method

.method public static injectTexaCareApiServiceUser(Lcom/texa/careapp/sync/jobs/UserTaskJob;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/texa/careapp/sync/jobs/UserTaskJob;->texaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/sync/jobs/UserTaskJob;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/texa/careapp/sync/jobs/UserTaskJob_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/UserTaskJob_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/sync/jobs/UserTaskJob;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 36
    iget-object v0, p0, Lcom/texa/careapp/sync/jobs/UserTaskJob_MembersInjector;->texaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/UserTaskJob_MembersInjector;->injectTexaCareApiServiceUser(Lcom/texa/careapp/sync/jobs/UserTaskJob;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, Lcom/texa/careapp/sync/jobs/UserTaskJob;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/sync/jobs/UserTaskJob_MembersInjector;->injectMembers(Lcom/texa/careapp/sync/jobs/UserTaskJob;)V

    return-void
.end method
