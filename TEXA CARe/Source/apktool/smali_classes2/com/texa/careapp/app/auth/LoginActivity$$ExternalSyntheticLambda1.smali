.class public final synthetic Lcom/texa/careapp/app/auth/LoginActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/auth/LoginActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/auth/LoginActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/auth/LoginActivity$$ExternalSyntheticLambda1;->f$0:Lcom/texa/careapp/app/auth/LoginActivity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/app/auth/LoginActivity$$ExternalSyntheticLambda1;->f$0:Lcom/texa/careapp/app/auth/LoginActivity;

    check-cast p1, Lcom/texa/careapp/utils/authentication/AccessToken;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/app/auth/LoginActivity;->lambda$checkClientToken$1$com-texa-careapp-app-auth-LoginActivity(Lcom/texa/careapp/utils/authentication/AccessToken;)V

    return-void
.end method
