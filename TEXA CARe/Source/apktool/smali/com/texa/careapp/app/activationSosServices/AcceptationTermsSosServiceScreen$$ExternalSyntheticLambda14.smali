.class public final synthetic Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda14;->f$0:Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda14;->f$0:Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;

    check-cast p1, Lcom/texa/careapp/networking/response/ServiceListResponse;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->lambda$activationService$3$com-texa-careapp-app-activationSosServices-AcceptationTermsSosServiceScreen(Lcom/texa/careapp/networking/response/ServiceListResponse;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
