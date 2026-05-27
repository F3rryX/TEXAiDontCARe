package com.texa.careapp.app.schedule.addThreshold;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;
import androidx.databinding.DataBindingUtil;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.careapp.CareApplication;
import com.texa.careapp.app.events.CancelProgressEvent;
import com.texa.careapp.app.events.UserUpdatedEvent;
import com.texa.careapp.app.schedule.addThreshold.tyres.SetTyresOdometerScreen;
import com.texa.careapp.databinding.ScreenSelectNewScheduleBinding;
import com.texa.careapp.model.IScheduleModel;
import com.texa.careapp.model.ScheduleType;
import com.texa.careapp.model.ThresholdModel;
import com.texa.careapp.model.UserModel;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.model.VehicleScheduleModel;
import com.texa.careapp.utils.SimpleSpinnerAdapter;
import com.texa.careapp.utils.UserDataManager;
import com.texa.careapp.utils.Utils;
import com.texa.careapp.utils.VehicleDataManager;
import com.texa.careapp.utils.VehicleObserver;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class SelectNewScheduleScreen extends Screen {
    private static final String TAG = "SelectNewScheduleScreen";
    private TextView mButtonConfirmedLabel;

    @Inject
    protected EventBus mEventBus;
    private Disposable mScheduleDisposable;
    private Spinner mScheduleSpinner;
    private AdapterView.OnItemSelectedListener mSpinnerChangeListener = new AdapterView.OnItemSelectedListener() { // from class: com.texa.careapp.app.schedule.addThreshold.SelectNewScheduleScreen.1
        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            SelectNewScheduleScreen selectNewScheduleScreen = SelectNewScheduleScreen.this;
            selectNewScheduleScreen.initView((ThresholdModel) selectNewScheduleScreen.mScheduleSpinner.getSelectedItem());
        }
    };
    private View mUserDataContainer;

    @Inject
    protected UserDataManager mUserDataManager;
    private Spinner mUserSpinner;
    private View mVehicleDataContainer;

    @Inject
    protected VehicleDataManager mVehicleDataManager;

    @Inject
    protected VehicleObserver mVehicleObserver;
    private Spinner mVehicleSpinner;

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.screen_select_new_schedule;
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        ((CareApplication) getNavigator().getApplication()).component().inject(this);
        ScreenSelectNewScheduleBinding screenSelectNewScheduleBinding = (ScreenSelectNewScheduleBinding) DataBindingUtil.bind(view);
        this.mScheduleSpinner = screenSelectNewScheduleBinding.scheduleTypeSpinner;
        this.mUserSpinner = screenSelectNewScheduleBinding.userSpinner;
        this.mVehicleSpinner = screenSelectNewScheduleBinding.vehicleSpinner;
        this.mVehicleDataContainer = screenSelectNewScheduleBinding.vehicleDataContainer;
        this.mUserDataContainer = screenSelectNewScheduleBinding.userDataContainer;
        this.mButtonConfirmedLabel = screenSelectNewScheduleBinding.labelAddConfirmed;
        screenSelectNewScheduleBinding.layoutAddConfirmed.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.schedule.addThreshold.SelectNewScheduleScreen$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m352x84d2282f(view2);
            }
        });
        setVehicleListSpinner();
        setUserListSpinner();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$0$com-texa-careapp-app-schedule-addThreshold-SelectNewScheduleScreen, reason: not valid java name */
    public /* synthetic */ void m352x84d2282f(View view) {
        addNewScheduleConfirmed();
    }

    private void setUserListSpinner() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.mUserDataManager.getUserCached());
        if (arrayList.size() <= 1) {
            this.mUserSpinner.setEnabled(false);
            this.mUserSpinner.setClickable(false);
        }
        this.mUserSpinner.setAdapter((SpinnerAdapter) new UserAdapter(getContext(), arrayList));
    }

    private void setVehicleListSpinner() {
        List<VehicleModel> allVehicles = this.mVehicleDataManager.getAllVehicles();
        if (allVehicles.size() <= 1) {
            this.mVehicleSpinner.setEnabled(false);
            this.mVehicleSpinner.setClickable(false);
        }
        this.mVehicleSpinner.setAdapter((SpinnerAdapter) new VehicleAdapter(getContext(), allVehicles));
        setCurrentVehicleSelected(allVehicles);
    }

    private void setCurrentVehicleSelected(List<VehicleModel> list) {
        VehicleModel selectedVehicle = this.mVehicleObserver.getSelectedVehicle();
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i).equals(selectedVehicle)) {
                this.mVehicleSpinner.setSelection(i);
                return;
            }
        }
    }

    @Override // com.texa.care.navigation.Screen
    public void onResume() {
        super.onResume();
        this.mScheduleDisposable = getScheduleEditableObservable().compose(Utils.applySchedulers()).subscribe(new Consumer() { // from class: com.texa.careapp.app.schedule.addThreshold.SelectNewScheduleScreen$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m354xca362e58((List) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.schedule.addThreshold.SelectNewScheduleScreen$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.e((Throwable) obj, "error getting threshold model list", new Object[0]);
            }
        });
        this.mScheduleSpinner.setOnItemSelectedListener(this.mSpinnerChangeListener);
        this.mEventBus.register(this);
    }

    /* JADX INFO: renamed from: lambda$onResume$1$com-texa-careapp-app-schedule-addThreshold-SelectNewScheduleScreen, reason: not valid java name */
    public /* synthetic */ void m354xca362e58(List list) throws Exception {
        this.mScheduleSpinner.setAdapter((SpinnerAdapter) new ThresholdTypeAdapter(getContext(), list));
        initView((ThresholdModel) this.mScheduleSpinner.getSelectedItem());
    }

    /* JADX INFO: renamed from: com.texa.careapp.app.schedule.addThreshold.SelectNewScheduleScreen$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$careapp$model$ThresholdModel$Type;

        static {
            int[] iArr = new int[ThresholdModel.Type.values().length];
            $SwitchMap$com$texa$careapp$model$ThresholdModel$Type = iArr;
            try {
                iArr[ThresholdModel.Type.LICENCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$texa$careapp$model$ThresholdModel$Type[ThresholdModel.Type.INSURANCE_EXP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$texa$careapp$model$ThresholdModel$Type[ThresholdModel.Type.INSURANCE_2_EXP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$texa$careapp$model$ThresholdModel$Type[ThresholdModel.Type.TYRES_FITTING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$texa$careapp$model$ThresholdModel$Type[ThresholdModel.Type.TYRES_SWAP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initView(ThresholdModel thresholdModel) {
        int i = AnonymousClass2.$SwitchMap$com$texa$careapp$model$ThresholdModel$Type[thresholdModel.getType().ordinal()];
        if (i == 1) {
            this.mVehicleDataContainer.setVisibility(8);
            this.mUserDataContainer.setVisibility(0);
            this.mButtonConfirmedLabel.setText(R.string.insert_schedule);
            return;
        }
        if (i == 2 || i == 3) {
            this.mVehicleDataContainer.setVisibility(0);
            this.mUserDataContainer.setVisibility(8);
            this.mButtonConfirmedLabel.setText(R.string.insert_insurance_company);
        } else if (i == 4 || i == 5) {
            this.mVehicleDataContainer.setVisibility(0);
            this.mUserDataContainer.setVisibility(8);
            this.mButtonConfirmedLabel.setText(R.string.insert_details);
        } else {
            this.mVehicleDataContainer.setVisibility(0);
            this.mUserDataContainer.setVisibility(8);
            this.mButtonConfirmedLabel.setText(R.string.insert_schedule);
        }
    }

    @Override // com.texa.care.navigation.Screen
    public void onPause() {
        super.onPause();
        Utils.safeDispose(this.mScheduleDisposable);
        this.mScheduleSpinner.setOnItemSelectedListener(null);
        this.mEventBus.unregister(this);
    }

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return TAG;
    }

    private Observable<List<ThresholdModel>> getScheduleEditableObservable() {
        return Observable.create(new ObservableOnSubscribe() { // from class: com.texa.careapp.app.schedule.addThreshold.SelectNewScheduleScreen$$ExternalSyntheticLambda1
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                this.f$0.m353xfc092d68(observableEmitter);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$getScheduleEditableObservable$3$com-texa-careapp-app-schedule-addThreshold-SelectNewScheduleScreen, reason: not valid java name */
    public /* synthetic */ void m353xfc092d68(ObservableEmitter observableEmitter) throws Exception {
        observableEmitter.onNext(createThresholdModelList());
        observableEmitter.onComplete();
    }

    private List<ThresholdModel> createThresholdModelList() {
        ArrayList arrayList = new ArrayList();
        EnumSet<ThresholdModel.Type> enumSetAllOf = EnumSet.allOf(ThresholdModel.Type.class);
        enumSetAllOf.removeAll(ThresholdModel.TYPE_UNEDITABLE);
        for (ThresholdModel.Type type : enumSetAllOf) {
            ThresholdModel thresholdModel = new ThresholdModel();
            thresholdModel.setType(type);
            arrayList.add(thresholdModel);
        }
        return arrayList;
    }

    private IScheduleModel getScheduleModel(VehicleModel vehicleModel, ScheduleType scheduleType) {
        VehicleScheduleModel schedule = vehicleModel.getSchedule(scheduleType);
        if (schedule != null) {
            return schedule;
        }
        VehicleScheduleModel vehicleScheduleModel = new VehicleScheduleModel();
        vehicleScheduleModel.setUid(UUID.randomUUID().toString());
        vehicleScheduleModel.setVehicle(vehicleModel);
        vehicleScheduleModel.setType(scheduleType);
        return vehicleScheduleModel;
    }

    private boolean containSchedule(List<IScheduleModel> list, ScheduleType scheduleType) {
        Iterator<IScheduleModel> it = list.iterator();
        while (it.hasNext()) {
            if (it.next().getType() == scheduleType) {
                return true;
            }
        }
        return false;
    }

    public void dismissProgressDialogScreen() {
        this.mEventBus.post(new CancelProgressEvent());
    }

    @Subscribe
    public void onEvent(VehicleObserver.VehicleChangedEvent vehicleChangedEvent) {
        Timber.d("vehicle Sync completed", new Object[0]);
        dismissProgressDialogScreen();
        getNavigator().goBack();
    }

    @Subscribe
    public void onEvent(UserUpdatedEvent userUpdatedEvent) {
        Timber.d("user Sync completed", new Object[0]);
        dismissProgressDialogScreen();
        getNavigator().goBack();
    }

    public void addNewScheduleConfirmed() {
        redirectToScreen((ThresholdModel) this.mScheduleSpinner.getSelectedItem(), (VehicleModel) this.mVehicleSpinner.getSelectedItem(), (UserModel) this.mUserSpinner.getSelectedItem());
    }

    private void redirectToScreen(ThresholdModel thresholdModel, VehicleModel vehicleModel, UserModel userModel) {
        if (thresholdModel == null || (vehicleModel == null && userModel == null)) {
            Toast.makeText(getContext(), R.string.invalid_data, 0).show();
            return;
        }
        int i = AnonymousClass2.$SwitchMap$com$texa$careapp$model$ThresholdModel$Type[thresholdModel.getType().ordinal()];
        if (i == 2) {
            getNavigator().goTo(new SetInsuranceDateThresholdScreen(vehicleModel.getThreshold(thresholdModel.getType(), getContext()), null, vehicleModel));
            return;
        }
        if (i == 3) {
            getNavigator().goTo(new SetInsuranceDateThresholdScreen(vehicleModel.getThreshold(thresholdModel.getType(), getContext()), null, vehicleModel));
            return;
        }
        if (i == 4) {
            getNavigator().goTo(new SetTyresOdometerScreen(vehicleModel.getThreshold(ThresholdModel.Type.TYRES_FITTING, getContext()), vehicleModel));
        } else if (i == 5) {
            getNavigator().goTo(new SetTyresOdometerScreen(vehicleModel.getThreshold(ThresholdModel.Type.TYRES_SWAP, getContext()), vehicleModel));
        } else {
            getNavigator().goTo(new SetDefaultDateThresholdScreen(vehicleModel.getThreshold(thresholdModel.getType(), getContext()), vehicleModel, userModel));
        }
    }

    private class ThresholdTypeAdapter extends SimpleSpinnerAdapter {
        Context mContext;
        private TextView mType;
        List<ThresholdModel> typeList;

        public ThresholdTypeAdapter(Context context, List<ThresholdModel> list) {
            super(list);
            this.mContext = context;
            this.typeList = list;
        }

        @Override // com.texa.careapp.utils.SimpleSpinnerAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = ((LayoutInflater) this.mContext.getSystemService("layout_inflater")).inflate(R.layout.threshold_type_spinner_item, viewGroup, false);
            }
            this.mType = (TextView) view.findViewById(R.id.text_view_threshold_type);
            this.mType.setText(this.mContext.getString(ThresholdModel.TYPE_DESCRIPTION.get(this.typeList.get(i).getType()).intValue()));
            return view;
        }
    }

    private class VehicleAdapter extends SimpleSpinnerAdapter {
        Context mContext;
        private TextView mVehicleName;
        List<VehicleModel> vehicleList;

        public VehicleAdapter(Context context, List<VehicleModel> list) {
            super(list);
            this.vehicleList = list;
            this.mContext = context;
        }

        @Override // com.texa.careapp.utils.SimpleSpinnerAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = ((LayoutInflater) this.mContext.getSystemService("layout_inflater")).inflate(R.layout.threshold_type_spinner_item, viewGroup, false);
            }
            this.mVehicleName = (TextView) view.findViewById(R.id.text_view_threshold_type);
            this.mVehicleName.setText(Utils.formatVehicleModel(this.vehicleList.get(i)));
            return view;
        }
    }

    private class UserAdapter extends SimpleSpinnerAdapter {
        Context mContext;
        private TextView mUserName;
        List<UserModel> userList;

        public UserAdapter(Context context, List<UserModel> list) {
            super(list);
            this.userList = list;
            this.mContext = context;
        }

        @Override // com.texa.careapp.utils.SimpleSpinnerAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = ((LayoutInflater) this.mContext.getSystemService("layout_inflater")).inflate(R.layout.threshold_type_spinner_item, viewGroup, false);
            }
            this.mUserName = (TextView) view.findViewById(R.id.text_view_threshold_type);
            this.mUserName.setText(this.userList.get(i).formatName());
            return view;
        }
    }
}
