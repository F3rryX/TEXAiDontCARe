package com.texa.careapp.app.dashboard.vehicle;

import android.R;
import android.content.Context;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import com.texa.careapp.CareApplication;
import com.texa.careapp.carelib.CommunicationObservable;
import com.texa.careapp.databinding.FragmentDashboardVehicleBinding;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.utils.Utils;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import javax.inject.Inject;

/* JADX INFO: loaded from: classes2.dex */
public class VehiclePresenter {
    static final int CARE_COLOR_GREEN = 1;
    static final int CARE_COLOR_ORANGE = 0;
    static final int CARE_COLOR_RED = 3;
    static final int CARE_COLOR_WHITE = 2;
    private int careCondition;
    private ImageView mCarIconStatus;
    private AppCompatTextView mCarName;
    private TextView mCarStatus;

    @Inject
    protected Context mContext;
    private VehicleModel vehicleModel;

    @Retention(RetentionPolicy.SOURCE)
    @interface CareColor {
    }

    public static int getIconColor(int i) {
        return i != 0 ? i != 1 ? (i == 2 || i != 3) ? R.color.white : com.texa.care.R.color.error : com.texa.care.R.color.ok : com.texa.care.R.color.warning;
    }

    VehiclePresenter(CareApplication.ApplicationComponent applicationComponent, VehicleModel vehicleModel, int i) {
        applicationComponent.inject(this);
        this.vehicleModel = vehicleModel;
        this.careCondition = i;
    }

    public void afterViewInjection(FragmentDashboardVehicleBinding fragmentDashboardVehicleBinding) {
        this.mCarName = fragmentDashboardVehicleBinding.fragmentDashboardVehicleName;
        this.mCarStatus = fragmentDashboardVehicleBinding.fragmentDashboardVehicleStatus;
        this.mCarIconStatus = fragmentDashboardVehicleBinding.fragmentDashboardVehicleIcon;
        displayVehicleName(this.vehicleModel);
        displayVehicleTitle(this.careCondition);
        displayVehicleIcon(this.careCondition);
    }

    private void displayVehicleName(VehicleModel vehicleModel) {
        String vehicleModel2 = Utils.formatVehicleModel(vehicleModel);
        if (vehicleModel2.length() > 0) {
            this.mCarName.setText(vehicleModel2);
            this.mCarName.setVisibility(0);
        } else {
            this.mCarName.setVisibility(8);
        }
    }

    void displayVehicleTitle(int i) {
        String string;
        if (i == 0) {
            string = this.mContext.getString(com.texa.care.R.string.vehicle_status_connect_not_config);
        } else if (i == 1) {
            string = this.mContext.getString(com.texa.care.R.string.vehicle_status_connected);
        } else if (i == 3) {
            string = this.mContext.getString(com.texa.care.R.string.state_memory_problem);
        } else {
            string = this.mContext.getString(com.texa.care.R.string.vehicle_status_not_connected);
        }
        this.mCarStatus.setText(string);
    }

    void displayVehicleIcon(int i) {
        setIcon(i);
    }

    public static Integer careConditions(Integer num, CommunicationObservable.Status status) {
        if (status == CommunicationObservable.Status.CARE_NOT_CONNECTED) {
            return 2;
        }
        if (num.intValue() == 4) {
            return 1;
        }
        if (num.intValue() == 5 || num.intValue() == 6) {
            return 3;
        }
        return 0;
    }

    private boolean setIcon(int i) {
        int colorResource;
        if (i == 0) {
            colorResource = Utils.getColorResource(this.mContext, com.texa.care.R.color.warning);
        } else if (i == 1) {
            colorResource = Utils.getColorResource(this.mContext, com.texa.care.R.color.ok);
        } else if (i != 2) {
            colorResource = i != 3 ? -1 : Utils.getColorResource(this.mContext, com.texa.care.R.color.error);
        } else {
            colorResource = Utils.getColorResource(this.mContext, R.color.white);
        }
        this.mCarIconStatus.setColorFilter(colorResource);
        return true;
    }
}
