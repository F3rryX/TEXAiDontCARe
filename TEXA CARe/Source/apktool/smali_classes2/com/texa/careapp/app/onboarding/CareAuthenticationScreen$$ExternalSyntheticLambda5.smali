.class public final synthetic Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen$$ExternalSyntheticLambda5;->f$0:Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen$$ExternalSyntheticLambda5;->f$0:Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;

    check-cast p1, Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->lambda$onResume$1$com-texa-careapp-app-onboarding-CareAuthenticationScreen(Lcom/texa/carelib/communication/CommunicationStatus;)V

    return-void
.end method
