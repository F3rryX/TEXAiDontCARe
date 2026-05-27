.class public Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;
.super Lcom/activeandroid/Model;
.source "TripScoreUpdateModel.java"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "TripScore"
.end annotation


# static fields
.field public static final COLUMN_DATA_TYPE:Ljava/lang/String; = "DataType"

.field public static final COLUMN_DATA_VERSION:Ljava/lang/String; = "DataVersion"

.field public static final COLUMN_HIDDEN:Ljava/lang/String; = "Hidden"

.field public static final COLUMN_ID_EVENT:Ljava/lang/String; = "UUID"

.field public static final COLUMN_ID_TRIP_OBJECT:Ljava/lang/String; = "IdTripObject"

.field private static final COLUMN_LAST_MOD:Ljava/lang/String; = "lastMod"

.field public static final COLUMN_ODOMETER:Ljava/lang/String; = "Odometer"

.field public static final COLUMN_PREVIOUS_SCORE:Ljava/lang/String; = "PreviousScore"

.field public static final COLUMN_SCORE:Ljava/lang/String; = "Score"

.field public static final COLUMN_SCORE_TYPE:Ljava/lang/String; = "TypeID"

.field public static final COLUMN_SYNC_NEEDED:Ljava/lang/String; = "SyncNeeded"

.field public static final COLUMN_TIMESTAMP:Ljava/lang/String; = "Timestamp"

.field private static final DATA_TYPE:Ljava/lang/String; = "SCORE_UPDATE"

.field public static final TABLE_NAME:Ljava/lang/String; = "TripScore"


# instance fields
.field private dataType:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "DataType"
    .end annotation
.end field

.field private dataVersion:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "DataVersion"
    .end annotation
.end field

.field private hidden:Z
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Hidden"
    .end annotation
.end field

.field private lastMod:Ljava/util/Date;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "lastMod"
    .end annotation
.end field

.field private odometer:Ljava/lang/Float;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Odometer"
    .end annotation
.end field

.field private previousScore:Ljava/lang/Integer;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "PreviousScore"
    .end annotation
.end field

.field private score:Ljava/lang/Integer;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Score"
    .end annotation
.end field

.field private syncNeeded:Z
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "SyncNeeded"
    .end annotation
.end field

.field private timestamp:J
    .annotation runtime Lcom/activeandroid/annotation/Column;
        index = true
        name = "Timestamp"
    .end annotation
.end field

.field private tripObject:Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "IdTripObject"
        onDelete = .enum Lcom/activeandroid/annotation/Column$ForeignKeyAction;->CASCADE:Lcom/activeandroid/annotation/Column$ForeignKeyAction;
        uniqueGroups = {
            "key"
        }
    .end annotation
.end field

.field private typeId:Ljava/lang/Integer;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        index = true
        name = "TypeID"
    .end annotation
.end field

.field private uuid:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "UUID"
        onUniqueConflict = .enum Lcom/activeandroid/annotation/Column$ConflictAction;->REPLACE:Lcom/activeandroid/annotation/Column$ConflictAction;
        unique = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 27
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    .line 91
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->lastMod:Ljava/util/Date;

    return-void
.end method

.method public static from(Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;)Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;
    .locals 3

    .line 97
    new-instance v0, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;

    invoke-direct {v0}, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;-><init>()V

    .line 99
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;->getUuid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->uuid:Ljava/lang/String;

    .line 100
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;->getType()Lcom/texa/care/eco_driving/score/ScoreType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/care/eco_driving/score/ScoreType;->getNumericType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->typeId:Ljava/lang/Integer;

    .line 101
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;->getTimestamp()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->timestamp:J

    .line 102
    iput-object p1, v0, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->tripObject:Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    .line 104
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;->getPrevScore()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->previousScore:Ljava/lang/Integer;

    .line 105
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;->getScore()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->score:Ljava/lang/Integer;

    .line 106
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;->getOdometer()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iput-object p0, v0, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->odometer:Ljava/lang/Float;

    const-string p0, "SCORE_UPDATE"

    .line 107
    iput-object p0, v0, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->dataType:Ljava/lang/String;

    const/4 p0, 0x1

    .line 108
    iput-boolean p0, v0, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->syncNeeded:Z

    .line 109
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    iput-object p0, v0, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->lastMod:Ljava/util/Date;

    return-object v0
.end method

.method public static from(Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;)Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 116
    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getId()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 117
    new-instance v2, Lcom/activeandroid/query/Select;

    invoke-direct {v2}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v3, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;

    invoke-virtual {v2, v3}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 118
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "UUID = ?"

    invoke-virtual {v2, v5, v4}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    .line 119
    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getId()Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "IdTripObject = ?"

    invoke-virtual {v2, v4, v3}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v2

    invoke-virtual {v2}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v2

    check-cast v2, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    if-nez v2, :cond_1

    .line 122
    new-instance v2, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;

    invoke-direct {v2}, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;-><init>()V

    .line 123
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->getModifiedAt()Ljava/util/Date;

    move-result-object v0

    iput-object v0, v2, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->lastMod:Ljava/util/Date;

    .line 124
    iput-boolean v1, v2, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->syncNeeded:Z

    goto :goto_1

    .line 126
    :cond_1
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->getModifiedAt()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->lastMod:Ljava/util/Date;

    .line 127
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->getModifiedAt()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v0

    .line 130
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->uuid:Ljava/lang/String;

    .line 131
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->getScoreType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->typeId:Ljava/lang/Integer;

    .line 132
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->getTimestampMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->timestamp:J

    .line 133
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->getPreviousValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->previousScore:Ljava/lang/Integer;

    .line 134
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->score:Ljava/lang/Integer;

    .line 135
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->getOdometer()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, v2, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->odometer:Ljava/lang/Float;

    .line 136
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->isHidden()Z

    move-result v0

    iput-boolean v0, v2, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->hidden:Z

    .line 137
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->getDataVersion()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->dataVersion:Ljava/lang/String;

    const-string p0, "SCORE_UPDATE"

    .line 138
    iput-object p0, v2, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->dataType:Ljava/lang/String;

    .line 139
    iput-object p1, v2, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->tripObject:Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    .line 140
    iput-boolean v1, v2, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->syncNeeded:Z

    return-object v2
.end method

.method private getLastSavedMod()Ljava/util/Date;
    .locals 4

    .line 176
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;

    .line 177
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 178
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->getId()Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "TripScore.id = ?"

    invoke-virtual {v0, v2, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;

    .line 181
    invoke-virtual {v0}, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->getLastMod()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDataType()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->dataType:Ljava/lang/String;

    return-object v0
.end method

.method public getDataVersion()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->dataVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getLastMod()Ljava/util/Date;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->lastMod:Ljava/util/Date;

    return-object v0
.end method

.method public getOdometer()Ljava/lang/Float;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->odometer:Ljava/lang/Float;

    return-object v0
.end method

.method public getPreviousScore()Ljava/lang/Integer;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->previousScore:Ljava/lang/Integer;

    return-object v0
.end method

.method public getScore()Ljava/lang/Integer;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->score:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->timestamp:J

    return-wide v0
.end method

.method public getTypeId()Ljava/lang/Integer;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->typeId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public isHidden()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->hidden:Z

    return v0
.end method

.method public saveAsSynced()Z
    .locals 2

    .line 164
    invoke-direct {p0}, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->getLastSavedMod()Ljava/util/Date;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->lastMod:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 165
    :cond_0
    iput-boolean v1, p0, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->syncNeeded:Z

    .line 166
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->lastMod:Ljava/util/Date;

    .line 168
    :try_start_0
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    return v1
.end method

.method public setDataVersion(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->dataVersion:Ljava/lang/String;

    return-void
.end method

.method public setTypeId(Ljava/lang/Integer;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->typeId:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TripScoreUpdateModel{uuid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", typeId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->typeId:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", timestamp="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->timestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", previousScore="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->previousScore:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", score="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->score:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", odometer="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->odometer:Ljava/lang/Float;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", hidden="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->hidden:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", dataVersion=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->dataVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", dataType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->dataType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", tripObject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->tripObject:Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", syncNeeded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->syncNeeded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
