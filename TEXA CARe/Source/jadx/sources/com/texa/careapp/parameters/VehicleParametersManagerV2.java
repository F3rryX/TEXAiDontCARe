package com.texa.careapp.parameters;

import com.activeandroid.Cache;
import com.texa.care.eco_driving.RxVehicle;
import com.texa.careapp.Constants;
import com.texa.careapp.app.MainActivity$$ExternalSyntheticLambda1;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.model.VehicleParam;
import com.texa.careapp.sync.CAReWorkerManager;
import com.texa.careapp.utils.Timestamped;
import com.texa.careapp.utils.Utils;
import com.texa.careapp.utils.VehicleObserver;
import com.texa.carelib.care.featureverifier.FeatureVerifier;
import com.texa.carelib.care.trips.CurrentTrip;
import com.texa.carelib.care.vehicle.Vehicle;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.diagresources.DataID;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.functions.Predicate;
import io.reactivex.schedulers.Schedulers;
import io.reactivex.subjects.PublishSubject;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class VehicleParametersManagerV2 {
    static final long HIGH_FREQ_TIME_IN_MILLIS = 1000;
    static final long LOW_FREQ_TIME_IN_MILLIS = 30000;
    static final long MID_FREQ_TIME_IN_MILLIS = 5000;
    static final Long[] RPM_AND_SPEED = {Long.valueOf(DataID.Parameter.VEHICLE_SPEED.getId()), Long.valueOf(DataID.Parameter.ENGINE_RPM.getId())};
    private ArrayList<Long> mAllParamsArray;
    private final CAReWorkerManager mCAReWorkerManager;
    private CurrentTrip mCurrentTrip;
    private long mCurrentUpdateFrequency;
    private final FeatureVerifier mFeatureVerifier;
    private Vehicle mVehicle;
    private VehicleObserver mVehicleObserver;
    private Disposable parameterChangedDisposable;
    private RxVehicle rxVehicle;
    private Disposable supportedParameterDisposable;
    private PublishSubject<VehicleParam> mParamsForegroundSubject = PublishSubject.create();
    private List<Long> subscribedParams = new ArrayList();

    public VehicleParametersManagerV2(Vehicle vehicle, CurrentTrip currentTrip, VehicleObserver vehicleObserver, CAReWorkerManager cAReWorkerManager, FeatureVerifier featureVerifier, RxVehicle rxVehicle) {
        this.rxVehicle = rxVehicle;
        this.mVehicleObserver = vehicleObserver;
        this.mVehicle = vehicle;
        this.mCurrentTrip = currentTrip;
        HashSet hashSet = new HashSet();
        hashSet.addAll(Constants.CARE_DRIVER_PARAMETERS);
        hashSet.addAll(Constants.CARE_PARAMETERS_FOR_MECHANIC);
        hashSet.remove(Long.valueOf(DataID.Parameter.VEHICLE_SPEED.getId()));
        hashSet.remove(Long.valueOf(DataID.Parameter.ENGINE_RPM.getId()));
        ArrayList<Long> arrayList = new ArrayList<>();
        this.mAllParamsArray = arrayList;
        arrayList.addAll(hashSet);
        this.mCurrentUpdateFrequency = 30000L;
        this.mCAReWorkerManager = cAReWorkerManager;
        this.mFeatureVerifier = featureVerifier;
    }

    private static VehicleParam buildVehicleParam(Timestamped<Long> timestamped, Vehicle vehicle, VehicleModel vehicleModel, long j) {
        try {
            if (vehicleModel != null) {
                VehicleParam orAddParameter = vehicleModel.getOrAddParameter(timestamped.getValue().longValue());
                orAddParameter.update(timestamped, vehicle, j);
                orAddParameter.setSyncNeeded(true);
                Utils.safeModelSave(orAddParameter, Cache.getContext());
                return orAddParameter;
            }
            Timber.v("no vehicle model was found in db. Parameter will be displayed to user but not persisted!", new Object[0]);
            VehicleParam vehicleParam = new VehicleParam();
            vehicleParam.setDataId(timestamped.getValue().longValue());
            vehicleParam.update(timestamped, vehicle, j);
            return vehicleParam;
        } catch (DatabaseIOException e) {
            Timber.e(e, "Could not save parameter model in database.", new Object[0]);
            return null;
        } catch (Exception e2) {
            Timber.e(e2, "Error meanwhile #buildVehicleParam() (VehicleParam is NULL)", new Object[0]);
            return null;
        }
    }

    public void onCareConnected() {
        Timber.d("VehicleParametersManagerV2 - onCareConnected, mCurrentupdateFrequency= %s", Long.valueOf(this.mCurrentUpdateFrequency));
        Utils.safeDispose(this.supportedParameterDisposable);
        observeParameter();
        this.supportedParameterDisposable = this.rxVehicle.observeSupportedParametersIDs().distinctUntilChanged().filter(new Predicate() { // from class: com.texa.careapp.parameters.VehicleParametersManagerV2$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Predicate
            public final boolean test(Object obj) {
                return VehicleParametersManagerV2.lambda$onCareConnected$0((Set) obj);
            }
        }).flatMap(new Function() { // from class: com.texa.careapp.parameters.VehicleParametersManagerV2$$ExternalSyntheticLambda8
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f$0.m629xdf233a0d((Set) obj);
            }
        }).filter(new Predicate() { // from class: com.texa.careapp.parameters.VehicleParametersManagerV2$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Predicate
            public final boolean test(Object obj) {
                return VehicleParametersManagerV2.lambda$onCareConnected$2((Long[]) obj);
            }
        }).subscribe(new Consumer() { // from class: com.texa.careapp.parameters.VehicleParametersManagerV2$$ExternalSyntheticLambda6
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m630xe18fdfcb((Long[]) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.parameters.VehicleParametersManagerV2$$ExternalSyntheticLambda4
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m631xe2c632aa((Throwable) obj);
            }
        });
    }

    static /* synthetic */ boolean lambda$onCareConnected$0(Set set) throws Exception {
        return !set.isEmpty();
    }

    /* JADX INFO: renamed from: lambda$onCareConnected$1$com-texa-careapp-parameters-VehicleParametersManagerV2, reason: not valid java name */
    public /* synthetic */ ObservableSource m629xdf233a0d(Set set) throws Exception {
        ArrayList arrayList = new ArrayList();
        for (Long l : this.mAllParamsArray) {
            if (!set.contains(l)) {
                arrayList.add(l);
            }
        }
        this.mAllParamsArray.removeAll(arrayList);
        ArrayList<Long> arrayList2 = this.mAllParamsArray;
        return Observable.just((Long[]) arrayList2.toArray(new Long[arrayList2.size()]));
    }

    static /* synthetic */ boolean lambda$onCareConnected$2(Long[] lArr) throws Exception {
        return !Utils.isEmpty(lArr);
    }

    /* JADX INFO: renamed from: lambda$onCareConnected$3$com-texa-careapp-parameters-VehicleParametersManagerV2, reason: not valid java name */
    public /* synthetic */ void m630xe18fdfcb(Long[] lArr) throws Exception {
        try {
            Vehicle vehicle = this.mVehicle;
            long frequencyForRpmAndSpeed = getFrequencyForRpmAndSpeed();
            Long[] lArr2 = RPM_AND_SPEED;
            vehicle.beginUpdateValues(frequencyForRpmAndSpeed, lArr2);
            this.subscribedParams.addAll(Arrays.asList(lArr2));
            this.mVehicle.beginUpdateValues(this.mCurrentUpdateFrequency, lArr);
            this.subscribedParams.addAll(Arrays.asList(lArr));
        } catch (CareLibException e) {
            throw new Exception(e);
        }
    }

    /* JADX INFO: renamed from: lambda$onCareConnected$4$com-texa-careapp-parameters-VehicleParametersManagerV2, reason: not valid java name */
    public /* synthetic */ void m631xe2c632aa(Throwable th) throws Exception {
        disposeVehicleListener();
        if (this.mFeatureVerifier.isParametersAvailable()) {
            onCareConnected();
        }
    }

    private void observeParameter() {
        Utils.safeDispose(this.parameterChangedDisposable);
        this.parameterChangedDisposable = this.rxVehicle.observeParameterUpdates().compose(Utils.applySchedulers()).subscribe(new Consumer() { // from class: com.texa.careapp.parameters.VehicleParametersManagerV2$$ExternalSyntheticLambda5
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m628xaacfa89b((List) obj);
            }
        }, MainActivity$$ExternalSyntheticLambda1.INSTANCE);
    }

    /* JADX INFO: renamed from: lambda$observeParameter$5$com-texa-careapp-parameters-VehicleParametersManagerV2, reason: not valid java name */
    public /* synthetic */ void m628xaacfa89b(List list) throws Exception {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Long l = (Long) it.next();
            Timber.v("updated param:  %s", l);
            onParameterUpdated(l);
        }
    }

    private void disposeVehicleListener() {
        Utils.safeDispose(this.parameterChangedDisposable);
        if (Utils.isEmpty(this.subscribedParams)) {
            return;
        }
        if (this.mVehicle != null && this.mFeatureVerifier.isParametersAvailable()) {
            try {
                Vehicle vehicle = this.mVehicle;
                List<Long> list = this.subscribedParams;
                vehicle.endUpdateValues((Long[]) list.toArray(new Long[list.size()]));
            } catch (CareLibException e) {
                e.printStackTrace();
            }
        }
        this.subscribedParams.clear();
    }

    public void onCareDisconnected() {
        Timber.d("VehicleParametersManagerV2 - onCareDisconnected", new Object[0]);
        disposeVehicleListener();
        scheduleParametersSyncTask();
    }

    public void startHighFreqUpdate() {
        Timber.d("VehicleParametersManagerV2 - startHighFreqUpdate", new Object[0]);
        this.mCurrentUpdateFrequency = 1000L;
        restartUpdateValues();
    }

    public void stopHighFreqUpdate() {
        Timber.d("VehicleParametersManagerV2 - stopHighFreqUpdate", new Object[0]);
        this.mCurrentUpdateFrequency = 30000L;
        restartUpdateValues();
    }

    void restartUpdateValues() {
        Observable.just(1).subscribeOn(Schedulers.io()).onErrorReturn(new Function() { // from class: com.texa.careapp.parameters.VehicleParametersManagerV2$$ExternalSyntheticLambda9
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return VehicleParametersManagerV2.lambda$restartUpdateValues$6((Throwable) obj);
            }
        }).subscribe(new Consumer() { // from class: com.texa.careapp.parameters.VehicleParametersManagerV2$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m632xdaf87446((Integer) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.parameters.VehicleParametersManagerV2$$ExternalSyntheticLambda7
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.e((Throwable) obj, "error on restartUpdateValues Observer", new Object[0]);
            }
        });
    }

    static /* synthetic */ Integer lambda$restartUpdateValues$6(Throwable th) throws Exception {
        Timber.e(th, " error on restartUpdateValues Observer", new Object[0]);
        return 1;
    }

    /* JADX INFO: renamed from: lambda$restartUpdateValues$7$com-texa-careapp-parameters-VehicleParametersManagerV2, reason: not valid java name */
    public /* synthetic */ void m632xdaf87446(Integer num) throws Exception {
        restartUpdateValuesInner();
    }

    private void restartUpdateValuesInner() {
        ArrayList<Long> arrayList = this.mAllParamsArray;
        Timber.v("endUpdateValues:  %s", Utils.toString((Long[]) arrayList.toArray(new Long[arrayList.size()])));
        endUpdateValues();
        ArrayList<Long> arrayList2 = this.mAllParamsArray;
        Timber.v("endUpdateValues: freq= %s , params= %s", Long.valueOf(this.mCurrentUpdateFrequency), Utils.toString((Long[]) arrayList2.toArray(new Long[arrayList2.size()])));
        try {
            Vehicle vehicle = this.mVehicle;
            long j = this.mCurrentUpdateFrequency;
            ArrayList<Long> arrayList3 = this.mAllParamsArray;
            vehicle.beginUpdateValues(j, (Long[]) arrayList3.toArray(new Long[arrayList3.size()]));
        } catch (CareLibException e) {
            e.printStackTrace();
        }
        try {
            this.mVehicle.beginUpdateValues(getFrequencyForRpmAndSpeed(), RPM_AND_SPEED);
        } catch (CareLibException e2) {
            e2.printStackTrace();
        }
    }

    private long getFrequencyForRpmAndSpeed() {
        return Math.min(1000L, this.mCurrentUpdateFrequency);
    }

    private void endUpdateValues() {
        try {
            Vehicle vehicle = this.mVehicle;
            ArrayList<Long> arrayList = this.mAllParamsArray;
            vehicle.endUpdateValues((Long[]) arrayList.toArray(new Long[arrayList.size()]));
        } catch (CareLibException e) {
            e.printStackTrace();
        }
        try {
            this.mVehicle.endUpdateValues(RPM_AND_SPEED);
        } catch (CareLibException e2) {
            e2.printStackTrace();
        }
    }

    public Observable<VehicleParam> observeEngineTemp() {
        return this.mParamsForegroundSubject.filter(new Predicate() { // from class: com.texa.careapp.parameters.VehicleParametersManagerV2$$ExternalSyntheticLambda11
            @Override // io.reactivex.functions.Predicate
            public final boolean test(Object obj) {
                return VehicleParametersManagerV2.lambda$observeEngineTemp$9((VehicleParam) obj);
            }
        }).compose(Utils.applySchedulers());
    }

    static /* synthetic */ boolean lambda$observeEngineTemp$9(VehicleParam vehicleParam) throws Exception {
        return vehicleParam.getDataId() == DataID.Parameter.ENGINE_TEMP.getId();
    }

    public Observable<VehicleParam> observeEngineRpm() {
        return this.mParamsForegroundSubject.filter(new Predicate() { // from class: com.texa.careapp.parameters.VehicleParametersManagerV2$$ExternalSyntheticLambda10
            @Override // io.reactivex.functions.Predicate
            public final boolean test(Object obj) {
                return VehicleParametersManagerV2.lambda$observeEngineRpm$10((VehicleParam) obj);
            }
        }).compose(Utils.applySchedulers());
    }

    static /* synthetic */ boolean lambda$observeEngineRpm$10(VehicleParam vehicleParam) throws Exception {
        return vehicleParam.getDataId() == DataID.Parameter.ENGINE_RPM.getId();
    }

    public Observable<VehicleParam> observeVehicleSpeed() {
        return this.mParamsForegroundSubject.filter(new Predicate() { // from class: com.texa.careapp.parameters.VehicleParametersManagerV2$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Predicate
            public final boolean test(Object obj) {
                return VehicleParametersManagerV2.lambda$observeVehicleSpeed$11((VehicleParam) obj);
            }
        }).compose(Utils.applySchedulers());
    }

    static /* synthetic */ boolean lambda$observeVehicleSpeed$11(VehicleParam vehicleParam) throws Exception {
        return vehicleParam.getDataId() == DataID.Parameter.VEHICLE_SPEED.getId();
    }

    public void onDestroy() {
        endUpdateValues();
        disposeVehicleListener();
    }

    private void onParameterUpdated(Long l) {
        Timestamped timestamped = new Timestamped(System.currentTimeMillis(), l);
        Vehicle vehicle = this.mVehicle;
        VehicleModel currentVehicle = this.mVehicleObserver.getCurrentVehicle();
        CurrentTrip currentTrip = this.mCurrentTrip;
        VehicleParam vehicleParamBuildVehicleParam = buildVehicleParam(timestamped, vehicle, currentVehicle, (currentTrip == null || currentTrip.getTripEndInfo() == null) ? -1L : this.mCurrentTrip.getTripEndInfo().getTripNumber().longValue());
        if (vehicleParamBuildVehicleParam == null || !Constants.CARE_DRIVER_PARAMETERS.contains(l)) {
            return;
        }
        Timber.v("onNext vehicleParam:  %s", vehicleParamBuildVehicleParam.toString());
        this.mParamsForegroundSubject.onNext(vehicleParamBuildVehicleParam);
    }

    public Observable<VehicleParam> observeForegroundParams() {
        return this.mParamsForegroundSubject.compose(Utils.applySchedulers());
    }

    private void scheduleParametersSyncTask() {
        Timber.d("scheduling parameters sync", new Object[0]);
        this.mCAReWorkerManager.scheduleParameterSend();
    }

    Long[] getAllParamsArray() {
        ArrayList<Long> arrayList = this.mAllParamsArray;
        return (Long[]) arrayList.toArray(new Long[arrayList.size()]);
    }

    long getCurrentUpdateFrequency() {
        return this.mCurrentUpdateFrequency;
    }

    public void stop() {
        endUpdateValues();
    }
}
