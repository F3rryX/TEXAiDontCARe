package com.texa.careapp.app.settings.tyres;

import android.view.View;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.Toast;
import androidx.databinding.DataBindingUtil;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.careapp.CareApplication;
import com.texa.careapp.app.events.TyresConfigurationCompletedEvent;
import com.texa.careapp.databinding.ScreenTyresNewInstallBinding;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.model.ThresholdModel;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.sync.CAReWorkerManager;
import com.texa.careapp.utils.TyresTypeAdapter;
import com.texa.careapp.utils.Utils;
import com.texa.carelib.core.utils.Version;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class TyresNewInstallScreen extends Screen {
    private static final String TAG = "TyresNewInstallScreen";

    @Inject
    protected CAReWorkerManager mCAReWorkerManager;

    @Inject
    protected EventBus mEventBus;
    private Spinner mTyreTypeSpinner;
    private EditText mTyresFittingKm;
    private final VehicleModel mVehicleModel;
    private ThresholdModel tyresFitting;

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.screen_tyres_new_install;
    }

    @Override // com.texa.care.navigation.Screen
    public int getTitle() {
        return R.string.tyres_settings_new_installation;
    }

    TyresNewInstallScreen(VehicleModel vehicleModel) {
        this.mVehicleModel = vehicleModel;
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        ((CareApplication) getNavigator().getApplication()).component().inject(this);
        getNavigator().updateTitle();
        ScreenTyresNewInstallBinding screenTyresNewInstallBinding = (ScreenTyresNewInstallBinding) DataBindingUtil.bind(view);
        this.mTyresFittingKm = screenTyresNewInstallBinding.editTextExpTyresFittingNewInstall;
        this.mTyreTypeSpinner = screenTyresNewInstallBinding.tyresTypeSpinnerNewInstall;
        screenTyresNewInstallBinding.buttonTyresNewInstallConfirm.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.settings.tyres.TyresNewInstallScreen$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.onConfirmClicked(view2);
            }
        });
        initTyresFitting();
        initTyresType();
    }

    private void initTyresFitting() {
        ThresholdModel threshold = this.mVehicleModel.getThreshold(ThresholdModel.Type.TYRES_FITTING, getContext());
        this.tyresFitting = threshold;
        Integer odometer = threshold.getOdometer();
        Utils.setOdoTextWatcher(getContext(), this.mTyresFittingKm);
        if (odometer != null) {
            this.mTyresFittingKm.setText(odometer.toString().replace(Version.SEPARATOR, ""));
        }
        this.mTyresFittingKm.requestFocus();
    }

    private void initTyresType() {
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
        if (!this.mTyresFittingKm.getText().toString().isEmpty() && this.mVehicleModel.getOdometer().intValue() > Integer.valueOf(this.mTyresFittingKm.getText().toString()).intValue()) {
            if (Utils.isSetThresholdValuesFromEditText(this.tyresFitting, this.mTyresFittingKm)) {
                Timber.d("%s ThresholdValue changed !", TAG);
                if (!SettingsTyresActivity.blockSyncThresholds) {
                    scheduleThresoldSyncTask();
                }
            } else {
                Timber.d("%s ThresholdValue not changed !", TAG);
            }
            try {
                if (isTyresTypeChanged()) {
                    Timber.d("%s Tyres type changed !", TAG);
                } else {
                    Timber.d("%s Tyres type not changed !", TAG);
                }
                if (!SettingsTyresActivity.blockSyncVehicleData) {
                    scheduleVehicleSyncTask();
                }
                this.mEventBus.post(new TyresConfigurationCompletedEvent());
                return;
            } catch (DatabaseIOException e) {
                Toast.makeText(getContext(), R.string.error_msg_unexpected_error_occurred, 1).show();
                Timber.e(e, "Could not save tyre type.", new Object[0]);
                return;
            }
        }
        Timber.d("%s ThresholdValue not changed !", TAG);
        this.mTyresFittingKm.setError(getContext().getResources().getString(R.string.km_invalid_value));
    }

    private boolean isTyresTypeChanged() throws DatabaseIOException {
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

    private void scheduleVehicleSyncTask() {
        this.mCAReWorkerManager.scheduleVehicleSync();
    }

    private void scheduleThresoldSyncTask() {
        this.mCAReWorkerManager.scheduleThreshold();
    }

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return TAG;
    }
}
