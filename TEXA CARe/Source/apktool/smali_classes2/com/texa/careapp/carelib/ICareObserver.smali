.class public interface abstract Lcom/texa/careapp/carelib/ICareObserver;
.super Ljava/lang/Object;
.source "ICareObserver.java"


# virtual methods
.method public abstract careCommunicationChange()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/carelib/communication/CommunicationStatus;",
            ">;"
        }
    .end annotation
.end method

.method public abstract careConnected()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/carelib/communication/CommunicationStatus;",
            ">;"
        }
    .end annotation
.end method

.method public abstract careNotConnected()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/carelib/communication/CommunicationStatus;",
            ">;"
        }
    .end annotation
.end method

.method public abstract observeAccessory(Ljava/lang/String;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/texa/carelib/care/accessory/Accessory;",
            ">;"
        }
    .end annotation
.end method

.method public abstract observeAccessory(Ljava/lang/String;Z)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lio/reactivex/Observable<",
            "Lcom/texa/carelib/care/accessory/Accessory;",
            ">;"
        }
    .end annotation
.end method

.method public abstract observeAccessoryInterpreterVersion()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation
.end method

.method public abstract observeAccessoryMainAppVersion()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/carelib/core/utils/FirmwareVersion;",
            ">;"
        }
    .end annotation
.end method

.method public abstract observeAccessoryMainAppVersionPending()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/carelib/core/utils/FirmwareVersion;",
            ">;"
        }
    .end annotation
.end method

.method public abstract observeAccessorySerialNumber()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract observeAccessoryServiceAppVersion()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/carelib/core/utils/FirmwareVersion;",
            ">;"
        }
    .end annotation
.end method

.method public abstract observeAccessoryServiceAppVersionPending()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/carelib/core/utils/FirmwareVersion;",
            ">;"
        }
    .end annotation
.end method

.method public abstract observeCareInfos()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/carelib/care/accessory/Accessory;",
            ">;"
        }
    .end annotation
.end method

.method public abstract observeCareStatus()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract observeCurrentTrip()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/carelib/care/trips/CurrentTrip;",
            ">;"
        }
    .end annotation
.end method

.method public abstract observeDtc()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;",
            ">;"
        }
    .end annotation
.end method

.method public abstract observeInfosForConfigurationUpdate()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/model/DongleModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract observeParametersLastUpdate()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lio/reactivex/schedulers/Timed<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract observeTripStartInfo()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/carelib/care/trips/CurrentTrip;",
            ">;"
        }
    .end annotation
.end method

.method public abstract observeTripStopInfo()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/carelib/care/trips/CurrentTrip;",
            ">;"
        }
    .end annotation
.end method

.method public abstract observeVinCode()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract tripStartSmart()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/carelib/care/trips/CurrentTrip;",
            ">;"
        }
    .end annotation
.end method
