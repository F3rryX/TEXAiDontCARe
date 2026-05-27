package com.texa.careapp.app.dashboard.card;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Build;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.texa.care.R;
import com.texa.careapp.CareApplication;
import com.texa.careapp.Constants;
import com.texa.careapp.app.dashboard.DashboardScreenV2;
import com.texa.careapp.app.ecodriving.EcoDrivingActivity;
import com.texa.careapp.app.ecodriving.model.EcoDrivingEventsDataManager;
import com.texa.careapp.app.ecodriving.tutorial.EcoDrivingTutorialActivity;
import com.texa.careapp.app.ecodriving.utils.AvgCalculator;
import com.texa.careapp.app.settings.generalsettings.GeneralSettingsActivity;
import com.texa.careapp.carelib.ICareObserver;
import com.texa.careapp.databinding.DashboardCardEcoDrivingBinding;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.utils.EcoDrivingUtils;
import com.texa.careapp.utils.FirebaseAnalyticsEventManager;
import com.texa.careapp.utils.Utils;
import com.texa.careapp.views.CircleDisplay;
import java.util.Calendar;
import javax.inject.Inject;

/* JADX INFO: loaded from: classes2.dex */
public class EcoDrivingCardViewPresenter {

    @Inject
    protected AvgCalculator avgCalculator;

    @Inject
    protected ICareObserver careObserver;
    private boolean isActive = false;
    private boolean isFirmwareUpdate = false;
    private boolean isSmallScreen;
    private TextView mButton;

    @Inject
    protected Context mContext;
    private AppCompatTextView mDescription;

    @Inject
    protected DongleDataManager mDongleDataManager;
    private ImageView mIcon;
    private CircleDisplay mScore;

    @Inject
    protected SharedPreferences mSharedPreferences;
    private AppCompatTextView mTitle;
    private int negativeColor;
    private int positiveColor;
    private int warningColor;

    public EcoDrivingCardViewPresenter(CareApplication.ApplicationComponent applicationComponent, boolean z) {
        applicationComponent.inject(this);
        this.isSmallScreen = z;
    }

    public void afterViewInjection(DashboardCardEcoDrivingBinding dashboardCardEcoDrivingBinding) {
        this.mTitle = dashboardCardEcoDrivingBinding.dashboardCardEcoDrivingTitle;
        this.mDescription = dashboardCardEcoDrivingBinding.dashboardCardEcoDrivingDescription;
        this.mButton = dashboardCardEcoDrivingBinding.dashboardCardEcoDrivingButton;
        this.mIcon = dashboardCardEcoDrivingBinding.dashboardCardEcoDrivingIcon;
        this.mScore = dashboardCardEcoDrivingBinding.dashboardCardEcoDrivingScore;
        dashboardCardEcoDrivingBinding.dashboardCardEcoDriving.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.dashboard.card.EcoDrivingCardViewPresenter$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m201xd3a31604(view);
            }
        });
        if (Build.VERSION.SDK_INT < 21) {
            dashboardCardEcoDrivingBinding.dashboardCardEcoDriving.setPreventCornerOverlap(false);
        }
        this.positiveColor = Utils.getColorResource(this.mContext, R.color.dashboard_card_positive);
        this.negativeColor = Utils.getColorResource(this.mContext, R.color.dashboard_card_negative);
        this.warningColor = Utils.getColorResource(this.mContext, R.color.dashboard_card_warning);
        updateCard();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$0$com-texa-careapp-app-dashboard-card-EcoDrivingCardViewPresenter, reason: not valid java name */
    public /* synthetic */ void m201xd3a31604(View view) {
        cardClicked();
    }

    private void cardClicked() {
        Intent intentBuildIntent;
        FirebaseAnalytics.getInstance(this.mContext).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_DASHBOARD_TAPPED_DRIVING_STYLE_CARD.getTag(), null);
        DashboardScreenV2.mCanMoveCard = false;
        if (!this.isActive) {
            intentBuildIntent = GeneralSettingsActivity.buildIntent(this.mContext);
        } else if (this.mSharedPreferences.getBoolean(Constants.PREFS_KEY_ECO_DRIVING_TUTORIAL, false)) {
            intentBuildIntent = EcoDrivingActivity.buildIntent(this.mContext);
        } else {
            intentBuildIntent = EcoDrivingTutorialActivity.buildIntent(this.mContext);
        }
        this.mContext.startActivity(intentBuildIntent);
    }

    private void setPositiveCard(int i) {
        this.mIcon.setColorFilter(this.positiveColor);
        this.mTitle.setText(R.string.dashboard_card_eco_driving_title);
        this.mScore.setVisibility(0);
        initCircleDisplay(this.mScore, i);
        this.mDescription.setVisibility(8);
        this.mButton.setTextColor(this.positiveColor);
    }

    private void setNoDataCard() {
        this.mIcon.setColorFilter(Utils.getColorResource(this.mContext, R.color.dashboard_card_not_value));
        this.mTitle.setText(R.string.dashboard_card_eco_driving_title);
        this.mScore.setVisibility(8);
        this.mDescription.setVisibility(0);
        if (!this.isActive) {
            this.mDescription.setText(R.string.dashboard_card_eco_driving_no_active_description);
        } else if (!this.isFirmwareUpdate) {
            this.mDescription.setText(R.string.eco_driving_no_firmware_description);
        } else {
            this.mDescription.setText(R.string.dashboard_card_eco_driving_no_data_description);
        }
        this.mButton.setTextColor(this.negativeColor);
    }

    private void setNegativeCard(int i) {
        this.mIcon.setColorFilter(this.negativeColor);
        this.mTitle.setText(R.string.dashboard_card_eco_driving_title);
        this.mScore.setVisibility(0);
        initCircleDisplay(this.mScore, i);
        this.mDescription.setVisibility(8);
        this.mButton.setTextColor(this.negativeColor);
    }

    private void setWarningCard(int i) {
        this.mIcon.setColorFilter(Utils.getColorResource(this.mContext, R.color.eco_driving_warning_color));
        this.mTitle.setText(R.string.dashboard_card_eco_driving_title);
        this.mScore.setVisibility(0);
        initCircleDisplay(this.mScore, i);
        this.mDescription.setVisibility(8);
        this.mButton.setTextColor(this.warningColor);
    }

    private void initData() {
        Calendar calendar = Calendar.getInstance();
        calendar.set(7, calendar.getFirstDayOfWeek());
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        calendar.add(5, -21);
        long timeInMillis = calendar.getTimeInMillis();
        calendar.set(11, 23);
        calendar.set(12, 59);
        calendar.set(13, 59);
        calendar.set(14, 0);
        calendar.add(5, 27);
        long timeInMillis2 = calendar.getTimeInMillis();
        if (!this.isActive) {
            this.mButton.setText(R.string.dashboard_card_eco_driving_no_active_button);
        } else if (!this.isFirmwareUpdate) {
            this.mButton.setText("");
        } else {
            this.mButton.setText(R.string.dashboard_card_eco_driving_button);
        }
        int iIntValue = this.avgCalculator.getNormalizedAverageByType(EcoDrivingEventsDataManager.getDailyScoreList(timeInMillis, timeInMillis2, true)).getValue().intValue();
        if (!this.isActive || iIntValue == -1 || !this.isFirmwareUpdate) {
            setNoDataCard();
            return;
        }
        if (iIntValue >= 0 && iIntValue <= 100) {
            if (iIntValue <= EcoDrivingUtils.PROBLEM_VALUE) {
                setNegativeCard(iIntValue);
                return;
            } else if (iIntValue <= EcoDrivingUtils.WARN_VALUE && iIntValue > EcoDrivingUtils.PROBLEM_VALUE) {
                setWarningCard(iIntValue);
                return;
            } else {
                setPositiveCard(iIntValue);
                return;
            }
        }
        int iIntValue2 = this.avgCalculator.getAverageByType(EcoDrivingEventsDataManager.getDailyScoreList(timeInMillis, timeInMillis2, true)).getValue().intValue();
        if (iIntValue2 <= EcoDrivingUtils.PROBLEM_VALUE) {
            setNegativeCard(iIntValue2);
        } else if (iIntValue2 <= EcoDrivingUtils.WARN_VALUE && iIntValue2 > EcoDrivingUtils.PROBLEM_VALUE) {
            setWarningCard(iIntValue2);
        } else {
            setPositiveCard(iIntValue2);
        }
    }

    private void initCircleDisplay(CircleDisplay circleDisplay, int i) {
        Object string;
        circleDisplay.showValue(i != -1 ? i : 0.0f, EcoDrivingUtils.MAX_VALUE, true);
        circleDisplay.setAnimDuration(1000);
        if (this.isSmallScreen) {
            circleDisplay.setColor(Utils.getColorResource(this.mContext, R.color.dashboard_card_background));
            circleDisplay.setWholeCircleColor(Utils.getColorResource(this.mContext, R.color.dashboard_card_background));
            circleDisplay.setTextColor(EcoDrivingUtils.getReferenceColor(this.mContext, i));
        } else {
            circleDisplay.setColor(EcoDrivingUtils.getReferenceColor(this.mContext, i));
            circleDisplay.setWholeCircleColor(Utils.getColorResource(this.mContext, R.color.primary));
            circleDisplay.setTextColor(-1);
        }
        circleDisplay.setDrawText(true);
        circleDisplay.setTypeface(R.font.font_regular);
        if (i != -1 && i != 0) {
            string = Integer.valueOf(i);
        } else {
            string = this.mContext.getString(R.string.eco_driving_not_available);
        }
        circleDisplay.setCustomText(String.valueOf(string));
    }

    public void updateCard() {
        this.isActive = this.mSharedPreferences.getBoolean(Constants.PREFS_KEY_ECO_DRIVING_ACTIVATION, true);
        this.isFirmwareUpdate = Utils.checkEcoDrivingMinFirmwareVersion(this.careObserver, this.mDongleDataManager.getDongleModel());
        initData();
    }
}
