package com.texa.careapp.app.onboarding.dialogs;

import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.view.KeyEvent;
import android.view.View;
import androidx.core.net.MailTo;
import androidx.fragment.app.DialogFragment;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.care.navigation.ScreenType;
import com.texa.careapp.CareApplication;
import com.texa.careapp.app.onboarding.OnBoardingActivity;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.DongleModel;
import com.texa.careapp.model.UserModel;
import com.texa.careapp.utils.UserDataManager;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public class OnBoardingErrorEngineDialog extends Screen {
    private static final String EMAIL = "service.care@texa.com";
    private static final String SUBJECT = "TEXA CARe";
    public static final String TAG = "OnBoardingErrorEngineDialog";
    private CareApplication mApplication;
    private DongleModel mDongle;

    @Inject
    protected DongleDataManager mDongleDataManager;

    @Inject
    protected EventBus mEventBus;
    private OnBoardingActivity mOnBoardingActivity;

    @Inject
    protected UserDataManager mUserDataManager;
    private UserModel mUserModel;
    private String vehicleDescription;

    static /* synthetic */ boolean lambda$initBackPressureHandler$2(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        return i == 4;
    }

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.dialog_onboarding_engine_error;
    }

    public OnBoardingErrorEngineDialog(CareApplication careApplication, OnBoardingActivity onBoardingActivity, String str) {
        this.mApplication = careApplication;
        careApplication.component().inject(this);
        this.mOnBoardingActivity = onBoardingActivity;
        this.vehicleDescription = str;
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        view.findViewById(R.id.dialog_onboarding_engine_error_btn_assistance).setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.onboarding.dialogs.OnBoardingErrorEngineDialog$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m323xe7d33fae(view2);
            }
        });
        view.findViewById(R.id.dialog_onboarding_engine_error_btn_ok).setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.onboarding.dialogs.OnBoardingErrorEngineDialog$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m324xd924cf2f(view2);
            }
        });
        this.mDongle = this.mDongleDataManager.getDongleModel();
        this.mUserModel = this.mUserDataManager.getUserCached();
        initBackPressureHandler();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$0$com-texa-careapp-app-onboarding-dialogs-OnBoardingErrorEngineDialog, reason: not valid java name */
    public /* synthetic */ void m323xe7d33fae(View view) {
        assistance();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$1$com-texa-careapp-app-onboarding-dialogs-OnBoardingErrorEngineDialog, reason: not valid java name */
    public /* synthetic */ void m324xd924cf2f(View view) {
        confirm();
    }

    private void assistance() {
        OnBoardingActivity onBoardingActivity;
        String str = "Serial: " + this.mDongle.getHwid() + " \n";
        String str2 = this.vehicleDescription;
        if ((str2 == null || str2.length() <= 0) && (onBoardingActivity = this.mOnBoardingActivity) != null && onBoardingActivity.getDescription() != null && this.mOnBoardingActivity.getDescription().length() > 0) {
            this.vehicleDescription = this.mOnBoardingActivity.getDescription();
        }
        String str3 = this.vehicleDescription;
        if (str3 != null && str3.length() > 0) {
            String strReplaceAll = this.vehicleDescription.replaceAll("\\(.+?\\)|\\[.+?\\]+", "");
            this.vehicleDescription = strReplaceAll;
            this.vehicleDescription = strReplaceAll.replaceAll("\\|\\|", " ");
            str = str + "Vehicle: " + this.vehicleDescription.toUpperCase() + " \n";
        }
        String str4 = str + "Email: " + this.mUserModel.getUserName() + "\n";
        if (this.mUserModel.hasPhoneNumberValidated()) {
            str4 = str4 + "Phone: " + this.mUserModel.getUserCellPhoneContact().getPhoneNumber() + " \n\n";
        }
        Intent intent = new Intent("android.intent.action.SENDTO");
        intent.setData(Uri.parse(MailTo.MAILTO_SCHEME));
        intent.putExtra("android.intent.extra.EMAIL", new String[]{EMAIL});
        intent.putExtra("android.intent.extra.SUBJECT", "TEXA CARe " + this.mDongle.getHwid());
        intent.putExtra("android.intent.extra.TEXT", str4);
        try {
            Intent intentCreateChooser = Intent.createChooser(intent, "");
            intentCreateChooser.setFlags(268435456);
            getContext().startActivity(intentCreateChooser);
        } catch (ActivityNotFoundException e) {
            e.printStackTrace();
        }
    }

    private void confirm() {
        ((DialogFragment) this.mOnBoardingActivity.getSupportFragmentManager().findFragmentByTag(getId())).dismiss();
        this.mEventBus.post(new ErrorConfirmedEvent());
    }

    private void initBackPressureHandler() {
        ((DialogFragment) getNavigator().getFragmentManager().findFragmentByTag(TAG)).getDialog().setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.texa.careapp.app.onboarding.dialogs.OnBoardingErrorEngineDialog$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnKeyListener
            public final boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                return OnBoardingErrorEngineDialog.lambda$initBackPressureHandler$2(dialogInterface, i, keyEvent);
            }
        });
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
