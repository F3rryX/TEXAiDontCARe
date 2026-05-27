.class public abstract Lcom/texa/carelib/communication/DeviceDiscoveryListener;
.super Ljava/lang/Object;
.source "DeviceDiscoveryListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceBondStateChanged(Lcom/texa/carelib/communication/events/DeviceBondStateChangedEvent;)V
    .locals 0

    return-void
.end method

.method public abstract onDeviceFound(Lcom/texa/carelib/communication/events/DeviceFoundEvent;)V
.end method

.method public onDeviceNameChanged(Lcom/texa/carelib/communication/events/DeviceNameChangedEvent;)V
    .locals 0

    return-void
.end method
