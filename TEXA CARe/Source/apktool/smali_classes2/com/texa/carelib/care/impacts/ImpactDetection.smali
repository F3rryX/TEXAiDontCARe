.class public interface abstract Lcom/texa/carelib/care/impacts/ImpactDetection;
.super Ljava/lang/Object;
.source "ImpactDetection.java"

# interfaces
.implements Lcom/texa/carelib/core/ObservableObject;


# static fields
.field public static final EXTRA_CRASH_ONE_SHOT:Ljava/lang/String; = "com.texa.carelib.care.impacts.ImpactDetection#EXTRA_CRASH_ONE_SHOT"

.field public static final EXTRA_CRASH_PERIOD:Ljava/lang/String; = "com.texa.carelib.care.impacts.ImpactDetection#EXTRA_CRASH_PERIOD"

.field public static final EXTRA_DUMP_REPORTS:Ljava/lang/String; = "com.texa.carelib.care.impacts.ImpactDetection#EXTRA_DUMP_REPORTS"

.field public static final PROPERTY_ACCELERATION_EVENTS:Ljava/lang/String; = "com.texa.carelib.care.impacts.ImpactDetection#PROPERTY_ACCELERATION_EVENTS"

.field public static final PROPERTY_ACCELERATION_EVENTS_LPM:Ljava/lang/String; = "com.texa.carelib.care.impacts.ImpactDetection#PROPERTY_ACCELERATION_EVENTS_LPM"

.field public static final PROPERTY_ENABLED:Ljava/lang/String; = "com.texa.carelib.care.impacts.ImpactDetection#PROPERTY_ENABLED"

.field public static final PROPERTY_IMPACTS:Ljava/lang/String; = "com.texa.carelib.care.impacts.ImpactDetection#PROPERTY_IMPACTS"

.field public static final PROPERTY_LAST_IMPACT:Ljava/lang/String; = "com.texa.carelib.care.impacts.ImpactDetection#PROPERTY_LAST_IMPACT"

.field public static final PROPERTY_SUPPORTED_FREQUENCIES:Ljava/lang/String; = "com.texa.carelib.care.impacts.ImpactDetection#PROPERTY_SUPPORTED_FREQUENCIES"


# virtual methods
.method public abstract addImpactDetectionListener(Lcom/texa/carelib/care/impacts/ImpactDetectionListener;)Lcom/texa/carelib/care/impacts/ImpactDetectionListener;
.end method

.method public abstract eraseImpacts(Lcom/texa/carelib/core/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/care/impacts/events/ImpactDataErasedEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method

.method public abstract getAccelerationEvents()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/impacts/CrashReport;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAccelerationEventsLPM()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/impacts/CrashReport;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getArguments()Landroid/os/Bundle;
.end method

.method public abstract getImpacts()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/impacts/Impact;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLastImpact()Lcom/texa/carelib/care/impacts/Impact;
.end method

.method public abstract getSupportedFrequencies()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVerboseReportSamplesCount()Ljava/lang/Long;
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract isReadingImpactData()Z
.end method

.method public abstract loadImpacts(Lcom/texa/carelib/care/impacts/ImpactDataDownloadListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method

.method public abstract removeImpactDetectionListener(Lcom/texa/carelib/care/impacts/ImpactDetectionListener;)V
.end method

.method public abstract simulateImpact(ILcom/texa/carelib/core/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/care/impacts/events/SimulateImpactCompletedEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method
