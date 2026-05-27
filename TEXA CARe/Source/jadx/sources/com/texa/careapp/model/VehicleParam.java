package com.texa.careapp.model;

import android.content.Context;
import com.activeandroid.Cache;
import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.texa.care.R;
import com.texa.careapp.Constants;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.utils.MeasureUnit;
import com.texa.careapp.utils.Timestamped;
import com.texa.careapp.utils.Utils;
import com.texa.carelib.care.vehicle.InvalidVehicleValueException;
import com.texa.carelib.care.vehicle.ValueDataType;
import com.texa.carelib.care.vehicle.ValueInfo;
import com.texa.carelib.care.vehicle.Vehicle;
import com.texa.carelib.diagresources.DataID;
import com.texa.carelib.diagresources.EnumValue;
import io.reactivex.Observable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
@Table(name = "VehicleParam")
public class VehicleParam extends Model implements Comparable<VehicleParam> {
    public static final String COLUMN_DATA_ID = "dataId";
    public static final String COLUMN_HISTORICAL_PARAMS = "historicalParams";
    public static final String COLUMN_SYNC_NEEDED = "sync_needed";
    public static final String COLUMN_VEHICLE = "vehicle";
    public static final String TABLE_VEHICLES_PARAM = "VehicleParam";
    private static final String TAG = "VehicleParam";

    @Column(index = true, name = "dataId", uniqueGroups = {"key"})
    private long dataId;

    @Column
    private int maxValue;

    @Column(name = "sync_needed")
    private boolean syncNeeded = false;

    @Column
    private long timestamp;

    @Column
    private MeasureUnit unit;

    @Column
    private ValueDataType valueDataType;

    @Column
    private String valueFormatted;

    @Column
    private Double valueNumeric;

    @Column
    private long valueStatus;

    @Column
    private String valueString;

    @Column(index = true, name = "vehicle", onDelete = Column.ForeignKeyAction.CASCADE, uniqueGroups = {"key"})
    private VehicleModel vehicleModel;

    public void update(Timestamped<Long> timestamped, Vehicle vehicle) {
    }

    public void setDataId(long j) {
        this.dataId = j;
    }

    public void setMaxValue(int i) {
        this.maxValue = i;
    }

    public void setSyncNeeded(boolean z) {
        this.syncNeeded = z;
    }

    public void setTimestamp(long j) {
        this.timestamp = j;
    }

    public void setUnit(MeasureUnit measureUnit) {
        this.unit = measureUnit;
    }

    public void setValueDataType(ValueDataType valueDataType) {
        this.valueDataType = valueDataType;
    }

    public void setValueFormatted(String str) {
        this.valueFormatted = str;
    }

    public void setValueNumeric(Double d) {
        this.valueNumeric = d;
    }

    public void setValueStatus(long j) {
        this.valueStatus = j;
    }

    public void setValueString(String str) {
        this.valueString = str;
    }

    public void setVehicleModel(VehicleModel vehicleModel) {
        this.vehicleModel = vehicleModel;
    }

    protected boolean canEqual(Object obj) {
        return obj instanceof VehicleParam;
    }

    @Override // com.activeandroid.Model
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof VehicleParam)) {
            return false;
        }
        VehicleParam vehicleParam = (VehicleParam) obj;
        return vehicleParam.canEqual(this) && getDataId() == vehicleParam.getDataId();
    }

    @Override // com.activeandroid.Model
    public int hashCode() {
        long dataId = getDataId();
        return 59 + ((int) (dataId ^ (dataId >>> 32)));
    }

    public VehicleModel getVehicleModel() {
        return this.vehicleModel;
    }

    public long getDataId() {
        return this.dataId;
    }

    public String getValueFormatted() {
        return this.valueFormatted;
    }

    public Double getValueNumeric() {
        return this.valueNumeric;
    }

    public String getValueString() {
        return this.valueString;
    }

    public long getValueStatus() {
        return this.valueStatus;
    }

    public MeasureUnit getUnit() {
        return this.unit;
    }

    public ValueDataType getValueDataType() {
        return this.valueDataType;
    }

    public int getMaxValue() {
        return this.maxValue;
    }

    public long getTimestamp() {
        return this.timestamp;
    }

    public boolean isSyncNeeded() {
        return this.syncNeeded;
    }

    public static VehicleParam from(Context context, VehicleModel vehicleModel, VehicleScheduleModel vehicleScheduleModel) {
        int iIntValue = vehicleModel.getOdometer().intValue();
        int iIntValue2 = vehicleScheduleModel.getExpireOdo().intValue();
        int i = iIntValue2 - iIntValue;
        if (i < 0) {
            i = 0;
        }
        VehicleParam vehicleParam = new VehicleParam();
        vehicleParam.setValueNumeric(Double.valueOf(iIntValue));
        vehicleParam.setMaxValue(iIntValue2);
        vehicleParam.setValueFormatted(context.getString(R.string.remaining_km, Integer.valueOf(i)));
        return vehicleParam;
    }

    @Override // java.lang.Comparable
    public int compareTo(VehicleParam vehicleParam) {
        if (vehicleParam == null) {
            return 1;
        }
        return getValueFormatted().compareTo(vehicleParam.getValueFormatted());
    }

    public Observable<VehicleParam> asObservable() {
        return Observable.just(this);
    }

    public void markAsUnsynchronized() throws DatabaseIOException {
        setSyncNeeded(true);
        Utils.safeModelSave(this, Cache.getContext());
    }

    public VehicleParam update(Timestamped<Long> timestamped, Vehicle vehicle, long j) throws DatabaseIOException {
        ValueInfo valueInfo;
        long jLongValue = timestamped.getValue().longValue();
        long j2 = this.dataId;
        if (j2 == 0) {
            setDataId(jLongValue);
        } else if (j2 != jLongValue) {
            throw new IllegalArgumentException("dataId mismatch!");
        }
        try {
            valueInfo = vehicle.getValueInfo(Long.valueOf(jLongValue));
        } catch (InvalidVehicleValueException e) {
            Timber.d(e, "got exception on Switch(valueDataType)", new Object[0]);
        }
        if (valueInfo == null) {
            Timber.e("ValueInfo of VehicleParam with id: %s is NULL", Long.valueOf(jLongValue));
            return null;
        }
        this.valueDataType = valueInfo.getType();
        this.timestamp = timestamped.getTimestampMillis();
        this.unit = Constants.DATAID_MEASURE_UNIT.get(jLongValue);
        int i = AnonymousClass1.$SwitchMap$com$texa$carelib$care$vehicle$ValueDataType[this.valueDataType.ordinal()];
        if (i == 1) {
            setValueNumeric(Double.valueOf(vehicle.getNumericValue(Long.valueOf(jLongValue))));
            setValueFormatted(vehicle.getFormattedNumericValue(Long.valueOf(jLongValue)));
        } else if (i == 2) {
            setValueStatus(vehicle.getEnumValue(Long.valueOf(jLongValue)));
        } else if (i == 3) {
            setValueString(vehicle.getTextValue(Long.valueOf(jLongValue)));
        }
        Utils.safeModelSave(this, Cache.getContext());
        if ((jLongValue == DataID.Parameter.ENGINE_TEMP.getId() || jLongValue == DataID.Parameter.FUEL_LEVEL_ABS.getId() || jLongValue == DataID.Parameter.FUEL_LEVEL_REL.getId()) && getValueNumeric().doubleValue() > -15.0d) {
            List<VehicleParamHistoryModel> historyParam = getHistoryParam();
            if (!historyParam.isEmpty() && historyParam.size() >= 500) {
                removeParamFromHistory(historyParam.get(0));
            }
            VehicleParamHistoryModel vehicleParamHistoryModel = new VehicleParamHistoryModel();
            vehicleParamHistoryModel.setOdoValue(this.vehicleModel.getOdometer().doubleValue());
            vehicleParamHistoryModel.setValue(getValueNumeric().doubleValue());
            vehicleParamHistoryModel.setDate(new Date(this.timestamp));
            vehicleParamHistoryModel.setTrip(j);
            addParamToHistory(vehicleParamHistoryModel);
        }
        return this;
    }

    /* JADX INFO: renamed from: com.texa.careapp.model.VehicleParam$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$carelib$care$vehicle$ValueDataType;

        static {
            int[] iArr = new int[ValueDataType.values().length];
            $SwitchMap$com$texa$carelib$care$vehicle$ValueDataType = iArr;
            try {
                iArr[ValueDataType.NUMERIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$texa$carelib$care$vehicle$ValueDataType[ValueDataType.ENUM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$texa$carelib$care$vehicle$ValueDataType[ValueDataType.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public String formatForUser(Context context) {
        if (this.dataId == DataID.Enum.OIL_LEVEL_STATUS.getId()) {
            if (getValueStatus() == EnumValue.ACTIVE.getId()) {
                return context.getString(R.string.level_not_ok);
            }
            return context.getString(R.string.level_ok);
        }
        if (this.dataId == DataID.Enum.OIL_QUALITY_STATUS.getId()) {
            if (getValueStatus() == EnumValue.ACTIVE.getId()) {
                return context.getString(R.string.oil_quality_status_not_ok);
            }
            return context.getString(R.string.oil_quality_status_ok);
        }
        if (this.unit != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(getValueFormatted());
            sb.append(" ");
            sb.append(this.unit.getStringRes() != 0 ? context.getString(this.unit.getStringRes()) : "");
            return sb.toString();
        }
        return getValueFormatted();
    }

    @Override // com.activeandroid.Model
    public String toString() {
        return "VehicleParam{dataId=" + this.dataId + ", valueFormatted='" + this.valueFormatted + "', valueNumeric=" + this.valueNumeric + ", valueString='" + this.valueString + "', valueStatus=" + this.valueStatus + ", unit=" + this.unit + ", valueDataType=" + this.valueDataType + ", maxValue=" + this.maxValue + ", timestamp=" + this.timestamp + ", syncNeeded=" + this.syncNeeded + '}';
    }

    public List<VehicleParamHistoryModel> getHistoryParam() {
        List<VehicleParamHistoryModel> many = getMany(VehicleParamHistoryModel.class, VehicleParamHistoryModel.COLUMN_ID_PARAM);
        ArrayList arrayList = new ArrayList();
        for (VehicleParamHistoryModel vehicleParamHistoryModel : many) {
            if (vehicleParamHistoryModel.getDate() != null) {
                arrayList.add(vehicleParamHistoryModel);
            }
        }
        return arrayList;
    }

    public void addParamToHistory(VehicleParamHistoryModel vehicleParamHistoryModel) throws DatabaseIOException {
        vehicleParamHistoryModel.setVehicleParam(this);
        Utils.safeModelSave(vehicleParamHistoryModel, Cache.getContext());
    }

    public void removeParamFromHistory(VehicleParamHistoryModel vehicleParamHistoryModel) {
        vehicleParamHistoryModel.delete();
    }
}
