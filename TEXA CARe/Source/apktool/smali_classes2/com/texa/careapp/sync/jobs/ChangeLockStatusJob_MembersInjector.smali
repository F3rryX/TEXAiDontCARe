.class public final Lcom/texa/careapp/sync/jobs/ChangeLockStatusJob_MembersInjector;
.super Ljava/lang/Object;
.source "ChangeLockStatusJob_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/sync/jobs/ChangeLockStatusJob;",
        ">;"
    }
.end annotation


# instance fields
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

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/texa/careapp/sync/jobs/ChangeLockStatusJob_MembersInjector;->texaCareApiServiceUserProvider:Ljavax/inject/Provider;

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
            "Lcom/texa/careapp/sync/jobs/ChangeLockStatusJob;",
            ">;"
        }
    .end annotation

    .line 25
    new-instance v0, Lcom/texa/careapp/sync/jobs/ChangeLockStatusJob_MembersInjector;

    invoke-direct {v0, p0}, Lcom/texa/careapp/sync/jobs/ChangeLockStatusJob_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectTexaCareApiServiceUser(Lcom/texa/careapp/sync/jobs/ChangeLockStatusJob;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/texa/careapp/sync/jobs/ChangeLockStatusJob;->texaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/sync/jobs/ChangeLockStatusJob;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/texa/careapp/sync/jobs/ChangeLockStatusJob_MembersInjector;->texaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/ChangeLockStatusJob_MembersInjector;->injectTexaCareApiServiceUser(Lcom/texa/careapp/sync/jobs/ChangeLockStatusJob;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p1, Lcom/texa/careapp/sync/jobs/ChangeLockStatusJob;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/sync/jobs/ChangeLockStatusJob_MembersInjector;->injectMembers(Lcom/texa/careapp/sync/jobs/ChangeLockStatusJob;)V

    return-void
.end method
