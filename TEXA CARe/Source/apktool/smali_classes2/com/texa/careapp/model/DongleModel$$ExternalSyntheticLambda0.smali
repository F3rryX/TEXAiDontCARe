.class public final synthetic Lcom/texa/careapp/model/DongleModel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/model/DongleModel;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/model/DongleModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/model/DongleModel$$ExternalSyntheticLambda0;->f$0:Lcom/texa/careapp/model/DongleModel;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/model/DongleModel$$ExternalSyntheticLambda0;->f$0:Lcom/texa/careapp/model/DongleModel;

    check-cast p1, Lcom/texa/carelib/core/utils/FirmwareVersion;

    check-cast p2, Lcom/texa/carelib/core/utils/FirmwareVersion;

    invoke-virtual {v0, p1, p2}, Lcom/texa/careapp/model/DongleModel;->lambda$observerFirmwareVersion$0$com-texa-careapp-model-DongleModel(Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/utils/FirmwareVersion;)Lcom/texa/careapp/model/DongleModel;

    move-result-object p1

    return-object p1
.end method
