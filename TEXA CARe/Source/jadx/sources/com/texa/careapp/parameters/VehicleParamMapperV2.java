package com.texa.careapp.parameters;

import android.content.Context;
import android.util.Log;
import android.util.LongSparseArray;
import com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem;
import com.texa.careapp.app.diagnosis.tab.chart.ParametersChartLine;
import com.texa.careapp.model.VehicleParam;
import com.texa.carelib.communication.Communication;
import com.texa.carelib.diagresources.DataID;

/* JADX INFO: loaded from: classes2.dex */
public class VehicleParamMapperV2 {
    private static final String TAG = "VehicleParamMapperV2";
    private Communication mCommunication;
    private Context mContext;
    private ParameterAbsCngLevel mParameterAbsCngLevel;
    private ParameterAbsLpgLevel mParameterAbsLpgLevel;
    private ParameterBatteryCharge mParameterBatteryCharge;
    private ParameterBatteryVoltage mParameterBatteryVoltage;
    private ParameterCruisingRange mParameterCruisingRange;
    private ParameterCruisingRangeGas mParameterCruisingRangeGas;
    private ParameterDaysLastService mParameterDaysLastService;
    private ParameterDaysNextService mParameterDaysNextService;
    private ParameterDistanceLastService mParameterDistanceLastService;
    private ParameterDistanceNextService mParameterDistanceNextService;
    private ParameterEngineRpm mParameterEngineRpm;
    private ParameterEngineTemperature mParameterEngineTemperature;
    private ParameterFuelLevel mParameterFuelLevel;
    private ParameterOilLevel mParameterOilLevel;
    private ParameterOilLevelStatus mParameterOilLevelStatus;
    private ParameterOilQualityStatus mParameterOilQualityStatus;
    private ParameterOilQualityVal mParameterOilQualityVal;
    private ParameterRelGasLevel mParameterRelGasLevel;
    private ParameterVehicleSpeed mParameterVehicleSpeed;
    private LongSparseArray<ParametersChartItem> mParameters = new LongSparseArray<>();
    private LongSparseArray<ParametersChartLine> mCardParameters = new LongSparseArray<>();

    public VehicleParamMapperV2(Context context, Communication communication) {
        this.mContext = context;
        this.mCommunication = communication;
        refreshBaseParameter();
    }

    public LongSparseArray<ParametersChartItem> updateParam(VehicleParam vehicleParam) {
        long dataId = vehicleParam.getDataId();
        if (dataId == DataID.Parameter.OIL_LEVEL_REL.getId() || dataId == DataID.Parameter.OIL_LEVEL_ABS.getId()) {
            if (this.mParameterOilLevel == null) {
                this.mParameterOilLevel = new ParameterOilLevel(this.mContext);
                addToList(Long.valueOf(dataId), this.mParameterOilLevel);
            }
            this.mParameterOilLevel.update(vehicleParam);
            Log.v(TAG, "mParameterOilLevel=" + this.mParameterOilLevel);
        } else if (dataId == DataID.Parameter.FUEL_LEVEL_ABS.getId() || dataId == DataID.Parameter.FUEL_LEVEL_REL.getId()) {
            if (this.mParameterFuelLevel == null) {
                this.mParameterFuelLevel = new ParameterFuelLevel(this.mContext);
                addToList(Long.valueOf(dataId), this.mParameterFuelLevel);
            }
            this.mParameterFuelLevel.update(vehicleParam);
            Log.v(TAG, "mParameterFuelLevel=" + this.mParameterFuelLevel);
        } else if (dataId == DataID.Parameter.CRUISING_RANGE.getId()) {
            if (this.mParameterCruisingRange == null) {
                this.mParameterCruisingRange = new ParameterCruisingRange(this.mContext);
                addToList(Long.valueOf(dataId), this.mParameterCruisingRange);
            }
            this.mParameterCruisingRange.update(vehicleParam);
            Log.v(TAG, "mParameterCruisingRange=" + this.mParameterCruisingRange);
        } else if (dataId == DataID.Parameter.CRUISING_RANGE_GAS.getId()) {
            if (this.mParameterCruisingRangeGas == null) {
                this.mParameterCruisingRangeGas = new ParameterCruisingRangeGas(this.mContext);
                addToList(Long.valueOf(dataId), this.mParameterCruisingRangeGas);
            }
            this.mParameterCruisingRangeGas.update(vehicleParam);
            Log.v(TAG, "mParameterCruisingRangeGas=" + this.mParameterCruisingRangeGas);
        } else if (dataId == DataID.Parameter.BATTERY_CHARGE_LEVEL.getId()) {
            if (this.mParameterBatteryCharge == null) {
                this.mParameterBatteryCharge = new ParameterBatteryCharge(this.mContext);
                addToList(Long.valueOf(dataId), this.mParameterBatteryCharge);
            }
            this.mParameterBatteryCharge.update(vehicleParam);
            Log.v(TAG, "mParameterBatteryCharge=" + this.mParameterBatteryCharge);
        } else if (dataId == DataID.Enum.OIL_LEVEL_STATUS.getId()) {
            if (this.mParameterOilLevelStatus == null) {
                this.mParameterOilLevelStatus = new ParameterOilLevelStatus(this.mContext);
                addToList(Long.valueOf(dataId), this.mParameterOilLevelStatus);
            }
            this.mParameterOilLevelStatus.update(vehicleParam);
            Log.v(TAG, "mParameterOilLevelStatus=" + this.mParameterOilLevelStatus);
        } else if (dataId == DataID.Enum.OIL_QUALITY_STATUS.getId()) {
            if (this.mParameterOilQualityStatus == null) {
                this.mParameterOilQualityStatus = new ParameterOilQualityStatus(this.mContext);
                addToList(Long.valueOf(dataId), this.mParameterOilQualityStatus);
            }
            this.mParameterOilQualityStatus.update(vehicleParam);
            Log.v(TAG, "mParameterOilQualityStatus=" + this.mParameterOilQualityStatus);
        } else if (dataId == DataID.Parameter.OIL_QUALITY_VAL.getId()) {
            if (this.mParameterOilQualityVal == null) {
                this.mParameterOilQualityVal = new ParameterOilQualityVal(this.mContext);
                addToList(Long.valueOf(dataId), this.mParameterOilQualityVal);
            }
            this.mParameterOilQualityVal.update(vehicleParam);
            Log.v(TAG, "mParameterOilQualityVal=" + this.mParameterOilQualityVal);
        } else if (dataId == DataID.Parameter.REL_GAS_LEVEL.getId()) {
            if (this.mParameterRelGasLevel == null) {
                this.mParameterRelGasLevel = new ParameterRelGasLevel(this.mContext);
                addToList(Long.valueOf(dataId), this.mParameterRelGasLevel);
            }
            this.mParameterRelGasLevel.update(vehicleParam);
            Log.v(TAG, "mParameterRelGasLevel=" + this.mParameterRelGasLevel);
        } else if (dataId == DataID.Parameter.ABS_LPG_LEVEL.getId()) {
            if (this.mParameterAbsLpgLevel == null) {
                this.mParameterAbsLpgLevel = new ParameterAbsLpgLevel(this.mContext);
                addToList(Long.valueOf(dataId), this.mParameterAbsLpgLevel);
            }
            this.mParameterAbsLpgLevel.update(vehicleParam);
            Log.v(TAG, "mParameterAbsLpgLevel=" + this.mParameterAbsLpgLevel);
        } else if (dataId == DataID.Parameter.ABS_CNG_LEVEL.getId()) {
            if (this.mParameterAbsCngLevel == null) {
                this.mParameterAbsCngLevel = new ParameterAbsCngLevel(this.mContext);
                addToList(Long.valueOf(dataId), this.mParameterAbsCngLevel);
            }
            this.mParameterAbsCngLevel.update(vehicleParam);
            Log.v(TAG, "mParameterAbsCngLevel=" + this.mParameterAbsCngLevel);
        } else if (dataId == DataID.Parameter.DISTANCE_NEXT_SERVICE.getId()) {
            if (this.mParameterDistanceNextService == null) {
                this.mParameterDistanceNextService = new ParameterDistanceNextService(this.mContext);
                addToList(Long.valueOf(dataId), this.mParameterDistanceNextService);
            }
            this.mParameterDistanceNextService.update(vehicleParam);
            Log.v(TAG, "mParameterDistanceNextService=" + this.mParameterDistanceNextService);
        } else if (dataId == DataID.Parameter.DAYS_NEXT_SERVICE.getId()) {
            if (this.mParameterDaysNextService == null) {
                this.mParameterDaysNextService = new ParameterDaysNextService(this.mContext);
                addToList(Long.valueOf(dataId), this.mParameterDaysNextService);
            }
            this.mParameterDaysNextService.update(vehicleParam);
            Log.v(TAG, "mParameterDaysNextService=" + this.mParameterDaysNextService);
        } else if (dataId == DataID.Parameter.DISTANCE_LAST_SERVICE.getId()) {
            if (this.mParameterDistanceLastService == null) {
                this.mParameterDistanceLastService = new ParameterDistanceLastService(this.mContext);
                addToList(Long.valueOf(dataId), this.mParameterDistanceLastService);
            }
            this.mParameterDistanceLastService.update(vehicleParam);
            Log.v(TAG, "mParameterDistanceLastService=" + this.mParameterDistanceLastService);
        } else if (dataId == DataID.Parameter.DAYS_LAST_SERVICE.getId()) {
            if (this.mParameterDaysLastService == null) {
                this.mParameterDaysLastService = new ParameterDaysLastService(this.mContext);
                addToList(Long.valueOf(dataId), this.mParameterDaysLastService);
            }
            this.mParameterDaysLastService.update(vehicleParam);
            Log.v(TAG, "mParameterDaysLastService=" + this.mParameterDaysLastService);
        } else if (dataId == DataID.Parameter.ENGINE_TEMP.getId()) {
            if (this.mParameterEngineTemperature == null) {
                this.mParameterEngineTemperature = new ParameterEngineTemperature(this.mContext, this.mCommunication);
                addToList(Long.valueOf(dataId), this.mParameterEngineTemperature);
            }
            this.mParameterEngineTemperature.update(vehicleParam);
            Log.v(TAG, "mParameterEngineTemperature=" + this.mParameterEngineTemperature);
        } else if (dataId == DataID.Parameter.ENGINE_RPM.getId()) {
            if (this.mParameterEngineRpm == null) {
                this.mParameterEngineRpm = new ParameterEngineRpm(this.mContext, this.mCommunication);
                addToList(Long.valueOf(dataId), this.mParameterEngineRpm);
            }
            this.mParameterEngineRpm.update(vehicleParam);
            Log.v(TAG, "mParameterEngineRpm=" + this.mParameterEngineRpm);
        } else if (dataId == DataID.Parameter.VEHICLE_SPEED.getId()) {
            if (this.mParameterVehicleSpeed == null) {
                this.mParameterVehicleSpeed = new ParameterVehicleSpeed(this.mContext, this.mCommunication);
                addToList(Long.valueOf(dataId), this.mParameterVehicleSpeed);
            }
            this.mParameterVehicleSpeed.update(vehicleParam);
            Log.v(TAG, "mParameterVehicleSpeed=" + this.mParameterVehicleSpeed);
        } else if (dataId == ParameterBatteryVoltage.BATTERY_VOLTAGE_LEVEL) {
            if (this.mParameterBatteryVoltage == null) {
                this.mParameterBatteryVoltage = new ParameterBatteryVoltage(this.mContext);
                addToList(Long.valueOf(dataId), this.mParameterBatteryVoltage);
            }
            this.mParameterBatteryVoltage.update(vehicleParam);
            Log.v(TAG, "mParameterBatteryVoltage=" + this.mParameterBatteryVoltage);
        } else {
            GenericParameter genericParameter = new GenericParameter(this.mContext, dataId, vehicleParam.getValueFormatted());
            if (this.mParameters.get(dataId) != null) {
                this.mParameters.remove(dataId);
            }
            addToList(Long.valueOf(dataId), genericParameter);
        }
        return this.mParameters;
    }

    public LongSparseArray<ParametersChartLine> updateCardParam(VehicleParam vehicleParam) {
        long dataId = vehicleParam.getDataId();
        if (dataId == DataID.Parameter.FUEL_LEVEL_ABS.getId() || dataId == DataID.Parameter.FUEL_LEVEL_REL.getId()) {
            if (this.mParameterFuelLevel == null) {
                this.mParameterFuelLevel = new ParameterFuelLevel(this.mContext);
                addCardParameterToList(Long.valueOf(DataID.Parameter.FUEL_LEVEL_ABS.getId()), this.mParameterFuelLevel);
            }
            this.mParameterFuelLevel.update(vehicleParam);
            Log.v(TAG, "mParameterFuelLevel=" + this.mParameterFuelLevel);
        } else if (dataId == ParameterBatteryVoltage.BATTERY_VOLTAGE_LEVEL) {
            if (this.mParameterBatteryVoltage == null) {
                this.mParameterBatteryVoltage = new ParameterBatteryVoltage(this.mContext);
                addCardParameterToList(Long.valueOf(dataId), this.mParameterBatteryVoltage);
            }
            this.mParameterBatteryVoltage.update(vehicleParam);
            Log.v(TAG, "mParameterBatteryVoltage=" + this.mParameterBatteryVoltage);
        } else if (dataId == DataID.Parameter.ENGINE_TEMP.getId()) {
            if (this.mParameterEngineTemperature == null) {
                this.mParameterEngineTemperature = new ParameterEngineTemperature(this.mContext, this.mCommunication);
                addCardParameterToList(Long.valueOf(dataId), this.mParameterEngineTemperature);
            }
            this.mParameterEngineTemperature.update(vehicleParam);
            Log.v(TAG, "mParameterEngineTemperature1=" + this.mParameterEngineTemperature);
        }
        return this.mCardParameters;
    }

    private void addToList(Long l, ParametersChartItem parametersChartItem) {
        this.mParameters.put(l.longValue(), parametersChartItem);
    }

    private void addCardParameterToList(Long l, ParametersChartLine parametersChartLine) {
        this.mCardParameters.put(l.longValue(), parametersChartLine);
    }

    public LongSparseArray<ParametersChartItem> getAll() {
        return this.mParameters;
    }

    public int size() {
        return this.mParameters.size();
    }

    public void refreshBaseParameter() {
        this.mCardParameters.clear();
        this.mParameters.clear();
        this.mParameterBatteryVoltage = new ParameterBatteryVoltage(this.mContext);
        this.mParameterEngineTemperature = new ParameterEngineTemperature(this.mContext, this.mCommunication);
        this.mParameterFuelLevel = new ParameterFuelLevel(this.mContext);
        Long lValueOf = Long.valueOf(ParameterBatteryVoltage.BATTERY_VOLTAGE_LEVEL);
        addToList(lValueOf, this.mParameterBatteryVoltage);
        addCardParameterToList(lValueOf, this.mParameterBatteryVoltage);
        addToList(Long.valueOf(DataID.Parameter.ENGINE_TEMP.getId()), this.mParameterEngineTemperature);
        addCardParameterToList(Long.valueOf(DataID.Parameter.ENGINE_TEMP.getId()), this.mParameterEngineTemperature);
        addToList(Long.valueOf(DataID.Parameter.FUEL_LEVEL_ABS.getId()), this.mParameterFuelLevel);
        addCardParameterToList(Long.valueOf(DataID.Parameter.FUEL_LEVEL_ABS.getId()), this.mParameterFuelLevel);
        this.mParameterVehicleSpeed = new ParameterVehicleSpeed(this.mContext, this.mCommunication);
        addToList(Long.valueOf(DataID.Parameter.VEHICLE_SPEED.getId()), this.mParameterVehicleSpeed);
        this.mParameterEngineRpm = new ParameterEngineRpm(this.mContext, this.mCommunication);
        addToList(Long.valueOf(DataID.Parameter.ENGINE_RPM.getId()), this.mParameterEngineRpm);
    }

    public ParametersChartLine getCardParameter(long j) {
        return this.mCardParameters.get(j);
    }

    public LongSparseArray<ParametersChartLine> getAllCardParameter() {
        LongSparseArray<ParametersChartLine> longSparseArray = this.mCardParameters;
        if (longSparseArray.get(DataID.Parameter.FUEL_LEVEL_ABS.getId()) != null && this.mCardParameters.get(DataID.Parameter.FUEL_LEVEL_ABS.getId()).getValue() == -1) {
            longSparseArray.remove(DataID.Parameter.FUEL_LEVEL_ABS.getId());
        }
        return this.mCardParameters;
    }

    public ParametersChartItem get(long j) {
        return this.mParameters.get(j);
    }

    public boolean isThereFuelParameter() {
        return this.mParameterFuelLevel.getValue() != -1;
    }
}
