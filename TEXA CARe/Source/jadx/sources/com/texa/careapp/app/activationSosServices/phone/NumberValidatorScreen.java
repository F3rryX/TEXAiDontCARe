package com.texa.careapp.app.activationSosServices.phone;

import android.content.SharedPreferences;
import android.telephony.TelephonyManager;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;
import androidx.databinding.DataBindingUtil;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.careapp.CareApplication;
import com.texa.careapp.databinding.ScreenNumberValidatorBinding;
import com.texa.careapp.emergency.ContactType;
import com.texa.careapp.model.ValidateContactModel;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.utils.CountryAdapter;
import com.texa.careapp.utils.Iso2Phone;
import com.texa.careapp.utils.UserDataManager;
import com.texa.careapp.utils.Utils;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.util.Locale;
import javax.inject.Inject;

/* JADX INFO: loaded from: classes2.dex */
public class NumberValidatorScreen extends Screen {
    private static String TAG = "NumberValidatorScreen";
    private ActivationPhoneNumberActivity mActivity;
    private CountryAdapter mCountryAdapter;
    private Spinner mCountrySpinner;
    private final CompositeDisposable mDisposable = new CompositeDisposable();
    private EditText mPrefixEditText;

    @Inject
    protected SharedPreferences mSharedPreferences;

    @Inject
    protected TexaCareApiServiceUser mTexaCareApiService;

    @Inject
    protected UserDataManager mUserDataManager;
    private EditText mValidationCodeEditText;
    private TextView mValidationPhoneTextView;
    private String phoneNumber;
    private ValidateContactModel validate;
    private String validationCode;

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.screen_number_validator;
    }

    NumberValidatorScreen(ActivationPhoneNumberActivity activationPhoneNumberActivity) {
        this.mActivity = activationPhoneNumberActivity;
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        ((CareApplication) getNavigator().getApplication()).component().inject(this);
        ScreenNumberValidatorBinding screenNumberValidatorBinding = (ScreenNumberValidatorBinding) DataBindingUtil.bind(view);
        this.mValidationPhoneTextView = screenNumberValidatorBinding.textViewPhoneValidator;
        this.mValidationCodeEditText = screenNumberValidatorBinding.signupPhoneValidator;
        this.mPrefixEditText = screenNumberValidatorBinding.prefixPhoneValidator;
        this.mCountrySpinner = screenNumberValidatorBinding.spinnerCountryPhoneValidator;
        screenNumberValidatorBinding.buttonPhoneValidator.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.activationSosServices.phone.NumberValidatorScreen$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m153x3769263d(view2);
            }
        });
        this.validate = new ValidateContactModel();
        this.phoneNumber = Utils.getTempUserPhoneNumber(this.mSharedPreferences);
        Utils.closeKeyboard(getContext(), this.mValidationCodeEditText);
        initInsertNumberView();
        initCountrySpinner();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$0$com-texa-careapp-app-activationSosServices-phone-NumberValidatorScreen, reason: not valid java name */
    public /* synthetic */ void m153x3769263d(View view) {
        onSignUpClicked();
    }

    private void initCountrySpinner() {
        CountryAdapter countryAdapter = new CountryAdapter(getContext());
        this.mCountryAdapter = countryAdapter;
        this.mCountrySpinner.setAdapter((SpinnerAdapter) countryAdapter);
        this.mPrefixEditText.setEnabled(false);
        this.mCountrySpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.texa.careapp.app.activationSosServices.phone.NumberValidatorScreen.1
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                NumberValidatorScreen.this.mPrefixEditText.setText(NumberValidatorScreen.this.getPrefix(i));
            }
        });
        setCurrentCountry();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getPrefix(int i) {
        return Iso2Phone.getPhone(this.mCountryAdapter.getCountryCode(i));
    }

    private void setCurrentCountry() {
        String displayCountry;
        TelephonyManager telephonyManager = (TelephonyManager) getContext().getSystemService("phone");
        if (telephonyManager != null && telephonyManager.getSimState() != 1) {
            displayCountry = new Locale("", telephonyManager.getSimCountryIso()).getDisplayCountry();
        } else {
            displayCountry = Locale.getDefault().getDisplayCountry();
        }
        this.mCountrySpinner.setSelection(this.mCountryAdapter.getCountryPosition(displayCountry));
        this.mPrefixEditText.setText(getPrefix(this.mCountrySpinner.getSelectedItemPosition()));
    }

    private void initInsertNumberView() {
        this.mValidationPhoneTextView.setText(getContext().getResources().getString(R.string.description_phone_number_validation_step1));
        this.mValidationCodeEditText.requestFocus();
        String str = this.phoneNumber;
        if (str != null) {
            this.mValidationCodeEditText.setText(str);
        }
        this.mValidationCodeEditText.addTextChangedListener(new TextWatcher() { // from class: com.texa.careapp.app.activationSosServices.phone.NumberValidatorScreen.2
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (NumberValidatorScreen.this.mValidationCodeEditText != null) {
                    if (editable.length() <= 0) {
                        NumberValidatorScreen.this.mValidationCodeEditText.setError(NumberValidatorScreen.this.getContext().getResources().getString(R.string.error_edit_phone_number));
                    } else {
                        NumberValidatorScreen.this.mValidationCodeEditText.setError(null);
                    }
                }
            }
        });
    }

    @Override // com.texa.care.navigation.Screen
    public boolean onBackPressed() {
        this.validate.value = "";
        return super.onBackPressed();
    }

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return TAG;
    }

    private void onSignUpClicked() {
        if (!Utils.isPhoneNumber(getPhoneNumber())) {
            Log.e(TAG, "Phone number not valid");
            this.mValidationCodeEditText.setError(getContext().getResources().getString(R.string.error_edit_phone_number));
        } else {
            this.mValidationCodeEditText.setError(null);
            validateNumberRequestAPI();
        }
    }

    public String getPhoneNumber() {
        return Utils.getValue(this.mPrefixEditText) + Utils.getValue(this.mValidationCodeEditText);
    }

    private void validateNumberRequestAPI() {
        this.validate.value = getPhoneNumber();
        this.validate.type = ContactType.USER_CELLPHONE.toString();
        this.mDisposable.add(this.mTexaCareApiService.validateUserContact(this.validate).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.texa.careapp.app.activationSosServices.phone.NumberValidatorScreen$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m154x82d4b828((NumberValidationResponse) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.activationSosServices.phone.NumberValidatorScreen$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m155x51f6d07((Throwable) obj);
            }
        }));
    }

    /* JADX INFO: renamed from: lambda$validateNumberRequestAPI$1$com-texa-careapp-app-activationSosServices-phone-NumberValidatorScreen, reason: not valid java name */
    public /* synthetic */ void m154x82d4b828(NumberValidationResponse numberValidationResponse) throws Exception {
        Log.i(TAG, numberValidationResponse.toString());
        String code = numberValidationResponse.getCode();
        this.validationCode = code;
        if (code != null) {
            Log.i(TAG, code);
            goTo(new NumberValidatorFinalStepScreen(this.mActivity, this.validate, this.validationCode));
        } else {
            Log.e(TAG, "validationCode from Gson null");
        }
    }

    /* JADX INFO: renamed from: lambda$validateNumberRequestAPI$2$com-texa-careapp-app-activationSosServices-phone-NumberValidatorScreen, reason: not valid java name */
    public /* synthetic */ void m155x51f6d07(Throwable th) throws Exception {
        Toast.makeText(getContext(), getContext().getResources().getString(R.string.error_on_validation), 1).show();
    }

    @Override // com.texa.care.navigation.Screen
    public void onDestroyView() {
        super.onDestroyView();
        Utils.safeDispose(this.mDisposable);
    }
}
