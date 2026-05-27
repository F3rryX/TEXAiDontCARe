package com.texa.careapp.model;

import android.content.Context;
import android.util.Log;
import com.activeandroid.Cache;
import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.activeandroid.query.Delete;
import com.activeandroid.query.Select;
import com.google.gson.Gson;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.google.gson.reflect.TypeToken;
import com.texa.care.R;
import com.texa.careapp.Constants;
import com.texa.careapp.app.errorsDTC.LampStatus;
import com.texa.careapp.app.onboarding.IVehicleModel;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.model.ThresholdModel;
import com.texa.careapp.networking.response.SelectionDataResponse;
import com.texa.careapp.networking.response.VehicleResponse;
import com.texa.careapp.parameters.ParameterBatteryVoltage;
import com.texa.careapp.utils.MeasureUnit;
import com.texa.careapp.utils.ScheduleHelper;
import com.texa.careapp.utils.Timestamped;
import com.texa.careapp.utils.Utils;
import com.texa.carelib.care.vehicle.InvalidVehicleValueException;
import com.texa.carelib.care.vehicle.Vehicle;
import com.texa.carelib.care.vehicle.internal.MockDataID;
import com.texa.carelib.care.vehicletroubles.DTC;
import com.texa.carelib.core.utils.Version;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import java.util.regex.Pattern;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
@Table(name = VehicleModel.TABLE_VEHICLES)
public class VehicleModel extends Model implements IVehicleModel {
    private static Type ALARM_COLLECTION_TYPE = new TypeToken<HashSet<VehicleAlarm>>() { // from class: com.texa.careapp.model.VehicleModel.1
    }.getType();
    private static final String COLUMN_ALARMS = "alarms";
    private static final String COLUMN_COSTUMER_AVAILABILITY = "costumer_availability";
    public static final String COLUMN_DONGLE = "Dongle";
    public static final String COLUMN_HARDWARE_ID = "hwid";
    public static final String COLUMN_PLATE = "plate";
    public static final String COLUMN_SYNC_NEEDED = "sync_needed";
    public static final String COLUMN_UID = "uid";
    public static final String COLUMN_USER = "User";
    public static final String TABLE_VEHICLES = "Vehicles";
    private static final String TAG = "VehicleModel";

    @Column(name = COLUMN_ALARMS)
    private String alarmsJson;

    @Column
    @Expose
    private String brandName;

    @Column
    @Expose
    private String color;

    @SerializedName("customer_availability")
    @Column(name = COLUMN_COSTUMER_AVAILABILITY)
    @Expose
    public boolean customerAvailability;

    @SerializedName("proprietary_diagnosis")
    @Column
    @Expose
    private boolean haveAdvancedDiagnosis;

    @SerializedName(Constants.WebAPI.FIELD_VEHICLE_AUTO_DRIVE)
    @Column
    @Expose
    private boolean haveAutomaticTransmission;

    @Column(name = "hwid")
    @Expose
    private String hwid;

    @Column
    private boolean isConfirmedByUser;

    @SerializedName("is_current_vehicle")
    @Column
    private boolean isCurrentVehicle;

    @SerializedName("is_selected_vehicle")
    @Column
    private boolean isSelectedVehicle;
    private Gson mGson;

    @Column
    @Expose
    private String modelName;

    @Column
    @Expose
    private Integer odometer;

    @Column
    @Expose
    private String plate;

    @Column
    @Expose
    private Date registrationDate;

    @Column
    @Expose
    private String rescueContact;

    @Column(name = "sync_needed")
    private boolean syncNeeded;

    @SerializedName(Constants.WebAPI.FIELD_VEHICLE_TYRES_TYPE_ID)
    @Column
    @Expose
    private Integer tyresTypeId;

    @Column(name = COLUMN_UID, unique = true)
    @Expose
    private String uid;

    @SerializedName(Constants.WebAPI.FIELD_VIN_CODE)
    @Column
    private String vin;

    @SerializedName("description")
    @Column
    @Expose
    private String description = "";

    @SerializedName("nation")
    @Column
    @Expose
    private String nation = "";

    @Override // com.texa.careapp.app.onboarding.IVehicleModel
    public String getHeader() {
        return null;
    }

    @Override // com.texa.careapp.app.onboarding.IVehicleModel
    public long getHeaderId() {
        return 1L;
    }

    @Override // com.activeandroid.Model
    public String toString() {
        return "VehicleModel(brandName=" + getBrandName() + ", modelName=" + getModelName() + ", uid=" + getUid() + ", plate=" + getPlate() + ", odometer=" + getOdometer() + ", rescueContact=" + getRescueContact() + ", hwid=" + getHwid() + ", registrationDate=" + getRegistrationDate() + ", color=" + getColor() + ", syncNeeded=" + isSyncNeeded() + ", alarmsJson=" + getAlarmsJson() + ", tyresTypeId=" + getTyresTypeId() + ", description=" + getDescription() + ", nation=" + getNation() + ", isCurrentVehicle=" + isCurrentVehicle() + ", isSelectedVehicle=" + isSelectedVehicle() + ", vin=" + getVin() + ", isConfirmedByUser=" + isConfirmedByUser() + ", haveAdvancedDiagnosis=" + isHaveAdvancedDiagnosis() + ", haveAutomaticTransmission=" + isHaveAutomaticTransmission() + ", customerAvailability=" + isCustomerAvailability() + ")";
    }

    public String getBrandName() {
        return this.brandName;
    }

    public void setBrandName(String str) {
        this.brandName = str;
    }

    public String getModelName() {
        return this.modelName;
    }

    public void setModelName(String str) {
        this.modelName = str;
    }

    public String getUid() {
        return this.uid;
    }

    public void setUid(String str) {
        this.uid = str;
    }

    public String getPlate() {
        return this.plate;
    }

    public void setPlate(String str) {
        this.plate = str;
    }

    public Integer getOdometer() {
        return this.odometer;
    }

    public void setOdometer(Integer num) {
        this.odometer = num;
    }

    public String getRescueContact() {
        return this.rescueContact;
    }

    public void setRescueContact(String str) {
        this.rescueContact = str;
    }

    public String getHwid() {
        return this.hwid;
    }

    public void setHwid(String str) {
        this.hwid = str;
    }

    public Date getRegistrationDate() {
        return this.registrationDate;
    }

    public void setRegistrationDate(Date date) {
        this.registrationDate = date;
    }

    public String getColor() {
        return this.color;
    }

    public void setColor(String str) {
        this.color = str;
    }

    public boolean isSyncNeeded() {
        return this.syncNeeded;
    }

    public void setSyncNeeded(boolean z) {
        this.syncNeeded = z;
    }

    public String getAlarmsJson() {
        return this.alarmsJson;
    }

    public void setAlarmsJson(String str) {
        this.alarmsJson = str;
    }

    public Integer getTyresTypeId() {
        return this.tyresTypeId;
    }

    public void setTyresTypeId(Integer num) {
        this.tyresTypeId = num;
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public String getNation() {
        return this.nation;
    }

    public void setNation(String str) {
        this.nation = str;
    }

    public boolean isCurrentVehicle() {
        return this.isCurrentVehicle;
    }

    public void setCurrentVehicle(boolean z) {
        this.isCurrentVehicle = z;
    }

    public boolean isSelectedVehicle() {
        return this.isSelectedVehicle;
    }

    public void setSelectedVehicle(boolean z) {
        this.isSelectedVehicle = z;
    }

    public String getVin() {
        return this.vin;
    }

    public void setVin(String str) {
        this.vin = str;
    }

    public boolean isConfirmedByUser() {
        return this.isConfirmedByUser;
    }

    public void setConfirmedByUser(boolean z) {
        this.isConfirmedByUser = z;
    }

    public boolean isHaveAdvancedDiagnosis() {
        return this.haveAdvancedDiagnosis;
    }

    public void setHaveAdvancedDiagnosis(boolean z) {
        this.haveAdvancedDiagnosis = z;
    }

    public boolean isHaveAutomaticTransmission() {
        return this.haveAutomaticTransmission;
    }

    public void setHaveAutomaticTransmission(boolean z) {
        this.haveAutomaticTransmission = z;
    }

    public boolean isCustomerAvailability() {
        return this.customerAvailability;
    }

    public void setCustomerAvailability(boolean z) {
        this.customerAvailability = z;
    }

    public VehicleModel() {
        buildGsonInstance();
        setAlarms(new HashSet<>());
    }

    public void buildGsonInstance() {
        this.mGson = Utils.buildGsonInstance();
    }

    public static VehicleModel from(VehicleResponse vehicleResponse) {
        VehicleResponse.VehicleObject vehicleObject = vehicleResponse.vehicle;
        if (vehicleObject == null) {
            return null;
        }
        VehicleModel vehicleModel = new VehicleModel();
        SelectionDataResponse selectionDataResponse = vehicleObject.selectionData;
        if (selectionDataResponse != null) {
            if (selectionDataResponse.getBrand() != null) {
                vehicleModel.setBrandName(selectionDataResponse.getBrand().getValue());
            }
            if (selectionDataResponse.getModel() != null) {
                vehicleModel.setModelName(selectionDataResponse.getModel().getValue());
            }
        }
        vehicleModel.setUid(vehicleObject.vehicleId);
        vehicleModel.setPlate(vehicleObject.plate);
        vehicleModel.setOdometer(vehicleObject.odometer);
        vehicleModel.setHwid(vehicleObject.hwid);
        vehicleModel.setRegistrationDate(vehicleObject.registrationDate);
        vehicleModel.setColor(vehicleObject.color);
        vehicleModel.setTyresTypeId(vehicleObject.tyredTypeId);
        vehicleModel.setHaveAdvancedDiagnosis(vehicleObject.haveAdvancedDiagnosis);
        vehicleModel.setHaveAutomaticTransmission(vehicleObject.haveAutomaticTransmission);
        vehicleModel.setCustomerAvailability(vehicleObject.customerAvailability);
        return vehicleModel;
    }

    public static VehicleModel from(VehicleModelResponseEntity vehicleModelResponseEntity) {
        VehicleModel vehicleModel = new VehicleModel();
        vehicleModel.setUid(vehicleModelResponseEntity.getVehicleId());
        return vehicleModel;
    }

    protected static int getNumericValue(long j, Vehicle vehicle) {
        try {
            return (int) vehicle.getNumericValue(Long.valueOf(j));
        } catch (InvalidVehicleValueException e) {
            Log.d(TAG, "got exception", e);
            return 0;
        }
    }

    protected static String getFormattedValue(long j, Vehicle vehicle) {
        try {
            return vehicle.getFormattedNumericValue(Long.valueOf(j));
        } catch (InvalidVehicleValueException e) {
            Log.d(TAG, "got exception", e);
            return "";
        }
    }

    public CharSequence formatOdometer(Context context) {
        return context.getString(R.string.odometer_value, this.odometer);
    }

    public String formatModel() {
        return Utils.trimToEmpty(this.modelName);
    }

    public List<VehicleScheduleModel> getSchedules() {
        return getMany(VehicleScheduleModel.class, "Vehicle");
    }

    public List<IScheduleModel> getSchedulesForUser(Context context) {
        ArrayList arrayList = new ArrayList();
        for (VehicleScheduleModel vehicleScheduleModel : getSchedules()) {
            if (vehicleScheduleModel.getType() != ScheduleType.SERVICE_TIME && vehicleScheduleModel.getType() != ScheduleType.SERVICE_ODO && vehicleScheduleModel.getType() != ScheduleType.DIAG_SERVICE_ODO && vehicleScheduleModel.getType() != ScheduleType.DIAG_SERVICE_TIME && vehicleScheduleModel.getType() != ScheduleType.BELTS_ODO && vehicleScheduleModel.getType() != ScheduleType.BELTS_TIME) {
                arrayList.add(vehicleScheduleModel);
            }
        }
        VehicleScheduleModel vehicleScheduleModelSelectPrioritySchedule = selectPrioritySchedule(getSchedule(ScheduleType.BELTS_ODO), getSchedule(ScheduleType.BELTS_TIME), getOdometer().intValue());
        if (vehicleScheduleModelSelectPrioritySchedule != null) {
            arrayList.add(vehicleScheduleModelSelectPrioritySchedule);
        }
        VehicleScheduleModel schedule = getSchedule(ScheduleType.DIAG_SERVICE_ODO);
        VehicleScheduleModel schedule2 = getSchedule(ScheduleType.DIAG_SERVICE_TIME);
        if (schedule == null && schedule2 == null) {
            schedule = getSchedule(ScheduleType.SERVICE_ODO);
            schedule2 = getSchedule(ScheduleType.SERVICE_TIME);
        }
        VehicleScheduleModel vehicleScheduleModelSelectPrioritySchedule2 = selectPrioritySchedule(schedule, schedule2, getOdometer().intValue());
        if (vehicleScheduleModelSelectPrioritySchedule2 != null) {
            arrayList.add(vehicleScheduleModelSelectPrioritySchedule2);
        }
        return arrayList;
    }

    private VehicleScheduleModel selectPrioritySchedule(VehicleScheduleModel vehicleScheduleModel, VehicleScheduleModel vehicleScheduleModel2, int i) {
        try {
            ScheduleHelper.ServiceScheduleInfo serviceScheduleInfo = new ScheduleHelper(vehicleScheduleModel, vehicleScheduleModel2, i).parse();
            if (serviceScheduleInfo != null) {
                return serviceScheduleInfo.unit == MeasureUnit.DAYS ? vehicleScheduleModel2 : vehicleScheduleModel;
            }
            return null;
        } catch (IllegalArgumentException e) {
            Timber.i(e, "Schedule priority Warning odo schedule and km schedule both null", new Object[0]);
            return null;
        }
    }

    public List<LampStatus> getActiveLamps() {
        return new Select().from(LampStatus.class).where("LampStatus.vehicle=?", getId()).and("status = ? ", true).and("filtered = ?", true).orderBy("dataId").execute();
    }

    public List<LampStatus> getLamps() {
        return getMany(LampStatus.class, "vehicle");
    }

    public void deleteLamps() {
        new Delete().from(LampStatus.class).where(Cache.getTableName(LampStatus.class) + Version.SEPARATOR + "vehicle=?", getId()).execute();
    }

    public List<VehicleParam> getUnsyncedParameters() {
        return new Select().from(VehicleParam.class).where(Cache.getTableName(VehicleParam.class) + Version.SEPARATOR + "vehicle=?", getId()).and("sync_needed=?", true).execute();
    }

    public LampStatus updateLamp(boolean z, Timestamped<Long> timestamped, Vehicle vehicle) {
        long jLongValue = timestamped.getValue().longValue();
        LampStatus lampById = getLampById(Long.valueOf(jLongValue));
        if (lampById == null) {
            lampById = new LampStatus();
            lampById.setVehicleModel(this);
            lampById.setDataId(Long.valueOf(jLongValue));
        }
        lampById.setFiltered(z);
        lampById.setTime(new Date(timestamped.getTimestampMillis()));
        lampById.setStatus(Utils.isActive(vehicle, jLongValue));
        try {
            Utils.safeModelSave(lampById, Cache.getContext());
            Timber.v("Updated lampStatus: %s", lampById);
        } catch (DatabaseIOException e) {
            Timber.e(e, "Could not update lamp status in database: %s", lampById);
        }
        return lampById;
    }

    public LampStatus getLampById(Long l) {
        return (LampStatus) new Select().from(LampStatus.class).where(Cache.getTableName(LampStatus.class) + Version.SEPARATOR + "vehicle=?", getId()).and("dataId = ? ", l).executeSingle();
    }

    public VehicleParam getOrAddParameter(long j) {
        VehicleParam vehicleParamById = getVehicleParamById(j);
        if (vehicleParamById != null) {
            return vehicleParamById;
        }
        VehicleParam vehicleParam = new VehicleParam();
        vehicleParam.setVehicleModel(this);
        vehicleParam.setDataId(j);
        return vehicleParam;
    }

    public VehicleParam getVehicleParamById(long j) {
        return (VehicleParam) new Select().from(VehicleParam.class).where(Cache.getTableName(VehicleParam.class) + Version.SEPARATOR + "vehicle=?", getId()).and("dataId = ? ", Long.valueOf(j)).executeSingle();
    }

    public List<VehicleParam> getParameters() {
        return getMany(VehicleParam.class, "vehicle");
    }

    public List<VehicleParam> getFilterParameters() {
        return new Select().from(VehicleParam.class).where("vehicle = ?", getId()).and("(dataId = ?", Long.valueOf(MockDataID.Parameter.FUEL_LEVEL_REL)).or("dataId = ?", Long.valueOf(MockDataID.Parameter.FUEL_LEVEL_ABS)).or("dataId = ?", Long.valueOf(MockDataID.Parameter.VEHICLE_SPEED)).or("dataId = ?", Long.valueOf(MockDataID.Parameter.ENGINE_RPM)).or("dataId = ?", Long.valueOf(MockDataID.Parameter.ENGINE_TEMP)).or("dataId = ?)", Long.valueOf(ParameterBatteryVoltage.BATTERY_VOLTAGE_LEVEL)).execute();
    }

    public void updateDtcList(List<DTC> list) {
        deleteAllDtcs();
        Iterator<DTC> it = list.iterator();
        while (it.hasNext()) {
            DtcModel dtcModelFrom = DtcModel.from(it.next());
            dtcModelFrom.setVehicle(this);
            try {
                Utils.safeModelSave(dtcModelFrom, Cache.getContext());
            } catch (DatabaseIOException e) {
                Timber.e(e, "Could not save DTC in the database", new Object[0]);
            }
        }
    }

    protected void deleteAllDtcs() {
        new Delete().from(DtcModel.class).where(Cache.getTableName(DtcModel.class) + Version.SEPARATOR + "Vehicle=?", getId()).execute();
    }

    public List<DtcModel> getDtcs() {
        try {
            return getMany(DtcModel.class, "Vehicle");
        } catch (Exception e) {
            Timber.w(e, "getDtcs exception", new Object[0]);
            deleteAllDtcs();
            return Collections.emptyList();
        }
    }

    @Deprecated
    public void addSchedule(VehicleScheduleModel vehicleScheduleModel) throws DatabaseIOException {
        if (vehicleScheduleModel.getUid() == null) {
            vehicleScheduleModel.setUid(UUID.randomUUID().toString());
        }
        vehicleScheduleModel.setVehicle(this);
        Utils.safeModelSave(vehicleScheduleModel, Cache.getContext());
    }

    public void updateSchedule(VehicleResponse.Deadline deadline) throws DatabaseIOException {
        ScheduleType scheduleTypeLookupByValue = ScheduleType.lookupByValue(deadline.type);
        if (scheduleTypeLookupByValue == null) {
            return;
        }
        VehicleScheduleModel schedule = getSchedule(scheduleTypeLookupByValue);
        if (schedule == null) {
            schedule = new VehicleScheduleModel();
            schedule.setUid(UUID.randomUUID().toString());
            schedule.setVehicle(this);
            schedule.setType(scheduleTypeLookupByValue);
        }
        schedule.setStartDate(deadline.startDate);
        schedule.setExpireDate(deadline.expireDate);
        schedule.setStartOdo(deadline.startOdo);
        schedule.setExpireOdo(deadline.expireOdo);
        Utils.safeModelSave(schedule, Cache.getContext());
    }

    public IScheduleModel getScheduleCached(ScheduleType scheduleType) {
        VehicleScheduleModel schedule = getSchedule(scheduleType);
        if (schedule != null) {
            return schedule;
        }
        VehicleScheduleModel vehicleScheduleModel = new VehicleScheduleModel();
        vehicleScheduleModel.setUid(UUID.randomUUID().toString());
        vehicleScheduleModel.setVehicle(this);
        vehicleScheduleModel.setType(scheduleType);
        return vehicleScheduleModel;
    }

    public int countSchedules() {
        return new Select().from(VehicleScheduleModel.class).where(Cache.getTableName(VehicleScheduleModel.class) + Version.SEPARATOR + "Vehicle=?", getId()).count();
    }

    public void deleteSchedules() {
        if (getId() != null) {
            new Delete().from(VehicleScheduleModel.class).where(Cache.getTableName(VehicleScheduleModel.class) + Version.SEPARATOR + "Vehicle=?", getId()).execute();
        }
    }

    public VehicleScheduleModel getSchedule(ScheduleType scheduleType) {
        if (getId() == null) {
            return null;
        }
        return (VehicleScheduleModel) new Select().from(VehicleScheduleModel.class).where(Cache.getTableName(VehicleScheduleModel.class) + Version.SEPARATOR + "Vehicle=?", getId()).and("type=?", scheduleType).executeSingle();
    }

    public boolean hasServiceSchedules() {
        return (getSchedule(ScheduleType.SERVICE_ODO) == null && getSchedule(ScheduleType.SERVICE_TIME) == null && getSchedule(ScheduleType.DIAG_SERVICE_TIME) == null && getSchedule(ScheduleType.DIAG_SERVICE_ODO) == null) ? false : true;
    }

    public boolean hasTyresSchedules() {
        return new Select().from(VehicleScheduleModel.class).where(Cache.getTableName(VehicleScheduleModel.class) + Version.SEPARATOR + "Vehicle=?", getId()).and("type=?", ScheduleType.TYRES_SWAP).exists();
    }

    public VehicleParam getParameter(long j) {
        return (VehicleParam) new Select().from(VehicleParam.class).where(Cache.getTableName(VehicleParam.class) + Version.SEPARATOR + "vehicle=?", getId()).and("dataId=?", Long.valueOf(j)).executeSingle();
    }

    public ThresholdModel getThreshold(ThresholdModel.Type type, Context context) {
        ThresholdModel thresholdModel;
        if (getId() != null) {
            thresholdModel = (ThresholdModel) new Select().from(ThresholdModel.class).where(Cache.getTableName(ThresholdModel.class) + Version.SEPARATOR + "vehicle=?", getId()).and("type=?", type).executeSingle();
        } else {
            thresholdModel = null;
        }
        if (thresholdModel == null) {
            thresholdModel = new ThresholdModel();
            thresholdModel.setVehicleModel(this);
            thresholdModel.setType(type);
            try {
                Utils.safeModelSave(thresholdModel, Cache.getContext());
            } catch (DatabaseIOException e) {
                Timber.e(e, "Could not save the vehicle threshold.", new Object[0]);
            }
        }
        return thresholdModel;
    }

    public List<ThresholdModel> getThresholds() {
        return getMany(ThresholdModel.class, "vehicle");
    }

    public ThresholdModelList getUnsyncedThresholds() {
        return new ThresholdModelList(new Select().from(ThresholdModel.class).where(Cache.getTableName(ThresholdModel.class) + Version.SEPARATOR + "vehicle=?", getId()).and("sync_needed=?", true).execute());
    }

    public void updateAlarm(VehicleAlarm vehicleAlarm) {
        vehicleAlarm.setVehicleId(getUid());
        HashSet<VehicleAlarm> alarms = getAlarms();
        alarms.remove(vehicleAlarm);
        alarms.add(vehicleAlarm);
        setAlarms(alarms);
    }

    public HashSet<VehicleAlarm> getAlarms() {
        HashSet<VehicleAlarm> hashSet = (HashSet) this.mGson.fromJson(this.alarmsJson, ALARM_COLLECTION_TYPE);
        boolean z = false;
        for (VehicleAlarm vehicleAlarm : hashSet) {
            if (!Utils.isValidVehicleAlarm(vehicleAlarm)) {
                hashSet.remove(vehicleAlarm);
                z = true;
            }
        }
        if (z) {
            setAlarms(hashSet);
            save();
        }
        return hashSet;
    }

    public void setAlarms(HashSet<VehicleAlarm> hashSet) {
        this.alarmsJson = this.mGson.toJson(hashSet);
    }

    public VehicleAdditionalDataModel getAdditionalDataByType(String str) {
        VehicleAdditionalDataModel vehicleAdditionalDataModel = (VehicleAdditionalDataModel) new Select().from(VehicleAdditionalDataModel.class).where(Cache.getTableName(VehicleAdditionalDataModel.class) + Version.SEPARATOR + "Vehicle=?", getId()).and("type=?", str).executeSingle();
        if (vehicleAdditionalDataModel == null) {
            vehicleAdditionalDataModel = new VehicleAdditionalDataModel();
            vehicleAdditionalDataModel.setVehicle(this);
            vehicleAdditionalDataModel.setType(str);
            try {
                Utils.safeModelSave(vehicleAdditionalDataModel, Cache.getContext());
            } catch (DatabaseIOException e) {
                Timber.e(e, "Could not save vehicle additional data in database.", new Object[0]);
            }
        }
        return vehicleAdditionalDataModel;
    }

    public boolean setAdditionalPositionData(String str, String str2) {
        VehicleAdditionalDataModel additionalDataByType = getAdditionalDataByType(str);
        additionalDataByType.setValue(str2);
        try {
            Utils.safeModelSave(additionalDataByType, Cache.getContext());
            return true;
        } catch (DatabaseIOException e) {
            Timber.e(e, "Could not save vehicle additional data in database.", new Object[0]);
            return false;
        }
    }

    public void deleteAdditionalDataValueByType(String str) throws DatabaseIOException {
        VehicleAdditionalDataModel additionalDataByType = getAdditionalDataByType(str);
        additionalDataByType.setValue(null);
        Utils.safeModelSave(additionalDataByType, Cache.getContext());
    }

    public HashMap<String, Double> getLastLocation() {
        VehicleAdditionalDataModel additionalDataByType = getAdditionalDataByType(VehicleAdditionalDataModel.LAST_LOCATION_TYPE);
        if (additionalDataByType.getValue() != null) {
            String[] strArrSplit = additionalDataByType.getValue().split(Pattern.quote(Constants.VEHICLE_DESCRIPTION_SEPARATOR));
            if (strArrSplit.length == 3) {
                HashMap<String, Double> map = new HashMap<>();
                map.put(Constants.LATITUDE_POSITION, Double.valueOf(Double.parseDouble(strArrSplit[0])));
                map.put(Constants.LONGITUDE_POSITION, Double.valueOf(Double.parseDouble(strArrSplit[1])));
                map.put(Constants.TIMESTAMP_POSITION, Double.valueOf(Double.parseDouble(strArrSplit[2])));
                return map;
            }
        }
        return null;
    }

    public List<VehicleAdditionalDataModel> getVehicleAdditionalData() {
        return new Select().from(VehicleAdditionalDataModel.class).execute();
    }

    public void updateOdometerIfGreater(Integer num) {
        if (num == null) {
            return;
        }
        Integer num2 = this.odometer;
        if (num2 == null || num2.intValue() < num.intValue()) {
            setOdometer(num);
        }
    }

    public void setVehicleSelected() {
        setSelectedVehicle(true);
        for (VehicleModel vehicleModel : new Select().from(VehicleModel.class).where("uid !=?", this.uid).execute()) {
            vehicleModel.setSelectedVehicle(false);
            vehicleModel.save();
        }
    }

    @Override // com.texa.careapp.app.onboarding.IVehicleModel
    public String getVehicleInfo() {
        String str = this.description;
        return str != null ? str : Utils.formatVehicleModel(this);
    }

    @Override // com.texa.careapp.app.onboarding.IVehicleModel
    public String getVehiclePlate() {
        return getPlate();
    }
}
