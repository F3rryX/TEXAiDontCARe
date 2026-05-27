.class public interface abstract Lcom/texa/carelib/core/utils/FileCache;
.super Ljava/lang/Object;
.source "FileCache.java"


# static fields
.field public static final DIR_CRASH_REPORTS:Ljava/lang/String; = "crash_reports"

.field public static final DIR_DIAGNOSIS_CONFIGURATION:Ljava/lang/String; = "diagnosis_configuration"

.field public static final DIR_ECU_PROGRAMMING_REPORT:Ljava/lang/String; = "ecu_programming_report"

.field public static final DIR_MISC:Ljava/lang/String; = "misc"

.field public static final DIR_TEMP:Ljava/lang/String; = "temp"

.field public static final DIR_TRIPS:Ljava/lang/String; = "trips"

.field public static final DIR_TRIP_DATA_LOGS:Ljava/lang/String; = "trip_data_logs"

.field public static final TAG:Ljava/lang/String; = "FileCache"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method


# virtual methods
.method public abstract clear()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract create(Ljava/lang/String;I)Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract create(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract delete(Ljava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getFile(Ljava/lang/String;)Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getFolder(Ljava/lang/String;)Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract store(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract store(Ljava/lang/String;Ljava/lang/String;[B)Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
