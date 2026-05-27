.class public Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;
.super Lcom/texa/carelib/core/events/EventBase;
.source "CommunicationStatusChangedEvent.java"


# instance fields
.field private final mCommunicationStatus:Lcom/texa/carelib/communication/CommunicationStatus;

.field private final mDeviceInfo:Lcom/texa/carelib/communication/DeviceInfo;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/texa/carelib/communication/CommunicationStatus;Lcom/texa/carelib/communication/DeviceInfo;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/texa/carelib/core/events/EventBase;-><init>(Ljava/lang/Object;)V

    .line 28
    iput-object p2, p0, Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;->mCommunicationStatus:Lcom/texa/carelib/communication/CommunicationStatus;

    .line 29
    iput-object p3, p0, Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;->mDeviceInfo:Lcom/texa/carelib/communication/DeviceInfo;

    return-void
.end method


# virtual methods
.method public getCommunicationStatus()Lcom/texa/carelib/communication/CommunicationStatus;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;->mCommunicationStatus:Lcom/texa/carelib/communication/CommunicationStatus;

    return-object v0
.end method

.method public getDeviceInfo()Lcom/texa/carelib/communication/DeviceInfo;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;->mDeviceInfo:Lcom/texa/carelib/communication/DeviceInfo;

    return-object v0
.end method
