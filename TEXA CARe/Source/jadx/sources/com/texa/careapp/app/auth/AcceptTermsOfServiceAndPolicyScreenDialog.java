package com.texa.careapp.app.auth;

import android.view.View;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.care.navigation.ScreenType;
import com.texa.careapp.CareApplication;
import java.util.Objects;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public class AcceptTermsOfServiceAndPolicyScreenDialog extends Screen {
    public static final String TAG = "AcceptTermsOfServiceAndPolicyScreenDialog";
    private final int mAction;
    private final LoginActivity mActivity;

    @Inject
    protected EventBus mEventBus;
    private final SignInScreen mScreen;
    private final View mView;

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.dialog_accept_terms_of_service_and_policy;
    }

    AcceptTermsOfServiceAndPolicyScreenDialog(int i, LoginActivity loginActivity, SignInScreen signInScreen, View view) {
        Objects.requireNonNull(loginActivity, "loginActivity is marked @NonNull but is null");
        Objects.requireNonNull(signInScreen, "signInScreen is marked @NonNull but is null");
        Objects.requireNonNull(view, "view is marked @NonNull but is null");
        this.mAction = i;
        this.mActivity = loginActivity;
        this.mScreen = signInScreen;
        this.mView = view;
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        ((CareApplication) getContext().getApplicationContext()).component().inject(this);
        view.findViewById(R.id.dialog_terms_of_service_and_policy_accept).setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.auth.AcceptTermsOfServiceAndPolicyScreenDialog$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m156xc5e0ac24(view2);
            }
        });
        view.findViewById(R.id.dialog_terms_of_service_and_policy_actionbar_cancel).setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.auth.AcceptTermsOfServiceAndPolicyScreenDialog$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m157xb7323ba5(view2);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$0$com-texa-careapp-app-auth-AcceptTermsOfServiceAndPolicyScreenDialog, reason: not valid java name */
    public /* synthetic */ void m156xc5e0ac24(View view) {
        termsAccepted();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$1$com-texa-careapp-app-auth-AcceptTermsOfServiceAndPolicyScreenDialog, reason: not valid java name */
    public /* synthetic */ void m157xb7323ba5(View view) {
        goBack();
    }

    private void termsAccepted() {
        this.mEventBus.post(new TermsAcceptedEvent(this.mView));
        goBack();
    }

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return TAG;
    }

    @Override // com.texa.care.navigation.Screen
    public ScreenType getType() {
        return ScreenType.DIALOG;
    }

    class TermsAcceptedEvent {
        private View view;

        public View getView() {
            return this.view;
        }

        TermsAcceptedEvent(View view) {
            this.view = view;
        }
    }
}
