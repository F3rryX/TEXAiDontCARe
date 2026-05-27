.class Lcom/texa/careapp/utils/LoginHelperRx$1;
.super Ljava/lang/Object;
.source "LoginHelperRx.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/utils/LoginHelperRx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/texa/careapp/utils/authentication/AccessToken;",
        "Lio/reactivex/Observable<",
        "Lcom/texa/careapp/networking/response/UserResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/utils/LoginHelperRx;


# direct methods
.method constructor <init>(Lcom/texa/careapp/utils/LoginHelperRx;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/texa/careapp/utils/LoginHelperRx$1;->this$0:Lcom/texa/careapp/utils/LoginHelperRx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/texa/careapp/utils/authentication/AccessToken;)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/utils/authentication/AccessToken;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/networking/response/UserResponse;",
            ">;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx$1;->this$0:Lcom/texa/careapp/utils/LoginHelperRx;

    iget-object v1, v0, Lcom/texa/careapp/utils/LoginHelperRx;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v2, p0, Lcom/texa/careapp/utils/LoginHelperRx$1;->this$0:Lcom/texa/careapp/utils/LoginHelperRx;

    invoke-static {v2}, Lcom/texa/careapp/utils/LoginHelperRx;->access$000(Lcom/texa/careapp/utils/LoginHelperRx;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/texa/careapp/utils/LoginHelperRx$1;->this$0:Lcom/texa/careapp/utils/LoginHelperRx;

    invoke-static {v3}, Lcom/texa/careapp/utils/LoginHelperRx;->access$100(Lcom/texa/careapp/utils/LoginHelperRx;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/texa/careapp/utils/LoginHelperRx;->storeCredentialsAndAccessToken(Landroid/accounts/AccountManager;Ljava/lang/String;Ljava/lang/String;Lcom/texa/careapp/utils/authentication/AccessToken;)V

    .line 145
    iget-object p1, p0, Lcom/texa/careapp/utils/LoginHelperRx$1;->this$0:Lcom/texa/careapp/utils/LoginHelperRx;

    iget-object p1, p1, Lcom/texa/careapp/utils/LoginHelperRx;->mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-interface {p1}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->getUserObservable()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 140
    check-cast p1, Lcom/texa/careapp/utils/authentication/AccessToken;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/utils/LoginHelperRx$1;->apply(Lcom/texa/careapp/utils/authentication/AccessToken;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
