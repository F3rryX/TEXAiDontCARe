.class public Lcom/texa/careapp/model/CrashLogModel;
.super Lcom/activeandroid/Model;
.source "CrashLogModel.java"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "CrashLog"
.end annotation


# static fields
.field private static final COLUMN_FIRMWARE:Ljava/lang/String; = "firmware"

.field private static final COLUMN_HWID:Ljava/lang/String; = "hwid"

.field private static final COLUMN_RAW_DATA:Ljava/lang/String; = "rawData"

.field private static final COLUMN_REPORT_TYPE:Ljava/lang/String; = "reportType"

.field public static final COLUMN_SYNC_NEEDED:Ljava/lang/String; = "syncNeeded"

.field private static final COLUMN_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final REPORT_TYPE_CRASH:Ljava/lang/String; = "crash"

.field private static final REPORT_TYPE_CRASH_INVALID:Ljava/lang/String; = "crash_invalid"

.field private static final REPORT_TYPE_CRASH_VERBOSE:Ljava/lang/String; = "crash_verbose"

.field static final TABLE_CRASH_LOG:Ljava/lang/String; = "CrashLog"


# instance fields
.field firmware:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "firmware"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fw_version"
    .end annotation
.end field

.field hwid:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "hwid"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field rawData:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "rawData"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "raw_data"
    .end annotation
.end field

.field reportType:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "reportType"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "report_type"
    .end annotation
.end field

.field syncNeeded:Z
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "syncNeeded"
    .end annotation
.end field

.field timestamp:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "timestamp"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    return-void
.end method

.method public static from(Lcom/texa/carelib/care/impacts/CrashReport;Lcom/texa/careapp/model/DongleModel;Z)Lcom/texa/careapp/model/CrashLogModel;
    .locals 2

    .line 103
    new-instance v0, Lcom/texa/careapp/model/CrashLogModel;

    invoke-direct {v0}, Lcom/texa/careapp/model/CrashLogModel;-><init>()V

    .line 104
    invoke-virtual {p0}, Lcom/texa/carelib/care/impacts/CrashReport;->getTimeStamp()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/texa/careapp/model/CrashLogModel;->getUTCDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/CrashLogModel;->setTimestamp(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1}, Lcom/texa/careapp/model/DongleModel;->getHwid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/CrashLogModel;->setHwid(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1}, Lcom/texa/careapp/model/DongleModel;->getMainAppVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object p1

    invoke-static {p1}, Lcom/texa/carelib/core/utils/VersionFormatter;->formatLong(Lcom/texa/carelib/core/utils/FirmwareVersion;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/texa/careapp/model/CrashLogModel;->setFirmware(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/texa/carelib/care/impacts/CrashReport;->getRawData()[B

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/CrashLogModel;->setRawData(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string p0, "crash"

    goto :goto_0

    :cond_0
    const-string p0, "crash_invalid"

    .line 108
    :goto_0
    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/CrashLogModel;->setReportType(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 109
    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/CrashLogModel;->setSyncNeeded(Z)V

    return-object v0
.end method

.method public static from(Lcom/texa/carelib/care/impacts/VerboseCrashReport;Lcom/texa/careapp/model/DongleModel;)Lcom/texa/careapp/model/CrashLogModel;
    .locals 2

    .line 92
    new-instance v0, Lcom/texa/careapp/model/CrashLogModel;

    invoke-direct {v0}, Lcom/texa/careapp/model/CrashLogModel;-><init>()V

    .line 93
    invoke-virtual {p0}, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->getTimeStamp()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/texa/careapp/model/CrashLogModel;->getUTCDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/CrashLogModel;->setTimestamp(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1}, Lcom/texa/careapp/model/DongleModel;->getHwid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/CrashLogModel;->setHwid(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p1}, Lcom/texa/careapp/model/DongleModel;->getMainAppVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object p1

    invoke-static {p1}, Lcom/texa/carelib/core/utils/VersionFormatter;->formatLong(Lcom/texa/carelib/core/utils/FirmwareVersion;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/texa/careapp/model/CrashLogModel;->setFirmware(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->getRawData()[B

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/CrashLogModel;->setRawData(Ljava/lang/String;)V

    const-string p0, "crash_verbose"

    .line 97
    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/CrashLogModel;->setReportType(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 98
    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/CrashLogModel;->setSyncNeeded(Z)V

    return-object v0
.end method

.method public static getNotSyncedData()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/CrashLogModel;",
            ">;"
        }
    .end annotation

    .line 126
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/model/CrashLogModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 127
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "syncNeeded = ?"

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "hwid is not null"

    .line 128
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "firmware is not null"

    .line 129
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static getUTCDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_0

    .line 82
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 83
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "UTC"

    .line 84
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 85
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public getFirmware()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/texa/careapp/model/CrashLogModel;->firmware:Ljava/lang/String;

    return-object v0
.end method

.method public getHwid()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/texa/careapp/model/CrashLogModel;->hwid:Ljava/lang/String;

    return-object v0
.end method

.method public setFirmware(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/texa/careapp/model/CrashLogModel;->firmware:Ljava/lang/String;

    return-void
.end method

.method public setHwid(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/texa/careapp/model/CrashLogModel;->hwid:Ljava/lang/String;

    return-void
.end method

.method public setRawData(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/texa/careapp/model/CrashLogModel;->rawData:Ljava/lang/String;

    return-void
.end method

.method public setReportType(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/texa/careapp/model/CrashLogModel;->reportType:Ljava/lang/String;

    return-void
.end method

.method public setSyncNeeded(Z)V
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcom/texa/careapp/model/CrashLogModel;->syncNeeded:Z

    return-void
.end method

.method public setTimestamp(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/texa/careapp/model/CrashLogModel;->timestamp:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CrashLogModel{timestamp=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/model/CrashLogModel;->timestamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", reportType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/model/CrashLogModel;->reportType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", rawData=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/model/CrashLogModel;->rawData:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", hwid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/model/CrashLogModel;->hwid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", firmware=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/model/CrashLogModel;->firmware:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", syncNeeded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/texa/careapp/model/CrashLogModel;->syncNeeded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
