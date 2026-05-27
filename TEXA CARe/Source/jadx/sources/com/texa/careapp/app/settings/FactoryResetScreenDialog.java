package com.texa.careapp.app.settings;

import android.os.Handler;
import android.view.View;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.care.navigation.ScreenType;
import com.texa.careapp.CareApplication;
import com.texa.careapp.app.SplashActivity;
import com.texa.careapp.app.events.CancelProgressEvent;
import com.texa.careapp.app.events.ShowProgressEvent;
import com.texa.careapp.utils.LoginHelperRx;
import com.texa.carelib.care.accessory.Accessory;
import com.texa.carelib.care.accessory.FactoryResetFlag;
import com.texa.carelib.care.accessory.events.FactoryResetCompletedEvent;
import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.CareLibException;
import java.util.EnumSet;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class FactoryResetScreenDialog extends Screen {

    @Inject
    protected Accessory mAccessory;

    @Inject
    protected EventBus mEventBus;

    @Inject
    protected LoginHelperRx mLoginHelperRx;

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.screen_dialog_factory_reset;
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        ((CareApplication) getNavigator().getApplication()).component().inject(this);
        view.findViewById(R.id.screen_dialog_factory_reset_confirm).setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.settings.FactoryResetScreenDialog$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m386x5057d6b8(view2);
            }
        });
        view.findViewById(R.id.screen_dialog_factory_reset_undo).setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.settings.FactoryResetScreenDialog$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m387x518e2997(view2);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$0$com-texa-careapp-app-settings-FactoryResetScreenDialog, reason: not valid java name */
    public /* synthetic */ void m386x5057d6b8(View view) {
        factoryReset();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$1$com-texa-careapp-app-settings-FactoryResetScreenDialog, reason: not valid java name */
    public /* synthetic */ void m387x518e2997(View view) {
        goBack();
    }

    private void factoryReset() {
        ShowProgressEvent showProgressEvent = new ShowProgressEvent();
        showProgressEvent.setMessage(getContext().getString(R.string.wait_please));
        this.mEventBus.post(showProgressEvent);
        new Handler().postDelayed(new Runnable() { // from class: com.texa.careapp.app.settings.FactoryResetScreenDialog$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m388xa99ea946();
            }
        }, 3000L);
    }

    /* JADX INFO: renamed from: lambda$factoryReset$3$com-texa-careapp-app-settings-FactoryResetScreenDialog, reason: not valid java name */
    public /* synthetic */ void m388xa99ea946() {
        EventBus eventBus;
        CancelProgressEvent cancelProgressEvent;
        EnumSet<FactoryResetFlag> enumSetAllOf = EnumSet.allOf(FactoryResetFlag.class);
        enumSetAllOf.add(FactoryResetFlag.UserData);
        this.mLoginHelperRx.doLogOut(true);
        try {
            try {
                this.mAccessory.resetToFactory(enumSetAllOf, new Callback() { // from class: com.texa.careapp.app.settings.FactoryResetScreenDialog$$ExternalSyntheticLambda2
                    @Override // com.texa.carelib.core.Callback
                    public final void onCompleted(Object obj) {
                        FactoryResetScreenDialog.lambda$factoryReset$2((FactoryResetCompletedEvent) obj);
                    }
                });
                eventBus = this.mEventBus;
                cancelProgressEvent = new CancelProgressEvent();
            } catch (CareLibException e) {
                e.printStackTrace();
                eventBus = this.mEventBus;
                cancelProgressEvent = new CancelProgressEvent();
            }
            eventBus.post(cancelProgressEvent);
            getContext().startActivity(SplashActivity.buildIntent(getContext()));
        } catch (Throwable th) {
            this.mEventBus.post(new CancelProgressEvent());
            getContext().startActivity(SplashActivity.buildIntent(getContext()));
            throw th;
        }
    }

    static /* synthetic */ void lambda$factoryReset$2(FactoryResetCompletedEvent factoryResetCompletedEvent) {
        CareError error = factoryResetCompletedEvent.getError();
        if (error != null) {
            Timber.e("CareError %s", error.toString());
        }
    }

    @Override // com.texa.care.navigation.Screen
    public ScreenType getType() {
        return ScreenType.DIALOG;
    }

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return FactoryResetScreenDialog.class.getName();
    }
}
