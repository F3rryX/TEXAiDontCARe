package com.texa.careapp.app.dashboard.card;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import androidx.databinding.DataBindingUtil;
import com.texa.care.R;
import com.texa.careapp.databinding.DashboardCardParametersBinding;
import java.util.Observable;
import java.util.Observer;

/* JADX INFO: loaded from: classes2.dex */
public class ParametersCardView extends LinearLayout implements Observer {
    private static final String TAG = "ParametersCardView";
    private DashboardCardParametersBinding mBinding;
    private ParametersCardViewPresenter mPresenter;

    public ParametersCardView(Context context) {
        super(context);
        init(context);
    }

    public ParametersCardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context);
    }

    public ParametersCardView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context);
    }

    private void init(Context context) {
        this.mBinding = (DashboardCardParametersBinding) DataBindingUtil.inflate(LayoutInflater.from(context), R.layout.dashboard_card_parameters, this, true);
    }

    public void setPresenter(ParametersCardViewPresenter parametersCardViewPresenter) {
        this.mPresenter = parametersCardViewPresenter;
        parametersCardViewPresenter.afterViewInjection(this.mBinding);
    }

    @Override // java.util.Observer
    public void update(Observable observable, Object obj) {
        this.mPresenter.updateCard();
    }
}
