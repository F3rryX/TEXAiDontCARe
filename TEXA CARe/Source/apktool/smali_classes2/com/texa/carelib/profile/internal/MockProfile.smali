.class public Lcom/texa/carelib/profile/internal/MockProfile;
.super Lcom/texa/carelib/profile/internal/ProfileBase;
.source "MockProfile.java"

# interfaces
.implements Lcom/texa/carelib/profile/ProfileTypeProxy;


# static fields
.field public static final HARDWARE_TOKEN:Ljava/lang/String; = "Gl/7nDHBJINTwQqM81YAfKLHBAD+aq4AzcOlwkECtsGHAvAziALnSlSS6cg0w8Dk0r3VDHEEMr9sRqnlJqqn5H/XESRusc5S+PscSB42d9PRM50c1+jPczHtUamOku00Sy+vKa25PLo7d8w53ufOHHyFppoVSnacp5m0ShcK7p6hhoJ3xMMzD51rivOr1tqNp61n3E7Qyg+HoMYs8vdy9UqqlI52N/U9Xgfnwn7zLfDH3xm9BWy4dEE6RUHLnG/TnoFtmErSFyYMEVujVjYeb6Fue52gqe2g2KrqzJmyA4rpZ4uVq8mFvVJTEz5sSVMqIvex1xHUv1IwH7Y2d9dhUQ=="

.field public static final TAG:Ljava/lang/String; = "MockProfile"


# instance fields
.field private final mCommunication:Lcom/texa/carelib/communication/Communication;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/communication/Communication;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/ProfileBase;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/texa/carelib/profile/internal/MockProfile;->mCommunication:Lcom/texa/carelib/communication/Communication;

    return-void
.end method

.method private beginAuthentication(Lcom/texa/carelib/communication/DeviceInfo;Lcom/texa/carelib/core/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/communication/DeviceInfo;",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/profile/events/AuthenticationCompletedEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 170
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not implemented"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private onDeviceConnected()V
    .locals 2

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/MockProfile;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-interface {v0}, Lcom/texa/carelib/communication/Communication;->getCurrentDevice()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/texa/carelib/profile/internal/MockProfile;->beginAuthentication(Lcom/texa/carelib/communication/DeviceInfo;Lcom/texa/carelib/core/Callback;)V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public beginProtectionSession(Lcom/texa/carelib/core/Callback;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/care/profile/CareProxyProtectionSessionCompletedEvent;",
            ">;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public forceAuthentication(Lcom/texa/carelib/core/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/profile/events/AuthenticationCompletedEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/MockProfile;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-interface {v0}, Lcom/texa/carelib/communication/Communication;->getCurrentDevice()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/texa/carelib/profile/internal/MockProfile;->beginAuthentication(Lcom/texa/carelib/communication/DeviceInfo;Lcom/texa/carelib/core/Callback;)V

    return-void
.end method

.method public getCurrentDevice()Lcom/texa/carelib/communication/DeviceInfo;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/MockProfile;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-interface {v0}, Lcom/texa/carelib/communication/Communication;->getCurrentDevice()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/texa/carelib/profile/ProfileType;
    .locals 1

    .line 225
    sget-object v0, Lcom/texa/carelib/profile/ProfileType;->MOCK:Lcom/texa/carelib/profile/ProfileType;

    return-object v0
.end method

.method protected onCommunicationStatusChanged(Ljava/beans/PropertyChangeEvent;)V
    .locals 2

    .line 153
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/CommunicationStatus;

    .line 155
    sget-object v1, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    if-ne v1, v0, :cond_0

    .line 156
    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/MockProfile;->onDeviceConnected()V

    .line 159
    :cond_0
    invoke-super {p0, p1}, Lcom/texa/carelib/profile/internal/ProfileBase;->onCommunicationStatusChanged(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method public shutdown()V
    .locals 0

    return-void
.end method
