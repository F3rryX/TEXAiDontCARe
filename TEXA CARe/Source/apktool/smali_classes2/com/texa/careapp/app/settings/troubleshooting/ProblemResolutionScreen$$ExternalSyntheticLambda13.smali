.class public final synthetic Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$$ExternalSyntheticLambda13;->f$0:Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$$ExternalSyntheticLambda13;->f$0:Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;

    check-cast p1, Lcom/texa/carelib/care/trips/CurrentTrip;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->lambda$observeTripStopInfoTroubleshooting$9$com-texa-careapp-app-settings-troubleshooting-ProblemResolutionScreen(Lcom/texa/carelib/care/trips/CurrentTrip;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
