package com.texa.carelib.care.vehicletroubles;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes2.dex */
public class DTCInfo {

    @SerializedName("detail")
    @Expose
    private String mDetail;

    @SerializedName("help")
    @Expose
    private String mHelp;

    public String getHelp() {
        return this.mHelp;
    }

    public static class Builder {
        private final DTCInfo mDTCInfo;

        public Builder() {
            this(new DTCInfo());
        }

        public Builder(DTCInfo dTCInfo) {
            this.mDTCInfo = dTCInfo;
        }

        public DTCInfo build() {
            return this.mDTCInfo;
        }

        public Builder setDetail(String str) {
            this.mDTCInfo.mDetail = str;
            return this;
        }

        public Builder setHelp(String str) {
            this.mDTCInfo.mHelp = str;
            return this;
        }
    }

    public String getDetail() {
        return this.mDetail;
    }

    DTCInfo() {
    }

    public Builder builder() {
        return new Builder(this);
    }

    public String toString() {
        return "DTCInfo{mHelp='" + this.mHelp + "', mDetail='" + this.mDetail + "'}";
    }
}
