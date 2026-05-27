.class public Lcom/texa/careapp/model/BatteryAnalyzeModel;
.super Lcom/activeandroid/Model;
.source "BatteryAnalyzeModel.java"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "BatteryAnalyze"
.end annotation


# static fields
.field public static final COLUMN_FIRMWARE:Ljava/lang/String; = "firmware"

.field public static final COLUMN_HWID:Ljava/lang/String; = "hwid"

.field public static final COLUMN_RAW_DATA:Ljava/lang/String; = "rawData"

.field public static final COLUMN_REPORT_TYPE:Ljava/lang/String; = "reportType"

.field public static final COLUMN_SYNC_NEEDED:Ljava/lang/String; = "syncNeeded"

.field public static final COLUMN_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final LOW_POWER_RECENT_HISTOGRAM:Ljava/lang/String; = "low_power_recent_histogram"

.field public static final LOW_POWER_TOTAL_HISTOGRAM:Ljava/lang/String; = "low_power_total_histogram"

.field public static final OPERATING_CRANK_REPORT:Ljava/lang/String; = "operating_crank_report"

.field public static final STANDBY_CRANK_REPORT:Ljava/lang/String; = "standby_crank_report"

.field public static final TABLE_BATTERY_ANALYZE:Ljava/lang/String; = "BatteryAnalyze"


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

    .line 22
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    return-void
.end method

.method public static getNotSyncedData()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/BatteryAnalyzeModel;",
            ">;"
        }
    .end annotation

    .line 84
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/model/BatteryAnalyzeModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 85
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "syncNeeded = ?"

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "firmware is not null"

    .line 86
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getFirmware()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/texa/careapp/model/BatteryAnalyzeModel;->firmware:Ljava/lang/String;

    return-object v0
.end method

.method public getHwid()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/texa/careapp/model/BatteryAnalyzeModel;->hwid:Ljava/lang/String;

    return-object v0
.end method

.method public setFirmware(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/texa/careapp/model/BatteryAnalyzeModel;->firmware:Ljava/lang/String;

    return-void
.end method

.method public setHwid(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/texa/careapp/model/BatteryAnalyzeModel;->hwid:Ljava/lang/String;

    return-void
.end method

.method public setRawData(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/texa/careapp/model/BatteryAnalyzeModel;->rawData:Ljava/lang/String;

    return-void
.end method

.method public setReportType(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/texa/careapp/model/BatteryAnalyzeModel;->reportType:Ljava/lang/String;

    return-void
.end method

.method public setSyncNeeded(Z)V
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/texa/careapp/model/BatteryAnalyzeModel;->syncNeeded:Z

    return-void
.end method

.method public setTimestamp(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/texa/careapp/model/BatteryAnalyzeModel;->timestamp:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BatteryAnalyzeModel{timestamp=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/model/BatteryAnalyzeModel;->timestamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", reportType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/model/BatteryAnalyzeModel;->reportType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", rawData=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/model/BatteryAnalyzeModel;->rawData:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", hwid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/model/BatteryAnalyzeModel;->hwid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", firmware=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/model/BatteryAnalyzeModel;->firmware:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", syncNeeded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/texa/careapp/model/BatteryAnalyzeModel;->syncNeeded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
