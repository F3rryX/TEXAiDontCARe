package com.texa.carelib.care.trips.internal;

import com.texa.carelib.care.trips.TripEndInfo;
import java.util.Date;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class TripEndInfoBuilder {
    private UUID driverID;
    private Boolean isMILLampDetected;
    private Float maxVoltageEngineOn;
    private Integer numOfImpactDetected;
    private Float odometer;
    private TripEndInfo.OdometerEstimationMethod odometerEstimationMethod;
    private byte[] rawData;
    private Integer timeZoneOffset = 128;
    private Date timestamp;
    private TripEndInfo.TripEndCause tripEndCause;
    private Long tripNumber;
    private int version;

    public static TripEndInfoBuilder from(TripEndInfo tripEndInfo) {
        TripEndInfoBuilder tripEndInfoBuilder = new TripEndInfoBuilder();
        if (tripEndInfo != null) {
            if (tripEndInfo.getRawData() != null) {
                int length = tripEndInfo.getRawData().length;
                byte[] bArr = new byte[length];
                System.arraycopy(tripEndInfo.getRawData(), 0, bArr, 0, length);
                tripEndInfoBuilder.setRawData(bArr);
            }
            tripEndInfoBuilder.setVersion(tripEndInfo.getVersion()).setOdometer(tripEndInfo.getOdometer()).setTripNumber(tripEndInfo.getTripNumber()).setOdometerEstimationMethod(tripEndInfo.getOdometerEstimationMethod()).setMaxVoltageEngineOn(tripEndInfo.getMaxVoltageEngineOn()).setIsMILLampDetected(tripEndInfo.isMILLampDetected()).setTripEndCause(tripEndInfo.getTripEndCause()).setNumOfImpactDetected(tripEndInfo.getNumOfImpactDetected()).setDriverID(tripEndInfo.getDriverID()).setTimeZoneOffset(tripEndInfo.getTimeZoneOffset()).setTimestamp(tripEndInfo.getTimeStamp());
        }
        return tripEndInfoBuilder;
    }

    public TripEndInfoBuilder setRawData(byte[] bArr) {
        this.rawData = bArr;
        return this;
    }

    public TripEndInfoBuilder setVersion(int i) {
        this.version = i;
        return this;
    }

    public TripEndInfoBuilder setOdometer(Float f) {
        this.odometer = f;
        return this;
    }

    public TripEndInfoBuilder setTripNumber(Long l) {
        this.tripNumber = l;
        return this;
    }

    public TripEndInfoBuilder setOdometerEstimationMethod(TripEndInfo.OdometerEstimationMethod odometerEstimationMethod) {
        this.odometerEstimationMethod = odometerEstimationMethod;
        return this;
    }

    public TripEndInfoBuilder setMaxVoltageEngineOn(Float f) {
        this.maxVoltageEngineOn = f;
        return this;
    }

    public TripEndInfoBuilder setIsMILLampDetected(Boolean bool) {
        this.isMILLampDetected = bool;
        return this;
    }

    public TripEndInfoBuilder setTripEndCause(TripEndInfo.TripEndCause tripEndCause) {
        this.tripEndCause = tripEndCause;
        return this;
    }

    public TripEndInfoBuilder setNumOfImpactDetected(Integer num) {
        this.numOfImpactDetected = num;
        return this;
    }

    public TripEndInfoBuilder setDriverID(UUID uuid) {
        this.driverID = uuid;
        return this;
    }

    public TripEndInfoBuilder setTimeZoneOffset(Integer num) {
        if (num == null) {
            this.timeZoneOffset = 128;
        } else {
            this.timeZoneOffset = num;
        }
        return this;
    }

    public TripEndInfoBuilder setTimestamp(Date date) {
        this.timestamp = date;
        return this;
    }

    public TripEndInfo build() {
        return new TripEndInfo(this.rawData, this.version, this.odometer, this.tripNumber, this.odometerEstimationMethod, this.maxVoltageEngineOn, this.isMILLampDetected, this.tripEndCause, this.numOfImpactDetected, this.driverID, this.timeZoneOffset, this.timestamp);
    }
}
