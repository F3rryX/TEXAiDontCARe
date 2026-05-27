package com.texa.careapp.model;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.texa.careapp.Constants;

/* JADX INFO: loaded from: classes2.dex */
public class VehicleOwnershipEntity {

    @SerializedName("hwid")
    @Expose
    String dongleSerialNumber;

    @SerializedName("plate")
    @Expose
    String plate;

    @SerializedName("vehicle_id")
    @Expose
    String vehicleId;

    @SerializedName(Constants.WebAPI.FIELD_VIN_CODE)
    @Expose
    String vinCode;

    public VehicleOwnershipEntity(String str, String str2, String str3, String str4) {
        this.dongleSerialNumber = str;
        this.plate = str2;
        this.vinCode = str3;
        this.vehicleId = str4;
    }
}
