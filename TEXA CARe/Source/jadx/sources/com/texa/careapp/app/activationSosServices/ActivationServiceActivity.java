package com.texa.careapp.app.activationSosServices;

import android.content.ContentProviderOperation;
import android.content.Context;
import android.content.Intent;
import android.content.OperationApplicationException;
import android.os.Build;
import android.os.Bundle;
import android.os.RemoteException;
import android.provider.ContactsContract;
import android.view.MenuItem;
import androidx.appcompat.app.ActionBar;
import com.activeandroid.query.Select;
import com.texa.care.R;
import com.texa.care.navigation.Navigator;
import com.texa.careapp.Constants;
import com.texa.careapp.app.activationSosServices.AcceptationTermsSosServiceScreen;
import com.texa.careapp.app.events.CloseActivityEvent;
import com.texa.careapp.base.BaseActivity;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.ServiceDataModel;
import com.texa.careapp.utils.ServiceDataManager;
import java.util.ArrayList;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import timber.log.Timber;

/* JADX INFO: loaded from: classes.dex */
public class ActivationServiceActivity extends BaseActivity {

    @Inject
    protected DongleDataManager mDongleDataManager;

    @Inject
    protected EventBus mEventBus;
    private Navigator mNavigator;

    @Inject
    protected ServiceDataManager mServiceDataManager;
    private ArrayList<ContentProviderOperation> ops = new ArrayList<>();

    @Override // com.texa.careapp.base.BaseActivity
    protected boolean requiresAuthentication() {
        return true;
    }

    public static Intent buildIntent(Context context, ServiceDataModel serviceDataModel) {
        Intent intent = new Intent(context, (Class<?>) ActivationServiceActivity.class);
        intent.putExtra("SOS_ID", serviceDataModel.getUid());
        intent.addFlags(268435456);
        return intent;
    }

    @Override // com.texa.careapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_activation_service);
        getCareApplication().component().inject(this);
        String stringExtra = getIntent().getStringExtra("SOS_ID");
        if (stringExtra == null) {
            Timber.e("ServiceDataModel uuid == null", new Object[0]);
            throw new NullPointerException("ServiceDataModel uuid == null");
        }
        ServiceDataModel serviceByUid = this.mServiceDataManager.getServiceByUid(stringExtra);
        if (serviceByUid == null || ((serviceByUid.getIdType() != ServiceDataModel.DongleServiceId.SOS && serviceByUid.getIdType() != ServiceDataModel.DongleServiceId.SOS_LIGHT) || (serviceByUid.getStatus() != ServiceDataModel.DongleServiceStatus.AVAILABLE && serviceByUid.getStatus() == ServiceDataModel.DongleServiceStatus.ACTIVE && serviceByUid.isTermsAccepted()))) {
            Timber.e("ServiceDataModel is inconsistent", new Object[0]);
            throw new IllegalStateException("ServiceDataModel is inconsistent");
        }
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayHomeAsUpEnabled(true);
            supportActionBar.setDisplayShowHomeEnabled(true);
        }
        Navigator instanceFor = Navigator.getInstanceFor(this);
        this.mNavigator = instanceFor;
        instanceFor.setContainerResId(R.id.container);
        if (serviceByUid.getIdType() == ServiceDataModel.DongleServiceId.SOS && serviceByUid.isTrial()) {
            this.mNavigator.goTo(new ActivationTrialServiceScreen(serviceByUid));
            return;
        }
        if (serviceByUid.getIdType() == ServiceDataModel.DongleServiceId.SOS) {
            this.mNavigator.goTo(new ActivationPlusServiceScreen(serviceByUid, this.mServiceDataManager.getAvailableSosLight(this.mUserDataManager.getUserCached())));
            return;
        }
        if (serviceByUid.getIdType() == ServiceDataModel.DongleServiceId.SOS_LIGHT) {
            ServiceDataModel availablePlus = getAvailablePlus();
            ServiceDataModel availableNotTrialPlus = getAvailableNotTrialPlus();
            if (availablePlus != null) {
                Navigator navigator = this.mNavigator;
                if (availableNotTrialPlus == null || availableNotTrialPlus.getStatus() != ServiceDataModel.DongleServiceStatus.AVAILABLE) {
                    availableNotTrialPlus = null;
                }
                navigator.goTo(new ActivationLightServiceScreen(serviceByUid, availableNotTrialPlus));
                return;
            }
            this.mNavigator.goTo(new ActivationLightForeignServiceScreen(serviceByUid));
        }
    }

    private ServiceDataModel getAvailablePlus() {
        return (ServiceDataModel) new Select().from(ServiceDataModel.class).where("hwid = ?", this.mDongleDataManager.getDongleModel().getHwid()).and("service_type = ?", ServiceDataModel.DongleServiceId.SOS).executeSingle();
    }

    private ServiceDataModel getAvailableNotTrialPlus() {
        return (ServiceDataModel) new Select().from(ServiceDataModel.class).where("hwid = ?", this.mDongleDataManager.getDongleModel().getHwid()).and("service_type = ?", ServiceDataModel.DongleServiceId.SOS).and("trial = ?", false).executeSingle();
    }

    @Override // com.texa.careapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        this.mEventBus.register(this);
    }

    @Override // com.texa.careapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        this.mEventBus.unregister(this);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.mNavigator.onBackPressed()) {
            return;
        }
        super.onBackPressed();
    }

    @Override // com.texa.careapp.base.BaseActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            onBackPressed();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (i == 100 && iArr[0] == 0) {
            try {
                getContentResolver().applyBatch("com.android.contacts", this.ops);
            } catch (OperationApplicationException | RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Subscribe
    public void onEvent(CloseActivityEvent closeActivityEvent) {
        if (closeActivityEvent.getActivity().equals(ActivationServiceActivity.class)) {
            Timber.d("TOS changed on server", new Object[0]);
            finish();
        }
    }

    @Subscribe
    public void onEvent(AcceptationTermsSosServiceScreen.ActivationCompletedEvent activationCompletedEvent) {
        addTexaContact();
    }

    private void addTexaContact() {
        this.ops.add(ContentProviderOperation.newInsert(ContactsContract.RawContacts.CONTENT_URI).withValue("account_type", null).withValue("account_name", null).build());
        addDisplayName(getString(R.string.texa_contact_display_name));
        addWorkNumber(Constants.TEXA_NUMBER);
        addCompany(Constants.TEXA_COMPANY_NAME);
        try {
            if (Build.VERSION.SDK_INT >= 23 && checkSelfPermission("android.permission.WRITE_CONTACTS") != 0) {
                requestPermissions(new String[]{"android.permission.WRITE_CONTACTS"}, 100);
            } else {
                getContentResolver().applyBatch("com.android.contacts", this.ops);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void addDisplayName(String str) {
        if (str != null) {
            this.ops.add(ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withValueBackReference("raw_contact_id", 0).withValue("mimetype", "vnd.android.cursor.item/name").withValue("data1", str).build());
        }
    }

    private void addWorkNumber(String str) {
        if (str != null) {
            this.ops.add(ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withValueBackReference("raw_contact_id", 0).withValue("mimetype", "vnd.android.cursor.item/phone_v2").withValue("data1", str).withValue("data2", 3).build());
        }
    }

    private void addCompany(String str) {
        if (str.equals("")) {
            return;
        }
        this.ops.add(ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withValueBackReference("raw_contact_id", 0).withValue("mimetype", "vnd.android.cursor.item/organization").withValue("data1", str).withValue("data2", 1).withValue("data2", 1).build());
    }
}
