.class public interface abstract Lcom/texa/carelib/care/trips/CurrentTrip;
.super Ljava/lang/Object;
.source "CurrentTrip.java"

# interfaces
.implements Lcom/texa/carelib/core/ObservableObject;
.implements Lcom/texa/carelib/core/utils/CareStruct;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;
    }
.end annotation


# static fields
.field public static final PROPERTY_TRIP_BEGIN_INFO:Ljava/lang/String; = "com.texa.carelib.care.trips.CurrentTrip#TRIP_BEGIN_INFO"

.field public static final PROPERTY_TRIP_END_INFO:Ljava/lang/String; = "com.texa.carelib.care.trips.CurrentTrip#TRIP_END_INFO"

.field public static final PROPERTY_TRIP_ID:Ljava/lang/String; = "com.texa.carelib.care.trips.CurrentTrip#TRIP_ID"

.field public static final PROPERTY_TRIP_STATISTICS_INFO:Ljava/lang/String; = "com.texa.carelib.care.trips.CurrentTrip#TRIP_STATISTICS_INFO"

.field public static final PROPERTY_TRIP_STATUS:Ljava/lang/String; = "com.texa.carelib.care.trips.CurrentTrip#TRIP_STATUS"


# virtual methods
.method public abstract getArguments()Landroid/os/Bundle;
.end method

.method public abstract getTripBeginInfo()Lcom/texa/carelib/care/trips/TripBeginInfo;
.end method

.method public abstract getTripEndInfo()Lcom/texa/carelib/care/trips/TripEndInfo;
.end method

.method public abstract getTripID()Ljava/math/BigInteger;
.end method

.method public abstract getTripStatisticsInfo()Lcom/texa/carelib/care/trips/TripStatisticsInfo;
.end method

.method public abstract getTripStatus()Lcom/texa/carelib/care/trips/TripStatus;
.end method

.method public abstract loadTripInfo()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method

.method public abstract loadTripInfo(Ljava/util/EnumSet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method
