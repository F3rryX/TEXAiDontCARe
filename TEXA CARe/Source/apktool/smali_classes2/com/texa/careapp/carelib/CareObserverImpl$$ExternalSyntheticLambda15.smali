.class public final synthetic Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/model/DongleModel;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/model/DongleModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda15;->f$0:Lcom/texa/careapp/model/DongleModel;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda15;->f$0:Lcom/texa/careapp/model/DongleModel;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/texa/careapp/carelib/CareObserverImpl;->lambda$observeInfosForConfigurationUpdate$20(Lcom/texa/careapp/model/DongleModel;Ljava/lang/String;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
