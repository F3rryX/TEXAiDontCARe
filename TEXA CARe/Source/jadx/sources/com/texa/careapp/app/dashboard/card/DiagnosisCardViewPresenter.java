package com.texa.careapp.app.dashboard.card;

import android.content.Context;
import android.os.Build;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.texa.care.R;
import com.texa.careapp.CareApplication;
import com.texa.careapp.app.dashboard.DashboardScreenV2;
import com.texa.careapp.app.diagnosis.DiagnosisActivity;
import com.texa.careapp.app.diagnosis.DiagnosisType;
import com.texa.careapp.app.errorsDTC.LampStatus;
import com.texa.careapp.databinding.DashboardCardDiagnosisBinding;
import com.texa.careapp.lamps.LampsManager;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.DongleModel;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.utils.FirebaseAnalyticsEventManager;
import com.texa.careapp.utils.Utils;
import com.texa.careapp.views.RelativeTimeTextView;
import com.texa.carelib.communication.Communication;
import com.texa.carelib.communication.CommunicationStatus;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class DiagnosisCardViewPresenter {
    private boolean isSmallScreen;
    private TextView mButton;

    @Inject
    protected Communication mCommunication;

    @Inject
    protected Context mContext;
    private AppCompatTextView mDescription;

    @Inject
    protected DongleDataManager mDongleDataManager;
    protected DongleModel mDongleModel;
    private ImageView mIcon;

    @Inject
    protected LampsManager mLampsManager;
    private RelativeTimeTextView mLastTimeUpdate;
    private AppCompatTextView mTitle;
    private int negativeColor;
    private int positiveColor;

    public DiagnosisCardViewPresenter(CareApplication.ApplicationComponent applicationComponent, boolean z) {
        applicationComponent.inject(this);
        this.mDongleModel = this.mDongleDataManager.getDongleModel();
        this.isSmallScreen = z;
    }

    public void afterViewInjection(DashboardCardDiagnosisBinding dashboardCardDiagnosisBinding) {
        this.mLastTimeUpdate = dashboardCardDiagnosisBinding.dashboardCardDiagnosisTime;
        this.mTitle = dashboardCardDiagnosisBinding.dashboardCardDiagnosisTitle;
        this.mDescription = dashboardCardDiagnosisBinding.dashboardCardDiagnosisDescription;
        this.mButton = dashboardCardDiagnosisBinding.dashboardCardDiagnosisButton;
        this.mIcon = dashboardCardDiagnosisBinding.dashboardCardDiagnosisIcon;
        dashboardCardDiagnosisBinding.dashboardCardDiagnosis.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.dashboard.card.DiagnosisCardViewPresenter$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m200x1b56f67b(view);
            }
        });
        if (Build.VERSION.SDK_INT < 21) {
            dashboardCardDiagnosisBinding.dashboardCardDiagnosis.setPreventCornerOverlap(false);
        }
        this.positiveColor = Utils.getColorResource(this.mContext, R.color.dashboard_card_positive);
        this.negativeColor = Utils.getColorResource(this.mContext, R.color.dashboard_card_negative);
        updateCard();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$0$com-texa-careapp-app-dashboard-card-DiagnosisCardViewPresenter, reason: not valid java name */
    public /* synthetic */ void m200x1b56f67b(View view) {
        cardClicked();
    }

    private void cardClicked() {
        FirebaseAnalytics.getInstance(this.mContext).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_DASHBOARD_TAPPED_DIAGNOSIS_DASHBOARD_CARD.getTag(), null);
        DashboardScreenV2.mCanMoveCard = false;
        this.mContext.startActivity(DiagnosisActivity.buildIntent(this.mContext));
    }

    private void setPositiveCard() {
        this.mIcon.setColorFilter(this.positiveColor);
        this.mTitle.setText(R.string.dashboard_card_diagnosis_title);
        this.mDescription.setText(R.string.dashboard_card_diagnosis_positive_description);
        if (this.isSmallScreen) {
            this.mDescription.setMaxLines(2);
        }
        this.mButton.setTextColor(this.positiveColor);
    }

    private void setNegativeCard() {
        this.mIcon.setColorFilter(this.negativeColor);
        this.mTitle.setText(R.string.dashboard_card_diagnosis_negative_title);
        this.mDescription.setText(R.string.dashboard_card_diagnosis_negative_description);
        this.mButton.setTextColor(this.negativeColor);
    }

    private void initData() {
        if (this.isSmallScreen) {
            this.mIcon.setLayoutParams(new RelativeLayout.LayoutParams(this.mContext.getResources().getDimensionPixelSize(R.dimen.icon_card_small_dimen), this.mContext.getResources().getDimensionPixelSize(R.dimen.icon_card_small_dimen)));
        }
        DongleModel dongleModel = this.mDongleModel;
        if (dongleModel == null) {
            Timber.w("initData - dongle model is null!", new Object[0]);
            return;
        }
        VehicleModel selectedVehicle = dongleModel.getSelectedVehicle();
        if (selectedVehicle == null) {
            Timber.w("initData - vehicle model is null!", new Object[0]);
        } else {
            refreshCardForLampsChange(selectedVehicle.getActiveLamps());
            updateDiagnosisRelativeTimeView(selectedVehicle.getActiveLamps());
        }
    }

    private void updateDiagnosisRelativeTimeView(List<LampStatus> list) {
        if (this.mCommunication.getStatus() == CommunicationStatus.CONNECTED) {
            this.mLastTimeUpdate.setReferenceTime(0L);
            this.mLastTimeUpdate.setText(this.mContext.getString(R.string.currently_connected));
        } else {
            if (list.size() == 0) {
                DongleModel dongleModel = this.mDongleDataManager.getDongleModel();
                this.mDongleModel = dongleModel;
                Long lastParametersUpdate = dongleModel.getLastParametersUpdate();
                if (lastParametersUpdate != null) {
                    updateLastTimeUpdateView(lastParametersUpdate);
                    return;
                }
                return;
            }
            updateLastTimeUpdateView(getLastActiveLamp(list));
        }
    }

    private void updateLastTimeUpdateView(Long l) {
        RelativeTimeTextView relativeTimeTextView = this.mLastTimeUpdate;
        if (relativeTimeTextView != null) {
            relativeTimeTextView.setReferenceTime(l.longValue());
        }
    }

    private Long getLastActiveLamp(List<LampStatus> list) {
        long j = -1;
        if (list.size() == 0) {
            return -1L;
        }
        Iterator<LampStatus> it = list.iterator();
        while (it.hasNext()) {
            long time = it.next().getTime().getTime();
            if (j < time) {
                j = time;
            }
        }
        return Long.valueOf(j);
    }

    private void refreshCardForLampsChange(List<LampStatus> list) {
        if (!Utils.getLampsListFilteredForDiagnosisType(DiagnosisType.STANDARD, list).isEmpty()) {
            setNegativeCard();
        } else if (!Utils.getLampsListFilteredForDiagnosisType(DiagnosisType.ADVANCED, list).isEmpty()) {
            setNegativeCard();
        } else {
            setPositiveCard();
        }
    }

    public void updateCard() {
        this.mDongleModel = this.mDongleDataManager.getDongleModel();
        initData();
    }
}
