.class public final synthetic Lcom/texa/carelib/communication/internal/MockCommunication$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/texa/carelib/communication/internal/MockCommunication;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/carelib/communication/internal/MockCommunication;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/communication/internal/MockCommunication$$ExternalSyntheticLambda0;->f$0:Lcom/texa/carelib/communication/internal/MockCommunication;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/texa/carelib/communication/internal/MockCommunication$$ExternalSyntheticLambda0;->f$0:Lcom/texa/carelib/communication/internal/MockCommunication;

    invoke-virtual {v0}, Lcom/texa/carelib/communication/internal/MockCommunication;->lambda$disconnect$1$com-texa-carelib-communication-internal-MockCommunication()V

    return-void
.end method
