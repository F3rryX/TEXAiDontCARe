.class public final synthetic Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/carelib/ICareObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/carelib/ICareObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda10;->f$0:Lcom/texa/careapp/carelib/ICareObserver;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda10;->f$0:Lcom/texa/careapp/carelib/ICareObserver;

    check-cast p1, Lcom/texa/careapp/model/DongleModel;

    invoke-static {v0, p1}, Lcom/texa/careapp/utils/Utils;->lambda$checkEcoDrivingMinFirmwareVersion$11(Lcom/texa/careapp/carelib/ICareObserver;Lcom/texa/careapp/model/DongleModel;)V

    return-void
.end method
