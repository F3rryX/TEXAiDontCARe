package com.texa.careapp.networking.response;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.texa.careapp.Constants;
import com.texa.careapp.model.AlarmStatus;
import com.texa.careapp.model.AlarmType;
import com.texa.careapp.utils.MeasureUnit;
import com.texa.careapp.utils.activeandroid.VehicleParamSerializer;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class VehicleResponse {
    private static final String TAG = "VehicleResponse";

    @Expose
    public VehicleObject vehicle;

    public static class LampStatusResponseCollection {

        @SerializedName("last_update")
        @Expose
        public Date lastUpdate;

        @SerializedName("list")
        @Expose
        public HashMap<Long, LampStatusResponseItem> list;
    }

    public static class LampStatusResponseItem {

        @SerializedName("timestamp")
        @Expose
        public Date timestamp;
    }

    public static class ParameterStatusReponseCollection {

        @SerializedName("last_update")
        @Expose
        public Date lastUpdate;

        @SerializedName("list")
        @Expose
        public HashMap<Long, ParameterStatusResponseItem> list;
    }

    public static class ParameterStatusResponseItem {

        @SerializedName("type")
        @Expose
        public String type;

        @SerializedName(VehicleParamSerializer.PROPERTY_UNIT)
        @Expose
        public MeasureUnit unit;

        @SerializedName("value")
        @Expose
        public String value;
    }

    public static class VehicleAlarmCollectionResponse {

        @SerializedName("last_update")
        @Expose
        public Date timestamp;

        @SerializedName("list")
        @Expose
        public List<VehicleAlarmResponse> vehicleAlarmResponses;
    }

    public static class VehicleAlarmResponse {

        @SerializedName("status")
        @Expose
        public AlarmStatus alarmStatus;

        @SerializedName("type")
        @Expose
        public AlarmType alarmType;

        @SerializedName("timestamp")
        @Expose
        public Date timestamp;
    }

    public static class VehicleObject {

        @SerializedName(Constants.WebAPI.FIELD_VEHICLE_COLOR)
        @Expose
        public String color;

        @Expose
        public String country;

        @SerializedName("customer_availability")
        @Expose
        public boolean customerAvailability;

        @Expose
        public List<Deadline> deadlines;

        @SerializedName("proprietary_diagnosis")
        @Expose
        public boolean haveAdvancedDiagnosis;

        @SerializedName(Constants.WebAPI.FIELD_VEHICLE_AUTO_DRIVE)
        @Expose
        public boolean haveAutomaticTransmission;

        @Expose
        public String hwid;

        @SerializedName("lamps_status")
        @Expose
        public LampStatusResponseCollection lampStatusResponseCollection;

        @Expose
        public Integer odometer;

        @SerializedName("parameters_status")
        @Expose
        public ParameterStatusReponseCollection parameterStatusReponseCollection;

        @Expose
        public String plate;

        @Expose
        public Date registrationDate;

        @Expose
        public SelectionDataResponse selectionData;

        @Expose
        public HashMap<String, Threshold> thresholds;

        @SerializedName(Constants.WebAPI.FIELD_VEHICLE_TYRES_TYPE_ID)
        @Expose
        public Integer tyredTypeId;

        @SerializedName("alarms_status")
        @Expose
        public VehicleAlarmCollectionResponse vehicleAlarmCollectionResponse;

        @Expose
        public String vehicleId;

        @Expose
        public String vin;
    }

    public class Deadline {

        @Expose
        public Date expireDate;

        @Expose
        public Integer expireOdo;

        @Expose
        public Date startDate;

        @Expose
        public Integer startOdo;

        @Expose
        public String type;

        public Deadline() {
        }
    }

    public class Threshold {

        @Expose
        public Date date;

        @Expose
        public Integer odometer;

        public Threshold() {
        }
    }
}
