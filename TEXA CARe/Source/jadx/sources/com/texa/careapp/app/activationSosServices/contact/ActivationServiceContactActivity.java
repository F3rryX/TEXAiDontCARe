package com.texa.careapp.app.activationSosServices.contact;

import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.provider.ContactsContract;
import android.view.MenuItem;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import com.texa.care.R;
import com.texa.care.navigation.Navigator;
import com.texa.careapp.CareApplication;
import com.texa.careapp.app.activationSosServices.ActivationLightServiceScreen;
import com.texa.careapp.app.activationSosServices.HaveToCheckConsistentData;
import com.texa.careapp.app.events.CancelProgressEvent;
import com.texa.careapp.app.events.CloseActivityEvent;
import com.texa.careapp.app.events.ShowProgressEvent;
import com.texa.careapp.base.BaseActivity;
import com.texa.careapp.emergency.ContactType;
import com.texa.careapp.model.ContactModel;
import com.texa.careapp.utils.UserDataManager;
import com.texa.careapp.utils.permission.CorePermission;
import java.util.ArrayList;
import java.util.UUID;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class ActivationServiceContactActivity extends BaseActivity {
    public static final int PICK_CONTACT = 101;
    private boolean isSosLight = false;
    protected CareApplication mCareApplication;

    @Inject
    protected EventBus mEventBus;
    private Navigator mNavigator;
    CorePermission.PermissionRequestObject mReadContactPermissionRequest;

    @Inject
    UserDataManager mUserDataManager;
    ActivationServiceContactScreen sosContactPickerScreen;

    @Override // com.texa.careapp.base.BaseActivity
    protected boolean requiresAuthentication() {
        return true;
    }

    public static Intent buildIntent(Context context) {
        Intent intent = new Intent(context, (Class<?>) ActivationServiceContactActivity.class);
        intent.addFlags(268435456);
        return intent;
    }

    @Override // com.texa.careapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_activation_service_contact);
        CareApplication careApplication = getCareApplication();
        this.mCareApplication = careApplication;
        careApplication.component().inject(this);
        if (getIntent() != null && getIntent().getClass().getSimpleName().equals(ActivationLightServiceScreen.TAG)) {
            this.isSosLight = true;
        }
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayHomeAsUpEnabled(true);
            supportActionBar.setDisplayShowHomeEnabled(true);
        }
        Navigator instanceFor = Navigator.getInstanceFor(this);
        this.mNavigator = instanceFor;
        instanceFor.setContainerResId(R.id.container);
        ActivationServiceContactScreen activationServiceContactScreen = new ActivationServiceContactScreen(this.mCareApplication, this, this.isSosLight);
        this.sosContactPickerScreen = activationServiceContactScreen;
        this.mNavigator.goTo(activationServiceContactScreen);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.mNavigator.onBackPressed()) {
            return;
        }
        this.mEventBus.post(new HaveToCheckConsistentData(false));
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

    public CorePermission.PermissionRequestObject getReadContactPermissionRequest() {
        CorePermission.PermissionRequestObject permissionRequestObjectRequest = CorePermission.with((AppCompatActivity) this).request(CorePermission.USE_CONTACTS);
        this.mReadContactPermissionRequest = permissionRequestObjectRequest;
        return permissionRequestObjectRequest;
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) throws Throwable {
        if (i2 == -1 && i == 101) {
            ContactModel contactModel = new ContactModel();
            Cursor cursor = null;
            try {
                try {
                    Cursor cursorQuery = getContentResolver().query(intent.getData(), null, null, null, null);
                    if (cursorQuery != null) {
                        try {
                            int columnIndex = cursorQuery.getColumnIndex("display_name");
                            if (cursorQuery.moveToFirst()) {
                                contactModel.setTitle(cursorQuery.getString(columnIndex));
                                if (contactModel.getTitle().length() > 0) {
                                    contactModel.setUid(UUID.randomUUID().toString());
                                    contactModel.setUser(this.mUserDataManager.getUserCached());
                                    contactModel.setType(ContactType.USER_CELL_SOS.toString());
                                    cursorQuery = getContentResolver().query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, new String[]{"data1", "data3"}, "contact_id = ? ", new String[]{cursorQuery.getString(cursorQuery.getColumnIndex("_id"))}, null);
                                    ArrayList arrayList = new ArrayList();
                                    if (cursorQuery != null && cursorQuery.moveToFirst()) {
                                        do {
                                            arrayList.add(cursorQuery.getString(cursorQuery.getColumnIndex("data1")));
                                            contactModel.setPhoneNumber(cursorQuery.getString(cursorQuery.getColumnIndex("data1")));
                                        } while (cursorQuery.moveToNext());
                                        contactModel.setPhoneNumbers(arrayList);
                                        if (arrayList.size() > 1) {
                                            contactModel.setPhoneNumber(null);
                                        }
                                    }
                                }
                            }
                        } catch (Exception e) {
                            e = e;
                            cursor = cursorQuery;
                            Timber.e(e, "ERROR RETRIEVING CONTACT", new Object[0]);
                            if (cursor != null) {
                                cursor.close();
                            }
                        } catch (Throwable th) {
                            th = th;
                            cursor = cursorQuery;
                            if (cursor != null) {
                                cursor.close();
                            }
                            throw th;
                        }
                    }
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Exception e2) {
                e = e2;
            }
            this.sosContactPickerScreen.setSosContact(contactModel);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        CorePermission.PermissionRequestObject permissionRequestObject = this.mReadContactPermissionRequest;
        if (permissionRequestObject != null) {
            permissionRequestObject.onRequestPermissionsResult(i, strArr, iArr);
        }
        super.onRequestPermissionsResult(i, strArr, iArr);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(ShowProgressEvent showProgressEvent) {
        createProgressDialogScreen(showProgressEvent.getMessage().toString());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(CancelProgressEvent cancelProgressEvent) {
        dismissProgressDialogScreen();
    }

    @Subscribe
    public void onEvent(CloseActivityEvent closeActivityEvent) {
        if (closeActivityEvent.getActivity().equals(ActivationServiceContactActivity.class)) {
            finish();
        }
    }
}
