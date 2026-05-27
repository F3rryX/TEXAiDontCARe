package com.texa.careapp.app.onboarding;

import android.app.Activity;
import android.graphics.Color;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import androidx.databinding.DataBindingUtil;
import at.favre.lib.armadillo.ArmadilloSharedPreferences;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.texa.care.R;
import com.texa.care.eco_driving.RxCommunication;
import com.texa.care.navigation.Screen;
import com.texa.care.navigation.ScreenType;
import com.texa.careapp.CareApplication;
import com.texa.careapp.app.MainActivity$$ExternalSyntheticLambda1;
import com.texa.careapp.carelib.ICareObserver;
import com.texa.careapp.databinding.ScreenCareValidatorBinding;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.DongleModel;
import com.texa.careapp.model.ServerLogModel;
import com.texa.careapp.remotelogger.LoggerManager;
import com.texa.careapp.utils.FirebaseAnalyticsEventManager;
import com.texa.careapp.utils.ProgressDialogFragment;
import com.texa.careapp.utils.TexaProfileDelegate;
import com.texa.careapp.utils.Utils;
import com.texa.carelib.communication.Communication;
import com.texa.carelib.communication.CommunicationStatus;
import com.texa.carelib.communication.DeviceInfo;
import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.profile.events.AuthenticationCompletedEvent;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.util.regex.Pattern;
import javax.inject.Inject;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class CareAuthenticationScreen extends Screen {
    private static int MAX_NUMBER_OF_CHARACTERS = 4;
    private static String TAG = "CareAuthenticationScreen";
    private Disposable connectionDisposable;
    private Disposable firmwareVersionDisposable;
    private boolean isProgressShown;
    private Activity mActivity;

    @Inject
    protected ArmadilloSharedPreferences mArmadilloSharedPreferences;
    private RelativeLayout mButton;
    private ImageView mButtonArrow;
    private TextView mButtonText;

    @Inject
    protected Communication mCommunication;
    private DeviceInfo mDeviceInfo;

    @Inject
    protected DongleDataManager mDongleDataManager;
    private TextView mErrorCareCodeTextView;

    @Inject
    protected ICareObserver mICareObserver;

    @Inject
    protected LoggerManager mLoggerManager;

    @Inject
    protected Profile mProfile;
    private ProgressDialogFragment mProgressDialogFragment;
    private RxCommunication mRxCommunication;

    @Inject
    protected TexaProfileDelegate mTexaProfileDelegate;
    private EditText mValidationCareCodeNumberEditText;
    private EditText mValidationCareCodeTextEditText;

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.screen_care_validator;
    }

    public CareAuthenticationScreen(Activity activity, DeviceInfo deviceInfo) {
        ((CareApplication) activity.getApplication()).component().inject(this);
        this.mDeviceInfo = deviceInfo;
        this.mActivity = activity;
        this.mRxCommunication = new RxCommunication(this.mCommunication);
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        ScreenCareValidatorBinding screenCareValidatorBinding = (ScreenCareValidatorBinding) DataBindingUtil.bind(view);
        this.mValidationCareCodeNumberEditText = screenCareValidatorBinding.screenCareValidatorFirst;
        this.mValidationCareCodeTextEditText = screenCareValidatorBinding.screenCareValidatorSecond;
        this.mErrorCareCodeTextView = screenCareValidatorBinding.textViewCareAuthenticationError;
        this.mButton = screenCareValidatorBinding.buttonCareValidator;
        this.mButtonText = screenCareValidatorBinding.buttonCareValidatorText;
        this.mButtonArrow = screenCareValidatorBinding.buttonCareValidatorArrow;
        this.mButton.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.onboarding.CareAuthenticationScreen$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m266x18f8f45c(view2);
            }
        });
        initEditTextCareCode();
        FirebaseAnalytics.getInstance(getContext()).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_OUT_OF_THE_BOX_PIN_REQUEST.getTag(), null);
        openKeyBoard();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$0$com-texa-careapp-app-onboarding-CareAuthenticationScreen, reason: not valid java name */
    public /* synthetic */ void m266x18f8f45c(View view) {
        onCareAuthenticationClicked();
    }

    @Override // com.texa.care.navigation.Screen
    public void onResume() {
        super.onResume();
        this.mTexaProfileDelegate.setPassword("");
        changeButtonColor();
        Utils.safeDispose(this.connectionDisposable);
        this.connectionDisposable = this.mRxCommunication.observeCommunicationStatus().distinctUntilChanged().subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.texa.careapp.app.onboarding.CareAuthenticationScreen$$ExternalSyntheticLambda5
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m273x827de9c5((CommunicationStatus) obj);
            }
        }, MainActivity$$ExternalSyntheticLambda1.INSTANCE);
    }

    /* JADX INFO: renamed from: lambda$onResume$1$com-texa-careapp-app-onboarding-CareAuthenticationScreen, reason: not valid java name */
    public /* synthetic */ void m273x827de9c5(CommunicationStatus communicationStatus) throws Exception {
        if (communicationStatus.equals(CommunicationStatus.CONNECTING) || communicationStatus.equals(CommunicationStatus.CONNECTED) || (this.mActivity instanceof OnBoardingActivity)) {
            return;
        }
        goBack();
    }

    @Override // com.texa.care.navigation.Screen
    public void onPause() {
        super.onPause();
        Utils.safeDispose(this.connectionDisposable);
        Utils.safeDispose(this.firmwareVersionDisposable);
    }

    private void openKeyBoard() {
        ((InputMethodManager) getContext().getSystemService("input_method")).showSoftInput(this.mValidationCareCodeNumberEditText, 1);
        this.mValidationCareCodeNumberEditText.requestFocus();
    }

    private void closeKeyBoard() {
        if (this.mValidationCareCodeTextEditText != null) {
            ((InputMethodManager) getContext().getSystemService("input_method")).hideSoftInputFromWindow(this.mValidationCareCodeTextEditText.getWindowToken(), 0);
        }
    }

    private void initEditTextCareCode() {
        this.mValidationCareCodeNumberEditText.requestFocus();
        this.mActivity.getWindow().setSoftInputMode(4);
        this.mValidationCareCodeNumberEditText.addTextChangedListener(new TextWatcher() { // from class: com.texa.careapp.app.onboarding.CareAuthenticationScreen.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (editable.toString().length() == CareAuthenticationScreen.MAX_NUMBER_OF_CHARACTERS) {
                    CareAuthenticationScreen.this.mValidationCareCodeTextEditText.requestFocus();
                } else {
                    CareAuthenticationScreen careAuthenticationScreen = CareAuthenticationScreen.this;
                    careAuthenticationScreen.setPositive(careAuthenticationScreen.mValidationCareCodeNumberEditText);
                }
            }
        });
        this.mValidationCareCodeTextEditText.addTextChangedListener(new TextWatcher() { // from class: com.texa.careapp.app.onboarding.CareAuthenticationScreen.2
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                if (charSequence.toString().length() == 0) {
                    CareAuthenticationScreen.this.mValidationCareCodeNumberEditText.requestFocus();
                }
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (editable.toString().length() == CareAuthenticationScreen.MAX_NUMBER_OF_CHARACTERS) {
                    CareAuthenticationScreen careAuthenticationScreen = CareAuthenticationScreen.this;
                    careAuthenticationScreen.changeBackgroundAndTextColor(careAuthenticationScreen.mValidationCareCodeTextEditText, CareAuthenticationScreen.this.isValidCode(editable.toString()));
                    CareAuthenticationScreen.this.changeButtonColor();
                } else {
                    CareAuthenticationScreen careAuthenticationScreen2 = CareAuthenticationScreen.this;
                    careAuthenticationScreen2.setPositive(careAuthenticationScreen2.mValidationCareCodeTextEditText);
                }
            }
        });
        this.mValidationCareCodeNumberEditText.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.texa.careapp.app.onboarding.CareAuthenticationScreen$$ExternalSyntheticLambda1
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                this.f$0.m267x77fbd26b(view, z);
            }
        });
        this.mValidationCareCodeTextEditText.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.texa.careapp.app.onboarding.CareAuthenticationScreen$$ExternalSyntheticLambda2
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                this.f$0.m268x4e8e98a(view, z);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$initEditTextCareCode$2$com-texa-careapp-app-onboarding-CareAuthenticationScreen, reason: not valid java name */
    public /* synthetic */ void m267x77fbd26b(View view, boolean z) {
        changeBackgroundAndTextColor((EditText) view, isValidCode(getText(this.mValidationCareCodeNumberEditText)));
        changeButtonColor();
    }

    /* JADX INFO: renamed from: lambda$initEditTextCareCode$3$com-texa-careapp-app-onboarding-CareAuthenticationScreen, reason: not valid java name */
    public /* synthetic */ void m268x4e8e98a(View view, boolean z) {
        changeBackgroundAndTextColor((EditText) view, isValidCode(getText(this.mValidationCareCodeTextEditText)));
        changeButtonColor();
    }

    private String getText(EditText editText) {
        return editText != null ? editText.getText().toString() : "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPositive(EditText editText) {
        editText.setBackgroundResource(R.drawable.edit_text_gray_border);
        editText.setTextColor(Utils.getColorResource(getContext(), R.color.primary_text));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeButtonColor() {
        if (this.mButton != null) {
            if (isValidCode(getText(this.mValidationCareCodeTextEditText)) && isValidCode(getText(this.mValidationCareCodeNumberEditText))) {
                this.mButton.setEnabled(true);
                this.mButtonText.setTextColor(Color.parseColor("#8BC34A"));
                this.mButtonArrow.setColorFilter(Color.parseColor("#8BC34A"));
            } else {
                this.mButton.setEnabled(false);
                this.mButtonText.setTextColor(Color.parseColor("#808080"));
                this.mButtonArrow.setColorFilter(Color.parseColor("#808080"));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeBackgroundAndTextColor(EditText editText, boolean z) {
        if (z || Utils.isEmpty(editText.getText().toString())) {
            setPositive(editText);
        } else {
            editText.setBackgroundResource(R.drawable.edit_text_red_border);
            editText.setTextColor(Utils.getColorResource(getContext(), R.color.primary_red));
        }
    }

    @Override // com.texa.care.navigation.Screen
    public boolean onBackPressed() {
        return super.onBackPressed();
    }

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return TAG;
    }

    private String getCarePsw(EditText editText, EditText editText2) {
        return (editText.getText().toString().trim() + editText2.getText().toString().trim()).toUpperCase();
    }

    private void onCareAuthenticationClicked() {
        final String upperCase = getCarePsw(this.mValidationCareCodeNumberEditText, this.mValidationCareCodeTextEditText).toUpperCase();
        if (upperCase.length() > 1) {
            hideError();
            if (!this.isProgressShown) {
                createProgressDialogScreen(null);
            }
            this.mTexaProfileDelegate.setPassword(upperCase);
            if (this.mProfile.isReady()) {
                onDongleReady(upperCase);
                return;
            }
            try {
                this.mProfile.forceAuthentication(new Callback() { // from class: com.texa.careapp.app.onboarding.CareAuthenticationScreen$$ExternalSyntheticLambda3
                    @Override // com.texa.carelib.core.Callback
                    public final void onCompleted(Object obj) {
                        this.f$0.m271x1cdd1b29(upperCase, (AuthenticationCompletedEvent) obj);
                    }
                });
                return;
            } catch (CareLibException unused) {
                onError(null);
                Timber.d("%s authentication canDoIt= %s", TAG, false);
                return;
            }
        }
        onError(null);
    }

    /* JADX INFO: renamed from: lambda$onCareAuthenticationClicked$4$com-texa-careapp-app-onboarding-CareAuthenticationScreen, reason: not valid java name */
    public /* synthetic */ void m271x1cdd1b29(String str, AuthenticationCompletedEvent authenticationCompletedEvent) {
        String string;
        if (this.isProgressShown) {
            dismissProgressDialogScreen();
        }
        CareError error = authenticationCompletedEvent.getError();
        if (error == null) {
            onDongleReady(str);
            FirebaseAnalytics.getInstance(getContext()).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_OUT_OF_THE_BOX_DONGLE_CONNECTED.getTag(), null);
            return;
        }
        int errorCode = error.getErrorCode();
        if (errorCode == 6) {
            string = getContext().getString(R.string.care_error_wrong_pin);
        } else if (errorCode == 19) {
            string = getContext().getString(R.string.care_error_connection_lost);
        } else if (errorCode == 21) {
            string = getContext().getString(R.string.care_error_not_connected);
        } else {
            string = getContext().getString(R.string.error_care_connection_failed);
        }
        onError(string);
        this.mLoggerManager.log(ServerLogModel.LogEvent.CARE_CONN, ServerLogModel.ResultForLog.FAILED, ServerLogModel.LogNote.PIN_ERROR);
    }

    private void onDongleReady(String str) {
        Timber.d(TAG, "no errors");
        hideError();
        closeKeyBoard();
        onAuthenticationCompleted(str);
    }

    private void onAuthenticationCompleted(String str) {
        DeviceInfo deviceInfo;
        Utils.resetAllSelectedDongleFlag(this.mDongleDataManager);
        DongleModel dongleModelFromMacAddress = this.mDeviceInfo.getAddress() != null ? DongleModel.fromMacAddress(this.mDeviceInfo.getAddress()) : null;
        if (dongleModelFromMacAddress == null && this.mDeviceInfo.getName() != null) {
            dongleModelFromMacAddress = DongleModel.fromMacAddress(this.mDeviceInfo.getName());
        }
        if (dongleModelFromMacAddress == null && (deviceInfo = this.mDeviceInfo) != null) {
            dongleModelFromMacAddress = DongleModel.from(deviceInfo);
        }
        dongleModelFromMacAddress.setPin(str, this.mArmadilloSharedPreferences);
        if (this.mDongleDataManager.getDongleModel() != null) {
            Log.d(TAG, "a dongle was previously configured");
        } else {
            Log.d(TAG, "first installation");
        }
        if (this.mActivity instanceof OnBoardingActivity) {
            Utils.safeDispose(this.firmwareVersionDisposable);
            this.firmwareVersionDisposable = dongleModelFromMacAddress.observerFirmwareVersion(this.mICareObserver).subscribe(new Consumer() { // from class: com.texa.careapp.app.onboarding.CareAuthenticationScreen$$ExternalSyntheticLambda4
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) throws Exception {
                    this.f$0.m269x28b5b973((DongleModel) obj);
                }
            }, new Consumer() { // from class: com.texa.careapp.app.onboarding.CareAuthenticationScreen$$ExternalSyntheticLambda6
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) throws Exception {
                    this.f$0.m270xb5a2d092((Throwable) obj);
                }
            });
        } else {
            goBack();
        }
    }

    /* JADX INFO: renamed from: lambda$onAuthenticationCompleted$5$com-texa-careapp-app-onboarding-CareAuthenticationScreen, reason: not valid java name */
    public /* synthetic */ void m269x28b5b973(DongleModel dongleModel) throws Exception {
        dismissProgressDialogScreen();
        getNavigator().clearBackStack();
        goTo(new StartEngineScreen((OnBoardingActivity) this.mActivity));
    }

    /* JADX INFO: renamed from: lambda$onAuthenticationCompleted$6$com-texa-careapp-app-onboarding-CareAuthenticationScreen, reason: not valid java name */
    public /* synthetic */ void m270xb5a2d092(Throwable th) throws Exception {
        Timber.e(th, "ON ERROR SAVING DONGLE", new Object[0]);
        dismissProgressDialogScreen();
    }

    private void onError(final String str) {
        dismissProgressDialogScreen();
        this.mActivity.runOnUiThread(new Runnable() { // from class: com.texa.careapp.app.onboarding.CareAuthenticationScreen$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m272x55d23e3c(str);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$onError$7$com-texa-careapp-app-onboarding-CareAuthenticationScreen, reason: not valid java name */
    public /* synthetic */ void m272x55d23e3c(String str) {
        this.mValidationCareCodeNumberEditText.requestFocus();
        this.mValidationCareCodeNumberEditText.setText("");
        this.mValidationCareCodeTextEditText.setText("");
        if (str != null) {
            this.mErrorCareCodeTextView.setText(str);
        }
        this.mErrorCareCodeTextView.setVisibility(0);
    }

    private void hideError() {
        this.mErrorCareCodeTextView.setText("");
        this.mErrorCareCodeTextView.setVisibility(8);
    }

    private void createProgressDialogScreen(String str) {
        if (this.mProgressDialogFragment == null) {
            this.mProgressDialogFragment = new ProgressDialogFragment();
        }
        this.mProgressDialogFragment.setMessage(str);
        this.mProgressDialogFragment.show(getNavigator().getFragmentManager(), NotificationCompat.CATEGORY_PROGRESS);
        this.isProgressShown = true;
    }

    private void dismissProgressDialogScreen() {
        ProgressDialogFragment progressDialogFragment = this.mProgressDialogFragment;
        if (progressDialogFragment != null) {
            progressDialogFragment.dismissAllowingStateLoss();
            this.isProgressShown = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isValidCode(String str) {
        return Pattern.compile("^[0-9A-F]{4}$").matcher(str).find();
    }

    @Override // com.texa.care.navigation.Screen
    public ScreenType getType() {
        return this.mActivity instanceof OnBoardingActivity ? ScreenType.DEFAULT : ScreenType.DIALOG_FULL_WIDTH;
    }
}
