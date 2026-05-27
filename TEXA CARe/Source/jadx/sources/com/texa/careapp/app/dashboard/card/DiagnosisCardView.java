package com.texa.careapp.app.dashboard.card;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import androidx.databinding.DataBindingUtil;
import com.texa.care.R;
import com.texa.careapp.databinding.DashboardCardDiagnosisBinding;
import java.util.Observable;
import java.util.Observer;

/* JADX INFO: loaded from: classes2.dex */
public class DiagnosisCardView extends LinearLayout implements Observer {
    private static final String TAG = "DiagnosisCardView";
    private DashboardCardDiagnosisBinding mBinding;
    private DiagnosisCardViewPresenter mPresenter;

    public DiagnosisCardView(Context context) {
        super(context);
        init(context);
    }

    public DiagnosisCardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context);
    }

    public DiagnosisCardView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context);
    }

    private void init(Context context) {
        this.mBinding = (DashboardCardDiagnosisBinding) DataBindingUtil.inflate(LayoutInflater.from(context), R.layout.dashboard_card_diagnosis, this, true);
    }

    public void setPresenter(DiagnosisCardViewPresenter diagnosisCardViewPresenter) {
        this.mPresenter = diagnosisCardViewPresenter;
        diagnosisCardViewPresenter.afterViewInjection(this.mBinding);
    }

    @Override // java.util.Observer
    public void update(Observable observable, Object obj) {
        this.mPresenter.updateCard();
    }
}
