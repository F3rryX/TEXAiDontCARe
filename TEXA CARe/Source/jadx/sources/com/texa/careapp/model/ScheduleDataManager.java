package com.texa.careapp.model;

import android.content.Context;
import android.util.Log;
import android.widget.Toast;
import com.activeandroid.Cache;
import com.activeandroid.query.Delete;
import com.texa.care.R;
import com.texa.careapp.CareApplication;
import com.texa.careapp.Constants;
import com.texa.careapp.app.events.CancelProgressEvent;
import com.texa.careapp.app.events.UserUpdatedEvent;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.model.ThresholdModel;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.utils.UserDataManager;
import com.texa.careapp.utils.Utils;
import com.texa.careapp.utils.VehicleObserver;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.greenrobot.eventbus.EventBus;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class ScheduleDataManager {
    public static final String SYNC_THRESHOLDS_TO_SERVER_DISPOSABLE_KEY = "SYNC_THRESHOLDS_TO_SERVER_DISPOSABLE_KEY";
    public static final String SYNC_USER_TO_SERVER_DISPOSABLE_KEY = "SYNC_USER_TO_SERVER_DISPOSABLE_KEY";
    private static final String TAG = "ScheduleDataManager";
    public static final String UPDATE_VEHICLE_DISPSABLE_KEY = "UPDATE_VEHICLE_DISPSABLE_KEY";
    private static final int schemaVersion = 2;
    private CareApplication mApplication;
    private HashMap<String, Disposable> mDisposableHashMap = new HashMap<>();
    private EventBus mEventBus;
    private TexaCareApiServiceUser mTexaCareApiService;
    private UserDataManager mUserDataManager;
    private VehicleObserver mVehicleObserver;

    public ScheduleDataManager(EventBus eventBus, TexaCareApiServiceUser texaCareApiServiceUser, CareApplication careApplication, VehicleObserver vehicleObserver, UserDataManager userDataManager) {
        this.mEventBus = eventBus;
        this.mTexaCareApiService = texaCareApiServiceUser;
        this.mApplication = careApplication;
        this.mVehicleObserver = vehicleObserver;
        this.mUserDataManager = userDataManager;
    }

    public void deleteByType(ScheduleType scheduleType) {
        new Delete().from(VehicleScheduleModel.class).where("type = ?", scheduleType).execute();
    }

    public boolean deleteSchedule(IScheduleModel iScheduleModel, VehicleModel vehicleModel) {
        if (iScheduleModel.getType() == ScheduleType.TYRES_SWAP) {
            deleteTyreSwapSchedule(vehicleModel);
            return true;
        }
        boolean schedule = setSchedule(iScheduleModel, vehicleModel, null, null);
        this.mEventBus.post(new UserUpdatedEvent());
        return schedule;
    }

    private void deleteTyreSwapSchedule(VehicleModel vehicleModel) {
        ThresholdModel threshold = vehicleModel.getThreshold(ThresholdModel.Type.TYRES_SWAP, Cache.getContext());
        threshold.setOdometer(null);
        ThresholdModel threshold2 = vehicleModel.getThreshold(ThresholdModel.Type.TYRES_FITTING, Cache.getContext());
        threshold2.setOdometer(null);
        try {
            threshold.saveForSync();
            threshold2.saveForSync();
            syncThresholdsToServer(vehicleModel, vehicleModel.getUnsyncedThresholds());
        } catch (DatabaseIOException e) {
            Timber.e(e, "Could not save threshold from database. ThresholdType = TYRES_SWAP. ThresholdType = TYRES_FITTING.", new Object[0]);
            Toast.makeText(this.mApplication, R.string.error_msg_unexpected_error_occurred, 1).show();
        }
    }

    public boolean setSchedule(IScheduleModel iScheduleModel, VehicleModel vehicleModel, Date date) {
        return setSchedule(iScheduleModel, vehicleModel, date, null);
    }

    public boolean setSchedule(IScheduleModel iScheduleModel, VehicleModel vehicleModel, Integer num) {
        return setSchedule(iScheduleModel, vehicleModel, null, num);
    }

    private boolean setSchedule(IScheduleModel iScheduleModel, VehicleModel vehicleModel, Date date, Integer num) {
        ScheduleType type = iScheduleModel.getType();
        if (type == ScheduleType.TYRES_SWAP) {
            throw new IllegalArgumentException("need multiple Thresholds for set this schedule");
        }
        setScheduleFromThreshold(convertScheduleInThreshold(type, vehicleModel), vehicleModel, num, date);
        return false;
    }

    public void setScheduleFromThreshold(ThresholdModel thresholdModel, VehicleModel vehicleModel, Date date) {
        setScheduleFromThreshold(thresholdModel, vehicleModel, null, date);
    }

    public void setScheduleFromThreshold(ThresholdModel thresholdModel, VehicleModel vehicleModel, Integer num) {
        setScheduleFromThreshold(thresholdModel, vehicleModel, num, null);
    }

    void setScheduleFromThreshold(ThresholdModel thresholdModel, VehicleModel vehicleModel, Integer num, Date date) {
        int i = AnonymousClass1.$SwitchMap$com$texa$careapp$model$ThresholdModel$Type[thresholdModel.getType().ordinal()];
        if (i == 1) {
            UserModel userCached = this.mUserDataManager.getUserCached();
            userCached.setLicenseExpireDate(date);
            syncUserToServer(userCached);
            return;
        }
        if (i == 2 || i == 3) {
            thresholdModel.setDate(date);
            thresholdModel.setOdometer(num);
            try {
                thresholdModel.saveForSync();
                Timber.d("Threshold saved: %s", thresholdModel.toString());
                syncThresholdsToServerWithUpdateVehicle(vehicleModel, vehicleModel.getUnsyncedThresholds());
                return;
            } catch (DatabaseIOException e) {
                this.mEventBus.post(new CancelProgressEvent());
                Timber.e(e, "Could not save threshold from database. ThresholdType = %s", thresholdModel.getType());
                Toast.makeText(this.mApplication, R.string.error_msg_unexpected_error_occurred, 1).show();
                return;
            }
        }
        thresholdModel.setDate(date);
        thresholdModel.setOdometer(num);
        try {
            thresholdModel.saveForSync();
            Timber.d("Threshold saved: %s", thresholdModel.toString());
            if (vehicleModel == null || vehicleModel.getUnsyncedThresholds() == null || vehicleModel.getUnsyncedThresholds().isEmpty()) {
                return;
            }
            syncThresholdsToServer(vehicleModel, vehicleModel.getUnsyncedThresholds());
        } catch (DatabaseIOException e2) {
            this.mEventBus.post(new CancelProgressEvent());
            Timber.e(e2, "Could not save threshold from database. ThresholdType = %s", thresholdModel.getType());
            Toast.makeText(this.mApplication, R.string.error_msg_unexpected_error_occurred, 1).show();
        }
    }

    /* JADX INFO: renamed from: com.texa.careapp.model.ScheduleDataManager$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$careapp$model$ScheduleType;
        static final /* synthetic */ int[] $SwitchMap$com$texa$careapp$model$ThresholdModel$Type;

        static {
            int[] iArr = new int[ScheduleType.values().length];
            $SwitchMap$com$texa$careapp$model$ScheduleType = iArr;
            try {
                iArr[ScheduleType.LICENSE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            int[] iArr2 = new int[ThresholdModel.Type.values().length];
            $SwitchMap$com$texa$careapp$model$ThresholdModel$Type = iArr2;
            try {
                iArr2[ThresholdModel.Type.LICENCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$texa$careapp$model$ThresholdModel$Type[ThresholdModel.Type.TYRES_SWAP.ordinal()] = 2;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$texa$careapp$model$ThresholdModel$Type[ThresholdModel.Type.TYRES_FITTING.ordinal()] = 3;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private ThresholdModel convertScheduleInThreshold(ScheduleType scheduleType, VehicleModel vehicleModel) {
        if (AnonymousClass1.$SwitchMap$com$texa$careapp$model$ScheduleType[scheduleType.ordinal()] == 1) {
            ThresholdModel thresholdModel = new ThresholdModel();
            thresholdModel.setType(ThresholdModel.Type.LICENCE);
            return thresholdModel;
        }
        return vehicleModel.getThreshold(Constants.CONVERSION_SCHEDULE_THRESHOLD.get(scheduleType), Cache.getContext());
    }

    void syncUserToServer(final UserModel userModel) {
        Utils.safeDispose(this.mDisposableHashMap, SYNC_USER_TO_SERVER_DISPOSABLE_KEY);
        this.mDisposableHashMap.put(SYNC_USER_TO_SERVER_DISPOSABLE_KEY, this.mTexaCareApiService.putUserData(userModel).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Action() { // from class: com.texa.careapp.model.ScheduleDataManager$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Action
            public final void run() throws Exception {
                this.f$0.m626x3c905d3b(userModel);
            }
        }, new Consumer() { // from class: com.texa.careapp.model.ScheduleDataManager$$ExternalSyntheticLambda7
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m627xff7cc69a((Throwable) obj);
            }
        }));
    }

    /* JADX INFO: renamed from: lambda$syncUserToServer$0$com-texa-careapp-model-ScheduleDataManager, reason: not valid java name */
    public /* synthetic */ void m626x3c905d3b(UserModel userModel) throws Exception {
        try {
            markUserAsSynced(userModel);
        } catch (DatabaseIOException e) {
            e.printStackTrace();
        }
        this.mEventBus.post(new UserUpdatedEvent());
    }

    /* JADX INFO: renamed from: lambda$syncUserToServer$1$com-texa-careapp-model-ScheduleDataManager, reason: not valid java name */
    public /* synthetic */ void m627xff7cc69a(Throwable th) throws Exception {
        Timber.w(th, "user sync error", new Object[0]);
        this.mEventBus.post(new CancelProgressEvent());
        Toast.makeText(this.mApplication.getApplicationContext(), R.string.error_network, 1).show();
    }

    void syncThresholdsToServer(final VehicleModel vehicleModel, final ThresholdModelList thresholdModelList) {
        Utils.safeDispose(this.mDisposableHashMap, SYNC_THRESHOLDS_TO_SERVER_DISPOSABLE_KEY);
        this.mDisposableHashMap.put(SYNC_THRESHOLDS_TO_SERVER_DISPOSABLE_KEY, this.mTexaCareApiService.putThresholds(vehicleModel.getUid(), thresholdModelList).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Action() { // from class: com.texa.careapp.model.ScheduleDataManager$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Action
            public final void run() throws Exception {
                this.f$0.m620xa036f47c(thresholdModelList, vehicleModel);
            }
        }, new Consumer() { // from class: com.texa.careapp.model.ScheduleDataManager$$ExternalSyntheticLambda4
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m621x63235ddb((Throwable) obj);
            }
        }));
    }

    /* JADX INFO: renamed from: lambda$syncThresholdsToServer$2$com-texa-careapp-model-ScheduleDataManager, reason: not valid java name */
    public /* synthetic */ void m620xa036f47c(ThresholdModelList thresholdModelList, VehicleModel vehicleModel) throws Exception {
        markThresholdsAsSynced(thresholdModelList);
        this.mVehicleObserver.forceVehicleUpdateFromServer(vehicleModel.getPlate());
    }

    /* JADX INFO: renamed from: lambda$syncThresholdsToServer$3$com-texa-careapp-model-ScheduleDataManager, reason: not valid java name */
    public /* synthetic */ void m621x63235ddb(Throwable th) throws Exception {
        Timber.w(th, "thresholds sync error", new Object[0]);
        this.mEventBus.post(new CancelProgressEvent());
        Toast.makeText(this.mApplication.getApplicationContext(), R.string.error_network, 1).show();
    }

    private void syncThresholdsToServerWithUpdateVehicle(final VehicleModel vehicleModel, final ThresholdModelList thresholdModelList) {
        Date date = new Date(vehicleModel.getRegistrationDate().getTime());
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss Z", Locale.getDefault());
        try {
            date = simpleDateFormat.parse(simpleDateFormat.format(date));
        } catch (ParseException e) {
            e.printStackTrace();
        }
        VehicleModelUpdateEntity vehicleModelUpdateEntity = new VehicleModelUpdateEntity(vehicleModel.formatModel(), vehicleModel.getNation(), date, vehicleModel.getOdometer().intValue(), vehicleModel.getColor(), vehicleModel.getTyresTypeId().intValue(), false, vehicleModel.getRescueContact(), 2);
        Utils.safeDispose(this.mDisposableHashMap, UPDATE_VEHICLE_DISPSABLE_KEY);
        this.mDisposableHashMap.put(UPDATE_VEHICLE_DISPSABLE_KEY, this.mTexaCareApiService.updateVehicle(vehicleModel.getUid(), vehicleModelUpdateEntity).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Action() { // from class: com.texa.careapp.model.ScheduleDataManager$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Action
            public final void run() throws Exception {
                this.f$0.m624x495ea637(vehicleModel, thresholdModelList);
            }
        }, new Consumer() { // from class: com.texa.careapp.model.ScheduleDataManager$$ExternalSyntheticLambda6
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m625xc4b0f96((Throwable) obj);
            }
        }));
    }

    /* JADX INFO: renamed from: lambda$syncThresholdsToServerWithUpdateVehicle$6$com-texa-careapp-model-ScheduleDataManager, reason: not valid java name */
    public /* synthetic */ void m624x495ea637(final VehicleModel vehicleModel, final ThresholdModelList thresholdModelList) throws Exception {
        this.mTexaCareApiService.putThresholds(vehicleModel.getUid(), thresholdModelList).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Action() { // from class: com.texa.careapp.model.ScheduleDataManager$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Action
            public final void run() throws Exception {
                this.f$0.m622xc385d379(thresholdModelList, vehicleModel);
            }
        }, new Consumer() { // from class: com.texa.careapp.model.ScheduleDataManager$$ExternalSyntheticLambda5
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m623x86723cd8((Throwable) obj);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$syncThresholdsToServerWithUpdateVehicle$4$com-texa-careapp-model-ScheduleDataManager, reason: not valid java name */
    public /* synthetic */ void m622xc385d379(ThresholdModelList thresholdModelList, VehicleModel vehicleModel) throws Exception {
        markThresholdsAsSynced(thresholdModelList);
        this.mVehicleObserver.forceVehicleUpdateFromServer(vehicleModel.getPlate());
    }

    /* JADX INFO: renamed from: lambda$syncThresholdsToServerWithUpdateVehicle$5$com-texa-careapp-model-ScheduleDataManager, reason: not valid java name */
    public /* synthetic */ void m623x86723cd8(Throwable th) throws Exception {
        Timber.w(th, "thresholds sync error", new Object[0]);
        this.mEventBus.post(new CancelProgressEvent());
        Toast.makeText(this.mApplication.getApplicationContext(), R.string.error_network, 1).show();
    }

    /* JADX INFO: renamed from: lambda$syncThresholdsToServerWithUpdateVehicle$7$com-texa-careapp-model-ScheduleDataManager, reason: not valid java name */
    public /* synthetic */ void m625xc4b0f96(Throwable th) throws Exception {
        Timber.w(th, "thresholds sync error", new Object[0]);
        this.mEventBus.post(new CancelProgressEvent());
        Toast.makeText(this.mApplication.getApplicationContext(), R.string.error_network, 1).show();
    }

    public List<IScheduleModel> getIScheduleModels(VehicleModel vehicleModel, Context context) {
        UserScheduleModel driverLicenseExpireDate;
        ArrayList arrayList = new ArrayList();
        if (vehicleModel != null) {
            arrayList.addAll(vehicleModel.getSchedulesForUser(context));
            UserModel userCached = this.mUserDataManager.getUserCached();
            if (userCached != null) {
                boolean z = false;
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    if (((IScheduleModel) it.next()).getType() == ScheduleType.LICENSE) {
                        z = true;
                    }
                }
                if (!z && (driverLicenseExpireDate = Utils.getDriverLicenseExpireDate(userCached)) != null) {
                    arrayList.add(driverLicenseExpireDate);
                }
            }
        }
        return arrayList;
    }

    private static void markUserAsSynced(UserModel userModel) throws DatabaseIOException {
        userModel.setSyncNeeded(false);
        Utils.safeModelSave(userModel, Cache.getContext());
        Log.v(TAG, "marked parameter as synced: " + userModel);
    }

    private void markThresholdsAsSynced(List<ThresholdModel> list) {
        for (ThresholdModel thresholdModel : list) {
            try {
                thresholdModel.markAsSynced();
            } catch (DatabaseIOException e) {
                Timber.e(e, "Could not save threshold from database. ThresholdType = %s", thresholdModel.getType());
            }
        }
    }
}
