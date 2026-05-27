package com.texa.careapp.app.auth;

import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import com.google.android.material.textfield.TextInputLayout;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.careapp.CareApplication;
import com.texa.careapp.databinding.ScreenPasswordCreationBinding;
import com.texa.careapp.networking.RegistrationInfo;
import com.texa.careapp.utils.FormValidator;
import com.texa.careapp.utils.RetrofitErrorParser;
import com.texa.careapp.utils.UserDataManager;
import com.texa.careapp.utils.Utils;
import com.texa.carelib.profile.Profile;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;

/* JADX INFO: loaded from: classes2.dex */
public class SignUpPasswordScreen extends Screen {
    private static final int MIN_PASSWORD_LENGTH = 6;
    public static final String TAG = "SignUpPasswordScreen";
    private LoginActivity mActivity;

    @Inject
    protected FormValidator mFormValidator;
    private List<TextInputLayout> mInputRequiredFields;

    @Inject
    protected Profile mProfile;
    private List<EditText> mRequiredFields;

    @Inject
    protected RetrofitErrorParser mRetrofitErrorParser;

    @Inject
    protected UserDataManager mUserDataManager;
    private EditText password;
    private EditText passwordConfirmation;
    private TextInputLayout passwordConfirmationInputLayout;
    private TextInputLayout passwordInputLayout;
    private RegistrationInfo registrationInfo;
    private SignInScreen signInScreen;

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.screen_password_creation;
    }

    SignUpPasswordScreen(CareApplication careApplication, SignInScreen signInScreen, LoginActivity loginActivity) {
        careApplication.component().inject(this);
        this.signInScreen = signInScreen;
        this.registrationInfo = signInScreen.getRegistrationInfo();
        this.mRequiredFields = new ArrayList();
        this.mInputRequiredFields = new ArrayList();
        this.mActivity = loginActivity;
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        ScreenPasswordCreationBinding screenPasswordCreationBinding = (ScreenPasswordCreationBinding) DataBindingUtil.bind(view);
        this.passwordInputLayout = screenPasswordCreationBinding.screenSignupPasswordCreationPasswordInput;
        this.password = screenPasswordCreationBinding.screenSignupPasswordCreationPasswordEditText;
        this.passwordConfirmationInputLayout = screenPasswordCreationBinding.screenSignupPasswordCreationPasswordConfirmInput;
        this.passwordConfirmation = screenPasswordCreationBinding.screenSignupPasswordCreationPasswordConfirmEditText;
        screenPasswordCreationBinding.screenSignupPasswordCreationNextLayout.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.auth.SignUpPasswordScreen$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m179xf75322b9(view2);
            }
        });
        checkPasswordInput();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$0$com-texa-careapp-app-auth-SignUpPasswordScreen, reason: not valid java name */
    public /* synthetic */ void m179xf75322b9(View view) {
        goToPersonalDataScreen();
    }

    private void goToPersonalDataScreen() {
        if (validatePasswordForm()) {
            this.registrationInfo.setPassword(Utils.getValue(this.password));
            goTo(new SignUpPersonalDataScreen((CareApplication) getNavigator().getApplication(), this.signInScreen, this.mActivity));
        }
    }

    private void checkPasswordInput() {
        this.password.addTextChangedListener(new TextWatcher() { // from class: com.texa.careapp.app.auth.SignUpPasswordScreen.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (SignUpPasswordScreen.this.password.isSelected()) {
                    if (editable.length() <= 0) {
                        SignUpPasswordScreen.this.passwordInputLayout.setError(SignUpPasswordScreen.this.getContext().getString(R.string.error_edit_psw));
                    } else {
                        SignUpPasswordScreen.this.passwordInputLayout.setError(null);
                    }
                }
            }
        });
        this.passwordConfirmation.addTextChangedListener(new TextWatcher() { // from class: com.texa.careapp.app.auth.SignUpPasswordScreen.2
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (SignUpPasswordScreen.this.passwordConfirmation.isSelected()) {
                    if (editable.length() <= 0) {
                        SignUpPasswordScreen.this.passwordConfirmationInputLayout.setError(SignUpPasswordScreen.this.getContext().getString(R.string.error_edit_confirm_psw));
                    } else {
                        SignUpPasswordScreen.this.passwordConfirmationInputLayout.setError(null);
                    }
                }
            }
        });
        this.passwordConfirmation.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.texa.careapp.app.auth.SignUpPasswordScreen$$ExternalSyntheticLambda1
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                return this.f$0.m180x2fdda627(textView, i, keyEvent);
            }
        });
        this.mRequiredFields.add(this.password);
        this.mRequiredFields.add(this.passwordConfirmation);
        this.mInputRequiredFields.add(this.passwordInputLayout);
        this.mInputRequiredFields.add(this.passwordConfirmationInputLayout);
    }

    /* JADX INFO: renamed from: lambda$checkPasswordInput$1$com-texa-careapp-app-auth-SignUpPasswordScreen, reason: not valid java name */
    public /* synthetic */ boolean m180x2fdda627(TextView textView, int i, KeyEvent keyEvent) {
        goToPersonalDataScreen();
        ((InputMethodManager) getContext().getSystemService("input_method")).hideSoftInputFromWindow(textView.getWindowToken(), 0);
        return false;
    }

    private boolean validatePasswordForm() {
        boolean z = this.mFormValidator.validateRequiredFields(this.mInputRequiredFields, this.mRequiredFields) && validatePassword();
        if (!z) {
            Log.e(TAG, "Form not valid");
        }
        return z;
    }

    private boolean validatePassword() {
        String value = Utils.getValue(this.password);
        if (value.length() < 6) {
            this.passwordInputLayout.setError(getContext().getString(R.string.password_length_error, 6));
            return false;
        }
        if (value.equals(Utils.getValue(this.passwordConfirmation))) {
            return true;
        }
        this.passwordConfirmationInputLayout.setError(getContext().getString(R.string.password_confirm_match_error));
        return false;
    }

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return TAG;
    }
}
