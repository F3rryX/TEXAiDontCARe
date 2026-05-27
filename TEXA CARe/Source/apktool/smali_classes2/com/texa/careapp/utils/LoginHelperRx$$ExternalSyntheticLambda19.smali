.class public final synthetic Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Action;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/model/TermsModel;

.field public final synthetic f$1:Lcom/texa/careapp/model/UserModel;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/model/TermsModel;Lcom/texa/careapp/model/UserModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda19;->f$0:Lcom/texa/careapp/model/TermsModel;

    iput-object p2, p0, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda19;->f$1:Lcom/texa/careapp/model/UserModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda19;->f$0:Lcom/texa/careapp/model/TermsModel;

    iget-object v1, p0, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda19;->f$1:Lcom/texa/careapp/model/UserModel;

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/LoginHelperRx;->lambda$doLogin$4(Lcom/texa/careapp/model/TermsModel;Lcom/texa/careapp/model/UserModel;)V

    return-void
.end method
