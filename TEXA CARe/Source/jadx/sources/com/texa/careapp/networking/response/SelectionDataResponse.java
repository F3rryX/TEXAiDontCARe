package com.texa.careapp.networking.response;

import com.google.gson.annotations.Expose;
import com.texa.careapp.utils.ValueOrder;

/* JADX INFO: loaded from: classes2.dex */
public class SelectionDataResponse {

    @Expose
    private ValueOrder brand;

    @Expose
    private ValueOrder engine;

    @Expose
    private ValueOrder model;

    @Expose
    private ValueOrder vehicle_code;

    protected boolean canEqual(Object obj) {
        return obj instanceof SelectionDataResponse;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SelectionDataResponse)) {
            return false;
        }
        SelectionDataResponse selectionDataResponse = (SelectionDataResponse) obj;
        if (!selectionDataResponse.canEqual(this)) {
            return false;
        }
        ValueOrder brand = getBrand();
        ValueOrder brand2 = selectionDataResponse.getBrand();
        if (brand != null ? !brand.equals(brand2) : brand2 != null) {
            return false;
        }
        ValueOrder model = getModel();
        ValueOrder model2 = selectionDataResponse.getModel();
        if (model != null ? !model.equals(model2) : model2 != null) {
            return false;
        }
        ValueOrder engine = getEngine();
        ValueOrder engine2 = selectionDataResponse.getEngine();
        if (engine != null ? !engine.equals(engine2) : engine2 != null) {
            return false;
        }
        ValueOrder vehicle_code = getVehicle_code();
        ValueOrder vehicle_code2 = selectionDataResponse.getVehicle_code();
        return vehicle_code != null ? vehicle_code.equals(vehicle_code2) : vehicle_code2 == null;
    }

    public int hashCode() {
        ValueOrder brand = getBrand();
        int iHashCode = brand == null ? 43 : brand.hashCode();
        ValueOrder model = getModel();
        int iHashCode2 = ((iHashCode + 59) * 59) + (model == null ? 43 : model.hashCode());
        ValueOrder engine = getEngine();
        int iHashCode3 = (iHashCode2 * 59) + (engine == null ? 43 : engine.hashCode());
        ValueOrder vehicle_code = getVehicle_code();
        return (iHashCode3 * 59) + (vehicle_code != null ? vehicle_code.hashCode() : 43);
    }

    public void setBrand(ValueOrder valueOrder) {
        this.brand = valueOrder;
    }

    public void setEngine(ValueOrder valueOrder) {
        this.engine = valueOrder;
    }

    public void setModel(ValueOrder valueOrder) {
        this.model = valueOrder;
    }

    public void setVehicle_code(ValueOrder valueOrder) {
        this.vehicle_code = valueOrder;
    }

    public String toString() {
        return "SelectionDataResponse(brand=" + getBrand() + ", model=" + getModel() + ", engine=" + getEngine() + ", vehicle_code=" + getVehicle_code() + ")";
    }

    public ValueOrder getBrand() {
        return this.brand;
    }

    public ValueOrder getModel() {
        return this.model;
    }

    public ValueOrder getEngine() {
        return this.engine;
    }

    public ValueOrder getVehicle_code() {
        return this.vehicle_code;
    }
}
