.class public interface abstract Lcom/texa/careapp/networking/TexaCareApiServiceClient;
.super Ljava/lang/Object;
.source "TexaCareApiServiceClient.java"


# virtual methods
.method public abstract getDongleSummary(Lcom/texa/careapp/networking/HardwareIdList;)Lio/reactivex/Observable;
    .param p1    # Lcom/texa/careapp/networking/HardwareIdList;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/networking/HardwareIdList;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/networking/response/DongleListResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json,application/vnd.tx-care;version=1"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api/dongles/summary/"
    .end annotation
.end method

.method public abstract insurers()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/networking/response/InsuranceListResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/api/contents/insurers"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json,application/vnd.tx-care;version=1"
        }
    .end annotation
.end method

.method public abstract recoverPasswordFromEmail(Lcom/texa/careapp/networking/RecoverPassword;)Lio/reactivex/Observable;
    .param p1    # Lcom/texa/careapp/networking/RecoverPassword;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/networking/RecoverPassword;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/networking/response/ServerResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json,application/vnd.tx-care;version=1"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api/users/recovery"
    .end annotation
.end method
