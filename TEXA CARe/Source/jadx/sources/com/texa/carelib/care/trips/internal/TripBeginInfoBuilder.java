package com.texa.carelib.care.trips.internal;

import com.texa.carelib.care.trips.TripBeginInfo;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class TripBeginInfoBuilder {
    private Float averageVoltageEngineOff;
    private Float minVoltageEngineOff;
    private Float odometer;
    private byte[] rawData;
    private Long relativeTripNumber;
    private Integer timeZoneOffset = 128;
    private Date timestamp;
    private Long tripNumber;
    private int version;

    public static TripBeginInfoBuilder from(TripBeginInfo tripBeginInfo) {
        TripBeginInfoBuilder tripBeginInfoBuilder = new TripBeginInfoBuilder();
        if (tripBeginInfo != null) {
            if (tripBeginInfo.getRawData() != null) {
                int length = tripBeginInfo.getRawData().length;
                byte[] bArr = new byte[length];
                System.arraycopy(tripBeginInfo.getRawData(), 0, bArr, 0, length);
                tripBeginInfoBuilder.setRawData(bArr);
            }
            tripBeginInfoBuilder.setVersion(tripBeginInfo.getVersion()).setTripNumber(tripBeginInfo.getTripNumber()).setRelativeTripNumber(tripBeginInfo.getRelativeTripNumber()).setOdometer(tripBeginInfo.getOdometer()).setAverageVoltageEngineOff(tripBeginInfo.getAverageVoltageEngineOff()).setMinVoltageEngineOff(tripBeginInfo.getMinVoltageEngineOff()).setTimestamp(tripBeginInfo.getTimeStamp()).setTimeZoneOffset(tripBeginInfo.getTimeZoneOffset());
        }
        return tripBeginInfoBuilder;
    }

    public TripBeginInfoBuilder setRawData(byte[] bArr) {
        this.rawData = bArr;
        return this;
    }

    public TripBeginInfoBuilder setVersion(int i) {
        this.version = i;
        return this;
    }

    public TripBeginInfoBuilder setTripNumber(Long l) {
        this.tripNumber = l;
        return this;
    }

    public TripBeginInfoBuilder setRelativeTripNumber(Long l) {
        this.relativeTripNumber = l;
        return this;
    }

    public TripBeginInfoBuilder setOdometer(Float f) {
        this.odometer = f;
        return this;
    }

    public TripBeginInfoBuilder setAverageVoltageEngineOff(Float f) {
        this.averageVoltageEngineOff = f;
        return this;
    }

    public TripBeginInfoBuilder setMinVoltageEngineOff(Float f) {
        this.minVoltageEngineOff = f;
        return this;
    }

    public TripBeginInfoBuilder setTimestamp(Date date) {
        this.timestamp = date;
        return this;
    }

    public TripBeginInfoBuilder setTimeZoneOffset(Integer num) {
        if (num == null) {
            this.timeZoneOffset = 128;
        } else {
            this.timeZoneOffset = num;
        }
        return this;
    }

    public TripBeginInfo build() {
        return new TripBeginInfo(this.rawData, this.version, this.tripNumber, this.relativeTripNumber, this.odometer, this.averageVoltageEngineOff, this.minVoltageEngineOff, this.timestamp, this.timeZoneOffset);
    }
}
