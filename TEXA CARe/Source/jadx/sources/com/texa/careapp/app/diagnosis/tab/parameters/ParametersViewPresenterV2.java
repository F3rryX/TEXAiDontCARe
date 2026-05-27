package com.texa.careapp.app.diagnosis.tab.parameters;

import android.content.Context;
import android.util.LongSparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.content.res.ResourcesCompat;
import com.github.mikephil.charting.charts.LineChart;
import com.github.mikephil.charting.charts.PieChart;
import com.texa.care.R;
import com.texa.careapp.CareApplication;
import com.texa.careapp.app.diagnosis.tab.chart.ParametersChartLine;
import com.texa.careapp.app.diagnosis.tab.parameters.chart.ParametersGeneric;
import com.texa.careapp.app.diagnosis.tab.parameters.chart.ParametersLineChart;
import com.texa.careapp.app.diagnosis.tab.parameters.chart.ParametersPieChart;
import com.texa.careapp.carelib.CommunicationObservable;
import com.texa.careapp.databinding.DiagnosisDataParametersLayoutV2Binding;
import com.texa.careapp.model.AlarmStatus;
import com.texa.careapp.model.AlarmType;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.DongleModel;
import com.texa.careapp.model.VehicleAlarm;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.model.VehicleParam;
import com.texa.careapp.parameters.ParameterBatteryVoltage;
import com.texa.careapp.parameters.VehicleParamMapperV2;
import com.texa.careapp.parameters.VehicleParametersManagerV2;
import com.texa.careapp.utils.BatteryLevel;
import com.texa.careapp.utils.Utils;
import com.texa.carelib.communication.Communication;
import com.texa.carelib.communication.CommunicationStatus;
import com.texa.carelib.diagresources.DataID;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.util.Iterator;
import javax.inject.Inject;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class ParametersViewPresenterV2 {
    private static final String TAG = "ParametersViewPresenterV2";
    private Disposable communicationSub;
    private LineChart mBatteryChart;
    private AppCompatTextView mBatteryNoValue;
    private TextView mBatteryStatus;
    private TextView mBatteryValue;

    @Inject
    protected Communication mCommunication;

    @Inject
    protected CommunicationObservable mCommunicationObservable;

    @Inject
    protected Context mContext;

    @Inject
    protected DongleDataManager mDongleDataManager;
    protected DongleModel mDongleModel;
    private PieChart mEngineRpmChart;
    private AppCompatTextView mEngineRpmValue;
    private LineChart mEngineTempChart;
    private RelativeLayout mEngineTempLay;
    private AppCompatTextView mEngineTempNoValue;
    private TextView mEngineTempValue;
    private LineChart mFuelLevelChart;
    private RelativeLayout mFuelLevelLay;
    private AppCompatTextView mFuelLevelNoValue;
    private TextView mFuelLevelValue;
    private PieChart mSpeedChart;
    private AppCompatTextView mSpeedValue;

    @Inject
    protected VehicleParamMapperV2 mVehicleParamMapper;

    @Inject
    protected VehicleParametersManagerV2 mVehicleParametersManagerV2;
    private LongSparseArray<View> mViews = new LongSparseArray<>();
    private RelativeLayout mainLayout;
    private LinearLayout otherParamLay;
    private Disposable paramSub;

    public ParametersViewPresenterV2(CareApplication.ApplicationComponent applicationComponent) {
        applicationComponent.inject(this);
        this.mDongleModel = this.mDongleDataManager.getDongleModel();
    }

    public void afterViewInjection(DiagnosisDataParametersLayoutV2Binding diagnosisDataParametersLayoutV2Binding) {
        this.mainLayout = diagnosisDataParametersLayoutV2Binding.diagnosisDataParametersLayout;
        this.mBatteryStatus = diagnosisDataParametersLayoutV2Binding.diagnosisDataParametersLayoutBatteryStatus;
        this.mBatteryValue = diagnosisDataParametersLayoutV2Binding.diagnosisDataParametersBatteryChartValue;
        this.mBatteryChart = diagnosisDataParametersLayoutV2Binding.diagnosisDataParametersBatteryChart;
        this.mBatteryNoValue = diagnosisDataParametersLayoutV2Binding.diagnosisDataParametersBatteryNoDataChart;
        this.mSpeedValue = diagnosisDataParametersLayoutV2Binding.diagnosisDataParametersSpeedChartValue;
        this.mSpeedChart = diagnosisDataParametersLayoutV2Binding.diagnosisDataParametersSpeedChart;
        this.mEngineRpmValue = diagnosisDataParametersLayoutV2Binding.diagnosisDataParametersEngineRpmChartValue;
        this.mEngineRpmChart = diagnosisDataParametersLayoutV2Binding.diagnosisDataParametersEngineRpmChart;
        this.mEngineTempValue = diagnosisDataParametersLayoutV2Binding.diagnosisDataParametersEngineTempChartValue;
        this.mEngineTempChart = diagnosisDataParametersLayoutV2Binding.diagnosisDataParametersEngineTempChart;
        this.mEngineTempNoValue = diagnosisDataParametersLayoutV2Binding.diagnosisDataParametersEngineTempNoDataChart;
        this.mEngineTempLay = diagnosisDataParametersLayoutV2Binding.diagnosisDataParametersEngineTempChartLay;
        this.mFuelLevelValue = diagnosisDataParametersLayoutV2Binding.diagnosisDataParametersFuelLevelChartValue;
        this.mFuelLevelChart = diagnosisDataParametersLayoutV2Binding.diagnosisDataParametersFuelLevelChart;
        this.mFuelLevelNoValue = diagnosisDataParametersLayoutV2Binding.diagnosisDataParametersFuelLevelNoDataChart;
        this.mFuelLevelLay = diagnosisDataParametersLayoutV2Binding.diagnosisDataParametersFuelLevelChartLay;
        this.otherParamLay = diagnosisDataParametersLayoutV2Binding.diagnosisDataParametersOtherLay;
        initBaseView();
        observeParameters();
        updateBatteryStatus();
    }

    void destroySub() {
        Utils.safeDispose(this.paramSub);
        Utils.safeDispose(this.communicationSub);
    }

    private void updateBatteryStatus() {
        VehicleModel selectedVehicle = this.mDongleModel.getSelectedVehicle();
        if (selectedVehicle == null) {
            return;
        }
        String strName = null;
        for (VehicleAlarm vehicleAlarm : selectedVehicle.getAlarms()) {
            if (vehicleAlarm.getAlarmType() == AlarmType.BATTERY_STATE) {
                strName = vehicleAlarm.getAlarmStatus().name();
            }
        }
        BatteryLevel batteryLevel = BatteryLevel.GREEN;
        if (AlarmStatus.RED.name().equals(strName)) {
            batteryLevel = BatteryLevel.RED;
        } else if (AlarmStatus.YELLOW.name().equals(strName)) {
            batteryLevel = BatteryLevel.YELLOW;
        }
        updateBatteryStatusValue(batteryLevel);
    }

    private void updateBatteryStatusValue(BatteryLevel batteryLevel) {
        this.mBatteryStatus.setText(batteryLevel.getStringRes());
        this.mBatteryStatus.setAllCaps(true);
        this.mBatteryStatus.setTextColor(ResourcesCompat.getColor(this.mContext.getResources(), batteryLevel.getColorRes(), null));
    }

    private void observeParameters() {
        VehicleModel selectedVehicle = this.mDongleModel.getSelectedVehicle();
        if (selectedVehicle != null) {
            Iterator<VehicleParam> it = selectedVehicle.getParameters().iterator();
            while (it.hasNext()) {
                update(it.next());
            }
        }
        this.paramSub = this.mVehicleParametersManagerV2.observeForegroundParams().doOnError(new Consumer() { // from class: com.texa.careapp.app.diagnosis.tab.parameters.ParametersViewPresenterV2$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.e((Throwable) obj, "mVehicleParametersManagerV2#bindView(observeParameters) onError", new Object[0]);
            }
        }).subscribe(new Consumer() { // from class: com.texa.careapp.app.diagnosis.tab.parameters.ParametersViewPresenterV2$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                this.f$0.update((VehicleParam) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.diagnosis.tab.parameters.ParametersViewPresenterV2$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.e((Throwable) obj, "ERROR PARAMETERS CARD SUBSCRIBER", new Object[0]);
            }
        });
        this.communicationSub = this.mCommunicationObservable.observeConnectionStatus().observeOn(AndroidSchedulers.mainThread()).subscribeOn(Schedulers.computation()).subscribe(new Consumer() { // from class: com.texa.careapp.app.diagnosis.tab.parameters.ParametersViewPresenterV2$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m223x3a534089((CommunicationObservable.Status) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.diagnosis.tab.parameters.ParametersViewPresenterV2$$ExternalSyntheticLambda4
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.e((Throwable) obj, "error observing connection status", new Object[0]);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$observeParameters$2$com-texa-careapp-app-diagnosis-tab-parameters-ParametersViewPresenterV2, reason: not valid java name */
    public /* synthetic */ void m223x3a534089(CommunicationObservable.Status status) throws Exception {
        VehicleModel selectedVehicle = this.mDongleModel.getSelectedVehicle();
        if (selectedVehicle != null) {
            Iterator<VehicleParam> it = selectedVehicle.getParameters().iterator();
            while (it.hasNext()) {
                update(it.next());
            }
        }
    }

    private void initBaseView() {
        ParametersPieChart.bindEmptyView(this.mContext, this.mVehicleParamMapper.get(DataID.Parameter.ENGINE_RPM.getId()), this.mEngineRpmChart, this.mEngineRpmValue);
        ParametersPieChart.bindEmptyView(this.mContext, this.mVehicleParamMapper.get(DataID.Parameter.VEHICLE_SPEED.getId()), this.mSpeedChart, this.mSpeedValue);
        ParametersLineChart.bindEmptyView(this.mContext, (ParametersChartLine) this.mVehicleParamMapper.get(ParameterBatteryVoltage.BATTERY_VOLTAGE_LEVEL), this.mDongleModel.getSelectedVehicle(), this.mBatteryChart, this.mBatteryValue, this.mBatteryNoValue);
        ParametersLineChart.bindEmptyView(this.mContext, (ParametersChartLine) this.mVehicleParamMapper.get(DataID.Parameter.ENGINE_TEMP.getId()), this.mDongleModel.getSelectedVehicle(), this.mEngineTempChart, this.mEngineTempValue, this.mEngineTempNoValue);
        ParametersLineChart.bindEmptyView(this.mContext, (ParametersChartLine) this.mVehicleParamMapper.get(DataID.Parameter.FUEL_LEVEL_ABS.getId()), this.mDongleModel.getSelectedVehicle(), this.mFuelLevelChart, this.mFuelLevelValue, this.mFuelLevelNoValue);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void update(VehicleParam vehicleParam) {
        if (Utils.isParameterVisibleForUser(vehicleParam.getDataId())) {
            this.mVehicleParamMapper.updateParam(vehicleParam);
            if (vehicleParam.getDataId() == ParameterBatteryVoltage.BATTERY_VOLTAGE_LEVEL) {
                ParametersLineChart.bindView(this.mContext, (ParametersChartLine) this.mVehicleParamMapper.get(ParameterBatteryVoltage.BATTERY_VOLTAGE_LEVEL), this.mDongleModel.getSelectedVehicle(), this.mCommunication.getStatus() == CommunicationStatus.CONNECTED, this.mBatteryChart, this.mBatteryValue, this.mBatteryNoValue);
                return;
            }
            if (vehicleParam.getDataId() == DataID.Parameter.ENGINE_TEMP.getId()) {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.mEngineTempLay.getLayoutParams();
                layoutParams.height = this.mContext.getResources().getDimensionPixelOffset(R.dimen.line_chart_layout_height);
                if (this.mVehicleParamMapper.isThereFuelParameter()) {
                    this.mFuelLevelLay.setVisibility(0);
                    layoutParams.setMargins(0, 0, this.mContext.getResources().getDimensionPixelSize(R.dimen.chart_half_margin), 0);
                    this.mEngineTempLay.setLayoutParams(layoutParams);
                } else {
                    this.mFuelLevelLay.setVisibility(8);
                    layoutParams.setMargins(0, 0, 0, 0);
                    this.mEngineTempLay.setLayoutParams(layoutParams);
                }
                ParametersLineChart.bindView(this.mContext, (ParametersChartLine) this.mVehicleParamMapper.get(DataID.Parameter.ENGINE_TEMP.getId()), this.mDongleModel.getSelectedVehicle(), this.mCommunication.getStatus() == CommunicationStatus.CONNECTED, this.mEngineTempChart, this.mEngineTempValue, this.mEngineTempNoValue);
                return;
            }
            if (vehicleParam.getDataId() == DataID.Parameter.FUEL_LEVEL_ABS.getId() || vehicleParam.getDataId() == DataID.Parameter.FUEL_LEVEL_REL.getId()) {
                ParametersLineChart.bindView(this.mContext, (ParametersChartLine) this.mVehicleParamMapper.get(DataID.Parameter.FUEL_LEVEL_ABS.getId()), this.mDongleModel.getSelectedVehicle(), this.mCommunication.getStatus() == CommunicationStatus.CONNECTED, this.mFuelLevelChart, this.mFuelLevelValue, this.mFuelLevelNoValue);
                return;
            }
            if (vehicleParam.getDataId() == DataID.Parameter.ENGINE_RPM.getId()) {
                ParametersPieChart.bindView(this.mContext, this.mVehicleParamMapper.get(DataID.Parameter.ENGINE_RPM.getId()), this.mEngineRpmChart, this.mEngineRpmValue);
                return;
            }
            if (vehicleParam.getDataId() == DataID.Parameter.VEHICLE_SPEED.getId()) {
                ParametersPieChart.bindView(this.mContext, this.mVehicleParamMapper.get(DataID.Parameter.VEHICLE_SPEED.getId()), this.mSpeedChart, this.mSpeedValue);
                return;
            }
            if (this.mViews.get(vehicleParam.getDataId()) == null) {
                View viewInflate = LayoutInflater.from(this.mContext).inflate(R.layout.diagnosis_data_parameters_no_chart, (ViewGroup) null);
                this.mViews.put(vehicleParam.getDataId(), viewInflate);
                LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
                layoutParams2.setMargins(0, this.mContext.getResources().getDimensionPixelSize(R.dimen.chart_standard_margin), 0, 0);
                this.otherParamLay.addView(viewInflate, layoutParams2);
            }
            ParametersGeneric.bindView(this.mVehicleParamMapper.get(vehicleParam.getDataId()), this.mCommunication.getStatus() == CommunicationStatus.CONNECTED, this.mViews.get(vehicleParam.getDataId()));
        }
    }
}
