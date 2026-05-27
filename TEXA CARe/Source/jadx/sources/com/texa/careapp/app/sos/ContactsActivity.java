package com.texa.careapp.app.sos;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.appcompat.app.ActionBar;
import com.texa.care.R;
import com.texa.care.navigation.Navigator;
import com.texa.careapp.base.BaseActivity;

/* JADX INFO: loaded from: classes2.dex */
public class ContactsActivity extends BaseActivity {
    private Navigator mNavigator;

    @Override // com.texa.careapp.base.BaseActivity
    protected boolean requiresAuthentication() {
        return false;
    }

    @Override // com.texa.careapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_contacts);
        getCareApplication().component().inject(this);
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayHomeAsUpEnabled(true);
            supportActionBar.setDisplayShowHomeEnabled(true);
        }
        Navigator instanceFor = Navigator.getInstanceFor(this);
        this.mNavigator = instanceFor;
        instanceFor.setContainerResId(R.id.container);
        this.mNavigator.goTo(new ContactsScreen(getCareApplication()));
    }

    public static Intent buildIntent(Context context) {
        Bundle bundle = new Bundle();
        Intent intent = new Intent(context, (Class<?>) ContactsActivity.class);
        intent.addFlags(268435456);
        intent.putExtras(bundle);
        return intent;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.mNavigator.onBackPressed()) {
            return;
        }
        super.onBackPressed();
    }
}
