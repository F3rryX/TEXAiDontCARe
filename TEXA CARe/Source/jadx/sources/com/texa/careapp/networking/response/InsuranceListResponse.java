package com.texa.careapp.networking.response;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.texa.careapp.app.schedule.addThreshold.Insurance;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class InsuranceListResponse {

    @SerializedName("list")
    @Expose
    private List<Insurance> list;

    public List<Insurance> getList() {
        return this.list;
    }

    public void setList(List<Insurance> list) {
        this.list = list;
    }
}
