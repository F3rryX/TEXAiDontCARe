.class public interface abstract Lcom/texa/carelib/webservices/ServiceVehicleInfo;
.super Ljava/lang/Object;
.source "ServiceVehicleInfo.java"

# interfaces
.implements Lcom/texa/carelib/core/ObservableObject;


# static fields
.field public static final PROPERTY_STATUS:Ljava/lang/String; = "com.texa.carelib.webservices.ServiceVehicleInfo#PROPERTY_STATUS"

.field public static final PROPERTY_VEHICLES:Ljava/lang/String; = "com.texa.carelib.webservices.ServiceVehicleInfo#PROPERTY_VEHICLES"


# virtual methods
.method public abstract getStatus()Lcom/texa/carelib/webservices/ServiceVehicleInfoStatus;
.end method

.method public abstract getVehicles()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/texa/carelib/webservices/VehicleInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract loadVehicleInfo([Ljava/lang/String;[Ljava/util/Locale;Lcom/texa/carelib/core/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/util/Locale;",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/webservices/VehicleInfoLoadedEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method
