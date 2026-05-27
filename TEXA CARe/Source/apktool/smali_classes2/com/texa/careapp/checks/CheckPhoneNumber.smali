.class public Lcom/texa/careapp/checks/CheckPhoneNumber;
.super Ljava/lang/Object;
.source "CheckPhoneNumber.java"

# interfaces
.implements Lcom/texa/careapp/checks/Check;


# instance fields
.field private final mUser:Lcom/texa/careapp/model/UserModel;


# direct methods
.method public constructor <init>(Lcom/texa/careapp/model/UserModel;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/texa/careapp/checks/CheckPhoneNumber;->mUser:Lcom/texa/careapp/model/UserModel;

    return-void
.end method


# virtual methods
.method public check()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/checks/Check$Result;",
            ">;"
        }
    .end annotation

    .line 28
    invoke-virtual {p0}, Lcom/texa/careapp/checks/CheckPhoneNumber;->checkCurrentStatus()Lcom/texa/careapp/checks/Check$Result;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public checkCurrentStatus()Lcom/texa/careapp/checks/Check$Result;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/texa/careapp/checks/CheckPhoneNumber;->mUser:Lcom/texa/careapp/model/UserModel;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isValidatedUserPhoneNumber(Lcom/texa/careapp/model/UserModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    sget-object v0, Lcom/texa/careapp/checks/Check$Result;->OK:Lcom/texa/careapp/checks/Check$Result;

    return-object v0

    .line 37
    :cond_0
    sget-object v0, Lcom/texa/careapp/checks/Check$Result;->BLOCKING:Lcom/texa/careapp/checks/Check$Result;

    return-object v0
.end method

.method public description()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public resolve()V
    .locals 0

    return-void
.end method
