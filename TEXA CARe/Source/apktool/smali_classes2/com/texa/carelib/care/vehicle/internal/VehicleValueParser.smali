.class public interface abstract Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;
.super Ljava/lang/Object;
.source "VehicleValueParser.java"


# virtual methods
.method public abstract getDataStatus([B)B
.end method

.method public abstract getDataType([B)Lcom/texa/carelib/care/vehicle/ValueDataType;
.end method

.method public abstract getDateTime([B[B)Lcom/texa/carelib/care/DateTime;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;
        }
    .end annotation
.end method

.method public abstract getEnumValue([B[B)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;
        }
    .end annotation
.end method

.method public abstract getParameterPrecision([B)I
.end method

.method public abstract getParameterValue([B[B)F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;
        }
    .end annotation
.end method

.method public abstract getTextValue([B[B)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;
        }
    .end annotation
.end method

.method public abstract isDateTime([B[B)Z
.end method

.method public abstract setDataStatus([BB)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;
        }
    .end annotation
.end method
