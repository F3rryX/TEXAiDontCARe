package com.texa.careapp.networking.response;

import com.google.gson.annotations.Expose;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class VehicleSelectionResponse {

    @Expose
    private List<SelectionObject> list;

    public List<SelectionObject> getList() {
        return this.list;
    }

    public class SelectionObject {

        @Expose
        private List<Selection> selections;

        public SelectionObject() {
        }

        public List<Selection> getSelections() {
            return this.selections;
        }
    }

    public class Selection {

        @Expose
        private long brandId;

        @Expose
        private String fragmentId;

        @Expose
        private String value;

        public Selection() {
        }

        public String getFragmentId() {
            return this.fragmentId;
        }

        public String getValue() {
            return this.value;
        }

        public long getBrandId() {
            return this.brandId;
        }
    }
}
