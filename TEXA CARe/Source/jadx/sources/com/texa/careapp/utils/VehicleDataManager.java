package com.texa.careapp.utils;

import android.util.Log;
import com.activeandroid.ActiveAndroid;
import com.activeandroid.Cache;
import com.activeandroid.query.Delete;
import com.activeandroid.query.Select;
import com.texa.careapp.Constants;
import com.texa.careapp.app.errorsDTC.LampStatus;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.DongleModel;
import com.texa.careapp.model.ThresholdModel;
import com.texa.careapp.model.VehicleAlarm;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.model.VehicleModelResponseEntity;
import com.texa.careapp.model.VehicleParam;
import com.texa.careapp.networking.response.SelectionDataResponse;
import com.texa.careapp.networking.response.VehicleResponse;
import com.texa.carelib.care.vehicle.ValueDataType;
import io.reactivex.Observable;
import io.reactivex.functions.Predicate;
import io.reactivex.subjects.PublishSubject;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class VehicleDataManager {
    private static final String TAG = "VehicleDataManager";
    private DongleDataManager mDongleDataManager;
    private PublishSubject<VehicleModel> mVehicleModelPublishSubject = PublishSubject.create();

    public VehicleDataManager(DongleDataManager dongleDataManager) {
        this.mDongleDataManager = dongleDataManager;
    }

    private static void deleteVehicle(String str) {
        new Delete().from(VehicleModel.class).where("uid = ? ", str).execute();
    }

    private static boolean isVehiclePersisted(String str) {
        return new Select().from(VehicleModel.class).where("uid = ? ", str).count() > 0;
    }

    public List<VehicleModel> getAllVehicles() {
        return new Select().from(VehicleModel.class).execute();
    }

    public List<VehicleModel> getAllVehicles(String str) {
        return new Select().from(VehicleModel.class).where("hwid = ?", str).execute();
    }

    public VehicleModel getVehicleByPlate(String str) {
        return (VehicleModel) new Select().from(VehicleModel.class).where("plate = ? ", str).executeSingle();
    }

    public VehicleModel getCurrentVehicle() {
        DongleModel dongleModel = this.mDongleDataManager.getDongleModel();
        if (dongleModel == null) {
            return null;
        }
        return (VehicleModel) new Select().from(VehicleModel.class).where("hwid = ? ", dongleModel.getHwid()).and("isCurrentVehicle = ? ", true).executeSingle();
    }

    public VehicleModel getSelectedVehicle() {
        if (this.mDongleDataManager.getDongleModel() == null) {
            return null;
        }
        return (VehicleModel) new Select().from(VehicleModel.class).where("isSelectedVehicle = ? ", true).executeSingle();
    }

    Observable<VehicleModel> getVehicleObservable(VehicleResponse vehicleResponse) {
        VehicleModel vehicleModelFrom = VehicleModel.from(vehicleResponse);
        if (vehicleModelFrom == null) {
            Log.w(TAG, "vehiclemodel is null!");
            return Observable.empty();
        }
        return Observable.just(vehicleModelFrom);
    }

    public Observable<VehicleModel> insertVehicle(VehicleResponse vehicleResponse) {
        VehicleModel vehicleModelFrom = VehicleModel.from(vehicleResponse);
        if (vehicleModelFrom == null) {
            Log.w(TAG, "vehiclemodel is null!");
            return Observable.empty();
        }
        ActiveAndroid.beginTransaction();
        try {
            try {
                String uid = vehicleModelFrom.getUid();
                if (isVehiclePersisted(uid)) {
                    deleteVehicle(uid);
                }
                Utils.safeModelSave(vehicleModelFrom, Cache.getContext());
                List<VehicleResponse.Deadline> list = vehicleResponse.vehicle.deadlines;
                if (!Utils.isEmpty(list)) {
                    Iterator<VehicleResponse.Deadline> it = list.iterator();
                    while (it.hasNext()) {
                        vehicleModelFrom.updateSchedule(it.next());
                    }
                }
                HashMap<String, VehicleResponse.Threshold> map = vehicleResponse.vehicle.thresholds;
                for (String str : map.keySet()) {
                    if (str == null) {
                        Timber.w("threshold type is null, skipping", new Object[0]);
                    } else {
                        try {
                            VehicleResponse.Threshold threshold = map.get(str);
                            ThresholdModel threshold2 = vehicleModelFrom.getThreshold(ThresholdModel.Type.getValueOf(str), Cache.getContext());
                            threshold2.setDate(threshold.date);
                            threshold2.setOdometer(threshold.odometer);
                            Utils.safeModelSave(threshold2, Cache.getContext());
                        } catch (IllegalArgumentException e) {
                            Timber.w(e, "threshold type not found", new Object[0]);
                        }
                    }
                }
                persistLamps(vehicleResponse.vehicle.lampStatusResponseCollection, vehicleModelFrom);
                persistAlarms(vehicleResponse, vehicleModelFrom);
                persistParameters(vehicleResponse, vehicleModelFrom);
                ActiveAndroid.setTransactionSuccessful();
            } catch (Exception e2) {
                Timber.w(e2, "cannot insert vehicle", new Object[0]);
            }
            ActiveAndroid.endTransaction();
            return Observable.just(vehicleModelFrom);
        } catch (Throwable th) {
            ActiveAndroid.endTransaction();
            throw th;
        }
    }

    public Observable<VehicleModel> insertVehicle(VehicleModelResponseEntity vehicleModelResponseEntity) {
        VehicleModel vehicleModelFrom = VehicleModel.from(vehicleModelResponseEntity);
        if (vehicleModelFrom == null) {
            Log.w(TAG, "vehiclemodel is null!");
            return Observable.empty();
        }
        ActiveAndroid.beginTransaction();
        try {
            try {
                String uid = vehicleModelFrom.getUid();
                if (isVehiclePersisted(uid)) {
                    deleteVehicle(uid);
                }
                Utils.safeModelSave(vehicleModelFrom, Cache.getContext());
                ActiveAndroid.setTransactionSuccessful();
            } catch (Exception e) {
                Timber.w(e, "cannot insert vehicle", new Object[0]);
            }
            ActiveAndroid.endTransaction();
            return Observable.just(vehicleModelFrom);
        } catch (Throwable th) {
            ActiveAndroid.endTransaction();
            throw th;
        }
    }

    private void persistAlarms(VehicleResponse vehicleResponse, VehicleModel vehicleModel) {
        if (vehicleResponse.vehicle.vehicleAlarmCollectionResponse == null || vehicleResponse.vehicle.vehicleAlarmCollectionResponse.vehicleAlarmResponses == null) {
            return;
        }
        for (VehicleResponse.VehicleAlarmResponse vehicleAlarmResponse : vehicleResponse.vehicle.vehicleAlarmCollectionResponse.vehicleAlarmResponses) {
            if (isValidVehicleAlarmResponse(vehicleAlarmResponse)) {
                vehicleModel.updateAlarm(getVehicleAlarm(vehicleModel, vehicleAlarmResponse));
            }
        }
    }

    public VehicleModel setVehicleLikeSelected(String str) {
        if (Utils.isEmpty(str)) {
            return null;
        }
        VehicleModel vehicleById = getVehicleById(str);
        if (vehicleById == null) {
            Timber.e("this vehicleModel not exist in DB: %s", str);
            return null;
        }
        vehicleById.setVehicleSelected();
        vehicleById.save();
        return vehicleById;
    }

    private VehicleAlarm getVehicleAlarm(VehicleModel vehicleModel, VehicleResponse.VehicleAlarmResponse vehicleAlarmResponse) {
        VehicleAlarm vehicleAlarm = new VehicleAlarm();
        vehicleAlarm.setVehicleId(vehicleModel.getUid());
        vehicleAlarm.setTimestamp(vehicleAlarmResponse.timestamp);
        vehicleAlarm.setMeasureUnit(Constants.ALARM_TYPE_MEASURE_UNIT_MAP.get(vehicleAlarmResponse.alarmType));
        vehicleAlarm.setAlarmType(vehicleAlarmResponse.alarmType);
        vehicleAlarm.setAlarmStatus(vehicleAlarmResponse.alarmStatus);
        return vehicleAlarm;
    }

    private boolean isValidVehicleAlarmResponse(VehicleResponse.VehicleAlarmResponse vehicleAlarmResponse) {
        return (vehicleAlarmResponse == null || vehicleAlarmResponse.alarmStatus == null || vehicleAlarmResponse.alarmType == null || vehicleAlarmResponse.timestamp == null) ? false : true;
    }

    public Observable<VehicleModel> updateVehicle(VehicleModel vehicleModel, VehicleResponse vehicleResponse) throws DatabaseIOException {
        if (!vehicleModel.getUid().equals(vehicleResponse.vehicle.vehicleId)) {
            throw new IllegalArgumentException("vehicle id mismatch!");
        }
        VehicleResponse.VehicleObject vehicleObject = vehicleResponse.vehicle;
        VehicleModel vehicleById = getVehicleById(vehicleModel.getUid());
        if (vehicleById != null) {
            vehicleById.setHwid(vehicleModel.getHwid());
            vehicleById.setBrandName(vehicleModel.getBrandName());
            vehicleById.setModelName(vehicleModel.getModelName());
            vehicleById.setDescription(vehicleModel.getDescription());
            vehicleById.setPlate(vehicleModel.getPlate());
            vehicleModel = vehicleById;
        }
        SelectionDataResponse selectionDataResponse = vehicleObject.selectionData;
        if (selectionDataResponse != null) {
            if (selectionDataResponse.getBrand() != null) {
                vehicleModel.setBrandName(selectionDataResponse.getBrand().getValue());
            }
            if (selectionDataResponse.getModel() != null) {
                vehicleModel.setModelName(selectionDataResponse.getModel().getValue());
            }
        }
        vehicleModel.setPlate(vehicleObject.plate);
        vehicleModel.setHwid(vehicleObject.hwid);
        vehicleModel.setOdometer(vehicleObject.odometer);
        vehicleModel.setRegistrationDate(vehicleObject.registrationDate);
        vehicleModel.setColor(vehicleObject.color);
        vehicleModel.setTyresTypeId(vehicleObject.tyredTypeId);
        vehicleModel.setNation(vehicleObject.country);
        vehicleModel.setHaveAdvancedDiagnosis(vehicleObject.haveAdvancedDiagnosis);
        vehicleModel.setHaveAutomaticTransmission(vehicleObject.haveAutomaticTransmission);
        vehicleModel.setCustomerAvailability(vehicleObject.customerAvailability);
        Utils.safeModelSave(vehicleModel, Cache.getContext());
        vehicleModel.deleteSchedules();
        List<VehicleResponse.Deadline> list = vehicleResponse.vehicle.deadlines;
        if (!Utils.isEmpty(list)) {
            Iterator<VehicleResponse.Deadline> it = list.iterator();
            while (it.hasNext()) {
                vehicleModel.updateSchedule(it.next());
            }
        }
        HashMap<String, VehicleResponse.Threshold> map = vehicleResponse.vehicle.thresholds;
        if (map != null) {
            for (String str : map.keySet()) {
                VehicleResponse.Threshold threshold = map.get(str);
                try {
                    ThresholdModel threshold2 = vehicleModel.getThreshold(ThresholdModel.Type.getValueOf(str), Cache.getContext());
                    if (!threshold2.isSyncNeeded()) {
                        threshold2.setDate(threshold.date);
                        threshold2.setOdometer(threshold.odometer);
                        Utils.safeModelSave(threshold2, Cache.getContext());
                    }
                } catch (IllegalArgumentException e) {
                    Timber.w(e, "threshold type not found", new Object[0]);
                }
            }
        }
        this.mVehicleModelPublishSubject.onNext(vehicleModel);
        return Observable.just(vehicleModel);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(8:10|(2:34|12)(3:13|(3:37|15|(1:42)(2:33|18))(3:35|19|(1:39)(3:36|21|(1:23)(1:24)))|38)|25|30|26|40|38|8) */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00b2, code lost:
    
        timber.log.Timber.e(com.texa.careapp.utils.VehicleDataManager.TAG, "Could not save diagnostic parameter in database");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void persistParameters(VehicleResponse vehicleResponse, VehicleModel vehicleModel) {
        if (vehicleResponse.vehicle.parameterStatusReponseCollection == null || vehicleResponse.vehicle.parameterStatusReponseCollection.list == null) {
            return;
        }
        VehicleResponse.ParameterStatusReponseCollection parameterStatusReponseCollection = vehicleResponse.vehicle.parameterStatusReponseCollection;
        for (Long l : parameterStatusReponseCollection.list.keySet()) {
            VehicleResponse.ParameterStatusResponseItem parameterStatusResponseItem = parameterStatusReponseCollection.list.get(l);
            VehicleParam vehicleParam = new VehicleParam();
            if (Constants.VEHICLE_PARAM_TYPE_STRING.equals(parameterStatusResponseItem.type)) {
                vehicleParam.setValueDataType(ValueDataType.STRING);
                vehicleParam.setValueString(parameterStatusResponseItem.value);
            } else if (Constants.VEHICLE_PARAM_TYPE_NUMERIC.equals(parameterStatusResponseItem.type)) {
                if (parameterStatusResponseItem.unit != null) {
                    vehicleParam.setValueDataType(ValueDataType.NUMERIC);
                    vehicleParam.setValueNumeric(Double.valueOf(parameterStatusResponseItem.value));
                }
            } else if ("STATE".equals(parameterStatusResponseItem.type)) {
                Long l2 = Constants.STATUS_CONVERSION_MAP_INVERSE.get(parameterStatusResponseItem.value);
                if (l2 == null) {
                    Timber.w("invalid STATUS_CONVERSION_MAP_INVERSE: %s", parameterStatusResponseItem.value);
                } else {
                    vehicleParam.setValueDataType(ValueDataType.ENUM);
                    vehicleParam.setValueStatus(l2.longValue());
                }
            }
            vehicleParam.setDataId(l.longValue());
            vehicleParam.setVehicleModel(vehicleModel);
            vehicleParam.setUnit(parameterStatusResponseItem.unit);
            Utils.safeModelSave(vehicleParam, Cache.getContext());
        }
    }

    void persistLamps(VehicleResponse.LampStatusResponseCollection lampStatusResponseCollection, VehicleModel vehicleModel) {
        if (lampStatusResponseCollection == null || lampStatusResponseCollection.list == null) {
            return;
        }
        for (Long l : lampStatusResponseCollection.list.keySet()) {
            LampStatus lampStatus = new LampStatus();
            lampStatus.setDataId(l);
            lampStatus.setTime(lampStatusResponseCollection.list.get(l).timestamp);
            lampStatus.setStatus(true);
            lampStatus.setVehicleModel(vehicleModel);
            try {
                Utils.safeModelSave(lampStatus, Cache.getContext());
            } catch (DatabaseIOException e) {
                Timber.e(e, "Could not save lamp status in database.", new Object[0]);
            }
        }
    }

    public void delete() {
        new Delete().from(VehicleModel.class).execute();
    }

    public VehicleModel getVehicleById(String str) {
        return (VehicleModel) new Select().from(VehicleModel.class).where("uid=?", str).executeSingle();
    }

    public VehicleModel getVehicleByHwId(String str) {
        return (VehicleModel) new Select().from(VehicleModel.class).where("hwid=?", str).and("isCurrentVehicle = ? ", true).executeSingle();
    }

    public VehicleModel getVehicleByHwId() {
        DongleModel dongleModel = this.mDongleDataManager.getDongleModel();
        if (dongleModel == null) {
            return null;
        }
        return (VehicleModel) new Select().from(VehicleModel.class).where("hwid = ? ", dongleModel.getHwid()).executeSingle();
    }

    public List<VehicleModel> getVehiclesByHwId() {
        DongleModel dongleModel = this.mDongleDataManager.getDongleModel();
        if (dongleModel == null) {
            return null;
        }
        return new Select().from(VehicleModel.class).where("hwid = ? ", dongleModel.getHwid()).execute();
    }

    public boolean exists(String str) {
        return new Select().from(VehicleModel.class).where("uid=?", str).exists();
    }

    public List<VehicleModel> getUnSyncedVehicles() {
        return new Select().from(VehicleModel.class).where("sync_needed=?", true).execute();
    }

    Observable<VehicleModel> observeVehicleModel(final String str) {
        return this.mVehicleModelPublishSubject.filter(new Predicate() { // from class: com.texa.careapp.utils.VehicleDataManager$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Predicate
            public final boolean test(Object obj) {
                return str.equals(((VehicleModel) obj).getHwid());
            }
        }).startWith(getVehicleByHwId(str));
    }
}
