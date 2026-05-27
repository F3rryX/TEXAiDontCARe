package com.texa.careapp.app.auth;

import android.app.DatePickerDialog;
import android.content.SharedPreferences;
import android.telephony.TelephonyManager;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import com.google.android.material.textfield.TextInputLayout;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.careapp.CareApplication;
import com.texa.careapp.Constants;
import com.texa.careapp.app.permission.PermissionActivity;
import com.texa.careapp.databinding.ScreenPersonalDataBinding;
import com.texa.careapp.networking.RegistrationInfo;
import com.texa.careapp.utils.DatePickerUtils;
import com.texa.careapp.utils.FormValidator;
import com.texa.careapp.utils.LoginHelperRx;
import com.texa.careapp.utils.ProgressDialogFragment;
import com.texa.careapp.utils.RetrofitErrorParser;
import com.texa.careapp.utils.UserDataManager;
import com.texa.careapp.utils.Utils;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import javax.inject.Inject;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class SignUpPersonalDataScreen extends Screen {
    public static final String TAG = "SignUpPersonalDataScreen";
    private DateFormat DATE_FORMAT = new SimpleDateFormat(Constants.DEFAULT_FORMAT_DATE, Locale.getDefault());
    private EditText birthday;
    private TextInputLayout birthdayInputLayout;
    private LoginActivity mActivity;
    private Calendar mCalendar;

    @Inject
    FormValidator mFormValidator;
    private List<TextInputLayout> mInputRequiredFields;

    @Inject
    LoginHelperRx mLoginHelper;
    private ProgressDialogFragment mProgressDialogFragment;
    private List<EditText> mRequiredFields;

    @Inject
    RetrofitErrorParser mRetrofitErrorParser;

    @Inject
    SharedPreferences mSharedPreferences;

    @Inject
    UserDataManager mUserDataManager;
    private EditText name;
    private TextInputLayout nameInputLayout;
    private EditText phoneNumber;
    private TextInputLayout phoneNumberInputLayout;
    private RegistrationInfo registrationInfo;
    private Disposable registrationSub;
    private EditText surname;
    private TextInputLayout surnameInputLayout;

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.screen_personal_data;
    }

    SignUpPersonalDataScreen(CareApplication careApplication, SignInScreen signInScreen, LoginActivity loginActivity) {
        careApplication.component().inject(this);
        this.registrationInfo = signInScreen.getRegistrationInfo();
        this.mRequiredFields = new ArrayList();
        this.mInputRequiredFields = new ArrayList();
        this.mActivity = loginActivity;
        Calendar calendar = Calendar.getInstance();
        this.mCalendar = calendar;
        calendar.setTimeZone(TimeZone.getTimeZone("UTC"));
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        ScreenPersonalDataBinding screenPersonalDataBinding = (ScreenPersonalDataBinding) DataBindingUtil.bind(view);
        this.nameInputLayout = screenPersonalDataBinding.screenSignupPersonalDataNameInput;
        this.name = screenPersonalDataBinding.screenSignupPersonalDataNameEditText;
        this.surnameInputLayout = screenPersonalDataBinding.screenSignupPersonalDataSurnameInput;
        this.surname = screenPersonalDataBinding.screenSignupPersonalDataSurnameEditText;
        this.phoneNumberInputLayout = screenPersonalDataBinding.screenSignupPersonalDataPhoneNumberInput;
        this.phoneNumber = screenPersonalDataBinding.screenSignupPersonalDataPhoneNumberEditText;
        this.birthdayInputLayout = screenPersonalDataBinding.screenSignupPersonalDataBirthdayInput;
        this.birthday = screenPersonalDataBinding.screenSignupPersonalDataBirthdayEditText;
        screenPersonalDataBinding.screenSignupPersonalDataCompleteRegistration.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.auth.SignUpPersonalDataScreen$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.completeRegistration(view2);
            }
        });
        this.birthday.setClickable(true);
        this.birthday.setFocusable(false);
        checkPersonalDataInput();
        this.birthday.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.auth.SignUpPersonalDataScreen$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m182x192da447(view2);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$1$com-texa-careapp-app-auth-SignUpPersonalDataScreen, reason: not valid java name */
    public /* synthetic */ void m182x192da447(View view) {
        DatePickerUtils.showDatePicker(this.mActivity, this.mCalendar, new DatePickerDialog.OnDateSetListener() { // from class: com.texa.careapp.app.auth.SignUpPersonalDataScreen$$ExternalSyntheticLambda0
            @Override // android.app.DatePickerDialog.OnDateSetListener
            public final void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
                this.f$0.m181xeb5509e8(datePicker, i, i2, i3);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$0$com-texa-careapp-app-auth-SignUpPersonalDataScreen, reason: not valid java name */
    public /* synthetic */ void m181xeb5509e8(DatePicker datePicker, int i, int i2, int i3) {
        this.mCalendar.set(i, i2, i3, 0, 0, 0);
        this.birthday.setText(this.DATE_FORMAT.format(this.mCalendar.getTime()));
    }

    public void completeRegistration(View view) {
        if (validatePersonalDataForm()) {
            TelephonyManager telephonyManager = (TelephonyManager) getContext().getSystemService("phone");
            Utils.saveTempUserPhoneNumber(this.mSharedPreferences, this.phoneNumber.getText().toString());
            this.registrationInfo.setFirstName(Utils.getValue(this.name));
            this.registrationInfo.setLastName(Utils.getValue(this.surname));
            this.registrationInfo.setBirthDate(this.mCalendar.getTime());
            this.registrationInfo.setPhoneNumber(Utils.getValue(this.phoneNumber));
            String upperCase = telephonyManager.getSimCountryIso().toUpperCase();
            if (upperCase.equals("")) {
                upperCase = Locale.getDefault().getCountry();
            }
            this.registrationInfo.setUserCountry(upperCase);
            registerUser();
        }
    }

    private void checkPersonalDataInput() {
        this.name.addTextChangedListener(new TextWatcher() { // from class: com.texa.careapp.app.auth.SignUpPersonalDataScreen.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                String string = editable.toString();
                if (editable.length() <= 0) {
                    SignUpPersonalDataScreen.this.nameInputLayout.setError(SignUpPersonalDataScreen.this.getContext().getString(R.string.error_edit_first_name));
                } else if (!Utils.isName(string)) {
                    SignUpPersonalDataScreen.this.nameInputLayout.setError(SignUpPersonalDataScreen.this.getContext().getString(R.string.character_not_valid));
                } else {
                    SignUpPersonalDataScreen.this.nameInputLayout.setError(null);
                }
            }
        });
        this.surname.addTextChangedListener(new TextWatcher() { // from class: com.texa.careapp.app.auth.SignUpPersonalDataScreen.2
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                String string = editable.toString();
                if (editable.length() <= 0) {
                    SignUpPersonalDataScreen.this.surnameInputLayout.setError(SignUpPersonalDataScreen.this.getContext().getString(R.string.error_edit_last_name));
                } else if (!Utils.isName(string)) {
                    SignUpPersonalDataScreen.this.surnameInputLayout.setError(SignUpPersonalDataScreen.this.getContext().getString(R.string.character_not_valid));
                } else {
                    SignUpPersonalDataScreen.this.surnameInputLayout.setError(null);
                }
            }
        });
        this.phoneNumber.addTextChangedListener(new TextWatcher() { // from class: com.texa.careapp.app.auth.SignUpPersonalDataScreen.3
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                String string = editable.toString();
                if (editable.length() <= 0) {
                    SignUpPersonalDataScreen.this.phoneNumberInputLayout.setError(SignUpPersonalDataScreen.this.getContext().getString(R.string.error_edit_phone_number));
                } else if (!Utils.isPhoneNumber(string)) {
                    SignUpPersonalDataScreen.this.phoneNumberInputLayout.setError(SignUpPersonalDataScreen.this.getContext().getString(R.string.character_not_valid));
                } else {
                    SignUpPersonalDataScreen.this.phoneNumberInputLayout.setError(null);
                }
            }
        });
        this.phoneNumber.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.texa.careapp.app.auth.SignUpPersonalDataScreen$$ExternalSyntheticLambda3
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                return this.f$0.m183x8fdad9e4(textView, i, keyEvent);
            }
        });
        this.mRequiredFields.add(this.name);
        this.mRequiredFields.add(this.surname);
        this.mRequiredFields.add(this.phoneNumber);
        this.mRequiredFields.add(this.birthday);
        this.mInputRequiredFields.add(this.nameInputLayout);
        this.mInputRequiredFields.add(this.surnameInputLayout);
        this.mInputRequiredFields.add(this.phoneNumberInputLayout);
        this.mInputRequiredFields.add(this.birthdayInputLayout);
    }

    /* JADX INFO: renamed from: lambda$checkPersonalDataInput$2$com-texa-careapp-app-auth-SignUpPersonalDataScreen, reason: not valid java name */
    public /* synthetic */ boolean m183x8fdad9e4(TextView textView, int i, KeyEvent keyEvent) {
        completeRegistration(textView);
        ((InputMethodManager) getContext().getSystemService("input_method")).hideSoftInputFromWindow(textView.getWindowToken(), 0);
        return false;
    }

    private boolean validatePersonalDataForm() {
        boolean z = this.mFormValidator.validateRequiredFields(this.mInputRequiredFields, this.mRequiredFields) && Utils.isName(Utils.getValue(this.name)) && Utils.isName(Utils.getValue(this.surname)) && Utils.isPhoneNumber(Utils.getValue(this.phoneNumber)) && !Utils.isEmpty(Utils.getValue(this.birthday));
        if (!z) {
            Log.e(TAG, "Form not valid");
        }
        return z;
    }

    private void registerUser() {
        createProgressDialogScreen();
        this.registrationSub = this.mLoginHelper.doRegistration(this.registrationInfo).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.texa.careapp.app.auth.SignUpPersonalDataScreen$$ExternalSyntheticLambda5
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m184xaef9b86d(obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.auth.SignUpPersonalDataScreen$$ExternalSyntheticLambda4
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m185xdcd252cc((Throwable) obj);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$registerUser$3$com-texa-careapp-app-auth-SignUpPersonalDataScreen, reason: not valid java name */
    public /* synthetic */ void m184xaef9b86d(Object obj) throws Exception {
        dismissProgressDialogScreen();
        this.mActivity.setDriverId();
        this.mActivity.startActivity(PermissionActivity.buildIntent(getContext()));
        this.mActivity.finish();
    }

    /* JADX INFO: renamed from: lambda$registerUser$4$com-texa-careapp-app-auth-SignUpPersonalDataScreen, reason: not valid java name */
    public /* synthetic */ void m185xdcd252cc(Throwable th) throws Exception {
        dismissProgressDialogScreen();
        Timber.w(th, "got exception in login", new Object[0]);
        this.mRetrofitErrorParser.parse(th);
    }

    private void createProgressDialogScreen() {
        if (this.mProgressDialogFragment == null) {
            this.mProgressDialogFragment = new ProgressDialogFragment();
        }
        if (this.mProgressDialogFragment.isAdded()) {
            return;
        }
        this.mProgressDialogFragment.show(getNavigator().getFragmentManager(), getContext().getString(R.string.login_in_progress));
    }

    private void dismissProgressDialogScreen() {
        ProgressDialogFragment progressDialogFragment = this.mProgressDialogFragment;
        if (progressDialogFragment != null) {
            progressDialogFragment.dismiss();
        }
    }

    @Override // com.texa.care.navigation.Screen
    public void onResume() {
        super.onResume();
    }

    @Override // com.texa.care.navigation.Screen
    public void onDestroyView() {
        super.onDestroyView();
    }

    @Override // com.texa.care.navigation.Screen
    public void onPause() {
        super.onPause();
        Utils.safeDispose(this.registrationSub);
    }

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return TAG;
    }
}
