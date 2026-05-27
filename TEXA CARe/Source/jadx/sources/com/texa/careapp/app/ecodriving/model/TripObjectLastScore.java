package com.texa.careapp.app.ecodriving.model;

import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.texa.care.eco_driving.events.scoreevents.ScoreUpdateEvent;
import com.texa.careapp.app.ecodriving.serviceserializer.ScoreEntity;

/* JADX INFO: loaded from: classes2.dex */
@Table(name = TripObjectLastScore.TABLE_NAME)
public class TripObjectLastScore extends Model {
    public static final String COLUMN_ID_TRIP_OBJECT = "IdTripObject";
    public static final String COLUMN_SCORE = "Score";
    public static final String COLUMN_SCORE_TYPE = "ScoreType";
    public static final String COLUMN_UUID = "UUID";
    public static final String TABLE_NAME = "TripObjectLastScore";

    @Column(name = "Score")
    private Integer score;

    @Column(index = true, name = COLUMN_SCORE_TYPE, onUniqueConflicts = {Column.ConflictAction.REPLACE}, uniqueGroups = {"keys"})
    private Integer scoreType;

    @Column(name = "IdTripObject", onDelete = Column.ForeignKeyAction.CASCADE, uniqueGroups = {"key"})
    private TripObjectModel tripObject;

    @Column(index = true, name = "UUID", onUniqueConflicts = {Column.ConflictAction.REPLACE}, uniqueGroups = {"keys"})
    private String uuid;

    public Integer getScore() {
        return this.score;
    }

    public void setScore(Integer num) {
        this.score = num;
    }

    public Integer getScoreType() {
        return this.scoreType;
    }

    public void setScoreType(Integer num) {
        this.scoreType = num;
    }

    public static TripObjectLastScore from(ScoreUpdateEvent scoreUpdateEvent, TripObjectModel tripObjectModel) {
        TripObjectLastScore tripObjectLastScore = new TripObjectLastScore();
        tripObjectLastScore.uuid = tripObjectModel.getUuid();
        tripObjectLastScore.score = Integer.valueOf(scoreUpdateEvent.getScore());
        tripObjectLastScore.scoreType = Integer.valueOf(scoreUpdateEvent.getType().getNumericType());
        tripObjectLastScore.tripObject = tripObjectModel;
        return tripObjectLastScore;
    }

    public static TripObjectLastScore from(ScoreEntity scoreEntity, TripObjectModel tripObjectModel) {
        TripObjectLastScore tripObjectLastScore = new TripObjectLastScore();
        if (tripObjectModel != null) {
            tripObjectLastScore.uuid = tripObjectModel.getUuid();
            tripObjectLastScore.tripObject = tripObjectModel;
        }
        if (scoreEntity != null) {
            tripObjectLastScore.score = Integer.valueOf(scoreEntity.getValue());
            tripObjectLastScore.scoreType = Integer.valueOf(scoreEntity.getScoreType());
        }
        return tripObjectLastScore;
    }

    @Override // com.activeandroid.Model
    public String toString() {
        return "TripObjectLastScore{uuid='" + this.uuid + "', score=" + this.score + ", scoreType=" + this.scoreType + ", tripObject=" + this.tripObject + '}';
    }
}
