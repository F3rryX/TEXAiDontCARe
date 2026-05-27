package com.texa.careapp.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.eftimoff.androipathview.PathView;
import com.texa.care.R;
import com.texa.careapp.app.diagnosis.DiagnosisScreen;
import com.texa.careapp.utils.databind.DataBindDiagnosis;
import com.texa.careapp.views.RelativeTimeTextView;

/* JADX INFO: loaded from: classes2.dex */
public class ScreenDiagnosisBindingImpl extends ScreenDiagnosisBinding {
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    private long mDirtyFlags;
    private float mOldDiagnosisGetMeasureUnitFloat10f;
    private float mOldDiagnosisGetMeasureUnitFloat15f;
    private float mOldDiagnosisGetMeasureUnitFloat20f;
    private float mOldDiagnosisGetMeasureUnitFloat225f;
    private float mOldDiagnosisGetMeasureUnitFloat25f;
    private float mOldDiagnosisGetMeasureUnitFloat35f;
    private float mOldDiagnosisGetMeasureUnitFloat40f;
    private float mOldDiagnosisGetMeasureUnitFloat60f;
    private float mOldDiagnosisGetWidth;
    private final TextView mboundView1;
    private final RelativeLayout mboundView2;
    private final LinearLayout mboundView25;
    private final LinearLayout mboundView26;
    private final LinearLayout mboundView27;
    private final LinearLayout mboundView28;
    private final TextView mboundView3;

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(R.id.diagnosis_car_layout, 29);
        sparseIntArray.put(R.id.diagnosis_car_name, 30);
        sparseIntArray.put(R.id.diagnosis_diagnosis_status, 31);
        sparseIntArray.put(R.id.diagnosis_diagnosis_status_placeholder, 32);
        sparseIntArray.put(R.id.diagnosis_advanced_text, 33);
        sparseIntArray.put(R.id.diagnosis_container, 34);
        sparseIntArray.put(R.id.diagnosis_engine_temperature_label, 35);
        sparseIntArray.put(R.id.diagnosis_engine_temperature_value, 36);
        sparseIntArray.put(R.id.diagnosis_service_label, 37);
        sparseIntArray.put(R.id.diagnosis_service_value, 38);
        sparseIntArray.put(R.id.diagnosis_battery_state_label, 39);
        sparseIntArray.put(R.id.diagnosis_battery_state_value, 40);
    }

    public ScreenDiagnosisBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 41, sIncludes, sViewsWithIds));
    }

    private ScreenDiagnosisBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ImageView) objArr[11], (ImageView) objArr[10], (ImageView) objArr[12], (TextView) objArr[33], (ImageView) objArr[23], (ImageView) objArr[22], (ImageView) objArr[24], (TextView) objArr[39], (TextView) objArr[40], (View) objArr[6], (LinearLayout) objArr[29], (RelativeLayout) objArr[4], (AppCompatTextView) objArr[30], (PathView) objArr[5], (LinearLayout) objArr[34], (RelativeTimeTextView) objArr[31], (TextView) objArr[32], (ImageView) objArr[17], (ImageView) objArr[16], (ImageView) objArr[18], (TextView) objArr[35], (TextView) objArr[36], (LinearLayout) objArr[0], (ImageView) objArr[20], (ImageView) objArr[19], (ImageView) objArr[21], (ImageView) objArr[14], (ImageView) objArr[13], (ImageView) objArr[15], (TextView) objArr[37], (TextView) objArr[38], (ImageView) objArr[8], (ImageView) objArr[7], (ImageView) objArr[9]);
        this.mDirtyFlags = -1L;
        this.diagnosisAdvancedCircle.setTag(null);
        this.diagnosisAdvancedElement.setTag(null);
        this.diagnosisAdvancedImage.setTag(null);
        this.diagnosisBatteryStateCircle.setTag(null);
        this.diagnosisBatteryStateElement.setTag(null);
        this.diagnosisBatteryStateImage.setTag(null);
        this.diagnosisCarBotPlaceholder.setTag(null);
        this.diagnosisCarLayoutContainer.setTag(null);
        this.diagnosisCarPathview.setTag(null);
        this.diagnosisEngineTemperatureCircle.setTag(null);
        this.diagnosisEngineTemperatureElement.setTag(null);
        this.diagnosisEngineTemperatureImage.setTag(null);
        this.diagnosisLayoutContainer.setTag(null);
        this.diagnosisMaintenanceScheduledCircle.setTag(null);
        this.diagnosisMaintenanceScheduledElement.setTag(null);
        this.diagnosisMaintenanceScheduledImage.setTag(null);
        this.diagnosisParametersCircle.setTag(null);
        this.diagnosisParametersElement.setTag(null);
        this.diagnosisParametersImage.setTag(null);
        this.diagnosisStandardCircle.setTag(null);
        this.diagnosisStandardElement.setTag(null);
        this.diagnosisStandardImage.setTag(null);
        TextView textView = (TextView) objArr[1];
        this.mboundView1 = textView;
        textView.setTag(null);
        RelativeLayout relativeLayout = (RelativeLayout) objArr[2];
        this.mboundView2 = relativeLayout;
        relativeLayout.setTag(null);
        LinearLayout linearLayout = (LinearLayout) objArr[25];
        this.mboundView25 = linearLayout;
        linearLayout.setTag(null);
        LinearLayout linearLayout2 = (LinearLayout) objArr[26];
        this.mboundView26 = linearLayout2;
        linearLayout2.setTag(null);
        LinearLayout linearLayout3 = (LinearLayout) objArr[27];
        this.mboundView27 = linearLayout3;
        linearLayout3.setTag(null);
        LinearLayout linearLayout4 = (LinearLayout) objArr[28];
        this.mboundView28 = linearLayout4;
        linearLayout4.setTag(null);
        TextView textView2 = (TextView) objArr[3];
        this.mboundView3 = textView2;
        textView2.setTag(null);
        setRootTag(view);
        invalidateAll();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 2L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.mDirtyFlags != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, Object obj) {
        if (2 != i) {
            return false;
        }
        setDiagnosis((DataBindDiagnosis) obj);
        return true;
    }

    @Override // com.texa.careapp.databinding.ScreenDiagnosisBinding
    public void setDiagnosis(DataBindDiagnosis dataBindDiagnosis) {
        this.mDiagnosis = dataBindDiagnosis;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(2);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j;
        float f;
        float width;
        float f2;
        float measureUnit;
        float f3;
        float measureUnit2;
        float measureUnit3;
        float measureUnit4;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0L;
        }
        DataBindDiagnosis dataBindDiagnosis = this.mDiagnosis;
        long j2 = j & 3;
        float measureUnit5 = 0.0f;
        if (j2 == 0 || dataBindDiagnosis == null) {
            f = 0.0f;
            width = 0.0f;
            f2 = 0.0f;
            measureUnit = 0.0f;
            f3 = 0.0f;
            measureUnit2 = 0.0f;
            measureUnit3 = 0.0f;
            measureUnit4 = 0.0f;
        } else {
            float measureUnit6 = dataBindDiagnosis.getMeasureUnit(6.0f);
            float measureUnit7 = dataBindDiagnosis.getMeasureUnit(4.0f);
            width = dataBindDiagnosis.getWidth();
            float measureUnit8 = dataBindDiagnosis.getMeasureUnit(1.5f);
            measureUnit = dataBindDiagnosis.getMeasureUnit(3.5f);
            measureUnit2 = dataBindDiagnosis.getMeasureUnit(2.0f);
            measureUnit3 = dataBindDiagnosis.getMeasureUnit(2.25f);
            measureUnit4 = dataBindDiagnosis.getMeasureUnit(2.5f);
            f2 = measureUnit7;
            f = measureUnit6;
            measureUnit5 = dataBindDiagnosis.getMeasureUnit(1.0f);
            f3 = measureUnit8;
        }
        if (j2 != 0) {
            DiagnosisScreen.setLayoutWidth(this.diagnosisAdvancedCircle, this.mOldDiagnosisGetMeasureUnitFloat10f, measureUnit5);
            DiagnosisScreen.setLayoutHeight(this.diagnosisAdvancedCircle, this.mOldDiagnosisGetMeasureUnitFloat10f, measureUnit5);
            DiagnosisScreen.setLayoutWidth(this.diagnosisAdvancedElement, this.mOldDiagnosisGetMeasureUnitFloat10f, measureUnit5);
            DiagnosisScreen.setLayoutHeight(this.diagnosisAdvancedElement, this.mOldDiagnosisGetMeasureUnitFloat25f, measureUnit4);
            DiagnosisScreen.setLayoutWidth(this.diagnosisAdvancedImage, this.mOldDiagnosisGetMeasureUnitFloat10f, measureUnit5);
            DiagnosisScreen.setLayoutHeight(this.diagnosisAdvancedImage, this.mOldDiagnosisGetMeasureUnitFloat10f, measureUnit5);
            DiagnosisScreen.setLayoutWidth(this.diagnosisBatteryStateCircle, this.mOldDiagnosisGetMeasureUnitFloat10f, measureUnit5);
            DiagnosisScreen.setLayoutHeight(this.diagnosisBatteryStateCircle, this.mOldDiagnosisGetMeasureUnitFloat10f, measureUnit5);
            DiagnosisScreen.setLayoutWidth(this.diagnosisBatteryStateElement, this.mOldDiagnosisGetMeasureUnitFloat10f, measureUnit5);
            DiagnosisScreen.setLayoutHeight(this.diagnosisBatteryStateElement, this.mOldDiagnosisGetMeasureUnitFloat35f, measureUnit);
            DiagnosisScreen.setLayoutWidth(this.diagnosisBatteryStateImage, this.mOldDiagnosisGetMeasureUnitFloat10f, measureUnit5);
            DiagnosisScreen.setLayoutHeight(this.diagnosisBatteryStateImage, this.mOldDiagnosisGetMeasureUnitFloat10f, measureUnit5);
            DiagnosisScreen.setLayoutWidth(this.diagnosisCarBotPlaceholder, this.mOldDiagnosisGetWidth, width);
            DiagnosisScreen.setLayoutHeight(this.diagnosisCarBotPlaceholder, this.mOldDiagnosisGetMeasureUnitFloat20f, measureUnit2);
            DiagnosisScreen.setLayoutWidth(this.diagnosisCarLayoutContainer, this.mOldDiagnosisGetWidth, width);
            DiagnosisScreen.setLayoutHeight(this.diagnosisCarLayoutContainer, this.mOldDiagnosisGetMeasureUnitFloat60f, f);
            DiagnosisScreen.setLayoutWidth(this.diagnosisCarPathview, this.mOldDiagnosisGetWidth, width);
            DiagnosisScreen.setLayoutHeight(this.diagnosisCarPathview, this.mOldDiagnosisGetMeasureUnitFloat225f, measureUnit3);
            DiagnosisScreen.setLayoutWidth(this.diagnosisEngineTemperatureCircle, this.mOldDiagnosisGetMeasureUnitFloat10f, measureUnit5);
            DiagnosisScreen.setLayoutHeight(this.diagnosisEngineTemperatureCircle, this.mOldDiagnosisGetMeasureUnitFloat10f, measureUnit5);
            DiagnosisScreen.setLayoutWidth(this.diagnosisEngineTemperatureElement, this.mOldDiagnosisGetMeasureUnitFloat20f, measureUnit2);
            DiagnosisScreen.setLayoutHeight(this.diagnosisEngineTemperatureElement, this.mOldDiagnosisGetMeasureUnitFloat25f, measureUnit4);
            DiagnosisScreen.setLayoutWidth(this.diagnosisEngineTemperatureImage, this.mOldDiagnosisGetMeasureUnitFloat10f, measureUnit5);
            DiagnosisScreen.setLayoutHeight(this.diagnosisEngineTemperatureImage, this.mOldDiagnosisGetMeasureUnitFloat10f, measureUnit5);
            DiagnosisScreen.setLayoutWidth(this.diagnosisMaintenanceScheduledCircle, this.mOldDiagnosisGetMeasureUnitFloat10f, measureUnit5);
            DiagnosisScreen.setLayoutHeight(this.diagnosisMaintenanceScheduledCircle, this.mOldDiagnosisGetMeasureUnitFloat10f, measureUnit5);
            DiagnosisScreen.setLayoutWidth(this.diagnosisMaintenanceScheduledElement, this.mOldDiagnosisGetMeasureUnitFloat10f, measureUnit5);
            DiagnosisScreen.setLayoutHeight(this.diagnosisMaintenanceScheduledElement, this.mOldDiagnosisGetMeasureUnitFloat35f, measureUnit);
            DiagnosisScreen.setLayoutWidth(this.diagnosisMaintenanceScheduledImage, this.mOldDiagnosisGetMeasureUnitFloat10f, measureUnit5);
            DiagnosisScreen.setLayoutHeight(this.diagnosisMaintenanceScheduledImage, this.mOldDiagnosisGetMeasureUnitFloat10f, measureUnit5);
            DiagnosisScreen.setLayoutWidth(this.diagnosisParametersCircle, this.mOldDiagnosisGetMeasureUnitFloat10f, measureUnit5);
            DiagnosisScreen.setLayoutHeight(this.diagnosisParametersCircle, this.mOldDiagnosisGetMeasureUnitFloat10f, measureUnit5);
            DiagnosisScreen.setLayoutWidth(this.diagnosisParametersElement, this.mOldDiagnosisGetMeasureUnitFloat10f, measureUnit5);
            DiagnosisScreen.setLayoutHeight(this.diagnosisParametersElement, this.mOldDiagnosisGetMeasureUnitFloat20f, measureUnit2);
            DiagnosisScreen.setLayoutWidth(this.diagnosisParametersImage, this.mOldDiagnosisGetMeasureUnitFloat10f, measureUnit5);
            DiagnosisScreen.setLayoutHeight(this.diagnosisParametersImage, this.mOldDiagnosisGetMeasureUnitFloat10f, measureUnit5);
            DiagnosisScreen.setLayoutWidth(this.diagnosisStandardCircle, this.mOldDiagnosisGetMeasureUnitFloat10f, measureUnit5);
            DiagnosisScreen.setLayoutHeight(this.diagnosisStandardCircle, this.mOldDiagnosisGetMeasureUnitFloat10f, measureUnit5);
            DiagnosisScreen.setLayoutWidth(this.diagnosisStandardElement, this.mOldDiagnosisGetMeasureUnitFloat20f, measureUnit2);
            DiagnosisScreen.setLayoutHeight(this.diagnosisStandardElement, this.mOldDiagnosisGetMeasureUnitFloat40f, f2);
            DiagnosisScreen.setLayoutWidth(this.diagnosisStandardImage, this.mOldDiagnosisGetMeasureUnitFloat10f, measureUnit5);
            DiagnosisScreen.setLayoutHeight(this.diagnosisStandardImage, this.mOldDiagnosisGetMeasureUnitFloat10f, measureUnit5);
            DiagnosisScreen.setLayoutWidth(this.mboundView1, this.mOldDiagnosisGetMeasureUnitFloat15f, f3);
            DiagnosisScreen.setLayoutWidth(this.mboundView2, this.mOldDiagnosisGetMeasureUnitFloat15f, f3);
            DiagnosisScreen.setLayoutHeight(this.mboundView25, this.mOldDiagnosisGetMeasureUnitFloat10f, measureUnit5);
            DiagnosisScreen.setLayoutWidth(this.mboundView26, this.mOldDiagnosisGetMeasureUnitFloat15f, f3);
            DiagnosisScreen.setLayoutHeight(this.mboundView26, this.mOldDiagnosisGetMeasureUnitFloat10f, measureUnit5);
            DiagnosisScreen.setLayoutWidth(this.mboundView27, this.mOldDiagnosisGetMeasureUnitFloat15f, f3);
            DiagnosisScreen.setLayoutHeight(this.mboundView27, this.mOldDiagnosisGetMeasureUnitFloat10f, measureUnit5);
            DiagnosisScreen.setLayoutWidth(this.mboundView28, this.mOldDiagnosisGetMeasureUnitFloat15f, f3);
            DiagnosisScreen.setLayoutHeight(this.mboundView28, this.mOldDiagnosisGetMeasureUnitFloat10f, measureUnit5);
            DiagnosisScreen.setLayoutWidth(this.mboundView3, this.mOldDiagnosisGetMeasureUnitFloat15f, f3);
        }
        if (j2 != 0) {
            this.mOldDiagnosisGetMeasureUnitFloat10f = measureUnit5;
            this.mOldDiagnosisGetMeasureUnitFloat25f = measureUnit4;
            this.mOldDiagnosisGetMeasureUnitFloat35f = measureUnit;
            this.mOldDiagnosisGetWidth = width;
            this.mOldDiagnosisGetMeasureUnitFloat20f = measureUnit2;
            this.mOldDiagnosisGetMeasureUnitFloat60f = f;
            this.mOldDiagnosisGetMeasureUnitFloat225f = measureUnit3;
            this.mOldDiagnosisGetMeasureUnitFloat40f = f2;
            this.mOldDiagnosisGetMeasureUnitFloat15f = f3;
        }
    }
}
