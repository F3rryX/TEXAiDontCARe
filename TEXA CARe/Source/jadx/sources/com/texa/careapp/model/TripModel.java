package com.texa.careapp.model;

import android.location.Location;
import android.util.Log;
import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.google.gson.annotations.Expose;
import com.texa.careapp.utils.Utils;
import com.texa.carelib.care.trips.CurrentTrip;
import com.texa.carelib.care.trips.TripBeginInfo;
import com.texa.carelib.care.trips.TripEndInfo;
import com.texa.carelib.care.trips.TripInfo;
import com.texa.carelib.care.trips.TripStatisticsInfo;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
@Table(name = TripModel.TABLE_TRIPS)
public class TripModel extends Model {
    public static final String COLUMN_TRIP_NUMBER = "trip_number";
    public static final String TABLE_TRIPS = "DataTrip";
    private static final String TAG = "TripModel";

    @Column
    @Expose
    public boolean lightMilOn;

    @Column
    @Expose
    public int odoMode;

    @Column
    @Expose
    public int sosNumber;

    @Column
    @Expose
    public int tripEndCause;

    @Column(name = COLUMN_TRIP_NUMBER)
    @Expose
    public long tripNumber;

    @Column
    @Expose
    public String userId;

    @Column
    @Expose
    public String vehicleId;

    @Column
    @Expose
    public TripData tripStart = new TripData();

    @Column
    @Expose
    public TripData tripEnd = new TripData();

    @Column(name = "Battery")
    @Expose
    public BatteryState batteryState = new BatteryState();

    @Column
    @Expose
    public String rawData = "";

    @Column
    @Expose
    public TripLocations locations = new TripLocations();

    public static class BatteryState {

        @Expose
        public float min;

        @Expose
        public float off;

        @Expose
        public float on;
    }

    public static class LocationData {

        @Expose
        public float accuracy;

        @Expose
        public double latitude;

        @Expose
        public double longitude;

        @Expose
        public Date timestamp;
    }

    public static class TripData {

        @Expose
        public int odo;

        @Expose
        public Date time;
    }

    public static class TripLocations extends ArrayList<LocationData> {
    }

    public String getVehicleId() {
        return this.vehicleId;
    }

    public void setVehicleId(String str) {
        this.vehicleId = str;
    }

    public String getUserId() {
        return this.userId;
    }

    public void setUserId(String str) {
        this.userId = str;
    }

    public long getTripNumber() {
        return this.tripNumber;
    }

    public void setTripNumber(long j) {
        this.tripNumber = j;
    }

    public TripData getTripStart() {
        return this.tripStart;
    }

    public void setTripStart(TripData tripData) {
        this.tripStart = tripData;
    }

    public TripData getTripEnd() {
        return this.tripEnd;
    }

    public void setTripEnd(TripData tripData) {
        this.tripEnd = tripData;
    }

    public BatteryState getBatteryState() {
        return this.batteryState;
    }

    public void setBatteryState(BatteryState batteryState) {
        this.batteryState = batteryState;
    }

    public boolean isLightMilOn() {
        return this.lightMilOn;
    }

    public void setLightMilOn(boolean z) {
        this.lightMilOn = z;
    }

    public int getSosNumber() {
        return this.sosNumber;
    }

    public void setSosNumber(int i) {
        this.sosNumber = i;
    }

    public int getTripEndCause() {
        return this.tripEndCause;
    }

    public void setTripEndCause(int i) {
        this.tripEndCause = i;
    }

    public int getOdoMode() {
        return this.odoMode;
    }

    public void setOdoMode(int i) {
        this.odoMode = i;
    }

    public String getRawData() {
        return this.rawData;
    }

    public void setRawData(String str) {
        this.rawData = str;
    }

    public TripLocations getLocations() {
        return this.locations;
    }

    public void setLocations(TripLocations tripLocations) {
        this.locations = tripLocations;
    }

    public static TripModel from(CurrentTrip currentTrip, String str) throws IllegalStateException {
        if (currentTrip == null) {
            Log.e(TAG, "CurrenTrip == null");
            return null;
        }
        return from(currentTrip.getTripBeginInfo(), currentTrip.getTripEndInfo(), currentTrip.getTripStatisticsInfo(), str);
    }

    public static TripModel from(TripInfo tripInfo, String str) throws IllegalStateException {
        if (tripInfo == null) {
            Log.e(TAG, "TripInfo == null");
            return null;
        }
        return from(tripInfo.getTripBeginInfo(), tripInfo.getTripEndInfo(), tripInfo.getTripStatisticsInfo(), str);
    }

    private static TripModel from(TripBeginInfo tripBeginInfo, TripEndInfo tripEndInfo, TripStatisticsInfo tripStatisticsInfo, String str) throws IllegalStateException {
        byte[] rawData;
        byte[] rawData2;
        TripModel tripModel = new TripModel();
        tripModel.setVehicleId(str);
        if (tripBeginInfo == null) {
            rawData = null;
        } else {
            if (tripBeginInfo.getOdometer() == null) {
                throw new IllegalStateException("TripStartInfo#getOdometer() returns null.");
            }
            tripModel.tripStart.odo = Math.round(tripBeginInfo.getOdometer().floatValue());
            tripModel.tripStart.time = tripBeginInfo.getTimeStamp();
            if (tripBeginInfo.getAverageVoltageEngineOff() == null) {
                tripModel.batteryState.off = 0.0f;
            } else {
                tripModel.batteryState.off = tripBeginInfo.getAverageVoltageEngineOff().floatValue();
            }
            if (tripBeginInfo.getMinVoltageEngineOff() == null) {
                tripModel.batteryState.min = 0.0f;
            } else {
                tripModel.batteryState.min = tripBeginInfo.getMinVoltageEngineOff().floatValue();
            }
            rawData = tripBeginInfo.getRawData();
        }
        if (tripEndInfo != null) {
            if (tripEndInfo.getDriverID() != null) {
                tripModel.userId = tripEndInfo.getDriverID().toString();
            }
            if (tripEndInfo.getOdometer() == null) {
                throw new IllegalStateException("TripStopInfo#getOdometer() returns null.");
            }
            tripModel.tripEnd.odo = Math.round(tripEndInfo.getOdometer().floatValue());
            tripModel.tripEnd.time = tripEndInfo.getTimeStamp();
            tripModel.tripNumber = tripEndInfo.getTripNumber().longValue();
            if (tripEndInfo.getMaxVoltageEngineOn() == null) {
                tripModel.batteryState.on = 0.0f;
            } else {
                tripModel.batteryState.on = tripEndInfo.getMaxVoltageEngineOn().floatValue();
            }
            if (tripEndInfo.getNumOfImpactDetected() == null) {
                tripModel.sosNumber = 0;
            } else {
                tripModel.sosNumber = tripEndInfo.getNumOfImpactDetected().intValue();
            }
            Boolean boolIsMILLampDetected = tripEndInfo.isMILLampDetected();
            if (boolIsMILLampDetected == null) {
                tripModel.lightMilOn = false;
            } else {
                tripModel.lightMilOn = boolIsMILLampDetected.booleanValue();
            }
            tripModel.tripEndCause = getTripEndCause(tripEndInfo.getTripEndCause());
            tripModel.odoMode = getOdometerEstimationMethod(tripEndInfo.getOdometerEstimationMethod());
            rawData2 = tripEndInfo.getRawData();
        } else {
            rawData2 = null;
        }
        byte[] combinedTripRawData = Utils.getCombinedTripRawData(rawData, rawData2, null, tripStatisticsInfo != null ? tripStatisticsInfo.getRawData() : null);
        if (combinedTripRawData != null && combinedTripRawData.length > 0) {
            tripModel.rawData = convertRawData(combinedTripRawData);
        } else {
            tripModel.rawData = "";
        }
        return tripModel;
    }

    protected static int getOdometerEstimationMethod(TripEndInfo.OdometerEstimationMethod odometerEstimationMethod) {
        int i = AnonymousClass1.$SwitchMap$com$texa$carelib$care$trips$TripEndInfo$OdometerEstimationMethod[odometerEstimationMethod.ordinal()];
        int i2 = 1;
        if (i != 1) {
            i2 = 2;
            if (i != 2) {
                return 0;
            }
        }
        return i2;
    }

    /* JADX INFO: renamed from: com.texa.careapp.model.TripModel$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$carelib$care$trips$TripEndInfo$OdometerEstimationMethod;
        static final /* synthetic */ int[] $SwitchMap$com$texa$carelib$care$trips$TripEndInfo$TripEndCause;

        static {
            int[] iArr = new int[TripEndInfo.TripEndCause.values().length];
            $SwitchMap$com$texa$carelib$care$trips$TripEndInfo$TripEndCause = iArr;
            try {
                iArr[TripEndInfo.TripEndCause.ExternalCommand.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$texa$carelib$care$trips$TripEndInfo$TripEndCause[TripEndInfo.TripEndCause.LowRPM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$texa$carelib$care$trips$TripEndInfo$TripEndCause[TripEndInfo.TripEndCause.CommunicationLost.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$texa$carelib$care$trips$TripEndInfo$TripEndCause[TripEndInfo.TripEndCause.LowBatteryVoltage.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[TripEndInfo.OdometerEstimationMethod.values().length];
            $SwitchMap$com$texa$carelib$care$trips$TripEndInfo$OdometerEstimationMethod = iArr2;
            try {
                iArr2[TripEndInfo.OdometerEstimationMethod.Diagnostic.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$texa$carelib$care$trips$TripEndInfo$OdometerEstimationMethod[TripEndInfo.OdometerEstimationMethod.Estimated.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    protected static int getTripEndCause(TripEndInfo.TripEndCause tripEndCause) {
        int i = AnonymousClass1.$SwitchMap$com$texa$carelib$care$trips$TripEndInfo$TripEndCause[tripEndCause.ordinal()];
        int i2 = 1;
        if (i != 1) {
            i2 = 2;
            if (i != 2) {
                i2 = 3;
                if (i != 3) {
                    i2 = 4;
                    if (i != 4) {
                        return 0;
                    }
                }
            }
        }
        return i2;
    }

    private static String convertRawData(byte[] bArr) {
        try {
            return Utils.convertTripDataRaw(bArr);
        } catch (UnsupportedEncodingException e) {
            Log.d(TAG, "got exception", e);
            return null;
        }
    }

    public void addLocation(Location location) {
        if (location != null) {
            LocationData locationData = new LocationData();
            locationData.latitude = location.getLatitude();
            locationData.longitude = location.getLongitude();
            locationData.accuracy = location.getAccuracy();
            locationData.timestamp = new Date();
            this.locations.add(locationData);
        }
    }

    public void updateData(TripModel tripModel) {
        setVehicleId(tripModel.getVehicleId());
        setTripNumber(tripModel.getTripNumber());
        setTripEnd(tripModel.getTripEnd());
        setTripStart(tripModel.getTripStart());
        setBatteryState(tripModel.getBatteryState());
        this.lightMilOn = tripModel.isLightMilOn();
        setSosNumber(tripModel.getSosNumber());
        setTripEndCause(tripModel.getTripEndCause());
        setOdoMode(tripModel.getOdoMode());
        setRawData(tripModel.getRawData());
        this.locations.addAll(tripModel.getLocations());
        this.userId = tripModel.userId;
    }

    @Override // com.activeandroid.Model
    public String toString() {
        return Utils.buildGsonInstance().toJson(this);
    }
}
