package com.texa.careapp.app.calibration;

import android.content.Intent;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.SuperscriptSpan;
import android.view.View;
import android.widget.TextView;
import androidx.core.content.res.ResourcesCompat;
import androidx.databinding.DataBindingUtil;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.careapp.CareApplication;
import com.texa.careapp.Constants;
import com.texa.careapp.app.MainActivity;
import com.texa.careapp.app.calibration.CalibrationDialogScreen;
import com.texa.careapp.databinding.ScreenCalibrationBinding;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes2.dex */
public class CalibrationScreen extends Screen {
    private static final int COUNT_BETA_WORD = 4;
    private TextView btn;
    private boolean calibrationStarted = false;
    private CalibrationActivity mActivity;
    private CareApplication mCareApplication;

    @Inject
    protected EventBus mEventBus;
    private TextView mSkip;
    private TextView secondDescription;

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.screen_calibration;
    }

    CalibrationScreen(CareApplication careApplication, CalibrationActivity calibrationActivity) {
        this.mCareApplication = careApplication;
        careApplication.component().inject(this);
        this.mActivity = calibrationActivity;
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        ScreenCalibrationBinding screenCalibrationBinding = (ScreenCalibrationBinding) DataBindingUtil.bind(view);
        TextView textView = screenCalibrationBinding.screenCalibrationBtnSkip;
        this.mSkip = textView;
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.calibration.CalibrationScreen$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m188x6c213c88(view2);
            }
        });
        this.secondDescription = screenCalibrationBinding.screenCalibrationSecondDescription;
        TextView textView2 = screenCalibrationBinding.screenCalibrationBtn;
        this.btn = textView2;
        textView2.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.calibration.CalibrationScreen$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m189x99f9d6e7(view2);
            }
        });
        String string = getContext().getString(R.string.calibration_attitude_title);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(string);
        spannableStringBuilder.setSpan(new SuperscriptSpan(), string.length() - 4, string.length(), 33);
        spannableStringBuilder.setSpan(new ForegroundColorSpan(ResourcesCompat.getColor(getContext().getResources(), R.color.beta_text_color, null)), string.length() - 4, string.length(), 33);
        screenCalibrationBinding.screenCalibrationTitle.setText(spannableStringBuilder);
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$0$com-texa-careapp-app-calibration-CalibrationScreen, reason: not valid java name */
    public /* synthetic */ void m188x6c213c88(View view) {
        goOn();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$1$com-texa-careapp-app-calibration-CalibrationScreen, reason: not valid java name */
    public /* synthetic */ void m189x99f9d6e7(View view) {
        beginCalibration();
    }

    @Override // com.texa.care.navigation.Screen
    public void onResume() {
        super.onResume();
        this.mEventBus.register(this);
    }

    @Override // com.texa.care.navigation.Screen
    public void onPause() {
        super.onPause();
        this.mEventBus.unregister(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(CalibrationDialogScreen.CalibrationProcedure calibrationProcedure) {
        boolean zIsCalibrationStarted = calibrationProcedure.isCalibrationStarted();
        this.calibrationStarted = zIsCalibrationStarted;
        if (zIsCalibrationStarted) {
            this.secondDescription.setText(R.string.calibration_attitude_begin);
            this.secondDescription.setTextColor(ResourcesCompat.getColor(getContext().getResources(), R.color.on_boarding_info, null));
            this.secondDescription.setGravity(17);
            this.btn.setBackground(ResourcesCompat.getDrawable(getContext().getResources(), R.drawable.button_green, null));
            this.btn.setTextColor(ResourcesCompat.getColor(getContext().getResources(), android.R.color.white, null));
            this.btn.setText(R.string.calibration_attitude_completed);
            this.mSkip.setVisibility(4);
            return;
        }
        this.secondDescription.setText(R.string.calibration_attitude_error);
        this.secondDescription.setTextColor(ResourcesCompat.getColor(getContext().getResources(), R.color.beta_text_color, null));
        this.secondDescription.setGravity(17);
        this.mSkip.setVisibility(0);
    }

    private void beginCalibration() {
        if (!this.calibrationStarted) {
            getNavigator().goTo(new CalibrationDialogScreen(this.mCareApplication));
        } else {
            goOn();
        }
    }

    private void goOn() {
        if (this.mActivity.getIntent().getBooleanExtra(CalibrationActivity.SHOULD_START_MAIN_ACTIVITY, true)) {
            Intent intent = new Intent(getContext(), (Class<?>) MainActivity.class);
            intent.addFlags(268468224);
            intent.putExtra(Constants.START_MAIN_ACTIVITY_EXTRA, this.mActivity.getIntent().getBooleanExtra(CalibrationActivity.HAVE_TO_VALIDATE_NUMBER, true));
            this.mActivity.startActivity(intent);
            return;
        }
        this.mActivity.finish();
    }

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return CalibrationScreen.class.getName();
    }
}
