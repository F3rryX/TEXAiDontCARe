package com.texa.careapp.networking;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.texa.careapp.model.DtcModel;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ErrorsArchive {
    private static final String TAG = "ErrorsArchive";

    @SerializedName("dtc_list")
    @Expose
    private List<DtcModel> dtcList = new ArrayList();

    @Expose
    private String vehicleId;

    protected boolean canEqual(Object obj) {
        return obj instanceof ErrorsArchive;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ErrorsArchive)) {
            return false;
        }
        ErrorsArchive errorsArchive = (ErrorsArchive) obj;
        if (!errorsArchive.canEqual(this)) {
            return false;
        }
        String vehicleId = getVehicleId();
        String vehicleId2 = errorsArchive.getVehicleId();
        if (vehicleId != null ? !vehicleId.equals(vehicleId2) : vehicleId2 != null) {
            return false;
        }
        List<DtcModel> dtcList = getDtcList();
        List<DtcModel> dtcList2 = errorsArchive.getDtcList();
        return dtcList != null ? dtcList.equals(dtcList2) : dtcList2 == null;
    }

    public int hashCode() {
        String vehicleId = getVehicleId();
        int iHashCode = vehicleId == null ? 43 : vehicleId.hashCode();
        List<DtcModel> dtcList = getDtcList();
        return ((iHashCode + 59) * 59) + (dtcList != null ? dtcList.hashCode() : 43);
    }

    public void setDtcList(List<DtcModel> list) {
        this.dtcList = list;
    }

    public void setVehicleId(String str) {
        this.vehicleId = str;
    }

    public String toString() {
        return "ErrorsArchive(vehicleId=" + getVehicleId() + ", dtcList=" + getDtcList() + ")";
    }

    public String getVehicleId() {
        return this.vehicleId;
    }

    public List<DtcModel> getDtcList() {
        return this.dtcList;
    }

    public void addDtcModel(DtcModel dtcModel) {
        this.dtcList.add(dtcModel);
    }
}
