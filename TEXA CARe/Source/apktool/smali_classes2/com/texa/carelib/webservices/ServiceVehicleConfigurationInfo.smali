.class public interface abstract Lcom/texa/carelib/webservices/ServiceVehicleConfigurationInfo;
.super Ljava/lang/Object;
.source "ServiceVehicleConfigurationInfo.java"

# interfaces
.implements Lcom/texa/carelib/core/ObservableObject;


# static fields
.field public static final PROPERTY_STATUS:Ljava/lang/String; = "com.texa.carelib.webservices.ServiceVehicleConfigurationInfo#PROPERTY_STATUS"

.field public static final PROPERTY_VEHICLE_CONFIGURATION_STATUS:Ljava/lang/String; = "com.texa.carelib.webservices.ServiceVehicleConfigurationInfo#PROPERTY_VEHICLE_CONFIGURATION_STATUS"


# virtual methods
.method public abstract getStatus()Lcom/texa/carelib/webservices/ServiceVehicleConfigurationInfoStatus;
.end method

.method public abstract getVehicleConfigurationStatus()Lcom/texa/carelib/webservices/VehicleConfigurationStatus;
.end method

.method public abstract loadVehicleConfigurationInfo(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;Lcom/texa/carelib/core/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/math/BigInteger;",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/webservices/VehicleConfigurationInfoLoadedEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method
