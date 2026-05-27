.class public Lcom/texa/carelib/profile/events/AuthenticationErrorEvent;
.super Lcom/texa/carelib/core/events/ErrorEventBase;
.source "AuthenticationErrorEvent.java"


# instance fields
.field private final mDeviceInfo:Lcom/texa/carelib/communication/DeviceInfo;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/texa/carelib/communication/DeviceInfo;Lcom/texa/carelib/core/CareError;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p3}, Lcom/texa/carelib/core/events/ErrorEventBase;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    .line 27
    iput-object p2, p0, Lcom/texa/carelib/profile/events/AuthenticationErrorEvent;->mDeviceInfo:Lcom/texa/carelib/communication/DeviceInfo;

    return-void
.end method


# virtual methods
.method public getDeviceInfo()Lcom/texa/carelib/communication/DeviceInfo;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/texa/carelib/profile/events/AuthenticationErrorEvent;->mDeviceInfo:Lcom/texa/carelib/communication/DeviceInfo;

    return-object v0
.end method
