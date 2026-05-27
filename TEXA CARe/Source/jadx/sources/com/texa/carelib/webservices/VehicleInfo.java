package com.texa.carelib.webservices;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class VehicleInfo {

    @SerializedName("hwid")
    @Expose
    private String mHardwareID;

    @SerializedName("plate")
    @Expose
    private String mPlate;

    @SerializedName("vehicle_id")
    @Expose
    private String mVehicleID;

    @SerializedName("selection_data")
    @Expose
    private Map<String, SelectionItem> mVehicleSelection;

    public String getHardwareID() {
        return this.mHardwareID;
    }

    public VehicleInfo setHardwareID(String str) {
        this.mHardwareID = str;
        return this;
    }

    public String getVehicleID() {
        return this.mVehicleID;
    }

    public VehicleInfo setVehicleID(String str) {
        this.mVehicleID = str;
        return this;
    }

    public String getPlate() {
        return this.mPlate;
    }

    public VehicleInfo setPlate(String str) {
        this.mPlate = str;
        return this;
    }

    public Map<String, SelectionItem> getVehicleSelection() {
        return this.mVehicleSelection;
    }

    public VehicleInfo setVehicleSelection(Map<String, SelectionItem> map) {
        this.mVehicleSelection = map;
        return this;
    }

    public String toString() {
        return "VehicleInfo{mHardwareID='" + this.mHardwareID + "', mVehicleID='" + this.mVehicleID + "', mPlate='" + this.mPlate + "', mVehicleSelection=" + this.mVehicleSelection + '}';
    }
}
