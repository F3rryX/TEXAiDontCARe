.class public final synthetic Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Predicate;


# instance fields
.field public final synthetic f$0:F


# direct methods
.method public synthetic constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$$ExternalSyntheticLambda2;->f$0:F

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$$ExternalSyntheticLambda2;->f$0:F

    check-cast p1, Lcom/texa/careapp/model/VehicleParam;

    invoke-static {v0, p1}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->lambda$observeRpmUnderThreshold$5(FLcom/texa/careapp/model/VehicleParam;)Z

    move-result p1

    return p1
.end method
