package com.texa.carelib.care.vehicle.internal;

import com.texa.carelib.care.DateTime;
import com.texa.carelib.care.vehicle.InvalidVehicleValueException;
import com.texa.carelib.care.vehicle.SubscriptionState;
import com.texa.carelib.care.vehicle.ValueDataType;
import com.texa.carelib.care.vehicle.ValueInfo;
import java.util.Arrays;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class DiaValueInfo implements ValueInfo {
    private byte[] mData;
    private byte[] mDataDetails;
    private Date mDateLastUpdate;
    private long mID;
    private boolean mIsAvailable;
    private Long mSubscriptionInterval;
    private SubscriptionState mSubscriptionState;
    private ValueDataType mType;
    private VehicleValueParser mVehicleValueParser;

    DiaValueInfo() {
        this.mID = 0L;
        this.mType = ValueDataType.NOT_READ;
        this.mData = null;
        this.mDataDetails = null;
        this.mIsAvailable = false;
        this.mDateLastUpdate = null;
        this.mSubscriptionState = SubscriptionState.NotSubscribed;
        this.mSubscriptionInterval = null;
        this.mVehicleValueParser = new VehicleValueParserLegacy();
    }

    DiaValueInfo(DiaValueInfo diaValueInfo) {
        this();
        if (diaValueInfo != null) {
            this.mID = diaValueInfo.mID;
            this.mType = diaValueInfo.mType;
            this.mIsAvailable = diaValueInfo.mIsAvailable;
            byte[] bArr = diaValueInfo.mData;
            if (bArr != null) {
                byte[] bArr2 = new byte[bArr.length];
                this.mData = bArr2;
                System.arraycopy(diaValueInfo.mData, 0, bArr2, 0, bArr2.length);
            }
            byte[] bArr3 = diaValueInfo.mDataDetails;
            if (bArr3 != null) {
                byte[] bArr4 = new byte[bArr3.length];
                this.mDataDetails = bArr4;
                System.arraycopy(diaValueInfo.mDataDetails, 0, bArr4, 0, bArr4.length);
            }
            Date date = diaValueInfo.mDateLastUpdate;
            if (date != null) {
                this.mDateLastUpdate = (Date) date.clone();
            }
            this.mSubscriptionState = diaValueInfo.mSubscriptionState;
            this.mSubscriptionInterval = diaValueInfo.mSubscriptionInterval;
            this.mVehicleValueParser = diaValueInfo.mVehicleValueParser;
        }
    }

    @Override // com.texa.carelib.care.vehicle.ValueInfo
    public long getID() {
        return this.mID;
    }

    DiaValueInfo setID(long j) {
        this.mID = j;
        return this;
    }

    @Override // com.texa.carelib.care.vehicle.ValueInfo
    public ValueDataType getType() {
        return this.mType;
    }

    DiaValueInfo setType(ValueDataType valueDataType) {
        this.mType = valueDataType;
        return this;
    }

    public byte[] getData() {
        return this.mData;
    }

    public byte[] getDataDetails() {
        return this.mDataDetails;
    }

    ValueInfo setData(byte[] bArr, byte[] bArr2) {
        return setData(bArr, bArr2, this.mVehicleValueParser);
    }

    DiaValueInfo setData(byte[] bArr, byte[] bArr2, VehicleValueParser vehicleValueParser) {
        this.mData = bArr;
        this.mDataDetails = bArr2;
        this.mVehicleValueParser = vehicleValueParser;
        return this;
    }

    @Override // com.texa.carelib.care.vehicle.ValueInfo
    public boolean isAvailable() {
        return this.mIsAvailable;
    }

    ValueInfo setAvailable(boolean z) {
        this.mIsAvailable = z;
        return this;
    }

    @Override // com.texa.carelib.care.vehicle.ValueInfo
    public Date getDateLastUpdate() {
        return this.mDateLastUpdate;
    }

    DiaValueInfo setDateLastUpdate(Date date) {
        this.mDateLastUpdate = date;
        return this;
    }

    @Override // com.texa.carelib.care.vehicle.ValueInfo
    public Long getSubscriptionInterval() {
        return this.mSubscriptionInterval;
    }

    ValueInfo setSubscriptionInterval(Long l) {
        this.mSubscriptionInterval = l;
        return this;
    }

    @Override // com.texa.carelib.care.vehicle.ValueInfo
    public SubscriptionState getSubscriptionState() {
        return this.mSubscriptionState;
    }

    ValueInfo setSubscriptionState(SubscriptionState subscriptionState) {
        this.mSubscriptionState = subscriptionState;
        return this;
    }

    @Override // com.texa.carelib.care.vehicle.ValueInfo
    public String toTextValue() throws InvalidVehicleValueException {
        return this.mVehicleValueParser.getTextValue(this.mData, this.mDataDetails);
    }

    @Override // com.texa.carelib.care.vehicle.ValueInfo
    public String toFormattedNumericValue() throws InvalidVehicleValueException {
        double numericValue = toNumericValue();
        if (Double.isNaN(numericValue)) {
            return String.valueOf(numericValue);
        }
        return String.format(Locale.getDefault(), String.format(Locale.US, "%%.%df", Integer.valueOf(getPrecision())), Double.valueOf(numericValue));
    }

    @Override // com.texa.carelib.care.vehicle.ValueInfo
    public double toNumericValue() throws InvalidVehicleValueException {
        return this.mVehicleValueParser.getParameterValue(this.mData, this.mDataDetails);
    }

    @Override // com.texa.carelib.care.vehicle.ValueInfo
    public double toNumericValue(int i) throws InvalidVehicleValueException {
        double numericValue = toNumericValue();
        return Math.round(numericValue * r2) / ((int) Math.pow(10.0d, i));
    }

    @Override // com.texa.carelib.care.vehicle.ValueInfo
    public int getPrecision() {
        return this.mVehicleValueParser.getParameterPrecision(this.mDataDetails);
    }

    @Override // com.texa.carelib.care.vehicle.ValueInfo
    public long toEnumValue() throws InvalidVehicleValueException {
        return this.mVehicleValueParser.getEnumValue(this.mData, this.mDataDetails);
    }

    @Override // com.texa.carelib.care.vehicle.ValueInfo
    public DateTime toDateTimeValue() throws InvalidVehicleValueException {
        return this.mVehicleValueParser.getDateTime(this.mData, this.mDataDetails);
    }

    @Override // com.texa.carelib.care.vehicle.ValueInfo
    public byte getDataStatus() {
        return this.mVehicleValueParser.getDataStatus(this.mDataDetails);
    }

    DiaValueInfo setDataStatus(byte b) throws InvalidVehicleValueException {
        this.mVehicleValueParser.setDataStatus(this.mDataDetails, b);
        return this;
    }

    boolean hasData() {
        return (this.mData == null || this.mDataDetails == null || this.mVehicleValueParser == null) ? false : true;
    }

    @Override // com.texa.carelib.care.vehicle.ValueInfo
    public String toString() {
        return "DiaValueInfo{mID=" + this.mID + ", mType=" + this.mType + ", mData=" + Arrays.toString(this.mData) + ", mDataDetails=" + Arrays.toString(this.mDataDetails) + ", mIsAvailable=" + this.mIsAvailable + ", mDateLastUpdate=" + this.mDateLastUpdate + ", mSubscriptionState=" + this.mSubscriptionState + ", mSubscriptionInterval=" + this.mSubscriptionInterval + '}';
    }
}
