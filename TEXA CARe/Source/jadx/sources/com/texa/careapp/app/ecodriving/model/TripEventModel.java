package com.texa.careapp.app.ecodriving.model;

import android.location.Location;
import android.os.Parcel;
import com.activeandroid.Cache;
import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.activeandroid.query.Select;
import com.texa.care.eco_driving.events.drivingevents.DrivingEvent;
import com.texa.careapp.app.ecodriving.serviceserializer.EventsEntity;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.utils.Utils;
import java.util.Arrays;
import java.util.Date;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
@Table(name = TripEventModel.TABLE_NAME)
public class TripEventModel extends Model {
    public static final String COLUMN_ACCURACY = "Accuracy";
    public static final String COLUMN_ALTITUDE = "Altitude";
    public static final String COLUMN_DATA_TYPE = "DataType";
    public static final String COLUMN_DATA_VERSION = "DataVersion";
    public static final String COLUMN_GPS_SPEED = "GpsSpeed";
    public static final String COLUMN_HIDDEN = "Hidden";
    public static final String COLUMN_ID_EVENT = "UUID";
    public static final String COLUMN_ID_TRIP_OBJECT = "IdTripObject";
    public static final String COLUMN_INTERVAL_TIME = "IntervalTime";
    public static final String COLUMN_LABEL = "Label";
    private static final String COLUMN_LAST_MOD = "lastMod";
    public static final String COLUMN_LATITUDE = "Latitude";
    public static final String COLUMN_LONGITUDE = "Longitude";
    public static final String COLUMN_ODOMETER = "Odometer";
    public static final String COLUMN_ROW_LOCATION = "RowLocation";
    public static final String COLUMN_SYNC_NEEDED = "SyncNeeded";
    public static final String COLUMN_TIMESTAMP = "Timestamp";
    public static final String COLUMN_TRIP_EVENT_TYPE = "TypeID";
    private static final String DATA_TYPE = "DRIVING_EVENT";
    public static final String TABLE_NAME = "TripEvent";

    @Column(name = COLUMN_ACCURACY)
    private Float accuracy;

    @Column(name = COLUMN_ALTITUDE)
    private Double altitude;

    @Column(name = "DataType")
    private String dataType;

    @Column(name = "DataVersion")
    private String dataVersion;

    @Column(name = COLUMN_GPS_SPEED)
    private Float gpsSpeed;

    @Column(name = "Hidden")
    private boolean hidden;

    @Column(name = COLUMN_INTERVAL_TIME)
    private long intervalTime;

    @Column(name = COLUMN_LABEL)
    private String label;

    @Column(name = COLUMN_LAST_MOD)
    private Date lastMod = new Date(0);

    @Column(name = COLUMN_LATITUDE)
    private Double lat;

    @Column(name = COLUMN_LONGITUDE)
    private Double lng;
    private Location location;

    @Column(name = "Odometer")
    private Float odometer;

    @Column(name = COLUMN_ROW_LOCATION)
    private String rowLocation;

    @Column(name = "SyncNeeded")
    private boolean syncNeeded;

    @Column(index = true, name = "Timestamp")
    private Long timestamp;

    @Column(name = "IdTripObject", onDelete = Column.ForeignKeyAction.CASCADE, uniqueGroups = {"key"})
    private TripObjectModel tripObject;

    @Column(index = true, name = "TypeID")
    private Integer typeId;

    @Column(name = "UUID", onUniqueConflict = Column.ConflictAction.REPLACE, unique = true)
    private String uuid;

    public String getUuid() {
        return this.uuid;
    }

    public void setUuid(String str) {
        this.uuid = str;
    }

    public Integer getTypeId() {
        return this.typeId;
    }

    public void setTypeId(Integer num) {
        this.typeId = num;
    }

    public Long getTimestamp() {
        return this.timestamp;
    }

    public void setTimestamp(Long l) {
        this.timestamp = l;
    }

    public Float getOdometer() {
        return this.odometer;
    }

    public void setOdometer(Float f) {
        this.odometer = f;
    }

    public Double getLat() {
        return this.lat;
    }

    public void setLat(Double d) {
        this.lat = d;
    }

    public Double getLng() {
        return this.lng;
    }

    public void setLng(Double d) {
        this.lng = d;
    }

    public Float getAccuracy() {
        return this.accuracy;
    }

    public void setAccuracy(Float f) {
        this.accuracy = f;
    }

    public Double getAltitude() {
        return this.altitude;
    }

    public void setAltitude(Double d) {
        this.altitude = d;
    }

    public Float getGpsSpeed() {
        return this.gpsSpeed;
    }

    public void setGpsSpeed(Float f) {
        this.gpsSpeed = f;
    }

    public String getLabel() {
        return this.label;
    }

    public void setLabel(String str) {
        this.label = str;
    }

    public String getDataVersion() {
        return this.dataVersion;
    }

    public void setDataVersion(String str) {
        this.dataVersion = str;
    }

    public String getDataType() {
        return this.dataType;
    }

    public void setDataType(String str) {
        this.dataType = str;
    }

    public Location getLocation() {
        return this.location;
    }

    public TripObjectModel getTripObject() {
        return this.tripObject;
    }

    public void setTripObject(TripObjectModel tripObjectModel) {
        this.tripObject = tripObjectModel;
    }

    public long getIntervalTime() {
        return this.intervalTime;
    }

    public void setIntervalTime(long j) {
        this.intervalTime = j;
    }

    public void setSyncNeeded(boolean z) {
        this.syncNeeded = z;
    }

    public boolean isSyncNeeded() {
        return this.syncNeeded;
    }

    public boolean isHidden() {
        return this.hidden;
    }

    public void setHidden(boolean z) {
        this.hidden = z;
    }

    public Date getLastMod() {
        return this.lastMod;
    }

    public void setLastMod(Date date) {
        this.lastMod = date;
    }

    public static TripEventModel from(DrivingEvent drivingEvent, TripObjectModel tripObjectModel) {
        TripEventModel tripEventModel = (TripEventModel) new Select().from(TripEventModel.class).where("UUID = ? ", drivingEvent.getUuid()).executeSingle();
        if (tripEventModel == null) {
            tripEventModel = new TripEventModel();
            tripEventModel.uuid = drivingEvent.getUuid();
            tripEventModel.typeId = Integer.valueOf(drivingEvent.getType().getNumericType());
            tripEventModel.timestamp = Long.valueOf(drivingEvent.getTime().getTime());
            tripEventModel.odometer = Float.valueOf(drivingEvent.getOdometer());
            tripEventModel.intervalTime = drivingEvent.getInterval();
            tripEventModel.dataType = DATA_TYPE;
            tripEventModel.tripObject = tripObjectModel;
        }
        setUpdatableDataFromEvent(drivingEvent, tripEventModel);
        return tripEventModel;
    }

    public static void setUpdatableDataFromEvent(DrivingEvent drivingEvent, TripEventModel tripEventModel) {
        Location position = drivingEvent.getPosition();
        if (position == null || position.getAccuracy() > 500.0f) {
            return;
        }
        tripEventModel.setLocation(position);
        tripEventModel.syncNeeded = true;
        tripEventModel.lastMod = new Date();
    }

    public void setLocation(Location location) {
        this.location = location;
        this.lat = Double.valueOf(location.getLatitude());
        this.lng = Double.valueOf(location.getLongitude());
        this.accuracy = Float.valueOf(location.getAccuracy());
        this.altitude = Double.valueOf(location.getAltitude());
        this.gpsSpeed = Float.valueOf(location.getSpeed());
        Parcel parcelObtain = Parcel.obtain();
        location.writeToParcel(parcelObtain, 0);
        byte[] bArrMarshall = parcelObtain.marshall();
        parcelObtain.recycle();
        String string = Arrays.toString(bArrMarshall);
        this.rowLocation = string;
        Timber.d("PARCEL : %s", string);
    }

    @Override // com.activeandroid.Model
    public String toString() {
        return "TripEventModel{uuid='" + this.uuid + "', typeId=" + this.typeId + ", timestamp=" + this.timestamp + ", odometer=" + this.odometer + ", lat=" + this.lat + ", lng=" + this.lng + ", accuracy=" + this.accuracy + ", altitude=" + this.altitude + ", gpsSpeed=" + this.gpsSpeed + ", label='" + this.label + "', dataVersion='" + this.dataVersion + "', dataType='" + this.dataType + "', location=" + this.location + ", rowLocation='" + this.rowLocation + "', tripObject=" + this.tripObject + ", intervalTime=" + this.intervalTime + ", syncNeeded=" + this.syncNeeded + '}';
    }

    public boolean saveAsSynced() {
        if (getLastSavedMod().after(this.lastMod)) {
            return false;
        }
        this.syncNeeded = false;
        this.lastMod = new Date();
        try {
            Utils.safeModelSave(this, Cache.getContext());
            return true;
        } catch (DatabaseIOException unused) {
            return false;
        }
    }

    private Date getLastSavedMod() {
        return ((TripEventModel) new Select().from(TripEventModel.class).where("TripEvent.id = ?", getId()).executeSingle()).getLastMod();
    }

    public static TripEventModel from(EventsEntity eventsEntity, TripObjectModel tripObjectModel) {
        TripEventModel tripEventModel = tripObjectModel != null ? (TripEventModel) new Select().from(TripEventModel.class).where("UUID = ?", eventsEntity.getId()).and("IdTripObject = ?", tripObjectModel.getId()).executeSingle() : null;
        if (tripEventModel == null) {
            tripEventModel = new TripEventModel();
            tripEventModel.lastMod = eventsEntity.getModifiedAt();
            tripEventModel.syncNeeded = false;
        } else if (eventsEntity.getModifiedAt() != null && tripEventModel.lastMod.after(eventsEntity.getModifiedAt())) {
            return null;
        }
        tripEventModel.uuid = eventsEntity.getId();
        tripEventModel.typeId = Integer.valueOf(eventsEntity.getEventType());
        if (eventsEntity.getEventInfo() != null) {
            tripEventModel.timestamp = Long.valueOf(eventsEntity.getEventInfo().getTimestampMillis());
            tripEventModel.odometer = Float.valueOf(eventsEntity.getEventInfo().getOdometer());
            tripEventModel.label = eventsEntity.getEventInfo().getLabel();
            if (eventsEntity.getEventInfo().getLocation() != null) {
                tripEventModel.lat = eventsEntity.getEventInfo().getLocation().getLatitude();
                tripEventModel.lng = eventsEntity.getEventInfo().getLocation().getLongitude();
                tripEventModel.altitude = eventsEntity.getEventInfo().getLocation().getAltitude() != null ? Double.valueOf(eventsEntity.getEventInfo().getLocation().getAltitude().doubleValue()) : null;
                tripEventModel.accuracy = Float.valueOf(eventsEntity.getEventInfo().getLocation().getAccuracy().floatValue());
            }
        }
        tripEventModel.dataVersion = eventsEntity.getDataVersion();
        tripEventModel.dataType = DATA_TYPE;
        tripEventModel.intervalTime = eventsEntity.getIntervalTime();
        tripEventModel.syncNeeded = false;
        tripEventModel.hidden = eventsEntity.isHidden();
        tripEventModel.tripObject = tripObjectModel;
        return tripEventModel;
    }
}
