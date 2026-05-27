.class public interface abstract Lcom/texa/carelib/communication/internal/DeviceScanner;
.super Ljava/lang/Object;
.source "DeviceScanner.java"


# virtual methods
.method public abstract getScanState()Lcom/texa/carelib/communication/internal/DeviceScannerState;
.end method

.method public abstract setCallback(Lcom/texa/carelib/communication/internal/DeviceScannerCallback;)V
.end method

.method public abstract setFilter(Lcom/texa/carelib/communication/DeviceFilter;)V
.end method

.method public abstract startScan(Landroid/content/Context;)Z
.end method

.method public abstract stopScan(Landroid/content/Context;)Z
.end method
