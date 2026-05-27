.class public final Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen_MembersInjector;
.super Ljava/lang/Object;
.source "SetInsuranceCompanyScreen_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;",
        ">;"
    }
.end annotation


# instance fields
.field private final mTexaCareApiServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceClient;",
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
            "Lcom/texa/careapp/networking/TexaCareApiServiceClient;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen_MembersInjector;->mTexaCareApiServiceProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceClient;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;",
            ">;"
        }
    .end annotation

    .line 25
    new-instance v0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen_MembersInjector;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectMTexaCareApiService(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;Lcom/texa/careapp/networking/TexaCareApiServiceClient;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceClient;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen_MembersInjector;->mTexaCareApiServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceClient;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen_MembersInjector;->injectMTexaCareApiService(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;Lcom/texa/careapp/networking/TexaCareApiServiceClient;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p1, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen_MembersInjector;->injectMembers(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;)V

    return-void
.end method
