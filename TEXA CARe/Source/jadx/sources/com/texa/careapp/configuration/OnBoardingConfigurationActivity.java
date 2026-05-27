package com.texa.careapp.configuration;

import android.app.DatePickerDialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.telephony.TelephonyManager;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.View;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.core.content.res.ResourcesCompat;
import androidx.databinding.DataBindingUtil;
import com.activeandroid.query.Delete;
import com.google.android.material.snackbar.Snackbar;
import com.google.android.material.textfield.TextInputLayout;
import com.texa.care.R;
import com.texa.care.navigation.Navigator;
import com.texa.careapp.Constants;
import com.texa.careapp.app.MainActivity;
import com.texa.careapp.app.calibration.CalibrationActivity;
import com.texa.careapp.app.errorsDTC.LampStatus;
import com.texa.careapp.app.onboarding.dialogs.CountryScreenDialog;
import com.texa.careapp.app.service.CareService;
import com.texa.careapp.base.BaseActivity;
import com.texa.careapp.configuration.UpdateConfigurationIntentService;
import com.texa.careapp.databinding.ActivityCareOnboardingConfigurationBinding;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.DongleModel;
import com.texa.careapp.model.DtcModel;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.model.VehicleModelUpdateEntity;
import com.texa.careapp.model.VehicleParam;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.sync.CAReWorkerManager;
import com.texa.careapp.utils.DatePickerUtils;
import com.texa.careapp.utils.DateTypeAdapter;
import com.texa.careapp.utils.FormValidator;
import com.texa.careapp.utils.Utils;
import com.texa.careapp.utils.VehicleDataManager;
import com.texa.carelib.care.accessory.Accessory;
import com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration;
import com.texa.carelib.communication.Communication;
import com.texa.carelib.communication.CommunicationStatus;
import com.texa.carelib.core.CareLibException;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class OnBoardingConfigurationActivity extends BaseActivity {
    private static final String PARAM_START_MAIN_ACTIVITY = "start-main-activity-param";
    public static final String TAG = "OnBoardingConfigurationActivity";
    private static final int TIME_TO_START_UPDATE_CONFIGURATION = 1000;
    private static final String UUID = "uid";
    private String country;

    @Inject
    protected Accessory mAccessory;

    @Inject
    protected CAReWorkerManager mCAReWorkerManager;
    private Calendar mCalendar;

    @Inject
    protected Communication mCommunication;
    private TextView mConfirmButton;
    private EditText mCountry;
    private TextInputLayout mCountryInput;

    @Inject
    protected DataManagerConfiguration mDataManagerConfiguration;

    @Inject
    protected DongleDataManager mDongleDataManager;
    protected DongleModel mDongleModel;

    @Inject
    protected EventBus mEventBus;

    @Inject
    protected FormValidator mFormValidator;
    private ArrayList<TextInputLayout> mInputRequiredFields;
    private TextInputLayout mKilometersInput;
    private Navigator mNavigator;
    private EditText mOdometer;
    private boolean mOnCreate;
    private ProgressBar mProgressBar;
    private EditText mRegistrationDate;
    private TextInputLayout mRegistrationDateInput;
    private ArrayList<EditText> mRequiredFields;

    @Inject
    protected SharedPreferences mSharedPreferences;
    private boolean mShouldStartMainActivity;
    private TextView mSkipButton;

    @Inject
    protected TexaCareApiServiceUser mTexaCareApiServiceUser;
    private TextView mUpdateMessage;
    private TextView mUpdateMessageSecondary;
    private TextView mUpdateMessageSuccess;

    @Inject
    protected VehicleDataManager mVehicleDataManager;
    protected VehicleModel mVehicleModel;
    private Disposable updateResponse;
    private final SimpleDateFormat dateFormat = new SimpleDateFormat(Constants.DEFAULT_FORMAT_DATE, Locale.getDefault());
    private int finishingType = 0;
    private PropertyChangeListener mCommunicationChangeListener = new PropertyChangeListener() { // from class: com.texa.careapp.configuration.OnBoardingConfigurationActivity$$ExternalSyntheticLambda10
        @Override // java.beans.PropertyChangeListener
        public final void propertyChange(PropertyChangeEvent propertyChangeEvent) {
            this.f$0.m593xf173f67b(propertyChangeEvent);
        }
    };

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
    }

    @Override // com.texa.careapp.base.BaseActivity
    protected boolean requiresAuthentication() {
        return false;
    }

    public static Intent buildFirstRunIntent(Context context, String str) {
        Intent intent = new Intent(context, (Class<?>) OnBoardingConfigurationActivity.class);
        intent.putExtra(PARAM_START_MAIN_ACTIVITY, true);
        intent.putExtra("uid", str);
        return intent;
    }

    @Override // com.texa.careapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ActivityCareOnboardingConfigurationBinding activityCareOnboardingConfigurationBinding = (ActivityCareOnboardingConfigurationBinding) DataBindingUtil.setContentView(this, R.layout.activity_care_onboarding_configuration);
        this.mProgressBar = activityCareOnboardingConfigurationBinding.activityUpdateProgress;
        this.mUpdateMessage = activityCareOnboardingConfigurationBinding.activityUpdateMessagePrimary;
        this.mUpdateMessageSecondary = activityCareOnboardingConfigurationBinding.activityUpdateMessageSecondary;
        this.mConfirmButton = activityCareOnboardingConfigurationBinding.activityUpdateConfirm;
        TextView textView = activityCareOnboardingConfigurationBinding.activityUpdateSkip;
        this.mSkipButton = textView;
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.configuration.OnBoardingConfigurationActivity$$ExternalSyntheticLambda7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m594xfe75218f(view);
            }
        });
        this.mUpdateMessageSuccess = activityCareOnboardingConfigurationBinding.activityUpdateMessageSuccess;
        this.mKilometersInput = activityCareOnboardingConfigurationBinding.activityUpdateKilometersInput;
        this.mOdometer = activityCareOnboardingConfigurationBinding.activityUpdateKilometersEditText;
        this.mCountryInput = activityCareOnboardingConfigurationBinding.activityUpdateCountryInput;
        this.mCountry = activityCareOnboardingConfigurationBinding.activityUpdateCountryEditText;
        this.mRegistrationDateInput = activityCareOnboardingConfigurationBinding.activityUpdateRegistrationDateInput;
        this.mRegistrationDate = activityCareOnboardingConfigurationBinding.activityUpdateRegistrationDateEditText;
        getCareApplication().component().inject(this);
        this.mShouldStartMainActivity = getIntent().getBooleanExtra(PARAM_START_MAIN_ACTIVITY, false);
        this.mNavigator = Navigator.getInstanceFor(this);
        SharedPreferences.Editor editorEdit = this.mSharedPreferences.edit();
        editorEdit.putBoolean(Constants.OUT_OF_THE_BOX_COMPLETED, false);
        editorEdit.apply();
        this.mRequiredFields = new ArrayList<>();
        this.mInputRequiredFields = new ArrayList<>();
        this.mDongleModel = this.mDongleDataManager.getDongleModel();
        this.mOnCreate = true;
        this.mVehicleModel = this.mVehicleDataManager.getVehicleById(getIntent().getStringExtra("uid"));
        this.mCalendar = Calendar.getInstance();
        this.mRegistrationDate.setClickable(true);
        this.mRegistrationDate.setFocusable(false);
        initFields();
        new Handler().postDelayed(new Runnable() { // from class: com.texa.careapp.configuration.OnBoardingConfigurationActivity$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.configurationStarter();
            }
        }, 2000L);
    }

    /* JADX INFO: renamed from: lambda$onCreate$0$com-texa-careapp-configuration-OnBoardingConfigurationActivity, reason: not valid java name */
    public /* synthetic */ void m594xfe75218f(View view) {
        goOn();
    }

    private void initFields() {
        VehicleModel vehicleModel = this.mVehicleModel;
        if (vehicleModel != null) {
            if (vehicleModel.getOdometer() != null && this.mVehicleModel.getOdometer().intValue() != 0) {
                this.mOdometer.setText(String.valueOf(this.mVehicleModel.getOdometer()));
            }
            if (!Utils.isEmpty(this.mVehicleModel.getNation())) {
                this.mCountry.setText(new Locale("", this.mVehicleModel.getNation()).getDisplayCountry());
                this.country = this.mVehicleModel.getNation();
            } else {
                getDefaultCountry();
            }
            if (this.mVehicleModel.getRegistrationDate() != null) {
                this.mCalendar.setTime(this.mVehicleModel.getRegistrationDate());
                this.mRegistrationDate.setText(this.dateFormat.format(this.mVehicleModel.getRegistrationDate()));
                return;
            }
            return;
        }
        getDefaultCountry();
    }

    private boolean checkCAReBTConnected() {
        if (Utils.isCareConnected(this.mCommunication)) {
            Timber.d("#checkCAReBTConnected() == true", new Object[0]);
            return true;
        }
        showSnackBar(R.string.update_configuration_not_connected_error);
        Timber.d("#checkCAReBTConnected() == false", new Object[0]);
        return false;
    }

    private boolean checkCAReOBDConnected() {
        if (Utils.isOBDConnected(this.mAccessory)) {
            Timber.d("#checkCAReOBDConnected() == true", new Object[0]);
            return true;
        }
        showSnackBar(R.string.update_configuration_not_connected_to_vehicle_error);
        Timber.d("#checkCAReOBDConnected() == false", new Object[0]);
        return false;
    }

    private void getDefaultCountry() {
        String displayCountry;
        TelephonyManager telephonyManager = (TelephonyManager) getSystemService("phone");
        if (telephonyManager != null && telephonyManager.getSimState() != 1) {
            displayCountry = new Locale("", telephonyManager.getSimCountryIso()).getDisplayCountry();
        } else {
            displayCountry = Locale.getDefault().getDisplayCountry();
        }
        this.mCountry.setText(new Locale("", displayCountry).getDisplayCountry());
        this.country = displayCountry;
    }

    private void showSnackBar(int i) {
        Snackbar snackbarMake = Snackbar.make(findViewById(android.R.id.content), i, 0);
        ((TextView) snackbarMake.getView().findViewById(R.id.snackbar_text)).setMaxLines(3);
        snackbarMake.show();
    }

    private void checkOnResume() {
        if (this.mOnCreate) {
            this.mOnCreate = false;
            return;
        }
        if (!checkCAReBTConnected()) {
            onError(null);
        } else if (!checkCAReOBDConnected()) {
            onError(null);
        } else {
            Timber.i("checkOnResume", new Object[0]);
        }
    }

    @Override // com.texa.careapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.mEventBus.register(this);
        this.mCommunication.addPropertyChangeListener(this.mCommunicationChangeListener);
        Timber.d("#onResume() mShouldStartMainActivity: %s", Boolean.valueOf(this.mShouldStartMainActivity));
        int i = this.finishingType;
        if (i == 0) {
            Utils.hide(this.mSkipButton);
            Utils.hide(this.mConfirmButton);
        } else if (i == 1) {
            displayUpdateCompletedButton();
        } else if (i == 2) {
            displayUpdateRetryButton();
            Utils.show(this.mSkipButton);
        }
        checkOnResume();
    }

    @Override // com.texa.careapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.mEventBus.unregister(this);
        this.mCommunication.removePropertyChangeListener(this.mCommunicationChangeListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void configurationStarter() {
        hideConfirmButton();
        checkInformation();
        Utils.hide(this.mSkipButton);
        if (!checkCAReBTConnected()) {
            onError(null);
        } else if (!checkCAReOBDConnected()) {
            onError(null);
        } else {
            startToUpdateWithDelay();
        }
    }

    private void checkInformation() {
        this.mOdometer.addTextChangedListener(new TextWatcher() { // from class: com.texa.careapp.configuration.OnBoardingConfigurationActivity.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (editable.length() <= 0) {
                    OnBoardingConfigurationActivity.this.mKilometersInput.setError(OnBoardingConfigurationActivity.this.getString(R.string.configuration_error_input_km));
                } else {
                    OnBoardingConfigurationActivity.this.mKilometersInput.setError(null);
                }
            }
        });
        this.mRegistrationDate.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.configuration.OnBoardingConfigurationActivity$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m589x88a87c24(view);
            }
        });
        this.mCountry.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.configuration.OnBoardingConfigurationActivity$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m590x7098003(view);
            }
        });
        this.mRequiredFields.add(this.mOdometer);
        this.mRequiredFields.add(this.mCountry);
        this.mRequiredFields.add(this.mRegistrationDate);
        this.mInputRequiredFields.add(this.mKilometersInput);
        this.mInputRequiredFields.add(this.mCountryInput);
        this.mInputRequiredFields.add(this.mRegistrationDateInput);
    }

    /* JADX INFO: renamed from: lambda$checkInformation$2$com-texa-careapp-configuration-OnBoardingConfigurationActivity, reason: not valid java name */
    public /* synthetic */ void m589x88a87c24(View view) {
        DatePickerUtils.showDatePicker(this, this.mCalendar, new DatePickerDialog.OnDateSetListener() { // from class: com.texa.careapp.configuration.OnBoardingConfigurationActivity$$ExternalSyntheticLambda0
            @Override // android.app.DatePickerDialog.OnDateSetListener
            public final void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
                this.f$0.m588xa477845(datePicker, i, i2, i3);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$checkInformation$1$com-texa-careapp-configuration-OnBoardingConfigurationActivity, reason: not valid java name */
    public /* synthetic */ void m588xa477845(DatePicker datePicker, int i, int i2, int i3) {
        this.mCalendar.set(i, i2, i3, 0, 0, 0);
        this.mRegistrationDate.setText(this.dateFormat.format(this.mCalendar.getTime()));
    }

    /* JADX INFO: renamed from: lambda$checkInformation$3$com-texa-careapp-configuration-OnBoardingConfigurationActivity, reason: not valid java name */
    public /* synthetic */ void m590x7098003(View view) {
        this.mNavigator.goTo(new CountryScreenDialog(getCareApplication()));
    }

    public void startToUpdateWithDelay() {
        this.mEventBus.post(new UpdateConfigurationIntentService.ConfigurationUpdateEvent(getString(R.string.configuration_update_in_progress), 0));
        new Handler().postDelayed(new Runnable() { // from class: com.texa.careapp.configuration.OnBoardingConfigurationActivity$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m595x1f6ba5af();
            }
        }, 1000L);
    }

    /* JADX INFO: renamed from: lambda$startToUpdateWithDelay$4$com-texa-careapp-configuration-OnBoardingConfigurationActivity, reason: not valid java name */
    public /* synthetic */ void m595x1f6ba5af() {
        startService(new Intent(getApplicationContext(), (Class<?>) UpdateConfigurationIntentService.class));
    }

    @Subscribe(sticky = true, threadMode = ThreadMode.MAIN)
    public void onEventMainThread(UpdateConfigurationIntentService.ConfigurationUpdateSuccessEvent configurationUpdateSuccessEvent) {
        this.finishingType = 1;
        this.mProgressBar.setVisibility(8);
        this.mUpdateMessage.setVisibility(8);
        this.mUpdateMessageSecondary.setVisibility(8);
        this.mUpdateMessageSuccess.setVisibility(0);
        this.mSharedPreferences.edit().putString(Constants.CARE_ENVIRONMENT, Constants.CONFIGURED_ENVIRONMENT).apply();
        displayUpdateCompletedButton();
    }

    @Subscribe(sticky = true, threadMode = ThreadMode.MAIN)
    public void onEventMainThread(UpdateConfigurationIntentService.ConfigurationUpdateErrorEvent configurationUpdateErrorEvent) {
        this.finishingType = 2;
        Throwable exception = configurationUpdateErrorEvent.getException();
        Timber.w(exception, "Update configuration error", new Object[0]);
        onError(exception);
    }

    private void onError(Throwable th) {
        String string = getString(R.string.care_update_error);
        if (th != null && th.getMessage() != null && th.getMessage().contains(Constants.ERROR_KO_CONTENTS_VEHICLE_VIN_MISMATCH)) {
            string = getString(R.string.care_change_vehicle_error_message);
        }
        displayUpdateRetryButton();
        Utils.show(this.mSkipButton);
        this.mProgressBar.setVisibility(8);
        this.mUpdateMessage.setText(string);
        this.mUpdateMessage.setTextColor(ResourcesCompat.getColor(getResources(), R.color.error, null));
        this.mUpdateMessage.setGravity(17);
        this.mUpdateMessageSecondary.setVisibility(8);
    }

    @Subscribe(sticky = true, threadMode = ThreadMode.MAIN)
    public void onEventMainThread(UpdateConfigurationIntentService.ConfigurationUpdateEvent configurationUpdateEvent) {
        if (this.mProgressBar.getVisibility() != 0) {
            this.mProgressBar.setVisibility(0);
        }
        if (this.mUpdateMessageSecondary.getVisibility() != 0) {
            this.mUpdateMessageSecondary.setVisibility(0);
        }
        int progress = configurationUpdateEvent.getProgress();
        String message = configurationUpdateEvent.getMessage();
        Timber.d("Info progress:" + progress + " msg:" + message, new Object[0]);
        if (progress > 0) {
            this.mProgressBar.setIndeterminate(false);
            this.mProgressBar.setProgress(progress);
            hideConfirmButton();
            Utils.hide(this.mSkipButton);
        } else {
            this.mProgressBar.setIndeterminate(true);
        }
        this.mUpdateMessage.setText(message);
    }

    private void hideConfirmButton() {
        this.mConfirmButton.setVisibility(8);
        this.mConfirmButton.setEnabled(false);
    }

    private void deleteOldVehicleParams() {
        DongleModel dongleModel = this.mDongleModel;
        if (dongleModel == null || dongleModel.getCurrentVehicle() == null) {
            new Delete().from(VehicleParam.class).execute();
        } else {
            new Delete().from(VehicleParam.class).where("vehicle = ?", this.mDongleModel.getCurrentVehicle().getId()).execute();
        }
    }

    private void deleteOldVehicleDTC() {
        DongleModel dongleModel = this.mDongleModel;
        if (dongleModel == null || dongleModel.getCurrentVehicle() == null) {
            new Delete().from(DtcModel.class).execute();
        } else {
            new Delete().from(DtcModel.class).where("Vehicle = ?", this.mDongleModel.getCurrentVehicle().getId()).execute();
        }
    }

    private void deleteOldVehicleLamps() {
        DongleModel dongleModel = this.mDongleModel;
        if (dongleModel == null || dongleModel.getCurrentVehicle() == null) {
            new Delete().from(LampStatus.class).execute();
        } else {
            new Delete().from(LampStatus.class).where("vehicle = ?", this.mDongleModel.getCurrentVehicle().getId()).execute();
        }
    }

    private void saveVehicleInformation() {
        removeCurrentVehicle(this.mVehicleModel.getHwid());
        if (this.mVehicleModel != null) {
            moveDongleIfNeeded();
            setOdometer();
            this.mVehicleModel.setNation(this.mCountry.getText().toString());
            this.mVehicleModel.setRegistrationDate(this.mCalendar.getTime());
            this.mVehicleModel.setVin(this.mDongleModel.getVinCode());
            this.mVehicleModel.setCurrentVehicle(true);
            this.mVehicleModel.save();
            deleteOldVehicleParams();
            deleteOldVehicleDTC();
            deleteOldVehicleLamps();
            this.mVehicleDataManager.setVehicleLikeSelected(this.mVehicleModel.getUid());
            updateVehicleInformation();
            return;
        }
        Log.d(TAG, "vehicle model == null");
    }

    private void removeCurrentVehicle(String str) {
        for (VehicleModel vehicleModel : this.mVehicleDataManager.getAllVehicles()) {
            if (!Utils.isEmpty(vehicleModel.getHwid()) && vehicleModel.getHwid().equals(str)) {
                vehicleModel.setCurrentVehicle(false);
                vehicleModel.save();
            }
        }
    }

    private void setOdometer() {
        try {
            this.mDataManagerConfiguration.setStartingOdometer(Float.parseFloat(Utils.getValue(this.mOdometer)));
        } catch (CareLibException e) {
            e.printStackTrace();
        }
        this.mVehicleModel.setOdometer(Integer.valueOf(Integer.parseInt(Utils.getValue(this.mOdometer))));
        this.mVehicleModel.setSyncNeeded(true);
        this.mVehicleModel.setConfirmedByUser(true);
        this.mCAReWorkerManager.scheduleVehicleSync();
    }

    private void moveDongleIfNeeded() {
        for (VehicleModel vehicleModel : this.mVehicleDataManager.getAllVehicles()) {
            if (vehicleModel.getHwid() != null && !vehicleModel.getUid().equals(this.mVehicleModel.getUid()) && vehicleModel.getHwid().equals(this.mDongleDataManager.getDongleModel().getHwid())) {
                vehicleModel.setHwid(null);
            }
            vehicleModel.save();
        }
    }

    private void updateVehicleInformation() {
        Date date;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(DateTypeAdapter.TIMESTAMP_PATTERN, Locale.getDefault());
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT+1"));
        try {
            date = simpleDateFormat.parse(simpleDateFormat.format(this.mCalendar.getTime()));
        } catch (ParseException e) {
            e.printStackTrace();
            date = null;
        }
        this.updateResponse = this.mTexaCareApiServiceUser.updateVehicle(this.mVehicleModel.getUid(), new VehicleModelUpdateEntity(this.mVehicleModel.getDescription(), this.country, date, Integer.parseInt(Utils.getValue(this.mOdometer)))).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Action() { // from class: com.texa.careapp.configuration.OnBoardingConfigurationActivity$$ExternalSyntheticLambda8
            @Override // io.reactivex.functions.Action
            public final void run() {
                Timber.d("Vehicle update completed", new Object[0]);
            }
        }, new Consumer() { // from class: com.texa.careapp.configuration.OnBoardingConfigurationActivity$$ExternalSyntheticLambda9
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Throwable th = (Throwable) obj;
                Timber.e(th, "Vehicle update error: %s", th.getMessage());
            }
        });
    }

    private boolean validateInformation() {
        boolean zValidateRequiredFields = this.mFormValidator.validateRequiredFields(this.mInputRequiredFields, this.mRequiredFields);
        if (!zValidateRequiredFields) {
            Log.e(TAG, "Form not valid");
        }
        return zValidateRequiredFields;
    }

    private void displayUpdateCompletedButton() {
        this.mConfirmButton.setText(R.string.next_and_confirm);
        this.mConfirmButton.setVisibility(0);
        this.mConfirmButton.setEnabled(true);
        this.mConfirmButton.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.configuration.OnBoardingConfigurationActivity$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m591xe5a8de11(view);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$displayUpdateCompletedButton$7$com-texa-careapp-configuration-OnBoardingConfigurationActivity, reason: not valid java name */
    public /* synthetic */ void m591xe5a8de11(View view) {
        goOn();
    }

    private void displayUpdateRetryButton() {
        this.mConfirmButton.setText(R.string.care_update_retry);
        this.mConfirmButton.setVisibility(0);
        this.mConfirmButton.setEnabled(true);
        this.mConfirmButton.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.configuration.OnBoardingConfigurationActivity$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m592x39e331f3(view);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$displayUpdateRetryButton$8$com-texa-careapp-configuration-OnBoardingConfigurationActivity, reason: not valid java name */
    public /* synthetic */ void m592x39e331f3(View view) {
        configurationStarter();
    }

    /* JADX INFO: renamed from: lambda$new$9$com-texa-careapp-configuration-OnBoardingConfigurationActivity, reason: not valid java name */
    public /* synthetic */ void m593xf173f67b(PropertyChangeEvent propertyChangeEvent) {
        Communication communication = (Communication) propertyChangeEvent.getSource();
        if (Communication.PROPERTY_STATUS.equals(propertyChangeEvent.getPropertyName()) && AnonymousClass2.$SwitchMap$com$texa$carelib$communication$CommunicationStatus[communication.getStatus().ordinal()] == 1) {
            runOnUiThread(new Runnable() { // from class: com.texa.careapp.configuration.OnBoardingConfigurationActivity$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.onDeviceConnected();
                }
            });
        }
    }

    /* JADX INFO: renamed from: com.texa.careapp.configuration.OnBoardingConfigurationActivity$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$carelib$communication$CommunicationStatus;

        static {
            int[] iArr = new int[CommunicationStatus.values().length];
            $SwitchMap$com$texa$carelib$communication$CommunicationStatus = iArr;
            try {
                iArr[CommunicationStatus.CONNECTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    @Subscribe(sticky = true)
    public void onEvent(CountryScreenDialog.CountrySelectedEvent countrySelectedEvent) {
        this.mCountry.setText(countrySelectedEvent.getCountry().getVisualValue());
        this.country = countrySelectedEvent.getCountry().getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onDeviceConnected() {
        this.mConfirmButton.setEnabled(true);
    }

    private void goOn() {
        if (validateInformation()) {
            saveVehicleInformation();
            startService(CareService.buildTripStartedIntent(getApplicationContext()));
            SharedPreferences.Editor editorEdit = this.mSharedPreferences.edit();
            editorEdit.putBoolean(Constants.OUT_OF_THE_BOX_COMPLETED, true);
            editorEdit.apply();
            if (Utils.checkCalibrationMinFirmwareVersion(this.mAccessory)) {
                startActivity(CalibrationActivity.buildIntent(this, this.mShouldStartMainActivity));
            } else {
                Intent intent = new Intent(this, (Class<?>) MainActivity.class);
                intent.addFlags(268468224);
                intent.putExtra(Constants.START_MAIN_ACTIVITY_EXTRA, this.mShouldStartMainActivity);
                startActivity(intent);
            }
            finish();
            return;
        }
        showSnackBar(R.string.activity_update_forms_not_validated);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        Utils.safeDispose(this.updateResponse);
    }
}
