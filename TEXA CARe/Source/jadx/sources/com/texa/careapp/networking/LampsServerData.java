package com.texa.careapp.networking;

import com.google.gson.annotations.Expose;
import com.texa.careapp.app.errorsDTC.LampStatus;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class LampsServerData {

    @Expose
    private HashMap<Long, LampStatus> list = new HashMap<>();

    @Expose
    private String vehicleId;

    protected boolean canEqual(Object obj) {
        return obj instanceof LampsServerData;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LampsServerData)) {
            return false;
        }
        LampsServerData lampsServerData = (LampsServerData) obj;
        if (!lampsServerData.canEqual(this)) {
            return false;
        }
        String vehicleId = getVehicleId();
        String vehicleId2 = lampsServerData.getVehicleId();
        if (vehicleId != null ? !vehicleId.equals(vehicleId2) : vehicleId2 != null) {
            return false;
        }
        HashMap<Long, LampStatus> list = getList();
        HashMap<Long, LampStatus> list2 = lampsServerData.getList();
        return list != null ? list.equals(list2) : list2 == null;
    }

    public int hashCode() {
        String vehicleId = getVehicleId();
        int iHashCode = vehicleId == null ? 43 : vehicleId.hashCode();
        HashMap<Long, LampStatus> list = getList();
        return ((iHashCode + 59) * 59) + (list != null ? list.hashCode() : 43);
    }

    public void setList(HashMap<Long, LampStatus> map) {
        this.list = map;
    }

    public void setVehicleId(String str) {
        this.vehicleId = str;
    }

    public String toString() {
        return "LampsServerData(vehicleId=" + getVehicleId() + ", list=" + getList() + ")";
    }

    public String getVehicleId() {
        return this.vehicleId;
    }

    public HashMap<Long, LampStatus> getList() {
        return this.list;
    }

    public void setActiveLamps(List<LampStatus> list) {
        for (LampStatus lampStatus : list) {
            if (lampStatus.isActive()) {
                this.list.put(lampStatus.getDataId(), lampStatus);
            }
        }
    }
}
