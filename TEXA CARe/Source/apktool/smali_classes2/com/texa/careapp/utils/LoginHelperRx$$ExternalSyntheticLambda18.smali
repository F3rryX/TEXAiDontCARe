.class public final synthetic Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Action;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/model/TermsModel;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/model/TermsModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda18;->f$0:Lcom/texa/careapp/model/TermsModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda18;->f$0:Lcom/texa/careapp/model/TermsModel;

    invoke-static {v0}, Lcom/texa/careapp/utils/LoginHelperRx;->lambda$doRegistration$16(Lcom/texa/careapp/model/TermsModel;)V

    return-void
.end method
