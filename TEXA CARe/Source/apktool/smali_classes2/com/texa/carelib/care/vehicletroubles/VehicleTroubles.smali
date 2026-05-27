.class public interface abstract Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;
.super Ljava/lang/Object;
.source "VehicleTroubles.java"

# interfaces
.implements Lcom/texa/carelib/core/ObservableObject;


# static fields
.field public static final EXTRA_FILTER_UNKNOWN_DTC:Ljava/lang/String; = "EXTRA_FILTER_UNKNOWN_DTC"

.field public static final ONE_SHOT_READ:Ljava/lang/Long;

.field public static final PROPERTY_ACTIVE_SUBSCRIPTION_COUNT:Ljava/lang/String; = "com.texa.carelib.care.vehicletroubles.VehicleTroubles#PROPERTY_ACTIVE_SUBSCRIPTION_COUNT"

.field public static final PROPERTY_DTCS:Ljava/lang/String; = "com.texa.carelib.care.vehicletroubles.VehicleTroubles#PROPERTY_DTCS"

.field public static final PROPERTY_DTC_TRANSLATION_PROGRESS:Ljava/lang/String; = "com.texa.carelib.care.vehicletroubles.VehicleTroubles#PROPERTY_DTC_TRANSLATION_PROGRESS"

.field public static final PROPERTY_ECU_COUNT:Ljava/lang/String; = "com.texa.carelib.care.vehicletroubles.VehicleTroubles#PROPERTY_ECU_COUNT"

.field public static final PROPERTY_ECU_SCAN_PROGRESS:Ljava/lang/String; = "com.texa.carelib.care.vehicletroubles.VehicleTroubles#PROPERTY_ECU_SCAN_PROGRESS"

.field public static final PROPERTY_MAXIMUM_SUBSCRIPTION_COUNT:Ljava/lang/String; = "com.texa.carelib.care.vehicletroubles.VehicleTroubles#PROPERTY_MAXIMUM_SUBSCRIPTION_COUNT"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0xffffffffL

    .line 70
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;->ONE_SHOT_READ:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public abstract addVehicleTroublesListener(Lcom/texa/carelib/care/vehicletroubles/VehicleTroublesListener;)Lcom/texa/carelib/care/vehicletroubles/VehicleTroublesListener;
.end method

.method public abstract beginUpdateDTCs(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method

.method public abstract endUpdateDTCs()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method

.method public abstract getActiveSubscriptionCount()Ljava/lang/Integer;
.end method

.method public abstract getArguments()Landroid/os/Bundle;
.end method

.method public abstract getDTCTranslationProgress()F
.end method

.method public abstract getDTCTranslator()Lcom/texa/carelib/care/vehicletroubles/DTCTranslator;
.end method

.method public abstract getDTCs()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/vehicletroubles/DTC;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getECUCount()I
.end method

.method public abstract getECUScanProgress()F
.end method

.method public abstract getMaximumSubscriptionCount()Ljava/lang/Integer;
.end method

.method public abstract loadDTCs()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method

.method public abstract removeVehicleTroublesListener(Lcom/texa/carelib/care/vehicletroubles/VehicleTroublesListener;)V
.end method

.method public abstract setDTCTranslator(Lcom/texa/carelib/care/vehicletroubles/DTCTranslator;)V
.end method

.method public abstract updateDTC(Ljava/util/List;JLcom/texa/carelib/core/CareError;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/vehicletroubles/DTC;",
            ">;J",
            "Lcom/texa/carelib/core/CareError;",
            ")V"
        }
    .end annotation
.end method
