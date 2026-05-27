.class public Lcom/texa/careapp/app/ecodriving/model/TripObjectLastScore;
.super Lcom/activeandroid/Model;
.source "TripObjectLastScore.java"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "TripObjectLastScore"
.end annotation


# static fields
.field public static final COLUMN_ID_TRIP_OBJECT:Ljava/lang/String; = "IdTripObject"

.field public static final COLUMN_SCORE:Ljava/lang/String; = "Score"

.field public static final COLUMN_SCORE_TYPE:Ljava/lang/String; = "ScoreType"

.field public static final COLUMN_UUID:Ljava/lang/String; = "UUID"

.field public static final TABLE_NAME:Ljava/lang/String; = "TripObjectLastScore"


# instance fields
.field private score:Ljava/lang/Integer;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Score"
    .end annotation
.end field

.field private scoreType:Ljava/lang/Integer;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        index = true
        name = "ScoreType"
        onUniqueConflicts = {
            .enum Lcom/activeandroid/annotation/Column$ConflictAction;->REPLACE:Lcom/activeandroid/annotation/Column$ConflictAction;
        }
        uniqueGroups = {
            "keys"
        }
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

.field private uuid:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        index = true
        name = "UUID"
        onUniqueConflicts = {
            .enum Lcom/activeandroid/annotation/Column$ConflictAction;->REPLACE:Lcom/activeandroid/annotation/Column$ConflictAction;
        }
        uniqueGroups = {
            "keys"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    return-void
.end method

.method public static from(Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;)Lcom/texa/careapp/app/ecodriving/model/TripObjectLastScore;
    .locals 2

    .line 49
    new-instance v0, Lcom/texa/careapp/app/ecodriving/model/TripObjectLastScore;

    invoke-direct {v0}, Lcom/texa/careapp/app/ecodriving/model/TripObjectLastScore;-><init>()V

    .line 50
    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getUuid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/texa/careapp/app/ecodriving/model/TripObjectLastScore;->uuid:Ljava/lang/String;

    .line 51
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;->getScore()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/texa/careapp/app/ecodriving/model/TripObjectLastScore;->score:Ljava/lang/Integer;

    .line 52
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;->getType()Lcom/texa/care/eco_driving/score/ScoreType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/texa/care/eco_driving/score/ScoreType;->getNumericType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Lcom/texa/careapp/app/ecodriving/model/TripObjectLastScore;->scoreType:Ljava/lang/Integer;

    .line 53
    iput-object p1, v0, Lcom/texa/careapp/app/ecodriving/model/TripObjectLastScore;->tripObject:Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    return-object v0
.end method

.method public static from(Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;)Lcom/texa/careapp/app/ecodriving/model/TripObjectLastScore;
    .locals 2

    .line 60
    new-instance v0, Lcom/texa/careapp/app/ecodriving/model/TripObjectLastScore;

    invoke-direct {v0}, Lcom/texa/careapp/app/ecodriving/model/TripObjectLastScore;-><init>()V

    if-eqz p1, :cond_0

    .line 62
    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getUuid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/texa/careapp/app/ecodriving/model/TripObjectLastScore;->uuid:Ljava/lang/String;

    .line 63
    iput-object p1, v0, Lcom/texa/careapp/app/ecodriving/model/TripObjectLastScore;->tripObject:Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    :cond_0
    if-eqz p0, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcom/texa/careapp/app/ecodriving/model/TripObjectLastScore;->score:Ljava/lang/Integer;

    .line 67
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/serviceserializer/ScoreEntity;->getScoreType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Lcom/texa/careapp/app/ecodriving/model/TripObjectLastScore;->scoreType:Ljava/lang/Integer;

    :cond_1
    return-object v0
.end method


# virtual methods
.method public getScore()Ljava/lang/Integer;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectLastScore;->score:Ljava/lang/Integer;

    return-object v0
.end method

.method public getScoreType()Ljava/lang/Integer;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectLastScore;->scoreType:Ljava/lang/Integer;

    return-object v0
.end method

.method public setScore(Ljava/lang/Integer;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectLastScore;->score:Ljava/lang/Integer;

    return-void
.end method

.method public setScoreType(Ljava/lang/Integer;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectLastScore;->scoreType:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TripObjectLastScore{uuid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectLastScore;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", score="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectLastScore;->score:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scoreType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectLastScore;->scoreType:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tripObject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/model/TripObjectLastScore;->tripObject:Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
