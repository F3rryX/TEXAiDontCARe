.class public final synthetic Lcom/texa/carelib/profile/internal/SerialProfile$DataReaderTask$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/texa/carelib/communication/internal/PacketComposer$Callback;


# instance fields
.field public final synthetic f$0:Lcom/texa/carelib/profile/internal/SerialProfile$DataReaderTask;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/carelib/profile/internal/SerialProfile$DataReaderTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataReaderTask$$ExternalSyntheticLambda0;->f$0:Lcom/texa/carelib/profile/internal/SerialProfile$DataReaderTask;

    return-void
.end method


# virtual methods
.method public final onMessageReady(II[BI[B)V
    .locals 6

    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataReaderTask$$ExternalSyntheticLambda0;->f$0:Lcom/texa/carelib/profile/internal/SerialProfile$DataReaderTask;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/texa/carelib/profile/internal/SerialProfile$DataReaderTask;->lambda$run$0$com-texa-carelib-profile-internal-SerialProfile$DataReaderTask(II[BI[B)V

    return-void
.end method
