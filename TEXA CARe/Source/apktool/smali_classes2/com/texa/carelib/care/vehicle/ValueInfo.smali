.class public interface abstract Lcom/texa/carelib/care/vehicle/ValueInfo;
.super Ljava/lang/Object;
.source "ValueInfo.java"


# virtual methods
.method public abstract getDataStatus()B
.end method

.method public abstract getDateLastUpdate()Ljava/util/Date;
.end method

.method public abstract getID()J
.end method

.method public abstract getPrecision()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;
        }
    .end annotation
.end method

.method public abstract getSubscriptionInterval()Ljava/lang/Long;
.end method

.method public abstract getSubscriptionState()Lcom/texa/carelib/care/vehicle/SubscriptionState;
.end method

.method public abstract getType()Lcom/texa/carelib/care/vehicle/ValueDataType;
.end method

.method public abstract isAvailable()Z
.end method

.method public abstract toDateTimeValue()Lcom/texa/carelib/care/DateTime;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;
        }
    .end annotation
.end method

.method public abstract toEnumValue()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;
        }
    .end annotation
.end method

.method public abstract toFormattedNumericValue()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;
        }
    .end annotation
.end method

.method public abstract toNumericValue()D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;
        }
    .end annotation
.end method

.method public abstract toNumericValue(I)D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;
        }
    .end annotation
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public abstract toTextValue()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;
        }
    .end annotation
.end method
