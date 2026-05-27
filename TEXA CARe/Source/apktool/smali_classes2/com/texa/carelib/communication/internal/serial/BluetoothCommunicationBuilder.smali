.class public Lcom/texa/carelib/communication/internal/serial/BluetoothCommunicationBuilder;
.super Ljava/lang/Object;
.source "BluetoothCommunicationBuilder.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mKnownDeviceHistory:Lcom/texa/carelib/communication/KnownDeviceHistory;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunicationBuilder;->mContext:Landroid/content/Context;

    .line 15
    new-instance p1, Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory;

    iget-object v0, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunicationBuilder;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/texa/carelib/communication/internal/SharedPreferenceKnownDeviceHistory;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunicationBuilder;->mKnownDeviceHistory:Lcom/texa/carelib/communication/KnownDeviceHistory;

    return-void
.end method


# virtual methods
.method public build()Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;
    .locals 3

    .line 30
    new-instance v0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    iget-object v1, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunicationBuilder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunicationBuilder;->mKnownDeviceHistory:Lcom/texa/carelib/communication/KnownDeviceHistory;

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;-><init>(Landroid/content/Context;Lcom/texa/carelib/communication/KnownDeviceHistory;)V

    return-object v0
.end method

.method public setKnownDeviceHistory(Lcom/texa/carelib/communication/KnownDeviceHistory;)Lcom/texa/carelib/communication/internal/serial/BluetoothCommunicationBuilder;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunicationBuilder;->mKnownDeviceHistory:Lcom/texa/carelib/communication/KnownDeviceHistory;

    return-object p0
.end method
