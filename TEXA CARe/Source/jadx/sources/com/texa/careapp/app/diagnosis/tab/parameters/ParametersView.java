package com.texa.careapp.app.diagnosis.tab.parameters;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import androidx.databinding.DataBindingUtil;
import com.texa.care.R;
import com.texa.careapp.databinding.DiagnosisDataParametersLayoutV2Binding;

/* JADX INFO: loaded from: classes2.dex */
public class ParametersView extends LinearLayout {
    private DiagnosisDataParametersLayoutV2Binding mBinding;
    private ParametersViewPresenterV2 mPresenter;

    public ParametersView(Context context) {
        super(context);
        init(context);
    }

    public ParametersView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context);
    }

    public ParametersView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context);
    }

    private void init(Context context) {
        this.mBinding = (DiagnosisDataParametersLayoutV2Binding) DataBindingUtil.inflate(LayoutInflater.from(context), R.layout.diagnosis_data_parameters_layout_v2, this, true);
    }

    public void setPresenter(ParametersViewPresenterV2 parametersViewPresenterV2) {
        this.mPresenter = parametersViewPresenterV2;
        parametersViewPresenterV2.afterViewInjection(this.mBinding);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mPresenter.destroySub();
    }
}
