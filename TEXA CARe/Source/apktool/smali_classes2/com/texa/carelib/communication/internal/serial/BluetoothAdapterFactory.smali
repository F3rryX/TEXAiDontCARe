.class public Lcom/texa/carelib/communication/internal/serial/BluetoothAdapterFactory;
.super Ljava/lang/Object;
.source "BluetoothAdapterFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    .line 24
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    return-object v0
.end method
