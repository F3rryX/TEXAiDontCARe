package com.texa.careapp.app.activationSosServices;

import android.view.View;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.careapp.CareApplication;
import com.texa.careapp.app.events.CloseActivityEvent;
import com.texa.careapp.base.BaseActivity;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes.dex */
public class NoSosServiceScreen extends Screen {
    CareApplication mApplication;

    @Inject
    EventBus mEventBus;

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return "NoSosServiceScreen";
    }

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.screen_no_sos_service;
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        CareApplication careApplication = (CareApplication) getNavigator().getApplication();
        this.mApplication = careApplication;
        careApplication.component().inject(this);
    }

    @Override // com.texa.care.navigation.Screen
    public boolean onBackPressed() {
        this.mEventBus.post(new CloseActivityEvent((Class<? extends BaseActivity>) NoSosServiceActivity.class));
        return true;
    }
}
