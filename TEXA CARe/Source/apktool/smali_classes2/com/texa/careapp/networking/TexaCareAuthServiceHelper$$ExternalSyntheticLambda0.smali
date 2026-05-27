.class public final synthetic Lcom/texa/careapp/networking/TexaCareAuthServiceHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/networking/TexaCareAuthServiceHelper$$ExternalSyntheticLambda0;->f$0:Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/networking/TexaCareAuthServiceHelper$$ExternalSyntheticLambda0;->f$0:Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;

    check-cast p1, Lcom/texa/careapp/utils/authentication/AccessToken;

    invoke-interface {v0, p1}, Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;->persist(Lcom/texa/careapp/utils/authentication/AccessToken;)V

    return-void
.end method
