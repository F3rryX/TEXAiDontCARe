package com.texa.careapp.networking.response;

import androidx.core.app.NotificationCompat;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.texa.careapp.fcm.FcmConstants;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class ThresholdListResponse {
    private static final String TAG = "ThresholdListResponse";

    @SerializedName("list")
    @Expose
    public ThresholdListResponseCollection list;

    public static class ThresholdListResponseCollection {

        @SerializedName("inspection")
        @Expose
        public ThresholdResponseItem inspection;

        @SerializedName("insurance_exp")
        @Expose
        public ThresholdResponseItem insuranceExp;

        @SerializedName(NotificationCompat.CATEGORY_SERVICE)
        @Expose
        public ThresholdResponseItem service;

        @SerializedName("tax_exp")
        @Expose
        public ThresholdResponseItem taxExp;

        @SerializedName(FcmConstants.TYRES_FITTING)
        @Expose
        public ThresholdResponseItem tyresFitting;

        @SerializedName(FcmConstants.TYRES_SWAP)
        @Expose
        public ThresholdResponseItem tyresSwap;
    }

    public static class ThresholdResponseItem {

        @SerializedName("date")
        @Expose
        public Date date;

        @SerializedName("odometer")
        @Expose
        public int odometer;
    }
}
