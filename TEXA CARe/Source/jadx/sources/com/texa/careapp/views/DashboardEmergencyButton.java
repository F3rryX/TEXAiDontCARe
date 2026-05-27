package com.texa.careapp.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.texa.care.R;
import com.texa.careapp.app.events.StartSosPrerequisiteActivityEvent;
import com.texa.careapp.app.sos.featuremanager.SosFeatureManager;
import com.texa.careapp.checks.Check;
import com.texa.careapp.utils.Utils;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import org.greenrobot.eventbus.EventBus;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class DashboardEmergencyButton extends FrameLayout {
    private AlertImageView mAlertIcon;
    private Disposable mDisposable;
    private AppCompatTextView mServiceStatusText;

    public DashboardEmergencyButton(Context context) {
        super(context);
        init(context);
    }

    public DashboardEmergencyButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context);
    }

    public DashboardEmergencyButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context);
    }

    public DashboardEmergencyButton(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        init(context);
    }

    private void init(Context context) {
        View viewInflate = inflate(context, R.layout.dashboard_emergency_button, this);
        this.mServiceStatusText = (AppCompatTextView) viewInflate.findViewById(R.id.emergency_button_status);
        this.mAlertIcon = (AlertImageView) viewInflate.findViewById(R.id.emergency_button_alert_icon);
    }

    public void updateServiceStatusText(CharSequence charSequence) {
        this.mServiceStatusText.setText(charSequence);
    }

    public void showAlertIcon(final EventBus eventBus) {
        this.mAlertIcon.showWithSlide();
        this.mAlertIcon.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.views.DashboardEmergencyButton$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                eventBus.post(new StartSosPrerequisiteActivityEvent());
            }
        });
    }

    public void hideAlertIcon() {
        this.mAlertIcon.hide();
        this.mAlertIcon.setOnClickListener(null);
    }

    public void bindTo(SosFeatureManager sosFeatureManager, final EventBus eventBus) {
        updateServiceStatusText(sosFeatureManager.getSosServiceStatusDescription(getContext()));
        if (sosFeatureManager.shouldCheckSosPrerequisites()) {
            this.mDisposable = sosFeatureManager.observeChecks().compose(Utils.applySchedulers()).subscribe(new Consumer() { // from class: com.texa.careapp.views.DashboardEmergencyButton$$ExternalSyntheticLambda1
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) throws Exception {
                    this.f$0.m668lambda$bindTo$1$comtexacareappviewsDashboardEmergencyButton(eventBus, (Check.Result) obj);
                }
            }, new Consumer() { // from class: com.texa.careapp.views.DashboardEmergencyButton$$ExternalSyntheticLambda2
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    Timber.e((Throwable) obj, "error observing sos checks", new Object[0]);
                }
            });
        }
    }

    /* JADX INFO: renamed from: lambda$bindTo$1$com-texa-careapp-views-DashboardEmergencyButton, reason: not valid java name */
    public /* synthetic */ void m668lambda$bindTo$1$comtexacareappviewsDashboardEmergencyButton(EventBus eventBus, Check.Result result) throws Exception {
        if (result != Check.Result.OK) {
            showAlertIcon(eventBus);
        } else {
            hideAlertIcon();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Utils.safeDispose(this.mDisposable);
    }
}
