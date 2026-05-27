.class public final synthetic Lcom/texa/careapp/carelib/CommunicationObservable$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/carelib/CommunicationObservable;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/carelib/CommunicationObservable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/carelib/CommunicationObservable$$ExternalSyntheticLambda2;->f$0:Lcom/texa/careapp/carelib/CommunicationObservable;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/carelib/CommunicationObservable$$ExternalSyntheticLambda2;->f$0:Lcom/texa/careapp/carelib/CommunicationObservable;

    check-cast p1, Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-static {v0, p1}, Lcom/texa/careapp/carelib/CommunicationObservable;->$r8$lambda$BxJaP418p068WAuvi4IENGqKZfw(Lcom/texa/careapp/carelib/CommunicationObservable;Lcom/texa/carelib/communication/CommunicationStatus;)Lio/reactivex/Observable;

    move-result-object p1

    check-cast p1, Lio/reactivex/ObservableSource;

    return-object p1
.end method
