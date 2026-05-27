package com.texa.careapp.app.dashboard.card;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import androidx.databinding.DataBindingUtil;
import com.texa.care.R;
import com.texa.careapp.databinding.DashboardCardScheduleBinding;
import java.util.Observable;
import java.util.Observer;

/* JADX INFO: loaded from: classes2.dex */
public class ScheduleCardView extends LinearLayout implements Observer {
    private static final String TAG = "ScheduleCardView";
    private DashboardCardScheduleBinding mBinding;
    private ScheduleCardViewPresenter mPresenter;

    public ScheduleCardView(Context context) {
        super(context);
        init(context);
    }

    public ScheduleCardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context);
    }

    public ScheduleCardView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context);
    }

    private void init(Context context) {
        this.mBinding = (DashboardCardScheduleBinding) DataBindingUtil.inflate(LayoutInflater.from(context), R.layout.dashboard_card_schedule, this, true);
    }

    public void setPresenter(ScheduleCardViewPresenter scheduleCardViewPresenter) {
        this.mPresenter = scheduleCardViewPresenter;
        scheduleCardViewPresenter.afterViewInjection(this.mBinding);
    }

    public ScheduleCardViewPresenter getPresenter() {
        return this.mPresenter;
    }

    @Override // java.util.Observer
    public void update(Observable observable, Object obj) {
        this.mPresenter.updateCard();
    }
}
