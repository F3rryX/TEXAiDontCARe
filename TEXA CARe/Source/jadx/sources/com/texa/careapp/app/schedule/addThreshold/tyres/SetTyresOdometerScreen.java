package com.texa.careapp.app.schedule.addThreshold.tyres;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;
import androidx.databinding.DataBindingUtil;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.careapp.CareApplication;
import com.texa.careapp.app.events.CancelProgressEvent;
import com.texa.careapp.app.events.CloseActivityEvent;
import com.texa.careapp.app.events.UserUpdatedEvent;
import com.texa.careapp.app.schedule.addThreshold.AddNewThresholdActivity;
import com.texa.careapp.base.BaseActivity;
import com.texa.careapp.databinding.ScreenSetTyresOdometerThresholdBinding;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.model.ScheduleDataManager;
import com.texa.careapp.model.ThresholdModel;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.utils.SimpleSpinnerAdapter;
import com.texa.careapp.utils.Utils;
import com.texa.careapp.utils.VehicleObserver;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class SetTyresOdometerScreen extends Screen {
    private static final String TAG = "SetTyresOdometerScreen";

    @Inject
    protected EventBus mEventBus;
    private EditText mNewExpirationOdoEditText;
    private TextView mOdometerLabelTextView;

    @Inject
    protected ScheduleDataManager mScheduleDataManager;
    private final ThresholdModel mThreshold;
    private Spinner mTyreTypeSpinner;
    private final VehicleModel mVehicle;

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.screen_set_tyres_odometer_threshold;
    }

    public SetTyresOdometerScreen(ThresholdModel thresholdModel, VehicleModel vehicleModel) {
        this.mThreshold = thresholdModel;
        this.mVehicle = vehicleModel;
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        ((CareApplication) getNavigator().getApplication()).component().inject(this);
        ScreenSetTyresOdometerThresholdBinding screenSetTyresOdometerThresholdBinding = (ScreenSetTyresOdometerThresholdBinding) DataBindingUtil.bind(view);
        this.mNewExpirationOdoEditText = screenSetTyresOdometerThresholdBinding.editTextViewNewExp;
        this.mTyreTypeSpinner = screenSetTyresOdometerThresholdBinding.tyresTypeSpinnerNewInstall;
        this.mOdometerLabelTextView = screenSetTyresOdometerThresholdBinding.vehicleLabel;
        screenSetTyresOdometerThresholdBinding.thresholdTitol.setText(ThresholdModel.TYPE_DESCRIPTION.get(this.mThreshold.getType()).intValue());
        screenSetTyresOdometerThresholdBinding.layoutAddConfirmed.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.schedule.addThreshold.tyres.SetTyresOdometerScreen$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.onConfirmClicked(view2);
            }
        });
        intiEditText();
        initTyresType();
    }

    private void intiEditText() {
        if (this.mThreshold.getType() == ThresholdModel.Type.TYRES_SWAP) {
            this.mOdometerLabelTextView.setText(R.string.last_tyres_swap);
            this.mNewExpirationOdoEditText.setHint(R.string.last_tyres_swap);
        } else if (this.mThreshold.getType() == ThresholdModel.Type.TYRES_FITTING) {
            this.mOdometerLabelTextView.setText(R.string.last_tyres_fitting);
            this.mNewExpirationOdoEditText.setHint(R.string.last_tyres_fitting);
        } else {
            throw new IllegalArgumentException("Page Reserved for TyresSwap or TyresFitting threshold");
        }
        this.mNewExpirationOdoEditText.setText(String.valueOf(this.mVehicle.getOdometer()));
    }

    private void initTyresType() {
        this.mTyreTypeSpinner.setAdapter((SpinnerAdapter) new TyresAdapter(getContext(), new ArrayList(Arrays.asList(getContext().getResources().getStringArray(R.array.tyre_types_id_array)))));
        if (this.mVehicle.getTyresTypeId() != null) {
            this.mTyreTypeSpinner.setSelection(this.mVehicle.getTyresTypeId().intValue());
        } else {
            this.mTyreTypeSpinner.setSelection(0);
        }
    }

    @Override // com.texa.care.navigation.Screen
    public boolean onBackPressed() {
        goBack();
        return true;
    }

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return TAG;
    }

    @Override // com.texa.care.navigation.Screen
    public void onResume() {
        super.onResume();
        this.mEventBus.register(this);
    }

    @Override // com.texa.care.navigation.Screen
    public void onPause() {
        super.onPause();
        this.mEventBus.unregister(this);
    }

    public void dismissProgressDialogScreen() {
        this.mEventBus.post(new CancelProgressEvent());
    }

    @Subscribe
    public void onEvent(VehicleObserver.VehicleChangedEvent vehicleChangedEvent) {
        Timber.d("vehicle Sync completed", new Object[0]);
        dismissProgressDialogScreen();
        this.mEventBus.post(new CloseActivityEvent((Class<? extends BaseActivity>) AddNewThresholdActivity.class));
    }

    @Subscribe
    public void onEvent(UserUpdatedEvent userUpdatedEvent) {
        Timber.d("user Sync completed", new Object[0]);
        dismissProgressDialogScreen();
        this.mEventBus.post(new CloseActivityEvent((Class<? extends BaseActivity>) AddNewThresholdActivity.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onConfirmClicked(View view) {
        int iIntValue;
        try {
            iIntValue = this.mVehicle.getTyresTypeId().intValue();
        } catch (Exception e) {
            Timber.w(e, "mVehicle.getTyresTypeId() == NULL", new Object[0]);
            iIntValue = -1;
        }
        if (this.mTyreTypeSpinner.getSelectedItemPosition() != iIntValue) {
            this.mVehicle.setTyresTypeId(Integer.valueOf(this.mTyreTypeSpinner.getSelectedItemPosition()));
            this.mVehicle.setSyncNeeded(true);
            try {
                Utils.safeModelSave(this.mVehicle, getContext());
            } catch (DatabaseIOException e2) {
                Timber.e(e2, "Could not save threshold from database. ThresholdType = %s", this.mThreshold.getType());
                Toast.makeText(view.getContext(), R.string.error_msg_unexpected_error_occurred, 1).show();
                return;
            }
        }
        if (Utils.isEmpty(Utils.getValue(this.mNewExpirationOdoEditText)) || !Utils.isValidIntegerValuesFromEditText(this.mNewExpirationOdoEditText)) {
            Toast.makeText(getContext(), R.string.invalid_data, 1).show();
        } else {
            this.mScheduleDataManager.setScheduleFromThreshold(this.mThreshold, this.mVehicle, Integer.valueOf(Integer.parseInt(Utils.getValue(this.mNewExpirationOdoEditText))));
        }
    }

    private class TyresAdapter extends SimpleSpinnerAdapter {
        List<String> TyresTypeList;
        Context mContext;
        private TextView mUserName;

        public TyresAdapter(Context context, List<String> list) {
            super(list);
            this.TyresTypeList = list;
            this.mContext = context;
        }

        @Override // com.texa.careapp.utils.SimpleSpinnerAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = ((LayoutInflater) this.mContext.getSystemService("layout_inflater")).inflate(R.layout.threshold_type_spinner_item, viewGroup, false);
            }
            this.mUserName = (TextView) view.findViewById(R.id.text_view_threshold_type);
            this.mUserName.setText(this.TyresTypeList.get(i));
            return view;
        }
    }
}
