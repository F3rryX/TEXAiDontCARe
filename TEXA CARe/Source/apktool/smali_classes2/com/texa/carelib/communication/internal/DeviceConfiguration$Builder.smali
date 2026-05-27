.class public Lcom/texa/carelib/communication/internal/DeviceConfiguration$Builder;
.super Ljava/lang/Object;
.source "DeviceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/communication/internal/DeviceConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mDeviceConfiguration:Lcom/texa/carelib/communication/internal/DeviceConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 74
    new-instance v0, Lcom/texa/carelib/communication/internal/DeviceConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/texa/carelib/communication/internal/DeviceConfiguration;-><init>(Lcom/texa/carelib/communication/internal/DeviceConfiguration$1;)V

    invoke-direct {p0, v0}, Lcom/texa/carelib/communication/internal/DeviceConfiguration$Builder;-><init>(Lcom/texa/carelib/communication/internal/DeviceConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/communication/internal/DeviceConfiguration;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/texa/carelib/communication/internal/DeviceConfiguration$Builder;->mDeviceConfiguration:Lcom/texa/carelib/communication/internal/DeviceConfiguration;

    return-void
.end method


# virtual methods
.method public build()Lcom/texa/carelib/communication/internal/DeviceConfiguration;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/DeviceConfiguration$Builder;->mDeviceConfiguration:Lcom/texa/carelib/communication/internal/DeviceConfiguration;

    return-object v0
.end method

.method public setHasBeacon(Z)Lcom/texa/carelib/communication/internal/DeviceConfiguration$Builder;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/DeviceConfiguration$Builder;->mDeviceConfiguration:Lcom/texa/carelib/communication/internal/DeviceConfiguration;

    invoke-static {v0, p1}, Lcom/texa/carelib/communication/internal/DeviceConfiguration;->access$100(Lcom/texa/carelib/communication/internal/DeviceConfiguration;Z)V

    return-object p0
.end method

.method public setPIN(Ljava/lang/String;)Lcom/texa/carelib/communication/internal/DeviceConfiguration$Builder;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/DeviceConfiguration$Builder;->mDeviceConfiguration:Lcom/texa/carelib/communication/internal/DeviceConfiguration;

    invoke-static {v0, p1}, Lcom/texa/carelib/communication/internal/DeviceConfiguration;->access$200(Lcom/texa/carelib/communication/internal/DeviceConfiguration;Ljava/lang/String;)V

    return-object p0
.end method
