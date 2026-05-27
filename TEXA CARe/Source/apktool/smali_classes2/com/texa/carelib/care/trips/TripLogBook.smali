.class public interface abstract Lcom/texa/carelib/care/trips/TripLogBook;
.super Ljava/lang/Object;
.source "TripLogBook.java"

# interfaces
.implements Lcom/texa/carelib/core/ObservableObject;


# static fields
.field public static final EXTRA_DUMP_LOGBOOK:Ljava/lang/String; = "com.texa.carelib.care.trips.TripLogBook#EXTRA_DUMP_LOGBOOK"

.field public static final PROPERTY_TRIPS_INFO:Ljava/lang/String; = "com.texa.carelib.care.trips.TripLogBook#PROPERTY_TRIPS_INFO"


# virtual methods
.method public abstract eraseTripsInfo(Lcom/texa/carelib/core/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/care/trips/events/TripDataErasedEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method

.method public abstract getArguments()Landroid/os/Bundle;
.end method

.method public abstract getTripsInfo()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/trips/TripInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isErasingTripsInfo()Z
.end method

.method public abstract isReadingTripsInfo()Z
.end method

.method public abstract readTripsInfo(Lcom/texa/carelib/care/trips/TripDataDownloadListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method
