.class public final synthetic Lcom/texa/careapp/app/onboarding/OnBoardingActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/texa/carelib/core/Callback;


# static fields
.field public static final synthetic INSTANCE:Lcom/texa/careapp/app/onboarding/OnBoardingActivity$$ExternalSyntheticLambda2;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/texa/careapp/app/onboarding/OnBoardingActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/texa/careapp/app/onboarding/OnBoardingActivity$$ExternalSyntheticLambda2;->INSTANCE:Lcom/texa/careapp/app/onboarding/OnBoardingActivity$$ExternalSyntheticLambda2;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationErasedEvent;

    invoke-static {p1}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->lambda$factoryReset$1(Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationErasedEvent;)V

    return-void
.end method
