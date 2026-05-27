.class public final synthetic Lcom/texa/carelib/communication/internal/MockCommunication$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/texa/carelib/communication/internal/MockCommunication;

.field public final synthetic f$1:Lcom/texa/carelib/communication/DeviceInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/carelib/communication/internal/MockCommunication;Lcom/texa/carelib/communication/DeviceInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/communication/internal/MockCommunication$$ExternalSyntheticLambda1;->f$0:Lcom/texa/carelib/communication/internal/MockCommunication;

    iput-object p2, p0, Lcom/texa/carelib/communication/internal/MockCommunication$$ExternalSyntheticLambda1;->f$1:Lcom/texa/carelib/communication/DeviceInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/texa/carelib/communication/internal/MockCommunication$$ExternalSyntheticLambda1;->f$0:Lcom/texa/carelib/communication/internal/MockCommunication;

    iget-object v1, p0, Lcom/texa/carelib/communication/internal/MockCommunication$$ExternalSyntheticLambda1;->f$1:Lcom/texa/carelib/communication/DeviceInfo;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/communication/internal/MockCommunication;->lambda$connect$0$com-texa-carelib-communication-internal-MockCommunication(Lcom/texa/carelib/communication/DeviceInfo;)V

    return-void
.end method
