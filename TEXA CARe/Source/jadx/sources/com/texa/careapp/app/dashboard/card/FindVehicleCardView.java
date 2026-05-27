package com.texa.careapp.app.dashboard.card;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import androidx.databinding.DataBindingUtil;
import com.texa.care.R;
import com.texa.careapp.databinding.DashboardCardFindVehicleBinding;
import java.util.Observable;
import java.util.Observer;

/* JADX INFO: loaded from: classes2.dex */
public class FindVehicleCardView extends LinearLayout implements Observer {
    private static final String TAG = "FindVehicleCardView";
    private DashboardCardFindVehicleBinding mBinding;
    private FindVehicleCardViewPresenter mPresenter;

    public FindVehicleCardView(Context context) {
        super(context);
        init(context);
    }

    public FindVehicleCardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context);
    }

    public FindVehicleCardView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context);
    }

    private void init(Context context) {
        this.mBinding = (DashboardCardFindVehicleBinding) DataBindingUtil.inflate(LayoutInflater.from(context), R.layout.dashboard_card_find_vehicle, this, true);
    }

    public void setPresenter(FindVehicleCardViewPresenter findVehicleCardViewPresenter) {
        this.mPresenter = findVehicleCardViewPresenter;
        findVehicleCardViewPresenter.afterViewInjection(this.mBinding);
    }

    @Override // java.util.Observer
    public void update(Observable observable, Object obj) {
        this.mPresenter.updateCard();
    }
}
