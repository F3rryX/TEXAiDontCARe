package com.texa.careapp.networking.response;

import com.google.gson.annotations.Expose;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class DongleListResponse {

    @Expose
    public List<DongleVehicleDetails> list;

    public static class DongleVehicleDetails {

        @Expose
        public String description;

        @Expose
        public String hwid;

        @Expose
        public String plate;

        @Expose
        public SelectionDataResponse selectionData;

        @Expose
        public String vehicleId;
    }
}
