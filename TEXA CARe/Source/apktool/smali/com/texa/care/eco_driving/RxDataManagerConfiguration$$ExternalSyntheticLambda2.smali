.class public final synthetic Lcom/texa/care/eco_driving/RxDataManagerConfiguration$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/texa/care/eco_driving/RxObservableObject$Supplier;


# instance fields
.field public final synthetic f$0:Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/care/eco_driving/RxDataManagerConfiguration$$ExternalSyntheticLambda2;->f$0:Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/texa/care/eco_driving/RxDataManagerConfiguration$$ExternalSyntheticLambda2;->f$0:Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;

    invoke-interface {v0}, Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;->getTemperatureThreshold()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
