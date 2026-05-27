.class public final synthetic Lcom/texa/careapp/app/auth/RecoverPasswordScreen$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/auth/RecoverPasswordScreen;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/auth/RecoverPasswordScreen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/auth/RecoverPasswordScreen$$ExternalSyntheticLambda3;->f$0:Lcom/texa/careapp/app/auth/RecoverPasswordScreen;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/app/auth/RecoverPasswordScreen$$ExternalSyntheticLambda3;->f$0:Lcom/texa/careapp/app/auth/RecoverPasswordScreen;

    check-cast p1, Lcom/texa/careapp/networking/response/ServerResponse;

    invoke-static {v0, p1}, Lcom/texa/careapp/app/auth/RecoverPasswordScreen;->$r8$lambda$eNKSKki0_nzc4xOBmcgs9Nsh5nw(Lcom/texa/careapp/app/auth/RecoverPasswordScreen;Lcom/texa/careapp/networking/response/ServerResponse;)V

    return-void
.end method
