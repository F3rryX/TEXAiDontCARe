.class public final synthetic Lcom/texa/careapp/app/auth/RecoverPasswordScreen$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/auth/RecoverPasswordScreen;

.field public final synthetic f$1:Lcom/texa/careapp/networking/RecoverPassword;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/auth/RecoverPasswordScreen;Lcom/texa/careapp/networking/RecoverPassword;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/auth/RecoverPasswordScreen$$ExternalSyntheticLambda5;->f$0:Lcom/texa/careapp/app/auth/RecoverPasswordScreen;

    iput-object p2, p0, Lcom/texa/careapp/app/auth/RecoverPasswordScreen$$ExternalSyntheticLambda5;->f$1:Lcom/texa/careapp/networking/RecoverPassword;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/texa/careapp/app/auth/RecoverPasswordScreen$$ExternalSyntheticLambda5;->f$0:Lcom/texa/careapp/app/auth/RecoverPasswordScreen;

    iget-object v1, p0, Lcom/texa/careapp/app/auth/RecoverPasswordScreen$$ExternalSyntheticLambda5;->f$1:Lcom/texa/careapp/networking/RecoverPassword;

    check-cast p1, Lcom/texa/careapp/utils/authentication/AccessToken;

    invoke-virtual {v0, v1, p1}, Lcom/texa/careapp/app/auth/RecoverPasswordScreen;->lambda$recoverPassword$3$com-texa-careapp-app-auth-RecoverPasswordScreen(Lcom/texa/careapp/networking/RecoverPassword;Lcom/texa/careapp/utils/authentication/AccessToken;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
