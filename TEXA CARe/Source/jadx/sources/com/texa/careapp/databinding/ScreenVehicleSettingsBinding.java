package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.Spinner;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;
import com.texa.careapp.views.EditableDateView;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenVehicleSettingsBinding extends ViewDataBinding {
    public final Button deleteVehicle;
    public final EditableDateView editDateViewAutoClub;
    public final EditableDateView editDateViewCarRata;
    public final EditableDateView editDateViewExpExhaust;
    public final EditableDateView editDateViewExpInspection;
    public final EditableDateView editDateViewExpInsurance;
    public final EditableDateView editDateViewExpTax;
    public final EditableDateView editDateViewExpTheftFireInsurance;
    public final EditableDateView editDateViewGarage;
    public final EditableDateView editDateViewInsuranceRata;
    public final EditableDateView editDateViewPark;
    public final EditableDateView editDateViewPassAutostrade;
    public final EditableDateView editDateViewPassZtl;
    public final EditableDateView editDateViewTheftFireInsuranceRata;
    public final EditableDateView editDateViewWarranty;
    public final TextView editTextColor;
    public final EditText editTextExpTyresFitting;
    public final EditText editTextExpTyresSwap;
    public final TextView editTextRegistrationDate;
    public final TextView editTextUserOdometer;
    public final TextView editTextUserPlate;
    public final RelativeLayout layoutAddThreshold;
    public final ImageView layoutAddThresholdIcon;
    public final RelativeLayout layoutAutoClub;
    public final RelativeLayout layoutCarRata;
    public final LinearLayout layoutExpExhaust;
    public final LinearLayout layoutExpInspection;
    public final LinearLayout layoutExpInsurance;
    public final LinearLayout layoutExpTax;
    public final LinearLayout layoutExpTheftFireInsurance;
    public final RelativeLayout layoutGarage;
    public final RelativeLayout layoutInsuranceRata;
    public final RelativeLayout layoutPark;
    public final RelativeLayout layoutPassAutostrade;
    public final RelativeLayout layoutPassZtl;
    public final RelativeLayout layoutTheftFireInsuranceRata;
    public final LinearLayout layoutTyresType;
    public final RelativeLayout layoutWarranty;
    public final LinearLayout odometerButton;
    public final LinearLayout otherContainer;
    public final ScrollView settingsVehicleParentLayout;
    public final Spinner tyresTypeSpinner;

    protected ScreenVehicleSettingsBinding(Object obj, View view, int i, Button button, EditableDateView editableDateView, EditableDateView editableDateView2, EditableDateView editableDateView3, EditableDateView editableDateView4, EditableDateView editableDateView5, EditableDateView editableDateView6, EditableDateView editableDateView7, EditableDateView editableDateView8, EditableDateView editableDateView9, EditableDateView editableDateView10, EditableDateView editableDateView11, EditableDateView editableDateView12, EditableDateView editableDateView13, EditableDateView editableDateView14, TextView textView, EditText editText, EditText editText2, TextView textView2, TextView textView3, TextView textView4, RelativeLayout relativeLayout, ImageView imageView, RelativeLayout relativeLayout2, RelativeLayout relativeLayout3, LinearLayout linearLayout, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, LinearLayout linearLayout5, RelativeLayout relativeLayout4, RelativeLayout relativeLayout5, RelativeLayout relativeLayout6, RelativeLayout relativeLayout7, RelativeLayout relativeLayout8, RelativeLayout relativeLayout9, LinearLayout linearLayout6, RelativeLayout relativeLayout10, LinearLayout linearLayout7, LinearLayout linearLayout8, ScrollView scrollView, Spinner spinner) {
        super(obj, view, i);
        this.deleteVehicle = button;
        this.editDateViewAutoClub = editableDateView;
        this.editDateViewCarRata = editableDateView2;
        this.editDateViewExpExhaust = editableDateView3;
        this.editDateViewExpInspection = editableDateView4;
        this.editDateViewExpInsurance = editableDateView5;
        this.editDateViewExpTax = editableDateView6;
        this.editDateViewExpTheftFireInsurance = editableDateView7;
        this.editDateViewGarage = editableDateView8;
        this.editDateViewInsuranceRata = editableDateView9;
        this.editDateViewPark = editableDateView10;
        this.editDateViewPassAutostrade = editableDateView11;
        this.editDateViewPassZtl = editableDateView12;
        this.editDateViewTheftFireInsuranceRata = editableDateView13;
        this.editDateViewWarranty = editableDateView14;
        this.editTextColor = textView;
        this.editTextExpTyresFitting = editText;
        this.editTextExpTyresSwap = editText2;
        this.editTextRegistrationDate = textView2;
        this.editTextUserOdometer = textView3;
        this.editTextUserPlate = textView4;
        this.layoutAddThreshold = relativeLayout;
        this.layoutAddThresholdIcon = imageView;
        this.layoutAutoClub = relativeLayout2;
        this.layoutCarRata = relativeLayout3;
        this.layoutExpExhaust = linearLayout;
        this.layoutExpInspection = linearLayout2;
        this.layoutExpInsurance = linearLayout3;
        this.layoutExpTax = linearLayout4;
        this.layoutExpTheftFireInsurance = linearLayout5;
        this.layoutGarage = relativeLayout4;
        this.layoutInsuranceRata = relativeLayout5;
        this.layoutPark = relativeLayout6;
        this.layoutPassAutostrade = relativeLayout7;
        this.layoutPassZtl = relativeLayout8;
        this.layoutTheftFireInsuranceRata = relativeLayout9;
        this.layoutTyresType = linearLayout6;
        this.layoutWarranty = relativeLayout10;
        this.odometerButton = linearLayout7;
        this.otherContainer = linearLayout8;
        this.settingsVehicleParentLayout = scrollView;
        this.tyresTypeSpinner = spinner;
    }

    public static ScreenVehicleSettingsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenVehicleSettingsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenVehicleSettingsBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_vehicle_settings, viewGroup, z, obj);
    }

    public static ScreenVehicleSettingsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenVehicleSettingsBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenVehicleSettingsBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_vehicle_settings, null, false, obj);
    }

    public static ScreenVehicleSettingsBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenVehicleSettingsBinding bind(View view, Object obj) {
        return (ScreenVehicleSettingsBinding) bind(obj, view, R.layout.screen_vehicle_settings);
    }
}
