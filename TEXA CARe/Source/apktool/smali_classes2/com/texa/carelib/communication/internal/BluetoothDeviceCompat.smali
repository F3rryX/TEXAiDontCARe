.class public Lcom/texa/carelib/communication/internal/BluetoothDeviceCompat;
.super Ljava/lang/Object;
.source "BluetoothDeviceCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceType(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 32
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result p0

    return p0
.end method
