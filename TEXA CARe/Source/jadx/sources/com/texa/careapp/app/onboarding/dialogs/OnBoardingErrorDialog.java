package com.texa.careapp.app.onboarding.dialogs;

import android.view.View;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import com.google.gson.Gson;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.care.navigation.ScreenType;
import com.texa.careapp.CareApplication;
import com.texa.careapp.Constants;
import com.texa.careapp.databinding.DialogOnboardingErrorBinding;
import com.texa.careapp.networking.response.ServerResponse;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;
import retrofit2.HttpException;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class OnBoardingErrorDialog extends Screen {
    public static final String TAG = "OnBoardingErrorDialog";
    private HttpException error;

    @Inject
    protected EventBus mEventBus;

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.dialog_onboarding_error;
    }

    public OnBoardingErrorDialog(HttpException httpException, CareApplication careApplication) {
        careApplication.component().inject(this);
        this.error = httpException;
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        DialogOnboardingErrorBinding dialogOnboardingErrorBinding = (DialogOnboardingErrorBinding) DataBindingUtil.bind(view);
        TextView textView = dialogOnboardingErrorBinding.dialogOnboardingErrorText;
        TextView textView2 = dialogOnboardingErrorBinding.dialogOnboardingErrorBtn;
        textView2.setText(getContext().getString(R.string.screen_installation_dialog_error_btn));
        textView2.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.onboarding.dialogs.OnBoardingErrorDialog$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m322x1e4e05cc(view2);
            }
        });
        textView.setText(getContext().getString(R.string.error_msg_unexpected_error_occurred));
        try {
            ServerResponse serverResponse = (ServerResponse) new Gson().fromJson(this.error.response().errorBody().charStream(), ServerResponse.class);
            String error = serverResponse.getError();
            if (error == null) {
                error = serverResponse.getMessage();
            }
            if (error.contains(Constants.ERROR_KO_USER_DONGLE_LIMIT_EXCEEDED)) {
                textView.setText(getContext().getString(R.string.error_user_dongle_limit_exceeded));
            } else if (error.contains(Constants.ERROR_KO_DONGLE_USER_LIMIT_EXCEEDED)) {
                textView.setText(getContext().getString(R.string.error_dongle_user_limit_exceeded));
            } else if (error.contains(Constants.ERROR_KO_CUSTOMER_NOT_FOUND)) {
                textView.setText(getContext().getString(R.string.on_boarding_customer_not_found));
            }
        } catch (Exception unused) {
            Timber.e("Error parsing server response", new Object[0]);
        }
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$0$com-texa-careapp-app-onboarding-dialogs-OnBoardingErrorDialog, reason: not valid java name */
    public /* synthetic */ void m322x1e4e05cc(View view) {
        dismiss();
    }

    private void dismiss() {
        this.mEventBus.post(new ErrorConfirmedEvent());
        goBack();
    }

    public class ErrorConfirmedEvent {
        ErrorConfirmedEvent() {
        }
    }

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return TAG;
    }

    @Override // com.texa.care.navigation.Screen
    public ScreenType getType() {
        return ScreenType.DIALOG;
    }
}
