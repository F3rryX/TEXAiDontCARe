package com.texa.careapp.app.dashboard.card;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.text.SpannableString;
import android.text.style.RelativeSizeSpan;
import android.view.View;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import com.github.mikephil.charting.charts.LineChart;
import com.github.mikephil.charting.data.LineData;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.texa.care.R;
import com.texa.care.navigation.Navigator;
import com.texa.careapp.CareApplication;
import com.texa.careapp.app.dashboard.DashboardScreenV2;
import com.texa.careapp.app.diagnosis.DiagnosisDataActivity;
import com.texa.careapp.app.diagnosis.tab.chart.ParametersChartLine;
import com.texa.careapp.databinding.DashboardCardParametersBinding;
import com.texa.careapp.model.AlarmStatus;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.DongleModel;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.model.VehicleParam;
import com.texa.careapp.parameters.ParameterBatteryVoltage;
import com.texa.careapp.parameters.VehicleParamMapperV2;
import com.texa.careapp.parameters.VehicleParametersManagerV2;
import com.texa.careapp.utils.BatteryLevel;
import com.texa.careapp.utils.ChartUtils;
import com.texa.careapp.utils.FirebaseAnalyticsEventManager;
import com.texa.careapp.utils.Utils;
import com.texa.carelib.communication.Communication;
import com.texa.carelib.communication.CommunicationStatus;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class ParametersCardViewPresenter {
    private boolean isSmallScreen;
    private LineChart mChart;
    private AppCompatTextView mChartNoDataText;
    private AppCompatTextView mChartValue;

    @Inject
    protected Communication mCommunication;

    @Inject
    protected Context mContext;

    @Inject
    protected DongleDataManager mDongleDataManager;
    protected DongleModel mDongleModel;
    private ImageView mIcon;
    private Navigator mNavigator;

    @Inject
    protected SharedPreferences mPreferences;
    private AppCompatTextView mTitle;

    @Inject
    protected VehicleParamMapperV2 mVehicleParamMapper;

    @Inject
    protected VehicleParametersManagerV2 mVehicleParametersManagerV2;
    private int negativeColor;
    private Disposable paramSub;
    private int positiveColor;
    private int warningColor;

    public ParametersCardViewPresenter(CareApplication careApplication, Navigator navigator, boolean z) {
        careApplication.component().inject(this);
        this.mNavigator = navigator;
        this.isSmallScreen = z;
    }

    public void afterViewInjection(DashboardCardParametersBinding dashboardCardParametersBinding) {
        this.mIcon = dashboardCardParametersBinding.dashboardCardParametersIcon;
        this.mChart = dashboardCardParametersBinding.dashboardCardParametersChart;
        this.mTitle = dashboardCardParametersBinding.dashboardCardParametersTitle;
        this.mChartNoDataText = dashboardCardParametersBinding.dashboardCardParametersNoDataChart;
        this.mChartValue = dashboardCardParametersBinding.dashboardCardParametersValue;
        dashboardCardParametersBinding.dashboardCardParametersCard.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.dashboard.card.ParametersCardViewPresenter$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m207x87e23190(view);
            }
        });
        if (Build.VERSION.SDK_INT < 21) {
            dashboardCardParametersBinding.dashboardCardParametersCard.setPreventCornerOverlap(false);
        }
        dashboardCardParametersBinding.dashboardCardParametersSelector.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.dashboard.card.ParametersCardViewPresenter$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m208xd5a1a991(view);
            }
        });
        observeParameters();
        this.positiveColor = Utils.getColorResource(this.mContext, R.color.dashboard_card_positive);
        this.negativeColor = Utils.getColorResource(this.mContext, R.color.dashboard_card_negative);
        this.warningColor = Utils.getColorResource(this.mContext, R.color.chart_warning_color);
        updateCard();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$0$com-texa-careapp-app-dashboard-card-ParametersCardViewPresenter, reason: not valid java name */
    public /* synthetic */ void m207x87e23190(View view) {
        chartClicked();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$1$com-texa-careapp-app-dashboard-card-ParametersCardViewPresenter, reason: not valid java name */
    public /* synthetic */ void m208xd5a1a991(View view) {
        changeChart();
    }

    private void chartClicked() {
        FirebaseAnalytics.getInstance(this.mContext).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_DASHBOARD_TAPPED_PARAMETERS_DASHBOARD_CARD.getTag(), null);
        DashboardScreenV2.mCanMoveCard = false;
        this.mContext.startActivity(DiagnosisDataActivity.buildIntent(this.mContext, 1));
    }

    private void changeChart() {
        if (this.mDongleModel == null && this.mCommunication.getStatus() == CommunicationStatus.CONNECTED) {
            List<DongleModel> arrayList = new ArrayList<>();
            if (this.mCommunication.getCurrentDevice() != null && this.mCommunication.getCurrentDevice().getAddress() != null) {
                arrayList = this.mDongleDataManager.getDongleByMacAddress(this.mCommunication.getCurrentDevice().getAddress());
            }
            if (arrayList.isEmpty() && this.mCommunication.getCurrentDevice() != null && this.mCommunication.getCurrentDevice().getName() != null) {
                arrayList = this.mDongleDataManager.getDongleByHwid(this.mCommunication.getCurrentDevice().getName());
            }
            if (!arrayList.isEmpty()) {
                this.mDongleModel = arrayList.get(0);
            }
        }
        DongleModel dongleModel = this.mDongleModel;
        if (dongleModel == null || dongleModel.getSelectedVehicle() == null) {
            return;
        }
        this.mNavigator.goTo(new ParametersChooseChartDialog(this.mVehicleParamMapper.getAllCardParameter(), this.mDongleModel.getSelectedVehicle().getHwid()));
    }

    private void refreshParameters() {
        VehicleModel selectedVehicle;
        this.mVehicleParamMapper.refreshBaseParameter();
        DongleModel dongleModel = this.mDongleModel;
        if (dongleModel == null || (selectedVehicle = dongleModel.getSelectedVehicle()) == null) {
            return;
        }
        Iterator<VehicleParam> it = selectedVehicle.getFilterParameters().iterator();
        while (it.hasNext()) {
            update(it.next());
        }
    }

    private void observeParameters() {
        refreshParameters();
        this.paramSub = this.mVehicleParametersManagerV2.observeForegroundParams().doOnError(new Consumer() { // from class: com.texa.careapp.app.dashboard.card.ParametersCardViewPresenter$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.e((Throwable) obj, "mVehicleParametersManagerV2#bindView(observeParameters) onError", new Object[0]);
            }
        }).subscribe(new Consumer() { // from class: com.texa.careapp.app.dashboard.card.ParametersCardViewPresenter$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                this.f$0.update((VehicleParam) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.dashboard.card.ParametersCardViewPresenter$$ExternalSyntheticLambda4
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.e((Throwable) obj, "OnError observeParameters", new Object[0]);
            }
        });
    }

    void destroySub() {
        Utils.safeDispose(this.paramSub);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void update(VehicleParam vehicleParam) {
        if (Utils.isParameterVisibleForUser(vehicleParam.getDataId())) {
            this.mVehicleParamMapper.updateCardParam(vehicleParam);
            updateChart();
        }
    }

    private void updateChart() {
        ParametersChartLine cardParameter = this.mVehicleParamMapper.getCardParameter(Utils.getParameterCardChartType(this.mPreferences, this.mDongleModel.getSelectedVehicle() != null ? this.mDongleModel.getSelectedVehicle().getHwid() : null));
        if (this.isSmallScreen) {
            this.mIcon.setLayoutParams(new ConstraintLayout.LayoutParams(this.mContext.getResources().getDimensionPixelSize(R.dimen.icon_card_small_dimen), this.mContext.getResources().getDimensionPixelSize(R.dimen.icon_card_small_dimen)));
        }
        LineChart lineChart = this.mChart;
        if (lineChart != null) {
            lineChart.clear();
            this.mChart = ChartUtils.getBaseConfiguration(this.mChart, cardParameter.getMaxValue(), cardParameter.getMinValue());
            if (cardParameter.getValue() == -1) {
                this.mChartNoDataText.setVisibility(0);
                setMockDataChartStyle(cardParameter, false);
            } else if (ChartUtils.getChartData(cardParameter).size() < 2) {
                this.mChartNoDataText.setVisibility(0);
                setMockDataChartStyle(cardParameter, true);
            } else {
                this.mChartNoDataText.setVisibility(8);
                createChart(this.mContext, cardParameter, false);
            }
        }
    }

    private void setMockDataChartStyle(ParametersChartLine parametersChartLine, boolean z) {
        if (!z) {
            this.mChartNoDataText.setText(String.format(this.mContext.getString(R.string.parameters_no_data), parametersChartLine.getTitle().toUpperCase()));
        } else {
            this.mChartNoDataText.setText(R.string.parameters_no_data_yet);
        }
        createChart(this.mContext, parametersChartLine, true);
    }

    private void createChart(Context context, ParametersChartLine parametersChartLine, boolean z) {
        this.mTitle.setText(parametersChartLine.getTitle());
        ChartUtils.ChartConfiguration chartConfiguration = new ChartUtils.ChartConfiguration(this.mDongleModel.getSelectedVehicle(), parametersChartLine, parametersChartLine.getNormalColor(context), ContextCompat.getDrawable(context, R.drawable.fill_line_chart_normal));
        chartConfiguration.generateChart(context, !z ? ChartUtils.getChartData(parametersChartLine) : parametersChartLine.getMockHistory());
        this.mChartValue.setVisibility(0);
        this.mChartValue.setTextColor(chartConfiguration.getChartColor(context));
        if (parametersChartLine.getParameterType() != ParameterBatteryVoltage.BATTERY_VOLTAGE_LEVEL) {
            String str = String.format(context.getString(R.string.format_string_space), parametersChartLine.getReadableValue(), parametersChartLine.getUnit());
            SpannableString spannableString = new SpannableString(str);
            spannableString.setSpan(new RelativeSizeSpan(0.5f), str.length() - parametersChartLine.getUnit().length(), str.length(), 33);
            this.mChartValue.setText(spannableString);
            this.mChartValue.setTextSize(1, 30.0f);
        } else {
            String batteryValue = ChartUtils.readBatteryValue(this.mDongleModel.getSelectedVehicle());
            BatteryLevel batteryLevel = BatteryLevel.GREEN;
            if (AlarmStatus.RED.name().equals(batteryValue)) {
                batteryLevel = BatteryLevel.RED;
            } else if (AlarmStatus.YELLOW.name().equals(batteryValue)) {
                batteryLevel = BatteryLevel.YELLOW;
            }
            this.mChartValue.setText(context.getString(batteryLevel.getStringRes()).toUpperCase());
            this.mChartValue.setTextSize(1, 15.0f);
        }
        if (!z && chartConfiguration.getChartColor(context) == parametersChartLine.getNormalColor(context)) {
            this.mIcon.setColorFilter(this.positiveColor);
        } else if (!z && chartConfiguration.getChartColor(context) == parametersChartLine.getProblemColor(context)) {
            this.mIcon.setColorFilter(this.negativeColor);
        } else if (!z && chartConfiguration.getChartColor(context) == parametersChartLine.getWarningColor(context)) {
            this.mIcon.setColorFilter(this.warningColor);
        } else {
            this.mChartValue.setVisibility(8);
            this.mIcon.setColorFilter(Utils.getColorResource(context, R.color.dashboard_card_not_value));
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(ChartUtils.getYAxisRealData(context, chartConfiguration.getYAxisRealVal(), chartConfiguration.getChartColor(context), parametersChartLine.getParameterType(), z));
        arrayList.add(ChartUtils.getYAxisMockData(context, chartConfiguration.getYAxisMockVal(), chartConfiguration.getChartColor(context), chartConfiguration.getChartFill(context)));
        this.mChart.setData(new LineData(arrayList));
        this.mChart.invalidate();
    }

    public void updateCard() {
        DongleModel dongleModel = this.mDongleDataManager.getDongleModel();
        this.mDongleModel = dongleModel;
        if (dongleModel != null) {
            refreshParameters();
            updateChart();
        }
    }
}
