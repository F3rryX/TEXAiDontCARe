package com.texa.careapp.app.dashboard.card;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import androidx.databinding.DataBindingUtil;
import com.texa.care.R;
import com.texa.careapp.databinding.DashboardCardEcoDrivingBinding;
import java.util.Observable;
import java.util.Observer;

/* JADX INFO: loaded from: classes2.dex */
public class EcoDrivingCardView extends LinearLayout implements Observer {
    private static final String TAG = "EcoDrivingCardView";
    private DashboardCardEcoDrivingBinding mBinding;
    private EcoDrivingCardViewPresenter mPresenter;

    public EcoDrivingCardView(Context context) {
        super(context);
        init(context);
    }

    public EcoDrivingCardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context);
    }

    public EcoDrivingCardView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context);
    }

    private void init(Context context) {
        this.mBinding = (DashboardCardEcoDrivingBinding) DataBindingUtil.inflate(LayoutInflater.from(context), R.layout.dashboard_card_eco_driving, this, true);
    }

    public void setPresenter(EcoDrivingCardViewPresenter ecoDrivingCardViewPresenter) {
        this.mPresenter = ecoDrivingCardViewPresenter;
        ecoDrivingCardViewPresenter.afterViewInjection(this.mBinding);
    }

    @Override // java.util.Observer
    public void update(Observable observable, Object obj) {
        this.mPresenter.updateCard();
    }
}
