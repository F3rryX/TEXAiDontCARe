.class public final Lcom/texa/careapp/sync/jobs/CrashLogJob_MembersInjector;
.super Ljava/lang/Object;
.source "CrashLogJob_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/sync/jobs/CrashLogJob;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/texa/careapp/sync/jobs/CrashLogJob_MembersInjector;->mTexaCareApiServiceProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/sync/jobs/CrashLogJob;",
            ">;"
        }
    .end annotation

    .line 24
    new-instance v0, Lcom/texa/careapp/sync/jobs/CrashLogJob_MembersInjector;

    invoke-direct {v0, p0}, Lcom/texa/careapp/sync/jobs/CrashLogJob_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectMTexaCareApiService(Lcom/texa/careapp/sync/jobs/CrashLogJob;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/texa/careapp/sync/jobs/CrashLogJob;->mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/sync/jobs/CrashLogJob;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/texa/careapp/sync/jobs/CrashLogJob_MembersInjector;->mTexaCareApiServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/CrashLogJob_MembersInjector;->injectMTexaCareApiService(Lcom/texa/careapp/sync/jobs/CrashLogJob;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p1, Lcom/texa/careapp/sync/jobs/CrashLogJob;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/sync/jobs/CrashLogJob_MembersInjector;->injectMembers(Lcom/texa/careapp/sync/jobs/CrashLogJob;)V

    return-void
.end method
