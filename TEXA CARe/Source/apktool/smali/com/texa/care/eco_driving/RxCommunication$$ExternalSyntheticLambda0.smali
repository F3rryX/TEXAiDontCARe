.class public final synthetic Lcom/texa/care/eco_driving/RxCommunication$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/texa/care/eco_driving/RxObservableObject$Supplier;


# instance fields
.field public final synthetic f$0:Lcom/texa/carelib/communication/Communication;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/carelib/communication/Communication;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/care/eco_driving/RxCommunication$$ExternalSyntheticLambda0;->f$0:Lcom/texa/carelib/communication/Communication;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/texa/care/eco_driving/RxCommunication$$ExternalSyntheticLambda0;->f$0:Lcom/texa/carelib/communication/Communication;

    invoke-interface {v0}, Lcom/texa/carelib/communication/Communication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v0

    return-object v0
.end method
