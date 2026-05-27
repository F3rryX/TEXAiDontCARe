package com.texa.careapp.utils;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes2.dex */
public class VehiclesUsersEntity {

    @SerializedName("hwid")
    @Expose
    private String hwid;

    @SerializedName("vehicle_id")
    @Expose
    private String uId;

    public VehiclesUsersEntity(String str, String str2) {
        this.hwid = str;
        this.uId = str2;
    }
}
