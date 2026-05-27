package com.texa.careapp.app.ecodriving.pager;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import androidx.databinding.DataBindingUtil;
import com.texa.care.R;
import com.texa.careapp.databinding.ScreenEcoDrivingDayBinding;
import java.util.Observable;
import java.util.Observer;

/* JADX INFO: loaded from: classes2.dex */
public class WeekView extends LinearLayout implements Observer {
    private ScreenEcoDrivingDayBinding mBinding;
    private WeekPresenter mPresenter;

    public WeekView(Context context) {
        super(context);
        init(context);
    }

    public WeekView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context);
    }

    public WeekView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context);
    }

    private void init(Context context) {
        this.mBinding = (ScreenEcoDrivingDayBinding) DataBindingUtil.inflate(LayoutInflater.from(context), R.layout.screen_eco_driving_day, this, true);
    }

    public void setPresenter(WeekPresenter weekPresenter) {
        this.mPresenter = weekPresenter;
        weekPresenter.afterViewInjection(this.mBinding);
    }

    @Override // java.util.Observer
    public void update(Observable observable, Object obj) {
        this.mPresenter.updateSelected(((Long) obj).longValue());
    }
}
