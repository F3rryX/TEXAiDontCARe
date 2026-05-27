package com.texa.careapp.app.auth;

import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import com.google.android.material.snackbar.Snackbar;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.careapp.CareApplication;
import com.texa.careapp.databinding.ScreenRecoverPasswordBinding;
import com.texa.careapp.networking.RecoverPassword;
import com.texa.careapp.networking.TexaCareApiServiceClient;
import com.texa.careapp.networking.TexaCareAuthServiceHelper;
import com.texa.careapp.networking.response.ServerResponse;
import com.texa.careapp.utils.RetrofitErrorParser;
import com.texa.careapp.utils.Utils;
import com.texa.careapp.utils.authentication.AccessToken;
import io.reactivex.ObservableSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;
import retrofit2.HttpException;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class RecoverPasswordScreen extends Screen {
    private static final boolean D = false;
    private static final String TAG = "RecoverPasswordScreen";
    private TextView mButton;
    private TextView mDescriptionTextView;
    private Disposable mDisposable;
    private EditText mEmailEditText;

    @Inject
    EventBus mEventBus;
    private View.OnClickListener mOnClickRetry = new View.OnClickListener() { // from class: com.texa.careapp.app.auth.RecoverPasswordScreen$$ExternalSyntheticLambda1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f$0.m164lambda$new$0$comtexacareappappauthRecoverPasswordScreen(view);
        }
    };
    private RelativeLayout mParentLinearLayout;

    @Inject
    RetrofitErrorParser mRetrofitErrorParser;

    @Inject
    TexaCareApiServiceClient mTexaCareApiService;

    @Inject
    TexaCareAuthServiceHelper mTexaCareAuthServiceHelper;

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.screen_recover_password;
    }

    @Override // com.texa.care.navigation.Screen
    public int getTitle() {
        return 0;
    }

    /* JADX INFO: renamed from: lambda$new$0$com-texa-careapp-app-auth-RecoverPasswordScreen, reason: not valid java name */
    public /* synthetic */ void m164lambda$new$0$comtexacareappappauthRecoverPasswordScreen(View view) {
        recoverPassword();
    }

    public RecoverPasswordScreen(CareApplication careApplication) {
        careApplication.component().inject(this);
    }

    protected RecoverPasswordScreen() {
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        ScreenRecoverPasswordBinding screenRecoverPasswordBinding = (ScreenRecoverPasswordBinding) DataBindingUtil.bind(view);
        TextView textView = screenRecoverPasswordBinding.recoverPswButton;
        this.mButton = textView;
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.auth.RecoverPasswordScreen$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m162x5ba20632(view2);
            }
        });
        this.mParentLinearLayout = screenRecoverPasswordBinding.screenRecoverPswLinearLayout;
        this.mEmailEditText = screenRecoverPasswordBinding.emailRecoverPswEditText;
        this.mDescriptionTextView = screenRecoverPasswordBinding.recoverPswTextView;
        this.mEmailEditText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.texa.careapp.app.auth.RecoverPasswordScreen$$ExternalSyntheticLambda2
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView2, int i, KeyEvent keyEvent) {
                return this.f$0.m163x5b2ba033(textView2, i, keyEvent);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$1$com-texa-careapp-app-auth-RecoverPasswordScreen, reason: not valid java name */
    public /* synthetic */ void m162x5ba20632(View view) {
        onSigninClicked();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$2$com-texa-careapp-app-auth-RecoverPasswordScreen, reason: not valid java name */
    public /* synthetic */ boolean m163x5b2ba033(TextView textView, int i, KeyEvent keyEvent) {
        if (!isValidate()) {
            return true;
        }
        recoverPassword();
        return true;
    }

    @Override // com.texa.care.navigation.Screen
    public void onPause() {
        super.onPause();
        Utils.safeDispose(this.mDisposable);
    }

    @Override // com.texa.care.navigation.Screen
    public boolean onBackPressed() {
        goBack();
        return true;
    }

    public boolean isValidate() {
        if (getEmailValue().isEmpty()) {
            this.mEmailEditText.setError(getContext().getString(R.string.required_field));
            return false;
        }
        if (!Utils.isEmail(getEmailValue())) {
            this.mEmailEditText.setError(getContext().getString(R.string.error_edit_email));
            return false;
        }
        this.mEmailEditText.setError(null);
        return true;
    }

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return TAG;
    }

    private void onSigninClicked() {
        if (!this.mEmailEditText.isEnabled()) {
            goBack();
        } else if (isValidate()) {
            recoverPassword();
        }
    }

    private void recoverPassword() {
        closeKeyBoard();
        final RecoverPassword recoverPassword = new RecoverPassword();
        recoverPassword.setEmail(getEmailValue());
        this.mDisposable = this.mTexaCareAuthServiceHelper.getAndPersistClientTokenObservable().flatMap(new Function() { // from class: com.texa.careapp.app.auth.RecoverPasswordScreen$$ExternalSyntheticLambda5
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f$0.m165x3f43283(recoverPassword, (AccessToken) obj);
            }
        }).compose(Utils.applySchedulers()).subscribe(new Consumer() { // from class: com.texa.careapp.app.auth.RecoverPasswordScreen$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                this.f$0.onRequestSuccess((ServerResponse) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.auth.RecoverPasswordScreen$$ExternalSyntheticLambda4
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m166x37dcc84((Throwable) obj);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$recoverPassword$3$com-texa-careapp-app-auth-RecoverPasswordScreen, reason: not valid java name */
    public /* synthetic */ ObservableSource m165x3f43283(RecoverPassword recoverPassword, AccessToken accessToken) throws Exception {
        return this.mTexaCareApiService.recoverPasswordFromEmail(recoverPassword);
    }

    /* JADX INFO: renamed from: lambda$recoverPassword$4$com-texa-careapp-app-auth-RecoverPasswordScreen, reason: not valid java name */
    public /* synthetic */ void m166x37dcc84(Throwable th) throws Exception {
        if (userRecoveryInProgress(th)) {
            updateSuccessfulRequest();
        } else {
            onRequestError(th);
        }
    }

    private boolean userRecoveryInProgress(Throwable th) {
        return this.mRetrofitErrorParser.isUserRecoveryInProgress(th);
    }

    private void onRequestError(Throwable th) {
        Timber.d(th, "password recover request error", new Object[0]);
        if (th instanceof HttpException) {
            String toString = this.mRetrofitErrorParser.parseToString((HttpException) th);
            if (toString == null) {
                toString = th.toString();
            }
            snackBarError(toString);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onRequestSuccess(ServerResponse serverResponse) {
        updateSuccessfulRequest();
    }

    private void updateSuccessfulRequest() {
        this.mDescriptionTextView.setText(getContext().getString(R.string.email_sent_to_your_account));
        this.mEmailEditText.setEnabled(false);
        this.mButton.setText(getContext().getString(R.string.exit));
    }

    private void snackBarError(String str) {
        RelativeLayout relativeLayout = this.mParentLinearLayout;
        if (relativeLayout != null) {
            Snackbar.make(relativeLayout, str, 0).setAction(getContext().getString(R.string.care_update_retry), this.mOnClickRetry).show();
        }
    }

    private void closeKeyBoard() {
        if (this.mEmailEditText != null) {
            ((InputMethodManager) getContext().getSystemService("input_method")).hideSoftInputFromWindow(this.mEmailEditText.getWindowToken(), 0);
        }
    }

    private String getEmailValue() {
        return this.mEmailEditText.getText().toString().trim();
    }
}
