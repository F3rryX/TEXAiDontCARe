.class public Lcom/texa/careapp/app/ecodriving/model/EcoDrivingEventsDataManager;
.super Ljava/lang/Object;
.source "EcoDrivingEventsDataManager.java"


# static fields
.field public static INCREMENT_SCORE_TYPE:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/texa/careapp/app/ecodriving/model/EcoDrivingEventsDataManager;->INCREMENT_SCORE_TYPE:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearEcoDrivingData()V
    .locals 2

    .line 39
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    return-void
.end method

.method public static getBadEventTypeCount(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 332
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    .line 344
    sget-object p0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->DRIVING_START:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    .line 345
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x2

    aput-object p0, v1, v2

    sget-object p0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->DRIVING_STOP:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    .line 346
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x3

    aput-object p0, v1, v2

    sget-object p0, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->DRIVING_STOP_TEMP:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    .line 347
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x4

    aput-object p0, v1, v2

    .line 349
    invoke-static {}, Lcom/activeandroid/ActiveAndroid;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string v2, "SELECT TypeID FROM TripEvent LEFT JOIN TripObject ON TripEvent.IdTripObject = TripObject.id WHERE (TripObject.UUID = ? OR IdParent = ?) AND TypeID <> ?  AND TypeID <> ?  AND TypeID <> ? group by TypeID"

    invoke-virtual {p0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 350
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "TypeID"

    .line 352
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 354
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public static getDailyScoreList(JJZ)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJZ)",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;",
            ">;"
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "SELECT s.Score, t.UUID as tripId, (t.EndOdo - t.StartOdo) as distance, s.ScoreType,(SELECT SUM(EndTrip - StartTrip) FROM TripObject tob WHERE tob.UUID = t.UUID OR tob.IdParent = t.UUID AND tob.EndTrip > 0) as time FROM TripObjectLastScore s left join TripObject t on s.IdTripObject = t.id WHERE StartTrip >= ? AND StartTrip <= ? AND EndTrip > 0 AND (t.EndTrip > t.StartTrip OR t. EndTrip = 0)"

    if-eqz p4, :cond_0

    .line 79
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND s.ScoreType = "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/texa/care/eco_driving/score/ScoreType;->OVERALL:Lcom/texa/care/eco_driving/score/ScoreType;

    invoke-virtual {v1}, Lcom/texa/care/eco_driving/score/ScoreType;->getNumericType()I

    move-result v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 82
    :cond_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND s.Score >= 0"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " ORDER BY t.StartTrip DESC"

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 86
    invoke-static {}, Lcom/activeandroid/ActiveAndroid;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 87
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, p0

    .line 86
    invoke-virtual {v1, p4, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 89
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 91
    :cond_1
    new-instance p1, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;

    const-string p2, "ScoreType"

    .line 92
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string p2, "distance"

    .line 93
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getFloat(I)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string p2, "time"

    .line 94
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getFloat(I)F

    move-result p2

    const/high16 p3, 0x447a0000    # 1000.0f

    div-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string p2, "Score"

    .line 95
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    int-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string p2, "tripId"

    .line 96
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;-><init>(Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Double;Ljava/lang/String;)V

    .line 98
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-nez p1, :cond_1

    .line 100
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public static getOverallTripScoreList(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;",
            ">;"
        }
    .end annotation

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT s.Score, (t.EndOdo - t.StartOdo) as distance,t.UUID as tripId,  s.ScoreType,(SELECT SUM(EndTrip - StartTrip) FROM TripObject tob WHERE tob.UUID = t.UUID OR tob.IdParent = t.UUID AND tob.EndTrip > 0 AND tob.StartTrip > 0) as time FROM TripObjectLastScore s left join TripObject t on s.IdTripObject = t.id WHERE (t.UUID = ? OR t.IdParent = ?) AND (t.EndTrip > t.StartTrip OR t. EndTrip = 0 OR t. EndTrip IS NULL)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AND t.StartTrip > 0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND s.ScoreType = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/texa/care/eco_driving/score/ScoreType;->OVERALL:Lcom/texa/care/eco_driving/score/ScoreType;

    invoke-virtual {v1}, Lcom/texa/care/eco_driving/score/ScoreType;->getNumericType()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND s.Score >= 0"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ORDER BY t.StartTrip DESC"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v5, 0x1

    aput-object p0, v3, v5

    const-string v6, "TRIP SCORE LIST --> %s, TRIP: %s"

    .line 133
    invoke-static {v6, v3}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    invoke-static {}, Lcom/activeandroid/ActiveAndroid;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/String;

    aput-object p0, v2, v4

    aput-object p0, v2, v5

    invoke-virtual {v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 138
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    :cond_0
    new-instance v1, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;

    const-string v2, "ScoreType"

    .line 141
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v2, "distance"

    .line 142
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string v2, "time"

    .line 143
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const-string v2, "Score"

    .line 144
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const-string v2, "tripId"

    .line 145
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;-><init>(Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Double;Ljava/lang/String;)V

    .line 147
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public static getParentTrip(Ljava/lang/String;)Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;
    .locals 3

    .line 369
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "UUID = ?"

    .line 370
    invoke-virtual {v0, p0, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    .line 371
    invoke-virtual {p0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    return-object p0
.end method

.method public static getTips(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/model/HintModel;",
            ">;"
        }
    .end annotation

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 248
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 251
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v1, ""

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 252
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 254
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select * from Hint h where deleted = 0 AND type in ("

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") AND "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "countView"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " <= (select MIN("

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") from "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Hint"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " h1 where h1."

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "type"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " = h."

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") group by "

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 261
    invoke-static {}, Lcom/activeandroid/ActiveAndroid;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p0, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 262
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 264
    :cond_1
    new-instance v5, Lcom/texa/careapp/app/ecodriving/model/HintModel;

    invoke-direct {v5}, Lcom/texa/careapp/app/ecodriving/model/HintModel;-><init>()V

    const-string v6, "idHint"

    .line 265
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/texa/careapp/app/ecodriving/model/HintModel;->setIdHint(Ljava/lang/String;)V

    .line 266
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/texa/careapp/app/ecodriving/model/HintModel;->setCountView(I)V

    const-string v6, "deleted"

    .line 267
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v3, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v5, v6}, Lcom/texa/careapp/app/ecodriving/model/HintModel;->setDeleted(Z)V

    .line 268
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/texa/careapp/app/ecodriving/model/HintModel;->setType(I)V

    const-string v6, "imageUrl"

    .line 269
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/texa/careapp/app/ecodriving/model/HintModel;->setImageUrl(Ljava/lang/String;)V

    .line 270
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 272
    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v0
.end method

.method public static getTripEventsIncrementScoreByRideId(J)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;",
            ">;"
        }
    .end annotation

    .line 209
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 210
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v1, p1

    const-string p0, "IdTripObject = ?"

    invoke-virtual {v0, p0, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    const-string p1, "PreviousScore < Score"

    .line 211
    invoke-virtual {p0, p1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object p0

    const-string p1, "PreviousScore != -1"

    .line 212
    invoke-virtual {p0, p1}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TypeID = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/texa/care/eco_driving/score/ScoreType;->OVERALL:Lcom/texa/care/eco_driving/score/ScoreType;

    .line 213
    invoke-virtual {v0}, Lcom/texa/care/eco_driving/score/ScoreType;->getNumericType()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object p0

    const-string p1, "Timestamp"

    .line 214
    invoke-virtual {p0, p1}, Lcom/activeandroid/query/From;->orderBy(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object p0

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getTripGroup(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;",
            ">;"
        }
    .end annotation

    .line 203
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "IdParent = ?"

    .line 204
    invoke-virtual {v0, p0, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    const-string v0, "EndTrip"

    .line 205
    invoke-virtual {p0, v0}, Lcom/activeandroid/query/From;->orderBy(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object p0

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getTripScoreList(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;",
            ">;"
        }
    .end annotation

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT s.Score, (t.EndOdo - t.StartOdo) as distance,t.UUID as tripId,  s.ScoreType,(SELECT SUM(EndTrip - StartTrip) FROM TripObject tob WHERE tob.UUID = t.UUID OR tob.IdParent = t.UUID) as time FROM TripObjectLastScore s left join TripObject t on s.IdTripObject = t.id WHERE (t.UUID = ? OR t.IdParent = ?) AND (t.EndTrip > t.StartTrip OR t. EndTrip = 0 OR t. EndTrip IS NULL)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AND t.StartTrip > 0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND s.Score >= 0"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ORDER BY t.StartTrip DESC"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v5, 0x1

    aput-object p0, v3, v5

    const-string v6, "TRIP SCORE LIST --> %s, TRIP: %s"

    .line 181
    invoke-static {v6, v3}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    invoke-static {}, Lcom/activeandroid/ActiveAndroid;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/String;

    aput-object p0, v2, v4

    aput-object p0, v2, v5

    invoke-virtual {v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 186
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    :cond_0
    new-instance v1, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;

    const-string v2, "ScoreType"

    .line 189
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v2, "distance"

    .line 190
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string v2, "time"

    .line 191
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const-string v2, "Score"

    .line 192
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const-string v2, "tripId"

    .line 193
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;-><init>(Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Double;Ljava/lang/String;)V

    .line 195
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 197
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public static getTrips(JJ)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 49
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, v2, p3

    const-string p2, "StartTrip <= ?"

    invoke-virtual {v0, p2, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    .line 50
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v0, p3

    const-string p0, "StartTrip >= ?"

    invoke-virtual {p2, p0, v0}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    const-string p1, "(IdParent IS NULL"

    .line 51
    invoke-virtual {p0, p1}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object p0

    const-string p1, "IdParent = \'\')"

    .line 52
    invoke-virtual {p0, p1}, Lcom/activeandroid/query/From;->or(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object p0

    const-string p1, "StartTrip"

    .line 53
    invoke-virtual {p0, p1}, Lcom/activeandroid/query/From;->orderBy(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object p0

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getUnSyncTrips()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;",
            ">;"
        }
    .end annotation

    .line 233
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 234
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "SyncNeeded = ?"

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    .line 237
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    .line 238
    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getTripEventsUnsync()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->setUnsyncEventSnapshot(Ljava/util/List;)V

    .line 239
    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getTripScores()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->setUnsyncScoreUpdateSnapshot(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getUpdatedTrip(Ljava/lang/String;)Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;
    .locals 3

    .line 43
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "UUID = ?"

    .line 44
    invoke-virtual {v0, p0, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    return-object p0
.end method

.method public static getVehicle(Ljava/lang/String;)Lcom/texa/careapp/model/VehicleModel;
    .locals 3

    .line 229
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string/jumbo p0, "uid = ?"

    invoke-virtual {v0, p0, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/model/VehicleModel;

    return-object p0
.end method

.method public static hideAndSyncTrip(Ljava/lang/String;)V
    .locals 5

    .line 223
    new-instance v0, Lcom/activeandroid/query/Update;

    const-class v1, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-direct {v0, v1}, Lcom/activeandroid/query/Update;-><init>(Ljava/lang/Class;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x1

    .line 224
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    aput-object v3, v1, v2

    const-string v3, "Hidden = ?,SyncNeeded = ?"

    .line 223
    invoke-virtual {v0, v3, v1}, Lcom/activeandroid/query/Update;->set(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/Set;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p0, v1, v4

    const-string p0, "UUID = ?"

    .line 225
    invoke-virtual {v0, p0, v1}, Lcom/activeandroid/query/Set;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/Set;

    move-result-object p0

    invoke-virtual {p0}, Lcom/activeandroid/query/Set;->execute()V

    return-void
.end method

.method public static hideTrip(Ljava/lang/String;)V
    .locals 5

    .line 218
    new-instance v0, Lcom/activeandroid/query/Update;

    const-class v1, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-direct {v0, v1}, Lcom/activeandroid/query/Update;-><init>(Ljava/lang/Class;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Hidden = ?"

    invoke-virtual {v0, v3, v2}, Lcom/activeandroid/query/Update;->set(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/Set;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    const-string p0, "UUID = ?"

    .line 219
    invoke-virtual {v0, p0, v1}, Lcom/activeandroid/query/Set;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/Set;

    move-result-object p0

    invoke-virtual {p0}, Lcom/activeandroid/query/Set;->execute()V

    return-void
.end method

.method public static incrementHintCountView(Lcom/texa/careapp/app/ecodriving/model/HintModel;)V
    .locals 5

    .line 360
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/model/HintModel;->getCountView()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/ecodriving/model/HintModel;->setCountView(I)V

    .line 362
    new-instance v0, Lcom/activeandroid/query/Update;

    const-class v2, Lcom/texa/careapp/app/ecodriving/model/HintModel;

    invoke-direct {v0, v2}, Lcom/activeandroid/query/Update;-><init>(Ljava/lang/Class;)V

    new-array v2, v1, [Ljava/lang/Object;

    .line 363
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/model/HintModel;->getCountView()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "countView = ?"

    invoke-virtual {v0, v3, v2}, Lcom/activeandroid/query/Update;->set(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/Set;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 364
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/model/HintModel;->getIdHint()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v4

    const-string p0, "idHint = ?"

    invoke-virtual {v0, p0, v1}, Lcom/activeandroid/query/Set;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/Set;

    move-result-object p0

    .line 365
    invoke-virtual {p0}, Lcom/activeandroid/query/Set;->execute()V

    return-void
.end method

.method public static saveTripObject(Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;Lcom/texa/careapp/model/UserModel;)Z
    .locals 4

    .line 280
    invoke-static {p0, p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->from(Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;Lcom/texa/careapp/model/UserModel;)Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 284
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 291
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->from(Ljava/lang/String;)Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    move-result-object p1

    .line 293
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getEvents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;

    .line 294
    invoke-static {v2, p1}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->from(Lcom/texa/careapp/app/ecodriving/serviceserializer/EventsEntity;Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;)Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 297
    :try_start_1
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J
    :try_end_1
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 299
    invoke-virtual {p0}, Lcom/texa/careapp/exceptions/DatabaseIOException;->printStackTrace()V

    :cond_1
    return v0

    .line 306
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 307
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;->getScores()Ljava/util/List;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 309
    new-instance p0, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripScoreEntityComparator;

    invoke-direct {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripScoreEntityComparator;-><init>()V

    invoke-virtual {p0, v1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripScoreEntityComparator;->sort(Ljava/util/List;)V

    .line 311
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;

    .line 312
    invoke-static {v1, p1}, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->from(Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;)Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 315
    invoke-static {v1, p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectLastScore;->from(Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;)Lcom/texa/careapp/app/ecodriving/model/TripObjectLastScore;

    move-result-object v1

    .line 317
    :try_start_2
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J

    .line 318
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J
    :try_end_2
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 320
    invoke-virtual {p0}, Lcom/texa/careapp/exceptions/DatabaseIOException;->printStackTrace()V

    :cond_3
    return v0

    :cond_4
    const/4 p0, 0x1

    return p0

    :catch_2
    move-exception p0

    .line 286
    invoke-virtual {p0}, Lcom/texa/careapp/exceptions/DatabaseIOException;->printStackTrace()V

    return v0
.end method
