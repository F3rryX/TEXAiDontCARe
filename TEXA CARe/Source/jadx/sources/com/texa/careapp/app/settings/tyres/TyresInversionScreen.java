package com.texa.careapp.app.settings.tyres;

import android.view.View;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import androidx.databinding.DataBindingUtil;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.careapp.CareApplication;
import com.texa.careapp.app.events.TyresConfigurationCompletedEvent;
import com.texa.careapp.databinding.ScreenTyresInversionBinding;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.model.ThresholdModel;
import com.texa.careapp.model.ThresholdModelList;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.networking.response.VehicleResponse;
import com.texa.careapp.sync.CAReWorkerManager;
import com.texa.careapp.utils.TyresTypeAdapter;
import com.texa.careapp.utils.Utils;
import com.texa.carelib.core.utils.Version;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.ObservableSource;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.schedulers.Schedulers;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class TyresInversionScreen extends Screen {
    private static final String TAG = "TyresInversionScreen";

    @Inject
    protected CAReWorkerManager mCAReWorkerManager;
    private final CompositeDisposable mDisposables = new CompositeDisposable();

    @Inject
    protected EventBus mEventBus;

    @Inject
    protected TexaCareApiServiceUser mTexaCareApiServiceUser;
    private Spinner mTyreTypeSpinner;
    private EditText mTyresSwapKm;
    private final VehicleModel mVehicleModel;
    private ThresholdModel tyresSwap;

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.screen_tyres_inversion;
    }

    @Override // com.texa.care.navigation.Screen
    public int getTitle() {
        return R.string.tyres_settings_inversion;
    }

    TyresInversionScreen(VehicleModel vehicleModel) {
        this.mVehicleModel = vehicleModel;
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        ((CareApplication) getNavigator().getApplication()).component().inject(this);
        getNavigator().updateTitle();
        ScreenTyresInversionBinding screenTyresInversionBinding = (ScreenTyresInversionBinding) DataBindingUtil.bind(view);
        this.mTyresSwapKm = screenTyresInversionBinding.editTextExpTyresSwapInversion;
        this.mTyreTypeSpinner = screenTyresInversionBinding.tyresTypeSpinnerInversion;
        screenTyresInversionBinding.buttonTyresInversionConfirm.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.settings.tyres.TyresInversionScreen$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.onConfirmClicked(view2);
            }
        });
        initTyresSwapKm();
        initTyresType();
    }

    public void initTyresSwapKm() {
        ThresholdModel threshold = this.mVehicleModel.getThreshold(ThresholdModel.Type.TYRES_SWAP, getContext());
        this.tyresSwap = threshold;
        Integer odometer = threshold.getOdometer();
        Utils.setOdoTextWatcher(getContext(), this.mTyresSwapKm);
        if (odometer != null) {
            this.mTyresSwapKm.setText(odometer.toString().replace(Version.SEPARATOR, ""));
        }
        this.mTyresSwapKm.requestFocus();
    }

    public void initTyresType() {
        this.mTyreTypeSpinner.setAdapter((SpinnerAdapter) new TyresTypeAdapter(getContext(), getContext().getResources().getStringArray(R.array.tyre_types_id_array)));
        if (this.mVehicleModel.getTyresTypeId() != null) {
            this.mTyreTypeSpinner.setSelection(this.mVehicleModel.getTyresTypeId().intValue());
        }
    }

    @Override // com.texa.care.navigation.Screen
    public boolean onBackPressed() {
        goBack();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onConfirmClicked(View view) {
        if (!this.mTyresSwapKm.getText().toString().isEmpty() && this.mVehicleModel.getOdometer().intValue() > Integer.valueOf(this.mTyresSwapKm.getText().toString()).intValue()) {
            if (Utils.isSetThresholdValuesFromEditText(this.tyresSwap, this.mTyresSwapKm)) {
                Timber.d("ThresholdValue changed !", new Object[0]);
            } else {
                Timber.d("ThresholdValue not changed !", new Object[0]);
            }
            Timber.d("Tyres type changed !", new Object[0]);
            this.mDisposables.add(Observable.create(new ObservableOnSubscribe() { // from class: com.texa.careapp.app.settings.tyres.TyresInversionScreen$$ExternalSyntheticLambda1
                @Override // io.reactivex.ObservableOnSubscribe
                public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                    this.f$0.m422xf2087785(observableEmitter);
                }
            }).flatMap(new Function() { // from class: com.texa.careapp.app.settings.tyres.TyresInversionScreen$$ExternalSyntheticLambda4
                @Override // io.reactivex.functions.Function
                public final Object apply(Object obj) {
                    return this.f$0.m423x7ef58ea4((VehicleModel) obj);
                }
            }).subscribeOn(Schedulers.io()).observeOn(Schedulers.io()).take(1L).subscribe(new Consumer() { // from class: com.texa.careapp.app.settings.tyres.TyresInversionScreen$$ExternalSyntheticLambda2
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) throws Exception {
                    this.f$0.m424xbe2a5c3((VehicleResponse) obj);
                }
            }, new Consumer() { // from class: com.texa.careapp.app.settings.tyres.TyresInversionScreen$$ExternalSyntheticLambda3
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) throws Exception {
                    this.f$0.m425x98cfbce2((Throwable) obj);
                }
            }));
            return;
        }
        Timber.d("ThresholdValue not changed !", new Object[0]);
        this.mTyresSwapKm.setError(getContext().getResources().getString(R.string.km_invalid_value));
    }

    /* JADX INFO: renamed from: lambda$onConfirmClicked$0$com-texa-careapp-app-settings-tyres-TyresInversionScreen, reason: not valid java name */
    public /* synthetic */ void m422xf2087785(ObservableEmitter observableEmitter) throws Exception {
        ThresholdModelList unsyncedThresholds = this.mVehicleModel.getUnsyncedThresholds();
        if (unsyncedThresholds.isEmpty()) {
            return;
        }
        try {
            Timber.d("try to upload thresholds : %s", unsyncedThresholds);
            this.mTexaCareApiServiceUser.putThresholdsBlocking(this.mVehicleModel.getUid(), unsyncedThresholds).execute().body();
            Iterator<ThresholdModel> it = unsyncedThresholds.iterator();
            while (it.hasNext()) {
                try {
                    it.next().markAsSynced();
                } catch (DatabaseIOException e) {
                    Timber.e(e, "Could not save threshold in database", new Object[0]);
                }
            }
            Timber.d("thresholds sync success", new Object[0]);
            observableEmitter.onNext(this.mVehicleModel);
        } catch (Exception e2) {
            Timber.w(e2, "thresholds sync error", new Object[0]);
            observableEmitter.onError(e2);
        }
    }

    /* JADX INFO: renamed from: lambda$onConfirmClicked$1$com-texa-careapp-app-settings-tyres-TyresInversionScreen, reason: not valid java name */
    public /* synthetic */ ObservableSource m423x7ef58ea4(VehicleModel vehicleModel) throws Exception {
        return this.mTexaCareApiServiceUser.getVehicleDetailsObservable(vehicleModel.getUid());
    }

    /* JADX INFO: renamed from: lambda$onConfirmClicked$2$com-texa-careapp-app-settings-tyres-TyresInversionScreen, reason: not valid java name */
    public /* synthetic */ void m424xbe2a5c3(VehicleResponse vehicleResponse) throws Exception {
        List<VehicleResponse.Deadline> list = vehicleResponse.vehicle.deadlines;
        this.mVehicleModel.deleteSchedules();
        if (!Utils.isEmpty(list)) {
            Iterator<VehicleResponse.Deadline> it = list.iterator();
            while (it.hasNext()) {
                try {
                    this.mVehicleModel.updateSchedule(it.next());
                } catch (DatabaseIOException e) {
                    e.printStackTrace();
                }
            }
        }
        Utils.safeModelSave(this.mVehicleModel, getContext());
        scheduleVehicleSyncTask();
        this.mEventBus.post(new TyresConfigurationCompletedEvent());
        scheduleThresholdSyncTask();
    }

    /* JADX INFO: renamed from: lambda$onConfirmClicked$3$com-texa-careapp-app-settings-tyres-TyresInversionScreen, reason: not valid java name */
    public /* synthetic */ void m425x98cfbce2(Throwable th) throws Exception {
        th.printStackTrace();
        this.mEventBus.post(new TyresConfigurationCompletedEvent());
        scheduleThresholdSyncTask();
    }

    public boolean isTyresTypeChanged() throws DatabaseIOException {
        if (this.mTyreTypeSpinner.getSelectedItemPosition() == 0) {
            return false;
        }
        if (this.mVehicleModel.getTyresTypeId() != null && this.mTyreTypeSpinner.getSelectedItemPosition() == this.mVehicleModel.getTyresTypeId().intValue()) {
            return false;
        }
        this.mVehicleModel.setTyresTypeId(Integer.valueOf(this.mTyreTypeSpinner.getSelectedItemPosition()));
        this.mVehicleModel.setSyncNeeded(true);
        Utils.safeModelSave(this.mVehicleModel, getContext());
        return true;
    }

    @Override // com.texa.care.navigation.Screen
    public void onDestroyView() {
        this.mDisposables.clear();
        super.onDestroyView();
    }

    public boolean isValueChanged() {
        try {
            if (isTyresTypeChanged()) {
                return true;
            }
            ThresholdModel threshold = this.mVehicleModel.getThreshold(ThresholdModel.Type.TYRES_SWAP, getContext());
            if (threshold.getOdometer() == null) {
                return true;
            }
            return threshold.getOdometer().intValue() != Integer.parseInt(this.mTyresSwapKm.getText().toString());
        } catch (DatabaseIOException e) {
            e.printStackTrace();
            return true;
        }
    }

    private void scheduleVehicleSyncTask() {
        this.mCAReWorkerManager.scheduleVehicleSync();
    }

    private void scheduleThresholdSyncTask() {
        this.mCAReWorkerManager.scheduleThreshold();
    }

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return TAG;
    }
}
