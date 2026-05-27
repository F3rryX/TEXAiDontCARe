package com.texa.careapp.networking.response;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class UserVehicleListResponse {

    @SerializedName("list")
    @Expose
    public List<UserVehicleData> userVehicleDataList;

    public UserVehicleData getByHwId(String str) {
        for (UserVehicleData userVehicleData : this.userVehicleDataList) {
            if (str.equals(userVehicleData.hwid)) {
                return userVehicleData;
            }
        }
        return null;
    }

    public UserVehicleData getByPlate(String str) {
        for (UserVehicleData userVehicleData : this.userVehicleDataList) {
            if (str.equals(userVehicleData.plate)) {
                return userVehicleData;
            }
        }
        return null;
    }

    public class UserVehicleData {

        @Expose
        public String description;

        @Expose
        public String hwid;

        @Expose
        public String plate;

        @Expose
        public SelectionData selectionData;

        @Expose
        public String vehicleId;

        public UserVehicleData() {
        }
    }

    public class SelectionData {

        @Expose
        public List<Selection> selections;

        public SelectionData() {
        }

        public String getSelectionModel() {
            String str = "";
            for (Selection selection : this.selections) {
                if (selection.type.equalsIgnoreCase("model")) {
                    str = selection.value;
                }
            }
            return str;
        }

        public String getSelectionBrand() {
            String str = "";
            for (Selection selection : this.selections) {
                if (selection.type.equalsIgnoreCase("brand")) {
                    str = selection.value;
                }
            }
            return str;
        }
    }

    public class Selection {

        @Expose
        public String type;

        @Expose
        public String value;

        public Selection() {
        }
    }
}
