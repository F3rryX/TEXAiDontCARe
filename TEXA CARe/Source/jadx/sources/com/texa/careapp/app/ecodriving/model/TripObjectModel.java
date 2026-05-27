package com.texa.careapp.app.ecodriving.model;

import com.activeandroid.Cache;
import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.activeandroid.query.Select;
import com.texa.care.eco_driving.events.drivingevents.DrivingEvent;
import com.texa.care.eco_driving.events.drivingevents.DrivingEventType;
import com.texa.care.eco_driving.events.drivingevents.DrivingStartEvent;
import com.texa.careapp.app.ecodriving.serviceserializer.TripObjectEntity;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.model.UserModel;
import com.texa.careapp.utils.Utils;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
@Table(name = TripObjectModel.TABLE_NAME)
public class TripObjectModel extends Model {
    public static final String COLUMN_DATA_VERSION = "DataVersion";
    public static final String COLUMN_DRIVER_ID = "DriverId";
    public static final String COLUMN_END_LABEL = "EndLabel";
    public static final String COLUMN_END_LOCATION_ACCURACY = "EndLocationAccuracy";
    private static final String COLUMN_END_LOCATION_ALTITUDE = "EndLocationAltitude";
    public static final String COLUMN_END_LOCATION_LAT = "EndLocationLat";
    public static final String COLUMN_END_LOCATION_LNG = "EndLocationLng";
    public static final String COLUMN_END_ODO = "EndOdo";
    public static final String COLUMN_END_TRIP = "EndTrip";
    public static final String COLUMN_HIDDEN = "Hidden";
    public static final String COLUMN_HWID = "HwId";
    public static final String COLUMN_ID_PARENT = "IdParent";
    private static final String COLUMN_LAST_MOD = "lastMod";
    public static final String COLUMN_START_LABEL = "StartLabel";
    public static final String COLUMN_START_LOCATION_ACCURACY = "StartLocationAccuracy";
    private static final String COLUMN_START_LOCATION_ALTITUDE = "StartLocationAltitude";
    public static final String COLUMN_START_LOCATION_LAT = "StartLocationLat";
    public static final String COLUMN_START_LOCATION_LNG = "StartLocationLng";
    public static final String COLUMN_START_ODO = "StartOdo";
    public static final String COLUMN_START_TRIP = "StartTrip";
    public static final String COLUMN_SYNC_NEEDED = "SyncNeeded";
    public static final String COLUMN_USER_ID = "UserId";
    public static final String COLUMN_UUID = "UUID";
    public static final String COLUMN_VEHICLE_ID = "VehicleId";
    public static final long DIFF_MILLIS = 600000;
    public static final String TABLE_NAME = "TripObject";

    @Column(name = COLUMN_DRIVER_ID)
    private String driverId;

    @Column(name = COLUMN_END_LABEL)
    private String endLabel;

    @Column(name = COLUMN_END_LOCATION_ACCURACY)
    private Float endLocationAccuracy;

    @Column(name = COLUMN_END_LOCATION_ALTITUDE)
    private Double endLocationAltitude;

    @Column(name = COLUMN_END_LOCATION_LAT)
    private Double endLocationLat;

    @Column(name = COLUMN_END_LOCATION_LNG)
    private Double endLocationLng;

    @Column(name = COLUMN_END_ODO)
    private Float endOdo;

    @Column(name = COLUMN_END_TRIP)
    private long endTrip;

    @Column(name = "Hidden")
    private boolean hidden;

    @Column(name = COLUMN_HWID)
    private String hwId;

    @Column(index = true, name = COLUMN_ID_PARENT)
    private String idParent;

    @Column(name = COLUMN_START_LABEL)
    private String startLabel;

    @Column(name = COLUMN_START_LOCATION_ACCURACY)
    private Float startLocationAccuracy;

    @Column(name = COLUMN_START_LOCATION_ALTITUDE)
    private Double startLocationAltitude;

    @Column(name = COLUMN_START_LOCATION_LAT)
    private Double startLocationLat;

    @Column(name = COLUMN_START_LOCATION_LNG)
    private Double startLocationLng;

    @Column(name = COLUMN_START_ODO)
    private Float startOdo;

    @Column(index = true, name = COLUMN_START_TRIP)
    private long startTrip;

    @Column(name = "SyncNeeded")
    private boolean syncNeeded;
    private long tripDuration;

    @Column(name = COLUMN_USER_ID, onDelete = Column.ForeignKeyAction.CASCADE, uniqueGroups = {"key"})
    private UserModel user;

    @Column(name = "UUID", onUniqueConflict = Column.ConflictAction.REPLACE, unique = true)
    private String uuid;

    @Column(name = COLUMN_VEHICLE_ID)
    private String vehicleId;

    @Column(name = COLUMN_LAST_MOD)
    private Date lastMod = new Date();

    @Column(name = "DataVersion")
    private String dataVersion = "1.0";
    private List<TripEventModel> unsyncEventSnapshot = new ArrayList();
    private List<TripScoreUpdateModel> unsyncScoreUpdateSnapshot = new ArrayList();

    public String getUuid() {
        return this.uuid;
    }

    public String getIdParent() {
        return this.idParent;
    }

    public long getStartTrip() {
        return this.startTrip;
    }

    public void setStartTrip(long j) {
        this.startTrip = j;
    }

    public long getEndTrip() {
        return this.endTrip;
    }

    public void setEndTrip(long j) {
        this.endTrip = j;
    }

    public Float getStartOdo() {
        return this.startOdo;
    }

    public void setStartOdo(Float f) {
        this.startOdo = f;
    }

    public Float getEndOdo() {
        return this.endOdo;
    }

    public void setEndOdo(Float f) {
        this.endOdo = f;
    }

    public Double getStartLocationLat() {
        return this.startLocationLat;
    }

    public void setStartLocationLat(Double d) {
        this.startLocationLat = d;
    }

    public Double getStartLocationLng() {
        return this.startLocationLng;
    }

    public void setStartLocationLng(Double d) {
        this.startLocationLng = d;
    }

    public Float getStartLocationAccuracy() {
        return this.startLocationAccuracy;
    }

    public void setStartLocationAccuracy(Float f) {
        this.startLocationAccuracy = f;
    }

    public Double getEndLocationLat() {
        return this.endLocationLat;
    }

    public void setEndLocationLat(Double d) {
        this.endLocationLat = d;
    }

    public Double getEndLocationLng() {
        return this.endLocationLng;
    }

    public void setEndLocationLng(Double d) {
        this.endLocationLng = d;
    }

    public Double getStartLocationAltitude() {
        return this.startLocationAltitude;
    }

    public void setStartLocationAltitude(Double d) {
        this.startLocationAltitude = d;
    }

    public Double getEndLocationAltitude() {
        return this.endLocationAltitude;
    }

    public void setEndLocationAltitude(Double d) {
        this.endLocationAltitude = d;
    }

    public Float getEndLocationAccuracy() {
        return this.endLocationAccuracy;
    }

    public String getStartLabel() {
        return this.startLabel;
    }

    public void setStartLabel(String str) {
        this.startLabel = str;
    }

    public String getEndLabel() {
        return this.endLabel;
    }

    public void setEndLabel(String str) {
        this.endLabel = str;
    }

    public String getHwId() {
        return this.hwId;
    }

    public void setHwId(String str) {
        this.hwId = str;
    }

    public String getDriverId() {
        return this.driverId;
    }

    public void setDriverId(String str) {
        this.driverId = str;
    }

    public String getVehicleId() {
        return this.vehicleId;
    }

    public void setVehicleId(String str) {
        this.vehicleId = str;
    }

    public boolean isSyncNeeded() {
        return this.syncNeeded;
    }

    public void setSyncNeeded(boolean z) {
        this.syncNeeded = z;
    }

    public Date getLastMod() {
        return this.lastMod;
    }

    public void setLastMod(Date date) {
        this.lastMod = date;
    }

    public boolean isHidden() {
        return this.hidden;
    }

    public void setHidden(boolean z) {
        this.hidden = z;
    }

    public long getTripDuration() {
        return this.tripDuration;
    }

    public void setTripDuration(long j) {
        this.tripDuration = j;
    }

    public String getDataVersion() {
        return this.dataVersion;
    }

    public void setDataVersion(String str) {
        this.dataVersion = str;
    }

    public List<TripEventModel> getUnsyncEventSnapshot() {
        return this.unsyncEventSnapshot;
    }

    public void setUnsyncEventSnapshot(List<TripEventModel> list) {
        this.unsyncEventSnapshot = list;
    }

    public List<TripScoreUpdateModel> getUnsyncScoreUpdateSnapshot() {
        return this.unsyncScoreUpdateSnapshot;
    }

    public void setUnsyncScoreUpdateSnapshot(List<TripScoreUpdateModel> list) {
        this.unsyncScoreUpdateSnapshot = list;
    }

    public UserModel getUser() {
        return this.user;
    }

    public void setUser(UserModel userModel) {
        this.user = userModel;
    }

    public static TripObjectModel from(String str) {
        return (TripObjectModel) new Select().from(TripObjectModel.class).where("UUID = ?", str).executeSingle();
    }

    public static TripObjectModel from(TripObjectEntity tripObjectEntity, UserModel userModel) {
        TripObjectModel tripObjectModel = (TripObjectModel) new Select().from(TripObjectModel.class).where("UUID=?", tripObjectEntity.getId()).and("VehicleId = ?", tripObjectEntity.getVehicleId()).executeSingle();
        if (tripObjectModel == null || (tripObjectModel != null && tripObjectModel.getLastTripEvent() != null && System.currentTimeMillis() - tripObjectModel.getLastTripEvent().getTimestamp().longValue() > DIFF_MILLIS)) {
            tripObjectModel = new TripObjectModel();
            tripObjectModel.lastMod = tripObjectEntity.getModifiedAt();
            tripObjectModel.syncNeeded = false;
        } else if (tripObjectEntity.getModifiedAt() != null && tripObjectModel.lastMod.after(tripObjectEntity.getModifiedAt())) {
            return null;
        }
        tripObjectModel.uuid = tripObjectEntity.getId();
        tripObjectModel.idParent = tripObjectEntity.getParentId();
        if (tripObjectEntity.getTripStart() != null) {
            tripObjectModel.startTrip = tripObjectEntity.getTripStart().getTimestampMillis();
            tripObjectModel.startOdo = Float.valueOf(tripObjectEntity.getTripStart().getOdometer());
            if (tripObjectEntity.getTripStart().getLocation() != null) {
                tripObjectModel.startLocationLat = tripObjectEntity.getTripStart().getLocation().getLatitude();
                tripObjectModel.startLocationLng = tripObjectEntity.getTripStart().getLocation().getLongitude();
                tripObjectModel.startLocationAccuracy = Float.valueOf(tripObjectEntity.getTripStart().getLocation().getAccuracy().floatValue());
                tripObjectModel.startLocationAltitude = tripObjectEntity.getTripStart().getLocation().getAltitude() != null ? Double.valueOf(tripObjectEntity.getTripStart().getLocation().getAltitude().intValue()) : null;
            }
            tripObjectModel.startLabel = tripObjectEntity.getTripStart().getLabel();
        }
        if (tripObjectEntity.getTripEnd() != null) {
            tripObjectModel.endTrip = tripObjectEntity.getTripEnd().getTimestampMillis();
            tripObjectModel.endOdo = Float.valueOf(tripObjectEntity.getTripEnd().getOdometer());
            if (tripObjectEntity.getTripEnd().getLocation() != null) {
                tripObjectModel.endLocationLat = tripObjectEntity.getTripEnd().getLocation().getLatitude();
                tripObjectModel.endLocationLng = tripObjectEntity.getTripEnd().getLocation().getLongitude();
                tripObjectModel.endLocationAccuracy = Float.valueOf(tripObjectEntity.getTripEnd().getLocation().getAccuracy().floatValue());
                tripObjectModel.endLocationAltitude = tripObjectEntity.getTripEnd().getLocation().getAltitude() != null ? Double.valueOf(tripObjectEntity.getTripEnd().getLocation().getAltitude().intValue()) : null;
            }
            tripObjectModel.endLabel = tripObjectEntity.getTripEnd().getLabel();
        }
        tripObjectModel.hwId = tripObjectEntity.getHwid();
        tripObjectModel.driverId = tripObjectEntity.getUserId();
        tripObjectModel.vehicleId = tripObjectEntity.getVehicleId();
        tripObjectModel.hidden = tripObjectEntity.isHidden();
        tripObjectModel.user = userModel;
        return tripObjectModel;
    }

    public static TripObjectModel from(DrivingEvent drivingEvent, String str, String str2) {
        TripObjectModel tripObjectModelNewTrip = (TripObjectModel) new Select().from(TripObjectModel.class).where("UUID = ?", drivingEvent.getRideId()).and("VehicleId = ?", str).executeSingle();
        int i = AnonymousClass1.$SwitchMap$com$texa$care$eco_driving$events$drivingevents$DrivingEventType[drivingEvent.getType().ordinal()];
        if (i == 1) {
            if (tripObjectModelNewTrip == null) {
                tripObjectModelNewTrip = newTrip(drivingEvent.getRideId(), drivingEvent.getHardwareId(), str, str2, drivingEvent.getTime().getTime());
                tripObjectModelNewTrip.setStartTrip(drivingEvent.getTime().getTime());
                tripObjectModelNewTrip.setStartOdo(Float.valueOf(drivingEvent.getOdometer()));
                tripObjectModelNewTrip.setHidden(false);
            }
            if (drivingEvent.getPosition() != null && drivingEvent.getPosition().getAccuracy() <= 500.0f) {
                tripObjectModelNewTrip.setLastMod(drivingEvent.getTime());
                tripObjectModelNewTrip.setStartLocationLat(Double.valueOf(drivingEvent.getPosition().getLatitude()));
                tripObjectModelNewTrip.setStartLocationLng(Double.valueOf(drivingEvent.getPosition().getLongitude()));
                tripObjectModelNewTrip.setStartLocationAccuracy(Float.valueOf(drivingEvent.getPosition().getAccuracy()));
                tripObjectModelNewTrip.setStartLocationAltitude(Double.valueOf(drivingEvent.getPosition().getAltitude()));
            }
            resetEndValues(tripObjectModelNewTrip, str);
            return tripObjectModelNewTrip;
        }
        if (i != 2 && i != 3) {
            if (tripObjectModelNewTrip != null && drivingEvent.getType().getNumericType() != DrivingEventType.UNDEFINED.getNumericType()) {
                resetEndValues(tripObjectModelNewTrip, str);
            } else if (tripObjectModelNewTrip != null) {
                tripObjectModelNewTrip.setSyncNeeded(true);
            }
            return tripObjectModelNewTrip;
        }
        if (tripObjectModelNewTrip != null) {
            tripObjectModelNewTrip.setEndTrip(drivingEvent.getTime().getTime());
            tripObjectModelNewTrip.setEndOdo(Float.valueOf(drivingEvent.getOdometer()));
            if (drivingEvent.getPosition() != null && drivingEvent.getPosition().getAccuracy() <= 500.0f) {
                tripObjectModelNewTrip.endLocationLat = Double.valueOf(drivingEvent.getPosition().getLatitude());
                tripObjectModelNewTrip.endLocationLng = Double.valueOf(drivingEvent.getPosition().getLongitude());
                tripObjectModelNewTrip.endLocationAltitude = Double.valueOf(drivingEvent.getPosition().getAltitude());
                tripObjectModelNewTrip.endLocationAccuracy = Float.valueOf(drivingEvent.getPosition().getAccuracy());
            }
            tripObjectModelNewTrip.syncNeeded = true;
            tripObjectModelNewTrip.lastMod = new Date();
            try {
                Utils.safeModelSave(tripObjectModelNewTrip, Cache.getContext());
            } catch (DatabaseIOException e) {
                e.printStackTrace();
            }
            if (!Utils.isEmpty(tripObjectModelNewTrip.getIdParent())) {
                TripObjectModel tripObjectModel = (TripObjectModel) new Select().from(TripObjectModel.class).where("UUID = ?", tripObjectModelNewTrip.getIdParent()).and("VehicleId = ?", str).executeSingle();
                tripObjectModel.setEndTrip(tripObjectModelNewTrip.getEndTrip());
                tripObjectModel.setEndOdo(tripObjectModelNewTrip.getEndOdo());
                if (drivingEvent.getPosition() != null && drivingEvent.getPosition().getAccuracy() <= 500.0f) {
                    tripObjectModel.endLocationLat = Double.valueOf(drivingEvent.getPosition().getLatitude());
                    tripObjectModel.endLocationLng = Double.valueOf(drivingEvent.getPosition().getLongitude());
                    tripObjectModel.endLocationAltitude = Double.valueOf(drivingEvent.getPosition().getAltitude());
                    tripObjectModel.endLocationAccuracy = Float.valueOf(drivingEvent.getPosition().getAccuracy());
                }
                tripObjectModel.lastMod = new Date();
                tripObjectModel.setSyncNeeded(true);
                try {
                    Utils.safeModelSave(tripObjectModel, Cache.getContext());
                } catch (DatabaseIOException e2) {
                    e2.printStackTrace();
                }
            }
        }
        return tripObjectModelNewTrip;
    }

    /* JADX INFO: renamed from: com.texa.careapp.app.ecodriving.model.TripObjectModel$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$care$eco_driving$events$drivingevents$DrivingEventType;

        static {
            int[] iArr = new int[DrivingEventType.values().length];
            $SwitchMap$com$texa$care$eco_driving$events$drivingevents$DrivingEventType = iArr;
            try {
                iArr[DrivingEventType.DRIVING_START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$texa$care$eco_driving$events$drivingevents$DrivingEventType[DrivingEventType.DRIVING_STOP_TEMP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$texa$care$eco_driving$events$drivingevents$DrivingEventType[DrivingEventType.DRIVING_STOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static void checkIfHaveToCloseOtherTrips(String str) {
        for (TripObjectModel tripObjectModel : new Select().from(TripObjectModel.class).where("EndTrip = ?", 0).and("UUID != ?", str).and("(IdParent != ?", str).or("IdParent is null )").execute()) {
            TripEventModel lastTripEvent = tripObjectModel.getLastTripEvent();
            if (lastTripEvent != null) {
                tripObjectModel.setEndTrip(lastTripEvent.getTimestamp().longValue());
                tripObjectModel.setEndOdo(lastTripEvent.getOdometer());
                tripObjectModel.setSyncNeeded(true);
                tripObjectModel.setLastMod(new Date(lastTripEvent.getTimestamp().longValue()));
                try {
                    Utils.safeModelSave(tripObjectModel, Cache.getContext());
                } catch (DatabaseIOException e) {
                    e.printStackTrace();
                    Timber.e(e, "ERROR CLOSING TRIP", new Object[0]);
                }
            }
        }
        for (TripObjectModel tripObjectModel2 : new Select().from(TripObjectModel.class).where("EndTrip != ?", 0).and("UUID != ?", str).and("(IdParent != ?", str).or("IdParent is null )").execute()) {
            if (tripObjectModel2.getLastTripEvent() != null && tripObjectModel2.getLastTripEvent().getTypeId().intValue() == DrivingEventType.DRIVING_STOP_TEMP.getNumericType()) {
                TripEventModel tripEventModel = (TripEventModel) new Select().from(TripEventModel.class).where("UUID = ?", tripObjectModel2.getLastTripEvent().getUuid()).executeSingle();
                tripEventModel.setTypeId(Integer.valueOf(DrivingEventType.DRIVING_STOP.getNumericType()));
                try {
                    Utils.safeModelSave(tripEventModel, Cache.getContext());
                } catch (DatabaseIOException e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    public static boolean checkIfHaveToReproduceSound(DrivingStartEvent drivingStartEvent, String str) {
        return ((TripObjectModel) new Select().from(TripObjectModel.class).where("EndTrip >= ?", Long.valueOf(Calendar.getInstance().getTimeInMillis() - DIFF_MILLIS)).and("HwId = ?", drivingStartEvent.getHardwareId()).and("VehicleId = ?", str).and("Hidden = ?", false).and("StartTrip != ?", 0).orderBy(COLUMN_START_TRIP).executeSingle()) == null;
    }

    public static TripObjectModel newTrip(String str, String str2, String str3, String str4, long j) {
        TripObjectModel tripObjectModel = new TripObjectModel();
        tripObjectModel.uuid = str;
        tripObjectModel.setDriverId(str4);
        tripObjectModel.setHwId(str2);
        TripObjectModel tripObjectModel2 = (TripObjectModel) new Select().from(TripObjectModel.class).where("EndTrip >= ?", Long.valueOf(j - DIFF_MILLIS)).and("HwId = ?", str2).and("VehicleId = ?", str3).and("Hidden = ?", false).and("StartTrip != ?", 0).orderBy("StartTrip DESC").executeSingle();
        if (tripObjectModel2 != null && j > tripObjectModel2.getStartTrip()) {
            if (!Utils.isEmpty(tripObjectModel2.getIdParent())) {
                tripObjectModel.idParent = tripObjectModel2.getIdParent();
            } else {
                tripObjectModel.idParent = tripObjectModel2.getUuid();
            }
            resetEndValues(tripObjectModel2, str3);
        }
        return tripObjectModel;
    }

    public List<TripEventModel> getTripEvents(long j) {
        boolean z;
        TripEventModel tripEventModel;
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(new Select().from(TripEventModel.class).where("IdTripObject = ?", Long.valueOf(j)).and("TypeID != ?", Integer.valueOf(DrivingEventType.DRIVING_STOP_TEMP.getNumericType())).execute());
        Iterator it = arrayList.iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            }
            if (((TripEventModel) it.next()).getTypeId().intValue() == DrivingEventType.DRIVING_STOP.getNumericType()) {
                z = true;
                break;
            }
        }
        if (!z && (tripEventModel = (TripEventModel) new Select().from(TripEventModel.class).where("IdTripObject = ?", Long.valueOf(j)).and("TypeID = ?", Integer.valueOf(DrivingEventType.DRIVING_STOP_TEMP.getNumericType())).orderBy("Timestamp DESC").executeSingle()) != null) {
            arrayList.add(tripEventModel);
        }
        return arrayList;
    }

    public TripEventModel getLastTripEvent() {
        return (TripEventModel) new Select().from(TripEventModel.class).where("IdTripObject = ?", getId()).orderBy("Timestamp DESC").executeSingle();
    }

    public List<TripEventModel> getTripEventsUnsync() {
        return new Select().from(TripEventModel.class).where("IdTripObject= ?", getId()).execute();
    }

    public List<TripEventModel> getTripEventsWithoutStart(long j) {
        boolean z;
        TripEventModel tripEventModel;
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(new Select().from(TripEventModel.class).where("IdTripObject = ?", Long.valueOf(j)).and("TypeID != ?", Integer.valueOf(DrivingEventType.DRIVING_START.getNumericType())).and("TypeID != ?", Integer.valueOf(DrivingEventType.DRIVING_STOP_TEMP.getNumericType())).execute());
        Iterator it = arrayList.iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            }
            if (((TripEventModel) it.next()).getTypeId().intValue() == DrivingEventType.DRIVING_STOP.getNumericType()) {
                z = true;
                break;
            }
        }
        if (!z && (tripEventModel = (TripEventModel) new Select().from(TripEventModel.class).where("IdTripObject = ?", Long.valueOf(j)).and("TypeID = ?", Integer.valueOf(DrivingEventType.DRIVING_STOP_TEMP.getNumericType())).orderBy("Timestamp DESC").executeSingle()) != null) {
            arrayList.add(tripEventModel);
        }
        return arrayList;
    }

    public List<TripEventModel> getTripEventsWithoutStartStop(long j) {
        return new Select().from(TripEventModel.class).where("IdTripObject = ?", Long.valueOf(j)).and("TypeID != ?", Integer.valueOf(DrivingEventType.DRIVING_START.getNumericType())).and("TypeID != ?", Integer.valueOf(DrivingEventType.DRIVING_STOP.getNumericType())).and("TypeID != ?", Integer.valueOf(DrivingEventType.DRIVING_STOP_TEMP.getNumericType())).execute();
    }

    public List<TripEventModel> getTripEventsWithoutStop(long j) {
        return new Select().from(TripEventModel.class).where("IdTripObject = ?", Long.valueOf(j)).and("TypeID != ?", Integer.valueOf(DrivingEventType.DRIVING_STOP.getNumericType())).and("TypeID != ?", Integer.valueOf(DrivingEventType.DRIVING_STOP_TEMP.getNumericType())).execute();
    }

    public List<TripScoreUpdateModel> getTripScores() {
        return new Select().from(TripScoreUpdateModel.class).where("IdTripObject= ?", getId()).execute();
    }

    public List<TripScoreUpdateModel> getTripGroupScores() {
        ArrayList arrayList = new ArrayList();
        Iterator it = new Select().from(TripObjectModel.class).where("UUID= ?", getUuid()).or("IdParent= ? ", getUuid()).execute().iterator();
        while (it.hasNext()) {
            arrayList.addAll(new Select().from(TripScoreUpdateModel.class).where("IdTripObject= ?", ((TripObjectModel) it.next()).getId()).execute());
        }
        return arrayList;
    }

    @Override // com.activeandroid.Model
    public String toString() {
        return "TripObjectModel{uuid='" + this.uuid + "', idParent='" + this.idParent + "', startTrip=" + this.startTrip + ", endTrip=" + this.endTrip + ", startOdo=" + this.startOdo + ", endOdo=" + this.endOdo + ", startLocationLat=" + this.startLocationLat + ", startLocationLng=" + this.startLocationLng + ", startLocationAccuracy=" + this.startLocationAccuracy + ", endLocationLat=" + this.endLocationLat + ", endLocationLng=" + this.endLocationLng + ", endLocationAccuracy=" + this.endLocationAccuracy + ", startLabel='" + this.startLabel + "', endLabel='" + this.endLabel + "', hwId='" + this.hwId + "', driverId='" + this.driverId + "', vehicleId='" + this.vehicleId + "', syncNeeded=" + this.syncNeeded + ", hidden=" + this.hidden + ", tripDuration=" + this.tripDuration + '}';
    }

    private Date getLastSavedMod() {
        return ((TripObjectModel) new Select().from(TripObjectModel.class).where("TripObject.id = ?", getId()).executeSingle()).getLastMod();
    }

    public boolean saveAsSynced() {
        boolean z;
        if (getLastSavedMod().after(this.lastMod)) {
            return false;
        }
        Iterator<TripEventModel> it = getTripEventsUnsync().iterator();
        loop0: while (true) {
            while (it.hasNext()) {
                z = z && it.next().saveAsSynced();
            }
        }
        Iterator<TripScoreUpdateModel> it2 = getUnsyncScoreUpdateSnapshot().iterator();
        while (it2.hasNext()) {
            z = z && it2.next().saveAsSynced();
        }
        this.syncNeeded = !z;
        this.lastMod = new Date();
        try {
            Utils.safeModelSave(this, Cache.getContext());
            return z;
        } catch (DatabaseIOException e) {
            e.printStackTrace();
            return false;
        }
    }

    private static void resetEndValues(TripObjectModel tripObjectModel, String str) {
        tripObjectModel.setEndTrip(0L);
        tripObjectModel.setEndOdo(null);
        tripObjectModel.setEndLocationLat(null);
        tripObjectModel.setEndLocationLng(null);
        tripObjectModel.setEndLocationAltitude(null);
        tripObjectModel.setSyncNeeded(true);
        tripObjectModel.lastMod = new Date();
        try {
            Utils.safeModelSave(tripObjectModel, Cache.getContext());
        } catch (DatabaseIOException e) {
            e.printStackTrace();
        }
    }

    public boolean isParent() {
        return Utils.isEmpty(getIdParent());
    }
}
