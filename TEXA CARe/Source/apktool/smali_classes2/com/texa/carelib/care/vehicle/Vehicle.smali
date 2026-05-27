.class public interface abstract Lcom/texa/carelib/care/vehicle/Vehicle;
.super Ljava/lang/Object;
.source "Vehicle.java"

# interfaces
.implements Lcom/texa/carelib/core/ObservableObject;


# static fields
.field public static final ONE_SHOT_READ:Ljava/lang/Long;

.field public static final PROPERTY_ACTIVE_SUBSCRIPTION_COUNT:Ljava/lang/String; = "com.texa.carelib.care.vehicle.Vehicle#PROPERTY_ACTIVE_SUBSCRIPTION_COUNT"

.field public static final PROPERTY_AVAILABLE_DATA_IDS:Ljava/lang/String; = "com.texa.carelib.care.vehicle.PROPERTY_AVAILABLE_DATA_IDS"

.field public static final PROPERTY_MAXIMUM_SUBSCRIPTION_COUNT:Ljava/lang/String; = "com.texa.carelib.care.vehicle.Vehicle#PROPERTY_MAXIMUM_SUBSCRIPTION_COUNT"

.field public static final PROPERTY_SUPPORTED_DATA_IDS:Ljava/lang/String; = "com.texa.carelib.care.vehicle.Vehicle#PROPERTY_SUPPORTED_DATA_IDS"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0xffffffffL

    .line 46
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/texa/carelib/care/vehicle/Vehicle;->ONE_SHOT_READ:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public abstract addVehicleListener(Lcom/texa/carelib/care/vehicle/VehicleListener;)Lcom/texa/carelib/care/vehicle/VehicleListener;
.end method

.method public abstract beginUpdateValues(JLjava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method

.method public varargs abstract beginUpdateValues(J[Ljava/lang/Long;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method

.method public abstract endUpdateValues(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method

.method public varargs abstract endUpdateValues([Ljava/lang/Long;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method

.method public abstract getActiveSubscriptionCount()Ljava/lang/Integer;
.end method

.method public abstract getAvailableDataIDs()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDateLastUpdate(J)Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;
        }
    .end annotation
.end method

.method public abstract getDateTimeValue(Ljava/lang/Long;)Lcom/texa/carelib/care/DateTime;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;
        }
    .end annotation
.end method

.method public abstract getEnumValue(Ljava/lang/Long;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;
        }
    .end annotation
.end method

.method public abstract getFormattedNumericValue(Ljava/lang/Long;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;
        }
    .end annotation
.end method

.method public abstract getMaximumSubscriptionCount()Ljava/lang/Integer;
.end method

.method public abstract getNumericValue(Ljava/lang/Long;)D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;
        }
    .end annotation
.end method

.method public abstract getPrecision(Ljava/lang/Long;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;
        }
    .end annotation
.end method

.method public abstract getSubscriptionInterval(Ljava/lang/Long;)Ljava/lang/Long;
.end method

.method public abstract getSubscriptionState(Ljava/lang/Long;)Lcom/texa/carelib/care/vehicle/SubscriptionState;
.end method

.method public abstract getSupportedDataIDs()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTextValue(Ljava/lang/Long;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;
        }
    .end annotation
.end method

.method public abstract getValueInfo(Ljava/lang/Long;)Lcom/texa/carelib/care/vehicle/ValueInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;
        }
    .end annotation
.end method

.method public abstract isAvailable(Ljava/lang/Long;)Z
.end method

.method public abstract loadAvailableDataIDs()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method

.method public abstract loadValues(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method

.method public varargs abstract loadValues([Ljava/lang/Long;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method

.method public abstract removeVehicleListener(Lcom/texa/carelib/care/vehicle/VehicleListener;)V
.end method
