.class public final synthetic Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$$ExternalSyntheticLambda8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$$ExternalSyntheticLambda8;-><init>()V

    sput-object v0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$$ExternalSyntheticLambda8;->INSTANCE:Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$$ExternalSyntheticLambda8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->lambda$observeRpmAndSpeedUnderThreshold$7(Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
