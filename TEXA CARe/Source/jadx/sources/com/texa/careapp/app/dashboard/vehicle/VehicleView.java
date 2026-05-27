package com.texa.careapp.app.dashboard.vehicle;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import androidx.databinding.DataBindingUtil;
import com.texa.care.R;
import com.texa.careapp.databinding.FragmentDashboardVehicleBinding;
import java.util.Observable;
import java.util.Observer;

/* JADX INFO: loaded from: classes2.dex */
public class VehicleView extends LinearLayout implements Observer {
    private FragmentDashboardVehicleBinding mBinding;
    private VehiclePresenter mPresenter;

    public VehicleView(Context context) {
        super(context);
        init(context);
    }

    public VehicleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context);
    }

    public VehicleView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context);
    }

    private void init(Context context) {
        this.mBinding = (FragmentDashboardVehicleBinding) DataBindingUtil.inflate(LayoutInflater.from(context), R.layout.fragment_dashboard_vehicle, this, true);
    }

    public void setPresenter(VehiclePresenter vehiclePresenter) {
        this.mPresenter = vehiclePresenter;
        vehiclePresenter.afterViewInjection(this.mBinding);
    }

    @Override // java.util.Observer
    public void update(Observable observable, Object obj) {
        Integer num = (Integer) obj;
        this.mPresenter.displayVehicleTitle(num.intValue());
        this.mPresenter.displayVehicleIcon(num.intValue());
    }
}
