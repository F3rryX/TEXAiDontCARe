package com.texa.careapp.networking;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.texa.careapp.model.VehicleParam;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ParametersServerData {

    @Expose
    private Integer odometer;

    @SerializedName("list")
    @Expose
    private HashMap<Long, VehicleParam> parameterMap = new HashMap<>();

    @Expose
    private String vehicleId;

    protected boolean canEqual(Object obj) {
        return obj instanceof ParametersServerData;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ParametersServerData)) {
            return false;
        }
        ParametersServerData parametersServerData = (ParametersServerData) obj;
        if (!parametersServerData.canEqual(this)) {
            return false;
        }
        String vehicleId = getVehicleId();
        String vehicleId2 = parametersServerData.getVehicleId();
        if (vehicleId != null ? !vehicleId.equals(vehicleId2) : vehicleId2 != null) {
            return false;
        }
        Integer odometer = getOdometer();
        Integer odometer2 = parametersServerData.getOdometer();
        if (odometer != null ? !odometer.equals(odometer2) : odometer2 != null) {
            return false;
        }
        HashMap<Long, VehicleParam> parameterMap = getParameterMap();
        HashMap<Long, VehicleParam> parameterMap2 = parametersServerData.getParameterMap();
        return parameterMap != null ? parameterMap.equals(parameterMap2) : parameterMap2 == null;
    }

    public int hashCode() {
        String vehicleId = getVehicleId();
        int iHashCode = vehicleId == null ? 43 : vehicleId.hashCode();
        Integer odometer = getOdometer();
        int iHashCode2 = ((iHashCode + 59) * 59) + (odometer == null ? 43 : odometer.hashCode());
        HashMap<Long, VehicleParam> parameterMap = getParameterMap();
        return (iHashCode2 * 59) + (parameterMap != null ? parameterMap.hashCode() : 43);
    }

    public void setOdometer(Integer num) {
        this.odometer = num;
    }

    public void setParameterMap(HashMap<Long, VehicleParam> map) {
        this.parameterMap = map;
    }

    public void setVehicleId(String str) {
        this.vehicleId = str;
    }

    public String toString() {
        return "ParametersServerData(vehicleId=" + getVehicleId() + ", odometer=" + getOdometer() + ", parameterMap=" + getParameterMap() + ")";
    }

    public String getVehicleId() {
        return this.vehicleId;
    }

    public Integer getOdometer() {
        return this.odometer;
    }

    public HashMap<Long, VehicleParam> getParameterMap() {
        return this.parameterMap;
    }

    public void addParameter(VehicleParam vehicleParam) {
        this.parameterMap.put(Long.valueOf(vehicleParam.getDataId()), vehicleParam);
    }

    public void addParameters(List<VehicleParam> list) {
        for (VehicleParam vehicleParam : list) {
            this.parameterMap.put(Long.valueOf(vehicleParam.getDataId()), vehicleParam);
        }
    }
}
