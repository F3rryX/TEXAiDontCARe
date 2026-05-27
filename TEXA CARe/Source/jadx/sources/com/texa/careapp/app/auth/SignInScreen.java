package com.texa.careapp.app.auth;

import android.app.NotificationManager;
import android.content.Intent;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import com.activeandroid.query.Delete;
import com.google.android.material.textfield.TextInputLayout;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.careapp.CareApplication;
import com.texa.careapp.app.MainActivity;
import com.texa.careapp.app.auth.AcceptTermsOfServiceAndPolicyScreenDialog;
import com.texa.careapp.app.permission.PermissionActivity;
import com.texa.careapp.databinding.ScreenSigninLayoutBinding;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.DongleModel;
import com.texa.careapp.model.UserModel;
import com.texa.careapp.networking.RegistrationInfo;
import com.texa.careapp.utils.FirebaseAnalyticsEventManager;
import com.texa.careapp.utils.FormValidator;
import com.texa.careapp.utils.LoginHelperRx;
import com.texa.careapp.utils.ProgressDialogFragment;
import com.texa.careapp.utils.RetrofitErrorParser;
import com.texa.careapp.utils.UserDataManager;
import com.texa.careapp.utils.Utils;
import com.texa.carelib.care.accessory.Accessory;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class SignInScreen extends Screen {
    private static final String TAG = "SignInScreen";
    private ScreenSigninLayoutBinding binding;
    private CareApplication careApplication;

    @Inject
    protected DongleDataManager dongleDataManager;
    private Disposable loginSub;

    @Inject
    protected Accessory mAccessory;
    private LoginActivity mActivity;

    @Inject
    protected EventBus mEventBus;

    @Inject
    protected FormValidator mFormValidator;
    private List<TextInputLayout> mInputRequiredFields;

    @Inject
    protected LoginHelperRx mLogInHelper;

    @Inject
    protected LoginHelperRx mLoginHelper;
    private ProgressDialogFragment mProgressDialogFragment;
    private List<EditText> mRequiredFields;

    @Inject
    protected RetrofitErrorParser mRetrofitErrorParser;

    @Inject
    protected UserDataManager mUserDataManager;

    @Inject
    protected NotificationManager notificationManager;
    private RegistrationInfo registrationInfo;

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.screen_signin_layout;
    }

    @Override // com.texa.care.navigation.Screen
    public int getTitle() {
        return 0;
    }

    public RegistrationInfo getRegistrationInfo() {
        return this.registrationInfo;
    }

    public SignInScreen(CareApplication careApplication, LoginActivity loginActivity) {
        this.careApplication = careApplication;
        this.mActivity = loginActivity;
        careApplication.component().inject(this);
        this.registrationInfo = new RegistrationInfo();
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(final View view) {
        this.binding = (ScreenSigninLayoutBinding) DataBindingUtil.bind(view);
        UserModel userCached = this.mUserDataManager.getUserCached();
        if (userCached != null && userCached.getUserName() != null) {
            this.binding.screenSigninEmailEditText.setText(userCached.getUserName());
        } else {
            this.binding.screenSigninEmailEditText.setText("");
        }
        this.binding.screenSigninPasswordEditText.setText("");
        this.binding.screenSigninPasswordEditText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.texa.careapp.app.auth.SignInScreen$$ExternalSyntheticLambda3
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                return this.f$0.m167x9d17d48(view, textView, i, keyEvent);
            }
        });
        this.binding.screenSigninPasswordInput.setErrorEnabled(true);
        this.binding.screenSigninEmailInput.setErrorEnabled(true);
        ArrayList arrayList = new ArrayList();
        this.mRequiredFields = arrayList;
        arrayList.add(this.binding.screenSigninEmailEditText);
        this.mRequiredFields.add(this.binding.screenSigninPasswordEditText);
        ArrayList arrayList2 = new ArrayList();
        this.mInputRequiredFields = arrayList2;
        arrayList2.add(this.binding.screenSigninEmailInput);
        this.mInputRequiredFields.add(this.binding.screenSigninPasswordInput);
        this.binding.screenSigninDescription.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.auth.SignInScreen$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m168x60ef6e27(view2);
            }
        });
        this.binding.screenSigninRegisterLabel.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.auth.SignInScreen$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m169xb80d5f06(view2);
            }
        });
        this.binding.screenSigninLoginButton.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.auth.SignInScreen$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.onSigninClicked(view2);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$0$com-texa-careapp-app-auth-SignInScreen, reason: not valid java name */
    public /* synthetic */ boolean m167x9d17d48(View view, TextView textView, int i, KeyEvent keyEvent) {
        if (i != 0 || !validateForm()) {
            return false;
        }
        signInButtonAction(view);
        return false;
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$1$com-texa-careapp-app-auth-SignInScreen, reason: not valid java name */
    public /* synthetic */ void m168x60ef6e27(View view) {
        recoverPassword();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$2$com-texa-careapp-app-auth-SignInScreen, reason: not valid java name */
    public /* synthetic */ void m169xb80d5f06(View view) {
        goToRegistrationScreen();
    }

    public void recoverPassword() {
        if (LoginActivity.ENABLE_RECOVER_PASSWORD) {
            goTo(new RecoverPasswordScreen(this.careApplication));
        }
    }

    public void goToRegistrationScreen() {
        UserModel userCached = this.mUserDataManager.getUserCached();
        if (userCached != null && userCached.getUserName() != null) {
            createProgressDialogScreen();
            this.mLoginHelper.doLogoutCompletable(false).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Action() { // from class: com.texa.careapp.app.auth.SignInScreen$$ExternalSyntheticLambda4
                @Override // io.reactivex.functions.Action
                public final void run() throws Exception {
                    this.f$0.m170x2f45d873();
                }
            }, new Consumer() { // from class: com.texa.careapp.app.auth.SignInScreen$$ExternalSyntheticLambda5
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) throws Exception {
                    this.f$0.m171x8663c952((Throwable) obj);
                }
            });
        } else {
            goTo(new SignUpEmailScreen(this.careApplication, this, this.mActivity));
        }
    }

    /* JADX INFO: renamed from: lambda$goToRegistrationScreen$3$com-texa-careapp-app-auth-SignInScreen, reason: not valid java name */
    public /* synthetic */ void m170x2f45d873() throws Exception {
        dismissProgressDialogScreen();
        goTo(new SignUpEmailScreen(this.careApplication, this, this.mActivity));
    }

    /* JADX INFO: renamed from: lambda$goToRegistrationScreen$4$com-texa-careapp-app-auth-SignInScreen, reason: not valid java name */
    public /* synthetic */ void m171x8663c952(Throwable th) throws Exception {
        th.printStackTrace();
        dismissProgressDialogScreen();
    }

    public void onSigninClicked(View view) {
        acceptTermOfServiceAndPolicyDialog(1, view);
    }

    private void acceptTermOfServiceAndPolicyDialog(int i, View view) {
        if (validateForm()) {
            goTo(new AcceptTermsOfServiceAndPolicyScreenDialog(i, this.mActivity, this, view));
        }
    }

    @Subscribe
    public void onEvent(AcceptTermsOfServiceAndPolicyScreenDialog.TermsAcceptedEvent termsAcceptedEvent) {
        signInButtonAction(termsAcceptedEvent.getView());
    }

    private boolean validateForm() {
        boolean zValidateRequiredFields = this.mFormValidator.validateRequiredFields(this.mInputRequiredFields, this.mRequiredFields);
        if (!zValidateRequiredFields) {
            Log.e(TAG, "Form not valid");
        }
        return zValidateRequiredFields;
    }

    private void signInButtonAction(View view) {
        createProgressDialogScreen();
        UserModel userCached = this.mUserDataManager.getUserCached();
        if (userCached != null && userCached.getUserName() != null && getUsernameValue() != null && !userCached.getUserName().equalsIgnoreCase(getUsernameValue())) {
            this.mLoginHelper.doLogOut(false);
        }
        this.loginSub = this.mLoginHelper.doLogin(getUsernameValue(), getPasswordValue()).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.texa.careapp.app.auth.SignInScreen$$ExternalSyntheticLambda7
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m172xf6a726f(obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.auth.SignInScreen$$ExternalSyntheticLambda6
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m173x6688634e((Throwable) obj);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$signInButtonAction$5$com-texa-careapp-app-auth-SignInScreen, reason: not valid java name */
    public /* synthetic */ void m172xf6a726f(Object obj) throws Exception {
        this.mActivity.setDriverId();
        dismissProgressDialogScreen();
        completeLogIn();
    }

    /* JADX INFO: renamed from: lambda$signInButtonAction$6$com-texa-careapp-app-auth-SignInScreen, reason: not valid java name */
    public /* synthetic */ void m173x6688634e(Throwable th) throws Exception {
        dismissProgressDialogScreen();
        Timber.w(th, "got exception in login", new Object[0]);
        new Delete().from(UserModel.class).execute();
        this.mRetrofitErrorParser.parse(th);
    }

    @Override // com.texa.care.navigation.Screen
    public void onResume() {
        super.onResume();
        this.mEventBus.register(this);
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
        Utils.safeDispose(this.loginSub);
    }

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return TAG;
    }

    private void completeLogIn() {
        this.notificationManager.cancel(18);
        FirebaseAnalytics.getInstance(getContext()).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_OUT_OF_THE_BOX_ACCESS_SIGN_IN.getTag(), null);
        List<DongleModel> all = this.dongleDataManager.getAll();
        if (all != null && !all.isEmpty()) {
            Intent intent = new Intent(getContext(), (Class<?>) MainActivity.class);
            intent.addFlags(268435456);
            getContext().startActivity(intent);
        } else {
            getContext().startActivity(PermissionActivity.buildIntent(getContext()));
        }
        this.mActivity.finish();
    }

    private String getUsernameValue() {
        return this.binding.screenSigninEmailEditText.getText().toString().trim();
    }

    private String getPasswordValue() {
        return this.binding.screenSigninPasswordEditText.getText().toString().trim();
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
            progressDialogFragment.dismissAllowingStateLoss();
        }
    }
}
