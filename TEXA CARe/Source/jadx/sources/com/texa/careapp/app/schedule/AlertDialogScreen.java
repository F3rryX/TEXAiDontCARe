package com.texa.careapp.app.schedule;

import android.view.View;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.care.navigation.ScreenType;
import com.texa.careapp.databinding.ScreenAlertDialogBinding;
import com.texa.careapp.model.IScheduleModel;
import com.texa.careapp.model.ScheduleType;
import com.texa.careapp.utils.Utils;

/* JADX INFO: loaded from: classes2.dex */
public class AlertDialogScreen extends Screen {
    private static final String TAG = "AlertDialogScreen";
    private final IScheduleModel mSchedule;
    public TextView mSubtitle;
    public TextView mTitle;

    /* JADX INFO: renamed from: com.texa.careapp.app.schedule.AlertDialogScreen$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$careapp$model$ScheduleType = new int[ScheduleType.values().length];
    }

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.screen_alert_dialog;
    }

    public AlertDialogScreen(IScheduleModel iScheduleModel) {
        this.mSchedule = iScheduleModel;
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        ScreenAlertDialogBinding screenAlertDialogBinding = (ScreenAlertDialogBinding) DataBindingUtil.bind(view);
        this.mTitle = screenAlertDialogBinding.title;
        this.mSubtitle = screenAlertDialogBinding.subtitle;
        screenAlertDialogBinding.okButton.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.schedule.AlertDialogScreen$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.okButtonClicked(view2);
            }
        });
        this.mTitle.setText(Utils.getScheduleTitle(this.mSchedule, getNavigator().getContext()));
        int i = AnonymousClass1.$SwitchMap$com$texa$careapp$model$ScheduleType[this.mSchedule.getType().ordinal()];
        this.mSubtitle.setText(R.string.alert_dialog_subtitle_default);
    }

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return TAG;
    }

    @Override // com.texa.care.navigation.Screen
    public ScreenType getType() {
        return ScreenType.DIALOG;
    }

    public void okButtonClicked(View view) {
        getNavigator().goBack();
    }
}
