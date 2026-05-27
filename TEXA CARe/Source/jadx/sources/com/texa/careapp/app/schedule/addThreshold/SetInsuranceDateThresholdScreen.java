package com.texa.careapp.app.schedule.addThreshold;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;
import androidx.databinding.DataBindingUtil;
import com.texa.care.R;
import com.texa.care.navigation.Navigator;
import com.texa.care.navigation.Screen;
import com.texa.careapp.CareApplication;
import com.texa.careapp.app.events.CancelProgressEvent;
import com.texa.careapp.app.events.CloseActivityEvent;
import com.texa.careapp.app.events.UserUpdatedEvent;
import com.texa.careapp.base.BaseActivity;
import com.texa.careapp.databinding.ScreenSetInsuranceDataThresholdBinding;
import com.texa.careapp.model.ScheduleDataManager;
import com.texa.careapp.model.ThresholdModel;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.utils.SimpleSpinnerAdapter;
import com.texa.careapp.utils.VehicleObserver;
import com.texa.careapp.views.EditableDateView;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class SetInsuranceDateThresholdScreen extends Screen {
    private static final String TAG = "SetInsuranceDateThresholdScreen";
    private InsuranceDurationAdapter insuranceDurationAdapter;
    private CareApplication mApplication;

    @Inject
    protected EventBus mEventBus;
    private final Insurance mInsurance;
    private List<InsuranceInterval> mInsuranceDurationList = new ArrayList();
    private Spinner mInsuranceDurationSpinner;
    private Navigator mNavigator;
    private EditableDateView mNewExpirationDatePicker;

    @Inject
    protected ScheduleDataManager mScheduleDataManager;
    private ThresholdModel mThreshold;
    private VehicleModel mVehicle;

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.screen_set_insurance_data_threshold;
    }

    public SetInsuranceDateThresholdScreen(ThresholdModel thresholdModel, Insurance insurance, VehicleModel vehicleModel) {
        this.mThreshold = thresholdModel;
        this.mVehicle = vehicleModel;
        this.mInsurance = insurance;
        initInsuranceDurationList();
    }

    private void initInsuranceDurationList() {
        this.mInsuranceDurationList.add(new InsuranceInterval(12, "Annuale"));
        this.mInsuranceDurationList.add(new InsuranceInterval(6, "Semestrale"));
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        Navigator navigator = getNavigator();
        this.mNavigator = navigator;
        CareApplication careApplication = (CareApplication) navigator.getApplication();
        this.mApplication = careApplication;
        careApplication.component().inject(this);
        ScreenSetInsuranceDataThresholdBinding screenSetInsuranceDataThresholdBinding = (ScreenSetInsuranceDataThresholdBinding) DataBindingUtil.bind(view);
        this.mInsuranceDurationSpinner = screenSetInsuranceDataThresholdBinding.insuranceDurationSpinner;
        this.mNewExpirationDatePicker = screenSetInsuranceDataThresholdBinding.editDateViewNewThreshold;
        screenSetInsuranceDataThresholdBinding.thresholdTitol.setText(ThresholdModel.TYPE_DESCRIPTION.get(this.mThreshold.getType()).intValue());
        screenSetInsuranceDataThresholdBinding.layoutAddConfirmed.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.schedule.addThreshold.SetInsuranceDateThresholdScreen$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m361x6c30d199(view2);
            }
        });
        screenSetInsuranceDataThresholdBinding.layoutNewExpDate.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.schedule.addThreshold.SetInsuranceDateThresholdScreen$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m362xae47fef8(view2);
            }
        });
        InsuranceDurationAdapter insuranceDurationAdapter = new InsuranceDurationAdapter(getContext(), this.mInsuranceDurationList);
        this.insuranceDurationAdapter = insuranceDurationAdapter;
        this.mInsuranceDurationSpinner.setAdapter((SpinnerAdapter) insuranceDurationAdapter);
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$0$com-texa-careapp-app-schedule-addThreshold-SetInsuranceDateThresholdScreen, reason: not valid java name */
    public /* synthetic */ void m361x6c30d199(View view) {
        addNewScheduleConfirmed();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$1$com-texa-careapp-app-schedule-addThreshold-SetInsuranceDateThresholdScreen, reason: not valid java name */
    public /* synthetic */ void m362xae47fef8(View view) {
        this.mNewExpirationDatePicker.showDatePicker();
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

    public void addNewScheduleConfirmed() {
        if (this.mNewExpirationDatePicker.isEmpty()) {
            Toast.makeText(getContext(), R.string.invalid_data, 1).show();
        } else {
            setExtraDataToThreshold();
            this.mScheduleDataManager.setScheduleFromThreshold(this.mThreshold, this.mVehicle, this.mNewExpirationDatePicker.getDate());
        }
    }

    private void setExtraDataToThreshold() {
        this.mThreshold.setDateInterval(((InsuranceInterval) this.mInsuranceDurationSpinner.getSelectedItem()).getMonthValue());
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

    private class InsuranceDurationAdapter extends SimpleSpinnerAdapter {
        private TextView durationFlag;
        List<InsuranceInterval> durationList;
        Context mContext;

        public InsuranceDurationAdapter(Context context, List<InsuranceInterval> list) {
            super(list);
            this.durationList = list;
            this.mContext = context;
        }

        @Override // com.texa.careapp.utils.SimpleSpinnerAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = ((LayoutInflater) this.mContext.getSystemService("layout_inflater")).inflate(R.layout.threshold_type_spinner_item, viewGroup, false);
            }
            this.durationFlag = (TextView) view.findViewById(R.id.text_view_threshold_type);
            this.durationFlag.setText(this.durationList.get(i).getLabel());
            return view;
        }
    }

    private class InsuranceInterval {
        String label;
        Integer monthValue;

        protected boolean canEqual(Object obj) {
            return obj instanceof InsuranceInterval;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof InsuranceInterval)) {
                return false;
            }
            InsuranceInterval insuranceInterval = (InsuranceInterval) obj;
            if (!insuranceInterval.canEqual(this)) {
                return false;
            }
            Integer monthValue = getMonthValue();
            Integer monthValue2 = insuranceInterval.getMonthValue();
            if (monthValue != null ? !monthValue.equals(monthValue2) : monthValue2 != null) {
                return false;
            }
            String label = getLabel();
            String label2 = insuranceInterval.getLabel();
            return label != null ? label.equals(label2) : label2 == null;
        }

        public int hashCode() {
            Integer monthValue = getMonthValue();
            int iHashCode = monthValue == null ? 43 : monthValue.hashCode();
            String label = getLabel();
            return ((iHashCode + 59) * 59) + (label != null ? label.hashCode() : 43);
        }

        public void setLabel(String str) {
            this.label = str;
        }

        public void setMonthValue(Integer num) {
            this.monthValue = num;
        }

        public String toString() {
            return "SetInsuranceDateThresholdScreen.InsuranceInterval(monthValue=" + getMonthValue() + ", label=" + getLabel() + ")";
        }

        public Integer getMonthValue() {
            return this.monthValue;
        }

        public String getLabel() {
            return this.label;
        }

        public InsuranceInterval(Integer num, String str) {
            this.monthValue = num;
            this.label = str;
        }
    }
}
