.class public final synthetic Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/texa/carelib/core/Callback;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen$$ExternalSyntheticLambda3;->f$0:Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;

    iput-object p2, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen$$ExternalSyntheticLambda3;->f$0:Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    check-cast p1, Lcom/texa/carelib/profile/events/AuthenticationCompletedEvent;

    invoke-virtual {v0, v1, p1}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->lambda$onCareAuthenticationClicked$4$com-texa-careapp-app-onboarding-CareAuthenticationScreen(Ljava/lang/String;Lcom/texa/carelib/profile/events/AuthenticationCompletedEvent;)V

    return-void
.end method
