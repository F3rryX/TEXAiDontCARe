package com.texa.careapp.app.diagnosis.tab.errorDTC;

import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;
import com.texa.care.R;
import com.texa.careapp.app.diagnosis.DiagnosisType;

/* JADX INFO: loaded from: classes2.dex */
public class ErrorDTCListView extends LinearLayout {
    private IDTCViewPresenter mPresenter;
    private View mView;

    public ErrorDTCListView(Context context, DiagnosisType diagnosisType) {
        super(context);
        init(context, diagnosisType);
    }

    /* JADX INFO: renamed from: com.texa.careapp.app.diagnosis.tab.errorDTC.ErrorDTCListView$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$careapp$app$diagnosis$DiagnosisType;

        static {
            int[] iArr = new int[DiagnosisType.values().length];
            $SwitchMap$com$texa$careapp$app$diagnosis$DiagnosisType = iArr;
            try {
                iArr[DiagnosisType.ADVANCED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$texa$careapp$app$diagnosis$DiagnosisType[DiagnosisType.STANDARD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private void init(Context context, DiagnosisType diagnosisType) {
        if (AnonymousClass1.$SwitchMap$com$texa$careapp$app$diagnosis$DiagnosisType[diagnosisType.ordinal()] == 1) {
            this.mView = inflate(context, R.layout.advanced_dtc_layout, this);
        } else {
            this.mView = inflate(context, R.layout.lamps_status_dtc_layout, this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mPresenter.destroySub();
    }

    public void setPresenter(IDTCViewPresenter iDTCViewPresenter) {
        this.mPresenter = iDTCViewPresenter;
        iDTCViewPresenter.afterViewInjection(this.mView);
    }
}
