.class public Lcom/texa/carelib/communication/CommunicationFactory;
.super Ljava/lang/Object;
.source "CommunicationFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCommunication(Lcom/texa/carelib/communication/CommunicationType;Lcom/texa/carelib/communication/CommunicationDelegate;)Lcom/texa/carelib/communication/Communication;
    .locals 1

    .line 21
    sget-object v0, Lcom/texa/carelib/communication/CommunicationFactory$1;->$SwitchMap$com$texa$carelib$communication$CommunicationType:[I

    invoke-virtual {p0}, Lcom/texa/carelib/communication/CommunicationType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 28
    new-instance p0, Lcom/texa/carelib/communication/internal/MockCommunication;

    invoke-direct {p0}, Lcom/texa/carelib/communication/internal/MockCommunication;-><init>()V

    goto :goto_0

    .line 32
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid communication type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 23
    :cond_1
    new-instance p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunicationBuilder;

    invoke-virtual {p1}, Lcom/texa/carelib/communication/CommunicationDelegate;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunicationBuilder;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunicationBuilder;->build()Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    move-result-object p0

    .line 36
    :goto_0
    invoke-interface {p0, p1}, Lcom/texa/carelib/communication/Communication;->setCommunicationDelegate(Lcom/texa/carelib/communication/CommunicationDelegate;)V

    return-object p0
.end method
