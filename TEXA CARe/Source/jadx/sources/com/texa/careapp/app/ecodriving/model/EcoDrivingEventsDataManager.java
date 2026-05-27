package com.texa.careapp.app.ecodriving.model;

import android.database.Cursor;
import com.activeandroid.ActiveAndroid;
import com.activeandroid.Cache;
import com.activeandroid.query.Delete;
import com.activeandroid.query.Select;
import com.activeandroid.query.Update;
import com.texa.care.eco_driving.events.drivingevents.DrivingEventType;
import com.texa.care.eco_driving.score.ScoreType;
import com.texa.careapp.app.ecodriving.serviceserializer.EventsEntity;
import com.texa.careapp.app.ecodriving.serviceserializer.ScoreEntity;
import com.texa.careapp.app.ecodriving.serviceserializer.TripObjectEntity;
import com.texa.careapp.app.ecodriving.serviceserializer.TripScoreEntityComparator;
import com.texa.careapp.app.ecodriving.utils.EcoDrivingScore;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.model.UserModel;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.utils.Utils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class EcoDrivingEventsDataManager {
    public static Integer INCREMENT_SCORE_TYPE = -1;

    public static void clearEcoDrivingData() {
        new Delete().from(TripObjectModel.class).execute();
    }

    public static TripObjectModel getUpdatedTrip(String str) {
        return (TripObjectModel) new Select().from(TripObjectModel.class).where("UUID = ?", str).executeSingle();
    }

    public static List<TripObjectModel> getTrips(long j, long j2) {
        return new Select().from(TripObjectModel.class).where("StartTrip <= ?", Long.valueOf(j2)).and("StartTrip >= ?", Long.valueOf(j)).and("(IdParent IS NULL").or("IdParent = '')").orderBy(TripObjectModel.COLUMN_START_TRIP).execute();
    }

    public static List<EcoDrivingScore> getDailyScoreList(long j, long j2, boolean z) {
        ArrayList arrayList = new ArrayList();
        String str = "SELECT s.Score, t.UUID as tripId, (t.EndOdo - t.StartOdo) as distance, s.ScoreType,(SELECT SUM(EndTrip - StartTrip) FROM TripObject tob WHERE tob.UUID = t.UUID OR tob.IdParent = t.UUID AND tob.EndTrip > 0) as time FROM TripObjectLastScore s left join TripObject t on s.IdTripObject = t.id WHERE StartTrip >= ? AND StartTrip <= ? AND EndTrip > 0 AND (t.EndTrip > t.StartTrip OR t. EndTrip = 0)";
        if (z) {
            str = "SELECT s.Score, t.UUID as tripId, (t.EndOdo - t.StartOdo) as distance, s.ScoreType,(SELECT SUM(EndTrip - StartTrip) FROM TripObject tob WHERE tob.UUID = t.UUID OR tob.IdParent = t.UUID AND tob.EndTrip > 0) as time FROM TripObjectLastScore s left join TripObject t on s.IdTripObject = t.id WHERE StartTrip >= ? AND StartTrip <= ? AND EndTrip > 0 AND (t.EndTrip > t.StartTrip OR t. EndTrip = 0) AND s.ScoreType = " + ScoreType.OVERALL.getNumericType();
        }
        Cursor cursorRawQuery = ActiveAndroid.getDatabase().rawQuery((str + " AND s.Score >= 0") + " ORDER BY t.StartTrip DESC", new String[]{String.valueOf(j), String.valueOf(j2)});
        if (cursorRawQuery.moveToFirst()) {
            do {
                arrayList.add(new EcoDrivingScore(Integer.valueOf(cursorRawQuery.getInt(cursorRawQuery.getColumnIndex(TripObjectLastScore.COLUMN_SCORE_TYPE))), Float.valueOf(cursorRawQuery.getFloat(cursorRawQuery.getColumnIndex("distance"))), Float.valueOf(cursorRawQuery.getFloat(cursorRawQuery.getColumnIndex("time")) / 1000.0f), Double.valueOf(cursorRawQuery.getInt(cursorRawQuery.getColumnIndex("Score"))), cursorRawQuery.getString(cursorRawQuery.getColumnIndex("tripId"))));
            } while (cursorRawQuery.moveToNext());
        }
        cursorRawQuery.close();
        return arrayList;
    }

    public static List<EcoDrivingScore> getOverallTripScoreList(String str) {
        ArrayList arrayList = new ArrayList();
        String str2 = ((("SELECT s.Score, (t.EndOdo - t.StartOdo) as distance,t.UUID as tripId,  s.ScoreType,(SELECT SUM(EndTrip - StartTrip) FROM TripObject tob WHERE tob.UUID = t.UUID OR tob.IdParent = t.UUID AND tob.EndTrip > 0 AND tob.StartTrip > 0) as time FROM TripObjectLastScore s left join TripObject t on s.IdTripObject = t.id WHERE (t.UUID = ? OR t.IdParent = ?) AND (t.EndTrip > t.StartTrip OR t. EndTrip = 0 OR t. EndTrip IS NULL) AND t.StartTrip > 0 ") + " AND s.ScoreType = " + ScoreType.OVERALL.getNumericType()) + " AND s.Score >= 0") + " ORDER BY t.StartTrip DESC";
        Timber.i("TRIP SCORE LIST --> %s, TRIP: %s", str2, str);
        Cursor cursorRawQuery = ActiveAndroid.getDatabase().rawQuery(str2, new String[]{str, str});
        if (cursorRawQuery.moveToFirst()) {
            do {
                arrayList.add(new EcoDrivingScore(Integer.valueOf(cursorRawQuery.getInt(cursorRawQuery.getColumnIndex(TripObjectLastScore.COLUMN_SCORE_TYPE))), Float.valueOf(cursorRawQuery.getFloat(cursorRawQuery.getColumnIndex("distance"))), Float.valueOf(cursorRawQuery.getFloat(cursorRawQuery.getColumnIndex("time")) / 1000.0f), Double.valueOf(cursorRawQuery.getInt(cursorRawQuery.getColumnIndex("Score"))), cursorRawQuery.getString(cursorRawQuery.getColumnIndex("tripId"))));
            } while (cursorRawQuery.moveToNext());
        }
        cursorRawQuery.close();
        return arrayList;
    }

    public static List<EcoDrivingScore> getTripScoreList(String str) {
        ArrayList arrayList = new ArrayList();
        String str2 = (("SELECT s.Score, (t.EndOdo - t.StartOdo) as distance,t.UUID as tripId,  s.ScoreType,(SELECT SUM(EndTrip - StartTrip) FROM TripObject tob WHERE tob.UUID = t.UUID OR tob.IdParent = t.UUID) as time FROM TripObjectLastScore s left join TripObject t on s.IdTripObject = t.id WHERE (t.UUID = ? OR t.IdParent = ?) AND (t.EndTrip > t.StartTrip OR t. EndTrip = 0 OR t. EndTrip IS NULL) AND t.StartTrip > 0 ") + " AND s.Score >= 0") + " ORDER BY t.StartTrip DESC";
        Timber.i("TRIP SCORE LIST --> %s, TRIP: %s", str2, str);
        Cursor cursorRawQuery = ActiveAndroid.getDatabase().rawQuery(str2, new String[]{str, str});
        if (cursorRawQuery.moveToFirst()) {
            do {
                arrayList.add(new EcoDrivingScore(Integer.valueOf(cursorRawQuery.getInt(cursorRawQuery.getColumnIndex(TripObjectLastScore.COLUMN_SCORE_TYPE))), Float.valueOf(cursorRawQuery.getFloat(cursorRawQuery.getColumnIndex("distance"))), Float.valueOf(cursorRawQuery.getFloat(cursorRawQuery.getColumnIndex("time")) / 1000.0f), Double.valueOf(cursorRawQuery.getInt(cursorRawQuery.getColumnIndex("Score"))), cursorRawQuery.getString(cursorRawQuery.getColumnIndex("tripId"))));
            } while (cursorRawQuery.moveToNext());
        }
        cursorRawQuery.close();
        return arrayList;
    }

    public static List<TripObjectModel> getTripGroup(String str) {
        return new Select().from(TripObjectModel.class).where("IdParent = ?", str).orderBy(TripObjectModel.COLUMN_END_TRIP).execute();
    }

    public static List<TripScoreUpdateModel> getTripEventsIncrementScoreByRideId(long j) {
        return new Select().from(TripScoreUpdateModel.class).where("IdTripObject = ?", Long.valueOf(j)).where("PreviousScore < Score").and("PreviousScore != -1").and("TypeID = " + ScoreType.OVERALL.getNumericType()).orderBy("Timestamp").execute();
    }

    public static void hideTrip(String str) {
        new Update(TripObjectModel.class).set("Hidden = ?", 1).where("UUID = ?", str).execute();
    }

    public static void hideAndSyncTrip(String str) {
        new Update(TripObjectModel.class).set("Hidden = ?,SyncNeeded = ?", 1, 1).where("UUID = ?", str).execute();
    }

    public static VehicleModel getVehicle(String str) {
        return (VehicleModel) new Select().from(VehicleModel.class).where("uid = ?", str).executeSingle();
    }

    public static List<TripObjectModel> getUnSyncTrips() {
        List<TripObjectModel> listExecute = new Select().from(TripObjectModel.class).where("SyncNeeded = ?", true).execute();
        for (TripObjectModel tripObjectModel : listExecute) {
            tripObjectModel.setUnsyncEventSnapshot(tripObjectModel.getTripEventsUnsync());
            tripObjectModel.setUnsyncScoreUpdateSnapshot(tripObjectModel.getTripScores());
        }
        return listExecute;
    }

    public static List<HintModel> getTips(ArrayList<String> arrayList) {
        ArrayList arrayList2 = new ArrayList();
        if (!arrayList.isEmpty()) {
            Iterator<String> it = arrayList.iterator();
            String str = "";
            while (it.hasNext()) {
                str = str + it.next() + ",";
            }
            Cursor cursorRawQuery = ActiveAndroid.getDatabase().rawQuery("select * from Hint h where deleted = 0 AND type in (" + str.substring(0, str.length() - 1) + ") AND " + HintModel.COLUMN_COUNT_VIEW + " <= (select MIN(" + HintModel.COLUMN_COUNT_VIEW + ") from " + HintModel.TABLE_NAME + " h1 where h1.type = h.type) group by type", null);
            if (cursorRawQuery.moveToFirst()) {
                do {
                    HintModel hintModel = new HintModel();
                    hintModel.setIdHint(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("idHint")));
                    hintModel.setCountView(cursorRawQuery.getInt(cursorRawQuery.getColumnIndex(HintModel.COLUMN_COUNT_VIEW)));
                    hintModel.setDeleted(cursorRawQuery.getInt(cursorRawQuery.getColumnIndex(HintModel.COLUMN_DELETED)) == 1);
                    hintModel.setType(cursorRawQuery.getInt(cursorRawQuery.getColumnIndex("type")));
                    hintModel.setImageUrl(cursorRawQuery.getString(cursorRawQuery.getColumnIndex(HintModel.COLUMN_IMAGE_URL)));
                    arrayList2.add(hintModel);
                } while (cursorRawQuery.moveToNext());
            }
            cursorRawQuery.close();
        }
        return arrayList2;
    }

    public static boolean saveTripObject(TripObjectEntity tripObjectEntity, UserModel userModel) {
        TripObjectModel tripObjectModelFrom = TripObjectModel.from(tripObjectEntity, userModel);
        if (tripObjectModelFrom == null) {
            return false;
        }
        try {
            Utils.safeModelSave(tripObjectModelFrom, Cache.getContext());
            TripObjectModel tripObjectModelFrom2 = TripObjectModel.from(tripObjectEntity.getId());
            Iterator<EventsEntity> it = tripObjectEntity.getEvents().iterator();
            while (it.hasNext()) {
                TripEventModel tripEventModelFrom = TripEventModel.from(it.next(), tripObjectModelFrom2);
                if (tripEventModelFrom != null) {
                    try {
                        Utils.safeModelSave(tripEventModelFrom, Cache.getContext());
                    } catch (DatabaseIOException e) {
                        e.printStackTrace();
                    }
                }
                return false;
            }
            ArrayList<ScoreEntity> arrayList = new ArrayList();
            arrayList.addAll(tripObjectEntity.getScores());
            new TripScoreEntityComparator().sort(arrayList);
            for (ScoreEntity scoreEntity : arrayList) {
                TripScoreUpdateModel tripScoreUpdateModelFrom = TripScoreUpdateModel.from(scoreEntity, tripObjectModelFrom2);
                if (tripScoreUpdateModelFrom != null) {
                    TripObjectLastScore tripObjectLastScoreFrom = TripObjectLastScore.from(scoreEntity, tripObjectModelFrom2);
                    try {
                        Utils.safeModelSave(tripScoreUpdateModelFrom, Cache.getContext());
                        Utils.safeModelSave(tripObjectLastScoreFrom, Cache.getContext());
                    } catch (DatabaseIOException e2) {
                        e2.printStackTrace();
                    }
                }
                return false;
            }
            return true;
        } catch (DatabaseIOException e3) {
            e3.printStackTrace();
            return false;
        }
    }

    public static List<Integer> getBadEventTypeCount(String str) {
        ArrayList arrayList = new ArrayList();
        Cursor cursorRawQuery = ActiveAndroid.getDatabase().rawQuery("SELECT TypeID FROM TripEvent LEFT JOIN TripObject ON TripEvent.IdTripObject = TripObject.id WHERE (TripObject.UUID = ? OR IdParent = ?) AND TypeID <> ?  AND TypeID <> ?  AND TypeID <> ? group by TypeID", new String[]{str, str, String.valueOf(DrivingEventType.DRIVING_START.getNumericType()), String.valueOf(DrivingEventType.DRIVING_STOP.getNumericType()), String.valueOf(DrivingEventType.DRIVING_STOP_TEMP.getNumericType())});
        if (cursorRawQuery.moveToFirst()) {
            do {
                arrayList.add(Integer.valueOf(cursorRawQuery.getInt(cursorRawQuery.getColumnIndex("TypeID"))));
            } while (cursorRawQuery.moveToNext());
        }
        cursorRawQuery.close();
        return arrayList;
    }

    public static void incrementHintCountView(HintModel hintModel) {
        hintModel.setCountView(hintModel.getCountView() + 1);
        new Update(HintModel.class).set("countView = ?", Integer.valueOf(hintModel.getCountView())).where("idHint = ?", hintModel.getIdHint()).execute();
    }

    public static TripObjectModel getParentTrip(String str) {
        return (TripObjectModel) new Select().from(TripObjectModel.class).where("UUID = ?", str).executeSingle();
    }
}
