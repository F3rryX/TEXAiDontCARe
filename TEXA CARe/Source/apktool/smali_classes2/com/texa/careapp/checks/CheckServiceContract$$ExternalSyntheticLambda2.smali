.class public final synthetic Lcom/texa/careapp/checks/CheckServiceContract$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/checks/CheckServiceContract;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/checks/CheckServiceContract;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/checks/CheckServiceContract$$ExternalSyntheticLambda2;->f$0:Lcom/texa/careapp/checks/CheckServiceContract;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/checks/CheckServiceContract$$ExternalSyntheticLambda2;->f$0:Lcom/texa/careapp/checks/CheckServiceContract;

    check-cast p1, Lcom/texa/careapp/model/ServiceDataModel;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/checks/CheckServiceContract;->lambda$check$2$com-texa-careapp-checks-CheckServiceContract(Lcom/texa/careapp/model/ServiceDataModel;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
