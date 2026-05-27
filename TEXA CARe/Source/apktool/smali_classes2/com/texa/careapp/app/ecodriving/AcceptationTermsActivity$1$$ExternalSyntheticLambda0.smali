.class public final synthetic Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Action;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity$1;

.field public final synthetic f$1:Lcom/texa/careapp/model/TermsModel;

.field public final synthetic f$2:Lcom/texa/careapp/model/UserModel;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity$1;Lcom/texa/careapp/model/TermsModel;Lcom/texa/careapp/model/UserModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity$1$$ExternalSyntheticLambda0;->f$0:Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity$1;

    iput-object p2, p0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity$1$$ExternalSyntheticLambda0;->f$1:Lcom/texa/careapp/model/TermsModel;

    iput-object p3, p0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity$1$$ExternalSyntheticLambda0;->f$2:Lcom/texa/careapp/model/UserModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity$1$$ExternalSyntheticLambda0;->f$0:Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity$1;

    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity$1$$ExternalSyntheticLambda0;->f$1:Lcom/texa/careapp/model/TermsModel;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity$1$$ExternalSyntheticLambda0;->f$2:Lcom/texa/careapp/model/UserModel;

    invoke-virtual {v0, v1, v2}, Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity$1;->lambda$acceptedCondition$1$com-texa-careapp-app-ecodriving-AcceptationTermsActivity$1(Lcom/texa/careapp/model/TermsModel;Lcom/texa/careapp/model/UserModel;)V

    return-void
.end method
