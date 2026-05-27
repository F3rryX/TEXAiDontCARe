.class public final synthetic Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function3;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/onboarding/StartEngineScreen;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/onboarding/StartEngineScreen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda13;->f$0:Lcom/texa/careapp/app/onboarding/StartEngineScreen;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/StartEngineScreen$$ExternalSyntheticLambda13;->f$0:Lcom/texa/careapp/app/onboarding/StartEngineScreen;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/math/BigInteger;

    invoke-virtual {v0, p1, p2, p3}, Lcom/texa/careapp/app/onboarding/StartEngineScreen;->lambda$observeEngine$2$com-texa-careapp-app-onboarding-StartEngineScreen(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;)Lcom/texa/careapp/model/DongleModel;

    move-result-object p1

    return-object p1
.end method
