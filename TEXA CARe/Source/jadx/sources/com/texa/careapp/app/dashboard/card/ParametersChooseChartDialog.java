package com.texa.careapp.app.dashboard.card;

import android.content.SharedPreferences;
import android.util.LongSparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.RadioButton;
import androidx.databinding.DataBindingUtil;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.care.navigation.ScreenType;
import com.texa.careapp.CareApplication;
import com.texa.careapp.app.diagnosis.tab.chart.ParametersChartLine;
import com.texa.careapp.databinding.DialogChooseChartBinding;
import com.texa.careapp.utils.Utils;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public class ParametersChooseChartDialog extends Screen {
    private String hwId;

    @Inject
    protected EventBus mEventBus;

    @Inject
    protected SharedPreferences mPreferences;
    private LongSparseArray<ParametersChartLine> mVehicleParams;

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return "dialog_choose_chart";
    }

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.dialog_choose_chart;
    }

    public ParametersChooseChartDialog(LongSparseArray<ParametersChartLine> longSparseArray, String str) {
        this.mVehicleParams = longSparseArray;
        this.hwId = str;
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        ((CareApplication) getNavigator().getApplication()).component().inject(this);
        DialogChooseChartBinding dialogChooseChartBinding = (DialogChooseChartBinding) DataBindingUtil.bind(view);
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
        for (int size = this.mVehicleParams.size() - 1; size >= 0; size--) {
            LongSparseArray<ParametersChartLine> longSparseArray = this.mVehicleParams;
            final ParametersChartLine parametersChartLine = longSparseArray.get(longSparseArray.keyAt(size));
            RadioButton radioButton = (RadioButton) layoutInflaterFrom.inflate(R.layout.dialog_choose_chart_radio_item, (ViewGroup) dialogChooseChartBinding.dialogChooseChartRadioGroup, false);
            radioButton.setText(parametersChartLine.getTitle());
            radioButton.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.texa.careapp.app.dashboard.card.ParametersChooseChartDialog$$ExternalSyntheticLambda0
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                    this.f$0.m209xcb3fe16c(parametersChartLine, compoundButton, z);
                }
            });
            dialogChooseChartBinding.dialogChooseChartRadioGroup.addView(radioButton);
            if (parametersChartLine.getParameterType() == Utils.getParameterCardChartType(this.mPreferences, this.hwId)) {
                radioButton.setChecked(true);
            }
        }
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$0$com-texa-careapp-app-dashboard-card-ParametersChooseChartDialog, reason: not valid java name */
    public /* synthetic */ void m209xcb3fe16c(ParametersChartLine parametersChartLine, CompoundButton compoundButton, boolean z) {
        if (Utils.getParameterCardChartType(this.mPreferences, this.hwId) == parametersChartLine.getParameterType() || !z) {
            return;
        }
        Utils.setParameterCardChartType(this.mPreferences, this.hwId, parametersChartLine.getParameterType());
        this.mEventBus.post(new ShouldUpdateChartParameterTypeEvent());
        getNavigator().goBack();
    }

    @Override // com.texa.care.navigation.Screen
    public ScreenType getType() {
        return ScreenType.DIALOG;
    }

    public class ShouldUpdateChartParameterTypeEvent {
        public ShouldUpdateChartParameterTypeEvent() {
        }
    }
}
