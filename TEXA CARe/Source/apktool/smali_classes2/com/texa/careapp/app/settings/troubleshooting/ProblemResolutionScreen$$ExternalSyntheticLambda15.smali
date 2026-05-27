.class public final synthetic Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$$ExternalSyntheticLambda15;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$$ExternalSyntheticLambda15;-><init>()V

    sput-object v0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$$ExternalSyntheticLambda15;->INSTANCE:Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$$ExternalSyntheticLambda15;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/texa/careapp/model/VehicleParam;

    invoke-static {p1}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->lambda$observeRpmUnderThreshold$6(Lcom/texa/careapp/model/VehicleParam;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
