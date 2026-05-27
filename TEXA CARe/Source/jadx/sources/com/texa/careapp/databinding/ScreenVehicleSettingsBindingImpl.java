package com.texa.careapp.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.Spinner;
import android.widget.TextView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;
import com.texa.careapp.views.EditableDateView;

/* JADX INFO: loaded from: classes2.dex */
public class ScreenVehicleSettingsBindingImpl extends ScreenVehicleSettingsBinding {
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    private long mDirtyFlags;

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, Object obj) {
        return true;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(R.id.odometer_button, 1);
        sparseIntArray.put(R.id.edit_text_user_odometer, 2);
        sparseIntArray.put(R.id.edit_text_user_plate, 3);
        sparseIntArray.put(R.id.edit_text_color, 4);
        sparseIntArray.put(R.id.edit_text_registration_date, 5);
        sparseIntArray.put(R.id.layout_exp_inspection, 6);
        sparseIntArray.put(R.id.editDateView_exp_inspection, 7);
        sparseIntArray.put(R.id.edit_text_exp_tyres_fitting, 8);
        sparseIntArray.put(R.id.edit_text_exp_tyres_swap, 9);
        sparseIntArray.put(R.id.layout_tyres_type, 10);
        sparseIntArray.put(R.id.tyres_type_spinner, 11);
        sparseIntArray.put(R.id.layout_exp_theft_fire_insurance, 12);
        sparseIntArray.put(R.id.editDateView_exp_theft_fire_insurance, 13);
        sparseIntArray.put(R.id.layout_exp_tax, 14);
        sparseIntArray.put(R.id.editDateView_exp_tax, 15);
        sparseIntArray.put(R.id.layout_exp_insurance, 16);
        sparseIntArray.put(R.id.editDateView_exp_insurance, 17);
        sparseIntArray.put(R.id.layout_exp_exhaust, 18);
        sparseIntArray.put(R.id.editDateView_exp_exhaust, 19);
        sparseIntArray.put(R.id.layout_auto_club, 20);
        sparseIntArray.put(R.id.editDateView_auto_club, 21);
        sparseIntArray.put(R.id.layout_park, 22);
        sparseIntArray.put(R.id.editDateView_park, 23);
        sparseIntArray.put(R.id.layout_garage, 24);
        sparseIntArray.put(R.id.editDateView_garage, 25);
        sparseIntArray.put(R.id.layout_insurance_rata, 26);
        sparseIntArray.put(R.id.editDateView_insurance_rata, 27);
        sparseIntArray.put(R.id.layout_theft_fire_insurance_rata, 28);
        sparseIntArray.put(R.id.editDateView_theft_fire_insurance_rata, 29);
        sparseIntArray.put(R.id.layout_car_rata, 30);
        sparseIntArray.put(R.id.editDateView_car_rata, 31);
        sparseIntArray.put(R.id.layout_pass_autostrade, 32);
        sparseIntArray.put(R.id.editDateView_pass_autostrade, 33);
        sparseIntArray.put(R.id.layout_pass_ztl, 34);
        sparseIntArray.put(R.id.editDateView_pass_ztl, 35);
        sparseIntArray.put(R.id.layout_warranty, 36);
        sparseIntArray.put(R.id.editDateView_warranty, 37);
        sparseIntArray.put(R.id.layout_add_threshold, 38);
        sparseIntArray.put(R.id.layout_add_threshold_icon, 39);
        sparseIntArray.put(R.id.other_container, 40);
        sparseIntArray.put(R.id.delete_vehicle, 41);
    }

    public ScreenVehicleSettingsBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 42, sIncludes, sViewsWithIds));
    }

    private ScreenVehicleSettingsBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (Button) objArr[41], (EditableDateView) objArr[21], (EditableDateView) objArr[31], (EditableDateView) objArr[19], (EditableDateView) objArr[7], (EditableDateView) objArr[17], (EditableDateView) objArr[15], (EditableDateView) objArr[13], (EditableDateView) objArr[25], (EditableDateView) objArr[27], (EditableDateView) objArr[23], (EditableDateView) objArr[33], (EditableDateView) objArr[35], (EditableDateView) objArr[29], (EditableDateView) objArr[37], (TextView) objArr[4], (EditText) objArr[8], (EditText) objArr[9], (TextView) objArr[5], (TextView) objArr[2], (TextView) objArr[3], (RelativeLayout) objArr[38], (ImageView) objArr[39], (RelativeLayout) objArr[20], (RelativeLayout) objArr[30], (LinearLayout) objArr[18], (LinearLayout) objArr[6], (LinearLayout) objArr[16], (LinearLayout) objArr[14], (LinearLayout) objArr[12], (RelativeLayout) objArr[24], (RelativeLayout) objArr[26], (RelativeLayout) objArr[22], (RelativeLayout) objArr[32], (RelativeLayout) objArr[34], (RelativeLayout) objArr[28], (LinearLayout) objArr[10], (RelativeLayout) objArr[36], (LinearLayout) objArr[1], (LinearLayout) objArr[40], (ScrollView) objArr[0], (Spinner) objArr[11]);
        this.mDirtyFlags = -1L;
        this.settingsVehicleParentLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 1L;
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
    protected void executeBindings() {
        synchronized (this) {
            this.mDirtyFlags = 0L;
        }
    }
}
