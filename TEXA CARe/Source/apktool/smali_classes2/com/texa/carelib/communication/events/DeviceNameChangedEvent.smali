.class public Lcom/texa/carelib/communication/events/DeviceNameChangedEvent;
.super Lcom/texa/carelib/core/events/EventBase;
.source "DeviceNameChangedEvent.java"


# instance fields
.field private final mDeviceInfo:Lcom/texa/carelib/communication/DeviceInfo;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/texa/carelib/communication/DeviceInfo;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/texa/carelib/core/events/EventBase;-><init>(Ljava/lang/Object;)V

    .line 24
    iput-object p2, p0, Lcom/texa/carelib/communication/events/DeviceNameChangedEvent;->mDeviceInfo:Lcom/texa/carelib/communication/DeviceInfo;

    return-void
.end method


# virtual methods
.method public getDeviceInfo()Lcom/texa/carelib/communication/DeviceInfo;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/texa/carelib/communication/events/DeviceNameChangedEvent;->mDeviceInfo:Lcom/texa/carelib/communication/DeviceInfo;

    return-object v0
.end method
