package com.texa.careapp.app.auth;

import android.content.Intent;
import android.text.Editable;
import android.text.SpannableString;
import android.text.TextWatcher;
import android.text.style.UnderlineSpan;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.careapp.CareApplication;
import com.texa.careapp.app.auth.AcceptTermsOfServiceAndPolicyScreenDialog;
import com.texa.careapp.databinding.ScreenEmailAddressBinding;
import com.texa.careapp.networking.RegistrationInfo;
import com.texa.careapp.utils.FormValidator;
import com.texa.careapp.utils.RetrofitErrorParser;
import com.texa.careapp.utils.UserDataManager;
import com.texa.careapp.utils.Utils;
import com.texa.careapp.utils.webviewsection.WebViewSectionActivity;
import com.texa.carelib.profile.Profile;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;

/* JADX INFO: loaded from: classes2.dex */
public class SignUpEmailScreen extends Screen {
    private static final String TAG = "SignUpEmailScreen";
    private ScreenEmailAddressBinding binding;
    private LoginActivity mActivity;

    @Inject
    protected EventBus mEventBus;

    @Inject
    protected FormValidator mFormValidator;

    @Inject
    protected Profile mProfile;

    @Inject
    protected RetrofitErrorParser mRetrofitErrorParser;

    @Inject
    protected UserDataManager mUserDataManager;
    private RegistrationInfo registrationInfo;
    private SignInScreen signInScreen;

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.screen_email_address;
    }

    SignUpEmailScreen(CareApplication careApplication, SignInScreen signInScreen, LoginActivity loginActivity) {
        careApplication.component().inject(this);
        this.signInScreen = signInScreen;
        this.registrationInfo = signInScreen.getRegistrationInfo();
        this.mActivity = loginActivity;
    }

    @Override // com.texa.care.navigation.Screen
    public void onDestroyView() {
        super.onDestroyView();
        this.mEventBus.unregister(this);
    }

    @Override // com.texa.care.navigation.Screen
    public void onPause() {
        super.onPause();
        this.mEventBus.unregister(this);
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        ScreenEmailAddressBinding screenEmailAddressBinding = (ScreenEmailAddressBinding) DataBindingUtil.bind(view);
        this.binding = screenEmailAddressBinding;
        screenEmailAddressBinding.screenEmailAddressNextLayout.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.auth.SignUpEmailScreen$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.goToPasswordConfirmation(view2);
            }
        });
        this.binding.screenEmailAddressAlreadyRegistered.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.auth.SignUpEmailScreen$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m174xee305896(view2);
            }
        });
        this.binding.screenSignupEmailTermsOfServiceLabel.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.auth.SignUpEmailScreen$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m175x88d11b17(view2);
            }
        });
        this.binding.screenSignupEmailPrivacyPolicyLabel.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.auth.SignUpEmailScreen$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m176x2371dd98(view2);
            }
        });
        initUserAlreadyRegistered();
        checkEmailInput();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$0$com-texa-careapp-app-auth-SignUpEmailScreen, reason: not valid java name */
    public /* synthetic */ void m174xee305896(View view) {
        getNavigator().goBack();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$1$com-texa-careapp-app-auth-SignUpEmailScreen, reason: not valid java name */
    public /* synthetic */ void m175x88d11b17(View view) {
        gotoTermsOfServiceScreen();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$2$com-texa-careapp-app-auth-SignUpEmailScreen, reason: not valid java name */
    public /* synthetic */ void m176x2371dd98(View view) {
        gotoPrivacyPolicyScreen();
    }

    private void initUserAlreadyRegistered() {
        String string = getContext().getString(R.string.email_address_already_registered);
        SpannableString spannableString = new SpannableString(string);
        spannableString.setSpan(new UnderlineSpan(), 0, string.length(), 0);
        this.binding.screenEmailAddressAlreadyRegistered.setText(spannableString);
    }

    private void checkEmailInput() {
        this.binding.screenSignupEmailAddressEmailEditText.addTextChangedListener(new TextWatcher() { // from class: com.texa.careapp.app.auth.SignUpEmailScreen.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (editable.length() <= 0) {
                    SignUpEmailScreen.this.binding.screenSignupEmailAddressEmailInput.setError(SignUpEmailScreen.this.getContext().getString(R.string.error_edit_email));
                } else {
                    SignUpEmailScreen.this.binding.screenSignupEmailAddressEmailInput.setError(null);
                }
            }
        });
        this.binding.screenSignupEmailAddressEmailEditText.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.texa.careapp.app.auth.SignUpEmailScreen$$ExternalSyntheticLambda4
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                this.f$0.m177xbba8143f(view, z);
            }
        });
        this.binding.screenSignupEmailAddressEmailEditText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.texa.careapp.app.auth.SignUpEmailScreen$$ExternalSyntheticLambda5
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                return this.f$0.m178x5648d6c0(textView, i, keyEvent);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$checkEmailInput$3$com-texa-careapp-app-auth-SignUpEmailScreen, reason: not valid java name */
    public /* synthetic */ void m177xbba8143f(View view, boolean z) {
        if (z) {
            return;
        }
        if (!Utils.isEmail(Utils.getValue(this.binding.screenSignupEmailAddressEmailEditText))) {
            this.binding.screenSignupEmailAddressEmailInput.setError(getContext().getString(R.string.error_edit_email));
        } else if (Utils.getValue(this.binding.screenSignupEmailAddressEmailEditText).length() > 0) {
            this.binding.screenSignupEmailAddressEmailInput.setError(null);
        }
    }

    /* JADX INFO: renamed from: lambda$checkEmailInput$4$com-texa-careapp-app-auth-SignUpEmailScreen, reason: not valid java name */
    public /* synthetic */ boolean m178x5648d6c0(TextView textView, int i, KeyEvent keyEvent) {
        goToPasswordConfirmation(textView);
        ((InputMethodManager) getContext().getSystemService("input_method")).hideSoftInputFromWindow(textView.getWindowToken(), 0);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void goToPasswordConfirmation(View view) {
        if (validateEmailForm()) {
            goTo(new AcceptTermsOfServiceAndPolicyScreenDialog(1, this.mActivity, this.signInScreen, view));
        }
    }

    @Subscribe
    public void onEvent(AcceptTermsOfServiceAndPolicyScreenDialog.TermsAcceptedEvent termsAcceptedEvent) {
        this.registrationInfo.setUsername(Utils.getValue(this.binding.screenSignupEmailAddressEmailEditText));
        goTo(new SignUpPasswordScreen((CareApplication) getNavigator().getApplication(), this.signInScreen, this.mActivity));
    }

    private void gotoTermsOfServiceScreen() {
        Intent intent = new Intent(getContext(), (Class<?>) WebViewSectionActivity.class);
        intent.setFlags(268435456);
        intent.putExtra(WebViewSectionActivity.WEB_VIEW_TYPE, 1);
        getContext().startActivity(intent);
    }

    private void gotoPrivacyPolicyScreen() {
        Intent intent = new Intent(getContext(), (Class<?>) WebViewSectionActivity.class);
        intent.setFlags(268435456);
        intent.putExtra(WebViewSectionActivity.WEB_VIEW_TYPE, 2);
        getContext().startActivity(intent);
    }

    @Override // com.texa.care.navigation.Screen
    public void onResume() {
        super.onResume();
        this.mEventBus.register(this);
    }

    private boolean validateEmailForm() {
        boolean zValidateEmailField = this.mFormValidator.validateEmailField(this.binding.screenSignupEmailAddressEmailInput, this.binding.screenSignupEmailAddressEmailEditText);
        if (!zValidateEmailField) {
            Log.e(TAG, "Form not valid");
        }
        return zValidateEmailField;
    }

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return TAG;
    }
}
