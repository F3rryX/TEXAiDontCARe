package com.texa.careapp.app.settings.vehicle;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Build;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.View;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;
import androidx.databinding.DataBindingUtil;
import com.activeandroid.ActiveAndroid;
import com.google.android.material.snackbar.Snackbar;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.careapp.CareApplication;
import com.texa.careapp.Constants;
import com.texa.careapp.app.onboarding.OnBoardingActivity;
import com.texa.careapp.app.service.CareService;
import com.texa.careapp.app.settings.SettingsActivity;
import com.texa.careapp.app.settings.insertnewthreshold.InsertNewThresholdActivity;
import com.texa.careapp.app.update.FirmwareUpdateService;
import com.texa.careapp.app.vehicle.VehicleDataConfirmationActivity;
import com.texa.careapp.databinding.ScreenVehicleSettingsBinding;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.DongleModel;
import com.texa.careapp.model.ThresholdModel;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.parameters.VehicleParametersManagerV2;
import com.texa.careapp.sync.CAReWorkerManager;
import com.texa.careapp.utils.TyresTypeAdapter;
import com.texa.careapp.utils.Utils;
import com.texa.careapp.utils.VehicleDataManager;
import com.texa.careapp.views.EditableDateView;
import com.texa.carelib.communication.Communication;
import com.texa.carelib.core.CareLibException;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import javax.inject.Inject;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class SettingsVehicleScreen extends Screen {
    private static final String TAG = "SettingsVehicleScreen";
    public static boolean blockGetExtraFromIntent;
    public static boolean blockSyncThresholds;
    public static boolean blockSyncVehicleData;
    private ThresholdModel exhaustExp;
    private ThresholdModel inspection;
    private ThresholdModel insurance2Exp;
    private ThresholdModel insuranceExp;
    private RelativeLayout layoutAutoClub;
    private RelativeLayout layoutCarPayment;
    private RelativeLayout layoutGarage;
    private RelativeLayout layoutInsurancePayment;
    private RelativeLayout layoutPark;
    private RelativeLayout layoutPassHighway;
    private RelativeLayout layoutPassZtl;
    private RelativeLayout layoutTheftFireInsurancePayment;
    private final Activity mActivity;
    private EditableDateView mAutoClubDate;

    @Inject
    protected CAReWorkerManager mCAReWorkerManager;
    private EditableDateView mCarPaymentDate;
    private TextView mColor;

    @Inject
    protected Communication mCommunication;

    @Inject
    protected DongleDataManager mDongleDataManager;
    private EditableDateView mExpExhaustDate;
    private EditableDateView mExpInsuranceDate;
    private EditableDateView mExpTaxDate;
    private EditableDateView mExpTheftFireInsuranceDate;
    private EditableDateView mGarageDate;
    private EditableDateView mInspectionDate;
    private EditableDateView mInsurancePaymentDate;
    private TextView mOdometer;
    private String mOdometerValue;
    private EditableDateView mParkDate;
    private EditableDateView mPassHighwayDate;
    private EditableDateView mPassZtlDate;
    private TextView mPlate;
    private TextView mRegistrationDate;
    private Date mRegistrationDateValue;
    private ScrollView mScrollView;

    @Inject
    protected TexaCareApiServiceUser mTexaCareApiServiceUser;
    private EditableDateView mTheftFireInsurancePaymentDate;
    private Spinner mTyreTypeSpinner;
    private EditText mTyresFittingKm;
    private EditText mTyresSwapKm;

    @Inject
    protected VehicleDataManager mVehicleDataManager;
    private VehicleModel mVehicleModel;

    @Inject
    protected VehicleParametersManagerV2 mVehicleParametersManagerV2;
    private EditableDateView mWarrantyDate;
    private ThresholdModel taxExp;
    private ThresholdModel tyresFitting;
    private ThresholdModel tyresSwap;
    private List<ThresholdModel> addedThresholdList = new ArrayList();
    private final CompositeDisposable mDisposable = new CompositeDisposable();
    private DialogInterface.OnClickListener dialogClickListener = new DialogInterface.OnClickListener() { // from class: com.texa.careapp.app.settings.vehicle.SettingsVehicleScreen$$ExternalSyntheticLambda0
        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            this.f$0.m453x6f629c05(dialogInterface, i);
        }
    };

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.screen_vehicle_settings;
    }

    /* JADX INFO: renamed from: lambda$new$0$com-texa-careapp-app-settings-vehicle-SettingsVehicleScreen, reason: not valid java name */
    public /* synthetic */ void m453x6f629c05(DialogInterface dialogInterface, int i) {
        if (i != -1) {
            return;
        }
        deleteVehicleFromServer();
    }

    public SettingsVehicleScreen(Activity activity) {
        this.mActivity = activity;
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        ((CareApplication) getNavigator().getApplication()).component().inject(this);
        ScreenVehicleSettingsBinding screenVehicleSettingsBinding = (ScreenVehicleSettingsBinding) DataBindingUtil.bind(view);
        this.mPlate = screenVehicleSettingsBinding.editTextUserPlate;
        this.mOdometer = screenVehicleSettingsBinding.editTextUserOdometer;
        this.mRegistrationDate = screenVehicleSettingsBinding.editTextRegistrationDate;
        this.mColor = screenVehicleSettingsBinding.editTextColor;
        this.mScrollView = screenVehicleSettingsBinding.settingsVehicleParentLayout;
        this.mInspectionDate = screenVehicleSettingsBinding.editDateViewExpInspection;
        this.mTyresFittingKm = screenVehicleSettingsBinding.editTextExpTyresFitting;
        this.mTyresSwapKm = screenVehicleSettingsBinding.editTextExpTyresSwap;
        this.mExpTheftFireInsuranceDate = screenVehicleSettingsBinding.editDateViewExpTheftFireInsurance;
        this.mExpTaxDate = screenVehicleSettingsBinding.editDateViewExpTax;
        this.mExpInsuranceDate = screenVehicleSettingsBinding.editDateViewExpInsurance;
        this.mExpExhaustDate = screenVehicleSettingsBinding.editDateViewExpExhaust;
        this.mAutoClubDate = screenVehicleSettingsBinding.editDateViewAutoClub;
        this.layoutAutoClub = screenVehicleSettingsBinding.layoutAutoClub;
        this.mParkDate = screenVehicleSettingsBinding.editDateViewPark;
        this.layoutPark = screenVehicleSettingsBinding.layoutPark;
        this.mGarageDate = screenVehicleSettingsBinding.editDateViewGarage;
        this.layoutGarage = screenVehicleSettingsBinding.layoutGarage;
        this.mInsurancePaymentDate = screenVehicleSettingsBinding.editDateViewInsuranceRata;
        this.layoutInsurancePayment = screenVehicleSettingsBinding.layoutInsuranceRata;
        this.mTheftFireInsurancePaymentDate = screenVehicleSettingsBinding.editDateViewTheftFireInsuranceRata;
        this.layoutTheftFireInsurancePayment = screenVehicleSettingsBinding.layoutTheftFireInsuranceRata;
        this.mCarPaymentDate = screenVehicleSettingsBinding.editDateViewCarRata;
        this.layoutCarPayment = screenVehicleSettingsBinding.layoutCarRata;
        this.mPassHighwayDate = screenVehicleSettingsBinding.editDateViewPassAutostrade;
        this.layoutPassHighway = screenVehicleSettingsBinding.layoutPassAutostrade;
        this.mPassZtlDate = screenVehicleSettingsBinding.editDateViewPassZtl;
        this.layoutPassZtl = screenVehicleSettingsBinding.layoutPassZtl;
        this.mWarrantyDate = screenVehicleSettingsBinding.editDateViewWarranty;
        this.mTyreTypeSpinner = screenVehicleSettingsBinding.tyresTypeSpinner;
        screenVehicleSettingsBinding.layoutExpInspection.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.settings.vehicle.SettingsVehicleScreen$$ExternalSyntheticLambda14
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m433xedcce076(view2);
            }
        });
        screenVehicleSettingsBinding.layoutExpInsurance.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.settings.vehicle.SettingsVehicleScreen$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m442xa84280f7(view2);
            }
        });
        screenVehicleSettingsBinding.layoutExpTheftFireInsurance.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.settings.vehicle.SettingsVehicleScreen$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m443x62b82178(view2);
            }
        });
        screenVehicleSettingsBinding.layoutExpTax.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.settings.vehicle.SettingsVehicleScreen$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m444x1d2dc1f9(view2);
            }
        });
        screenVehicleSettingsBinding.layoutExpExhaust.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.settings.vehicle.SettingsVehicleScreen$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m445xd7a3627a(view2);
            }
        });
        screenVehicleSettingsBinding.layoutAddThreshold.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.settings.vehicle.SettingsVehicleScreen$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m446x921902fb(view2);
            }
        });
        screenVehicleSettingsBinding.deleteVehicle.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.settings.vehicle.SettingsVehicleScreen$$ExternalSyntheticLambda7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m447x4c8ea37c(view2);
            }
        });
        screenVehicleSettingsBinding.layoutWarranty.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.settings.vehicle.SettingsVehicleScreen$$ExternalSyntheticLambda8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m448x70443fd(view2);
            }
        });
        this.layoutPassZtl.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.settings.vehicle.SettingsVehicleScreen$$ExternalSyntheticLambda9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m449xc179e47e(view2);
            }
        });
        this.layoutPassHighway.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.settings.vehicle.SettingsVehicleScreen$$ExternalSyntheticLambda15
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m434xd6f142a6(view2);
            }
        });
        this.layoutCarPayment.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.settings.vehicle.SettingsVehicleScreen$$ExternalSyntheticLambda16
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m435x9166e327(view2);
            }
        });
        this.layoutTheftFireInsurancePayment.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.settings.vehicle.SettingsVehicleScreen$$ExternalSyntheticLambda17
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m436x4bdc83a8(view2);
            }
        });
        this.layoutInsurancePayment.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.settings.vehicle.SettingsVehicleScreen$$ExternalSyntheticLambda18
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m437x6522429(view2);
            }
        });
        this.layoutGarage.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.settings.vehicle.SettingsVehicleScreen$$ExternalSyntheticLambda19
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m438xc0c7c4aa(view2);
            }
        });
        this.layoutPark.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.settings.vehicle.SettingsVehicleScreen$$ExternalSyntheticLambda20
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m439x7b3d652b(view2);
            }
        });
        this.layoutAutoClub.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.settings.vehicle.SettingsVehicleScreen$$ExternalSyntheticLambda21
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m440x35b305ac(view2);
            }
        });
        screenVehicleSettingsBinding.odometerButton.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.settings.vehicle.SettingsVehicleScreen$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m441xf028a62d(view2);
            }
        });
        try {
            this.mVehicleModel = this.mVehicleDataManager.getVehicleById(this.mActivity.getIntent().getExtras().getString(VehicleModel.COLUMN_UID));
        } catch (Exception e) {
            Timber.e(e, "Error #onCreate()", new Object[0]);
        }
        initView();
        if (this.mVehicleModel != null) {
            this.mTyreTypeSpinner.setAdapter((SpinnerAdapter) new TyresTypeAdapter(getContext(), getContext().getResources().getStringArray(R.array.tyre_types_id_array)));
            if (this.mVehicleModel.getTyresTypeId() != null) {
                this.mTyreTypeSpinner.setSelection(this.mVehicleModel.getTyresTypeId().intValue());
            }
            initAllThresholds();
        }
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$1$com-texa-careapp-app-settings-vehicle-SettingsVehicleScreen, reason: not valid java name */
    public /* synthetic */ void m433xedcce076(View view) {
        this.mInspectionDate.showDatePicker();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$2$com-texa-careapp-app-settings-vehicle-SettingsVehicleScreen, reason: not valid java name */
    public /* synthetic */ void m442xa84280f7(View view) {
        this.mExpInsuranceDate.showDatePicker();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$3$com-texa-careapp-app-settings-vehicle-SettingsVehicleScreen, reason: not valid java name */
    public /* synthetic */ void m443x62b82178(View view) {
        this.mExpTheftFireInsuranceDate.showDatePicker();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$4$com-texa-careapp-app-settings-vehicle-SettingsVehicleScreen, reason: not valid java name */
    public /* synthetic */ void m444x1d2dc1f9(View view) {
        this.mExpTaxDate.showDatePicker();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$5$com-texa-careapp-app-settings-vehicle-SettingsVehicleScreen, reason: not valid java name */
    public /* synthetic */ void m445xd7a3627a(View view) {
        this.mExpExhaustDate.showDatePicker();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$6$com-texa-careapp-app-settings-vehicle-SettingsVehicleScreen, reason: not valid java name */
    public /* synthetic */ void m446x921902fb(View view) {
        goToNewThresholdClicked();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$7$com-texa-careapp-app-settings-vehicle-SettingsVehicleScreen, reason: not valid java name */
    public /* synthetic */ void m447x4c8ea37c(View view) {
        showDeleteVehicleDialog();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$8$com-texa-careapp-app-settings-vehicle-SettingsVehicleScreen, reason: not valid java name */
    public /* synthetic */ void m448x70443fd(View view) {
        this.mWarrantyDate.showDatePicker();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$9$com-texa-careapp-app-settings-vehicle-SettingsVehicleScreen, reason: not valid java name */
    public /* synthetic */ void m449xc179e47e(View view) {
        this.mPassZtlDate.showDatePicker();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$10$com-texa-careapp-app-settings-vehicle-SettingsVehicleScreen, reason: not valid java name */
    public /* synthetic */ void m434xd6f142a6(View view) {
        this.mPassHighwayDate.showDatePicker();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$11$com-texa-careapp-app-settings-vehicle-SettingsVehicleScreen, reason: not valid java name */
    public /* synthetic */ void m435x9166e327(View view) {
        this.mCarPaymentDate.showDatePicker();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$12$com-texa-careapp-app-settings-vehicle-SettingsVehicleScreen, reason: not valid java name */
    public /* synthetic */ void m436x4bdc83a8(View view) {
        this.mTheftFireInsurancePaymentDate.showDatePicker();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$13$com-texa-careapp-app-settings-vehicle-SettingsVehicleScreen, reason: not valid java name */
    public /* synthetic */ void m437x6522429(View view) {
        this.mInsurancePaymentDate.showDatePicker();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$14$com-texa-careapp-app-settings-vehicle-SettingsVehicleScreen, reason: not valid java name */
    public /* synthetic */ void m438xc0c7c4aa(View view) {
        this.mGarageDate.showDatePicker();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$15$com-texa-careapp-app-settings-vehicle-SettingsVehicleScreen, reason: not valid java name */
    public /* synthetic */ void m439x7b3d652b(View view) {
        this.mParkDate.showDatePicker();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$16$com-texa-careapp-app-settings-vehicle-SettingsVehicleScreen, reason: not valid java name */
    public /* synthetic */ void m440x35b305ac(View view) {
        this.mAutoClubDate.showDatePicker();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$17$com-texa-careapp-app-settings-vehicle-SettingsVehicleScreen, reason: not valid java name */
    public /* synthetic */ void m441xf028a62d(View view) {
        odometerClicked();
    }

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return TAG;
    }

    public void initAllThresholds() {
        initThreshold(this.mVehicleModel);
        setAllThresholdEditText();
        this.addedThresholdList = initAddedThresholds(this.mVehicleModel.getThresholds());
        setOtherThresholdEditText();
    }

    public void setVehicle(VehicleModel vehicleModel) {
        this.mVehicleModel = vehicleModel;
    }

    private void setVehicleDataView() {
        this.mPlate.setText(this.mVehicleModel.getPlate());
        this.mOdometer.setText(String.valueOf(this.mVehicleModel.getOdometer()));
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(Constants.DEFAULT_FORMAT_DATE, Locale.getDefault());
        Date registrationDate = this.mVehicleModel.getRegistrationDate();
        this.mRegistrationDateValue = registrationDate;
        if (registrationDate != null) {
            this.mRegistrationDate.setText(simpleDateFormat.format(registrationDate));
        }
        this.mColor.setText(this.mVehicleModel.getColor());
    }

    public List<ThresholdModel> initAddedThresholds(List<ThresholdModel> list) {
        Iterator<ThresholdModel> it = list.iterator();
        while (it.hasNext()) {
            ThresholdModel next = it.next();
            if (next.getType() == ThresholdModel.Type.INSPECTION) {
                it.remove();
            }
            if (next.getType() == ThresholdModel.Type.TYRES_FITTING) {
                it.remove();
            }
            if (next.getType() == ThresholdModel.Type.TYRES_SWAP) {
                it.remove();
            }
            if (next.getType() == ThresholdModel.Type.INSURANCE_2_EXP) {
                it.remove();
            }
            if (next.getType() == ThresholdModel.Type.TAX_EXP) {
                it.remove();
            }
            if (next.getType() == ThresholdModel.Type.INSURANCE_EXP) {
                it.remove();
            }
            if (next.getType() == ThresholdModel.Type.EXHAUST_EXP) {
                it.remove();
            }
        }
        Log.i(TAG, "addedThresholds size()" + list.size());
        return list;
    }

    private void initView() {
        this.mOdometer.addTextChangedListener(new TextWatcher() { // from class: com.texa.careapp.app.settings.vehicle.SettingsVehicleScreen.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                SettingsVehicleScreen.this.mOdometerValue = editable.toString().trim();
                if (editable.length() <= 0) {
                    SettingsVehicleScreen.this.mOdometer.setError(SettingsVehicleScreen.this.getContext().getString(R.string.required_field));
                } else {
                    SettingsVehicleScreen.this.mOdometer.setError(null);
                }
            }
        });
        this.mPlate.setFocusable(false);
    }

    public boolean isValidate() {
        String str = this.mOdometerValue;
        return (str == null || str.length() == 0) ? false : true;
    }

    @Override // com.texa.care.navigation.Screen
    public void onDestroyView() {
        super.onDestroyView();
        Utils.safeDispose(this.mDisposable);
    }

    @Override // com.texa.care.navigation.Screen
    public void onResume() {
        super.onResume();
        if (this.mVehicleModel != null) {
            setVehicleDataView();
            this.addedThresholdList = initAddedThresholds(this.mVehicleModel.getThresholds());
            setOtherThresholdEditText();
        }
    }

    @Override // com.texa.care.navigation.Screen
    public void onPause() {
        super.onPause();
        if (this.mVehicleModel != null) {
            setVehicleData();
            try {
                Utils.safeModelSave(this.mVehicleModel, getContext());
            } catch (DatabaseIOException e) {
                Timber.e(e, "Could not save updated vehicle data in database.", new Object[0]);
            }
        }
        if (!blockSyncVehicleData) {
            scheduleVehicleSyncTask();
        }
        setAllThresholds();
        if (blockSyncThresholds) {
            return;
        }
        scheduleThresholdSyncTask();
    }

    private void setVehicleData() {
        if (this.mVehicleModel == null || this.mTyreTypeSpinner.getSelectedItemPosition() == 0) {
            return;
        }
        if (this.mVehicleModel.getTyresTypeId() == null || this.mTyreTypeSpinner.getSelectedItemPosition() != this.mVehicleModel.getTyresTypeId().intValue()) {
            this.mVehicleModel.setTyresTypeId(Integer.valueOf(this.mTyreTypeSpinner.getSelectedItemPosition()));
            this.mVehicleModel.setSyncNeeded(true);
        }
    }

    private void scheduleVehicleSyncTask() {
        this.mCAReWorkerManager.scheduleVehicleSync();
    }

    private void scheduleThresholdSyncTask() {
        this.mCAReWorkerManager.scheduleThreshold();
    }

    private void initThreshold(VehicleModel vehicleModel) {
        this.inspection = vehicleModel.getThreshold(ThresholdModel.Type.INSPECTION, getContext());
        this.tyresFitting = vehicleModel.getThreshold(ThresholdModel.Type.TYRES_FITTING, getContext());
        this.tyresSwap = vehicleModel.getThreshold(ThresholdModel.Type.TYRES_SWAP, getContext());
        this.insurance2Exp = vehicleModel.getThreshold(ThresholdModel.Type.INSURANCE_2_EXP, getContext());
        this.taxExp = vehicleModel.getThreshold(ThresholdModel.Type.TAX_EXP, getContext());
        this.insuranceExp = vehicleModel.getThreshold(ThresholdModel.Type.INSURANCE_EXP, getContext());
        this.exhaustExp = vehicleModel.getThreshold(ThresholdModel.Type.EXHAUST_EXP, getContext());
    }

    private void setAllThresholdEditText() {
        setInspectionDate();
        Integer odometer = this.tyresFitting.getOdometer();
        Utils.setOdoTextWatcher(getContext(), this.mTyresFittingKm);
        if (odometer != null) {
            this.mTyresFittingKm.setText(String.valueOf(odometer));
        }
        Integer odometer2 = this.tyresSwap.getOdometer();
        Utils.setOdoTextWatcher(getContext(), this.mTyresSwapKm);
        if (odometer2 != null) {
            this.mTyresSwapKm.setText(String.valueOf(odometer2));
        }
        this.mExpTheftFireInsuranceDate.setDate(this.insurance2Exp.getDate());
        this.mExpTaxDate.setDate(this.taxExp.getDate());
        this.mExpInsuranceDate.setDate(this.insuranceExp.getDate());
        this.mExpExhaustDate.setDate(this.exhaustExp.getDate());
    }

    private void setInspectionDate() {
        this.mInspectionDate.setDate(this.inspection.getDate());
        this.mInspectionDate.setListener(new DialogInterface.OnDismissListener() { // from class: com.texa.careapp.app.settings.vehicle.SettingsVehicleScreen$$ExternalSyntheticLambda11
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                this.f$0.m454x2d96c6ba(dialogInterface);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$setInspectionDate$18$com-texa-careapp-app-settings-vehicle-SettingsVehicleScreen, reason: not valid java name */
    public /* synthetic */ void m454x2d96c6ba(DialogInterface dialogInterface) {
        if (isValidInspectionDate(this.mInspectionDate.getDate())) {
            return;
        }
        this.mInspectionDate.setDate(null);
    }

    private boolean isValidInspectionDate(Date date) {
        Date date2 = this.mRegistrationDateValue;
        return (date2 == null || date == null || !date.after(date2)) ? false : true;
    }

    /* JADX INFO: renamed from: com.texa.careapp.app.settings.vehicle.SettingsVehicleScreen$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$careapp$model$ThresholdModel$Type;

        static {
            int[] iArr = new int[ThresholdModel.Type.values().length];
            $SwitchMap$com$texa$careapp$model$ThresholdModel$Type = iArr;
            try {
                iArr[ThresholdModel.Type.AC_SUBSCR_EXP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$texa$careapp$model$ThresholdModel$Type[ThresholdModel.Type.PARK_SUBSCR_EXP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$texa$careapp$model$ThresholdModel$Type[ThresholdModel.Type.GARAGE_RENT_EXP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$texa$careapp$model$ThresholdModel$Type[ThresholdModel.Type.INS_PAYM_EXP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$texa$careapp$model$ThresholdModel$Type[ThresholdModel.Type.INS_2_PAYM_EXP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$texa$careapp$model$ThresholdModel$Type[ThresholdModel.Type.CAR_PAYM_EXP.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$texa$careapp$model$ThresholdModel$Type[ThresholdModel.Type.HWY_PASS_EXP.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$texa$careapp$model$ThresholdModel$Type[ThresholdModel.Type.ZTL_PASS_EXP.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    private void setOtherThresholdEditText() {
        for (ThresholdModel thresholdModel : this.addedThresholdList) {
            switch (AnonymousClass2.$SwitchMap$com$texa$careapp$model$ThresholdModel$Type[thresholdModel.getType().ordinal()]) {
                case 1:
                    this.mAutoClubDate.setDate(thresholdModel.getDate());
                    this.layoutAutoClub.setVisibility(0);
                    break;
                case 2:
                    this.mParkDate.setDate(thresholdModel.getDate());
                    this.layoutPark.setVisibility(0);
                    break;
                case 3:
                    this.mGarageDate.setDate(thresholdModel.getDate());
                    this.layoutGarage.setVisibility(0);
                    break;
                case 4:
                    this.mInsurancePaymentDate.setDate(thresholdModel.getDate());
                    this.layoutInsurancePayment.setVisibility(0);
                    break;
                case 5:
                    this.mTheftFireInsurancePaymentDate.setDate(thresholdModel.getDate());
                    this.layoutTheftFireInsurancePayment.setVisibility(0);
                    break;
                case 6:
                    this.mCarPaymentDate.setDate(thresholdModel.getDate());
                    this.layoutCarPayment.setVisibility(0);
                    break;
                case 7:
                    this.mPassHighwayDate.setDate(thresholdModel.getDate());
                    this.layoutPassHighway.setVisibility(0);
                    break;
                case 8:
                    this.mPassZtlDate.setDate(thresholdModel.getDate());
                    this.layoutPassZtl.setVisibility(0);
                    break;
            }
        }
    }

    private void setAllThresholds() {
        if (isValidInspectionDate(this.mInspectionDate.getDate())) {
            setThresholdValuesFromDateView(this.inspection, this.mInspectionDate);
        }
        Utils.isSetThresholdValuesFromEditText(this.tyresFitting, this.mTyresFittingKm);
        Utils.isSetThresholdValuesFromEditText(this.tyresSwap, this.mTyresSwapKm);
        setThresholdValuesFromDateView(this.insurance2Exp, this.mExpTheftFireInsuranceDate);
        setThresholdValuesFromDateView(this.taxExp, this.mExpTaxDate);
        setThresholdValuesFromDateView(this.insuranceExp, this.mExpInsuranceDate);
        setThresholdValuesFromDateView(this.exhaustExp, this.mExpExhaustDate);
        for (ThresholdModel thresholdModel : this.addedThresholdList) {
            switch (AnonymousClass2.$SwitchMap$com$texa$careapp$model$ThresholdModel$Type[thresholdModel.getType().ordinal()]) {
                case 1:
                    setThresholdValuesFromDateView(thresholdModel, this.mAutoClubDate);
                    break;
                case 2:
                    setThresholdValuesFromDateView(thresholdModel, this.mParkDate);
                    break;
                case 3:
                    setThresholdValuesFromDateView(thresholdModel, this.mGarageDate);
                    break;
                case 4:
                    setThresholdValuesFromDateView(thresholdModel, this.mInsurancePaymentDate);
                    break;
                case 5:
                    setThresholdValuesFromDateView(thresholdModel, this.mTheftFireInsurancePaymentDate);
                    break;
                case 6:
                    setThresholdValuesFromDateView(thresholdModel, this.mCarPaymentDate);
                    break;
                case 7:
                    setThresholdValuesFromDateView(thresholdModel, this.mPassHighwayDate);
                    break;
                case 8:
                    setThresholdValuesFromDateView(thresholdModel, this.mPassZtlDate);
                    break;
                default:
                    Log.e(TAG, "ThresholdModel Type not recognized");
                    break;
            }
        }
    }

    public void setThresholdValuesFromDateView(ThresholdModel thresholdModel, EditableDateView editableDateView) {
        if (editableDateView.isEmpty() || thresholdModel == null || editableDateView.getDate().equals(thresholdModel.getDate())) {
            return;
        }
        thresholdModel.setDate(editableDateView.getDate());
        try {
            thresholdModel.saveForSync();
        } catch (DatabaseIOException e) {
            Timber.e(e, "Could not save the threshold.", new Object[0]);
        }
    }

    protected void resetTextValue(EditText editText, ThresholdModel thresholdModel) {
        if (editText.getText().length() > 0 || thresholdModel.getOdometer() == null) {
            return;
        }
        editText.append(thresholdModel.getOdometer().toString());
    }

    private void goToNewThresholdClicked() {
        Intent intent = new Intent(InsertNewThresholdActivity.buildIntent(getContext()));
        intent.setFlags(268435456);
        intent.putExtra(VehicleModel.COLUMN_UID, this.mVehicleModel.getUid());
        getContext().startActivity(intent);
    }

    private void showDeleteVehicleDialog() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.mActivity);
        builder.setTitle(R.string.delete_vehicle);
        builder.setMessage(R.string.delete_vehicle_question).setPositiveButton(android.R.string.yes, this.dialogClickListener).setNegativeButton(android.R.string.no, this.dialogClickListener);
        builder.create().show();
    }

    private void deleteVehicleFromServer() {
        this.mDisposable.add(this.mTexaCareApiServiceUser.deleteVehiclesUsersAssociation(this.mVehicleModel.getUid()).subscribeOn(Schedulers.io()).subscribe(new Action() { // from class: com.texa.careapp.app.settings.vehicle.SettingsVehicleScreen$$ExternalSyntheticLambda12
            @Override // io.reactivex.functions.Action
            public final void run() throws Exception {
                this.f$0.m450x4807f11();
            }
        }, new Consumer() { // from class: com.texa.careapp.app.settings.vehicle.SettingsVehicleScreen$$ExternalSyntheticLambda13
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m452xc511eaa8((Throwable) obj);
            }
        }));
    }

    /* JADX INFO: renamed from: lambda$deleteVehicleFromServer$19$com-texa-careapp-app-settings-vehicle-SettingsVehicleScreen, reason: not valid java name */
    public /* synthetic */ void m450x4807f11() throws Exception {
        Log.d(TAG, "delete vehicle -> deleted to server");
        this.mVehicleParametersManagerV2.onCareDisconnected();
        removeAllVehicleAssociation();
    }

    /* JADX INFO: renamed from: lambda$deleteVehicleFromServer$21$com-texa-careapp-app-settings-vehicle-SettingsVehicleScreen, reason: not valid java name */
    public /* synthetic */ void m452xc511eaa8(Throwable th) throws Exception {
        Log.w(TAG, "delete vehicle ->", th);
        Snackbar.make(this.mScrollView, R.string.error_vehicle_not_cancelled_on_server, 0).setAction(getContext().getString(R.string.care_update_retry), new View.OnClickListener() { // from class: com.texa.careapp.app.settings.vehicle.SettingsVehicleScreen$$ExternalSyntheticLambda10
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m451xa9c4a27(view);
            }
        }).show();
    }

    /* JADX INFO: renamed from: lambda$deleteVehicleFromServer$20$com-texa-careapp-app-settings-vehicle-SettingsVehicleScreen, reason: not valid java name */
    public /* synthetic */ void m451xa9c4a27(View view) {
        deleteVehicleFromServer();
    }

    private void removeAllVehicleAssociation() {
        Timber.d("#removeAllVehicleAssociation()", new Object[0]);
        try {
            this.mCommunication.disconnect();
        } catch (CareLibException e) {
            e.printStackTrace();
        }
        getContext().stopService(CareService.buildDefaultIntent(getContext()));
        getContext().stopService(FirmwareUpdateService.buildDefaultIntent(getContext()));
        String hwid = this.mVehicleModel.getHwid();
        this.mVehicleModel.delete();
        if (!Utils.isEmpty(hwid)) {
            this.mDongleDataManager.deleteDongleByHwid(hwid);
        }
        ActiveAndroid.clearCache();
        Log.d(TAG, "delete vehicle -> deleted to DB");
        if (this.mDongleDataManager.count() < 1) {
            Intent intent = new Intent(getContext(), (Class<?>) OnBoardingActivity.class);
            intent.setFlags(268468224);
            getContext().startActivity(intent);
            return;
        }
        DongleModel unselectedDongleModel = this.mDongleDataManager.getUnselectedDongleModel();
        unselectedDongleModel.setDongleLikeSelected();
        try {
            Utils.safeModelSave(unselectedDongleModel, getContext());
        } catch (DatabaseIOException e2) {
            e2.printStackTrace();
        }
        if (Build.VERSION.SDK_INT > 25) {
            getContext().startForegroundService(new Intent(getContext(), (Class<?>) CareService.class));
        } else {
            getContext().startService(new Intent(getContext(), (Class<?>) CareService.class));
        }
        this.mActivity.finish();
        Intent intent2 = new Intent(getContext(), (Class<?>) SettingsActivity.class);
        intent2.setFlags(335544320);
        getContext().startActivity(intent2);
    }

    private void odometerClicked() {
        String hwid = this.mVehicleModel.getHwid();
        if (Utils.isCareConnected(this.mCommunication) && hwid.equals(this.mCommunication.getCurrentDevice().getName())) {
            Intent intent = new Intent(getContext(), (Class<?>) VehicleDataConfirmationActivity.class);
            intent.addFlags(268435456);
            getContext().startActivity(intent);
            return;
        }
        Toast.makeText(getContext(), getContext().getString(R.string.not_connected), 0).show();
    }
}
