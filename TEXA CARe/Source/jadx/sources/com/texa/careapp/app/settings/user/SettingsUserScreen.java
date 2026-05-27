package com.texa.careapp.app.settings.user;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Toast;
import androidx.databinding.DataBindingUtil;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.careapp.CareApplication;
import com.texa.careapp.FlavorDelegator;
import com.texa.careapp.app.activationSosServices.phone.ActivationPhoneNumberActivity;
import com.texa.careapp.databinding.ScreenSettingsUserBinding;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.model.ContactModel;
import com.texa.careapp.model.UserModel;
import com.texa.careapp.sync.CAReWorkerManager;
import com.texa.careapp.utils.LoginHelperRx;
import com.texa.careapp.utils.UserDataManager;
import com.texa.careapp.utils.Utils;
import com.texa.careapp.views.EditableDateView;
import java.util.Date;
import javax.inject.Inject;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class SettingsUserScreen extends Screen {
    private static final String TAG = "SettingsUserScreen";
    private LinearLayout UserLogoutItem;
    private EditText editText_email;
    private EditText editText_firstName;
    private EditText editText_lastName;
    private EditText editText_phoneNumber;
    private EditText editText_taxCode;

    @Inject
    protected CAReWorkerManager mCAReWorkerManager;

    @Inject
    protected Context mContext;
    private View mDivLogoutItem;
    private EditableDateView mDriverLicenseExpDate;

    @Inject
    protected FlavorDelegator mFlavorDelegator;
    private ImageView mIconUserAddress;

    @Inject
    protected LoginHelperRx mLoginHelperRx;
    private UserModel mUser;

    @Inject
    protected UserDataManager mUserDataManager;
    private String userFirstName = "";
    private String userLastName = "";
    private String userTaxCode = "";
    private String userEmail = "";
    private String userPhoneNumber = "";
    private Date userDriveLicenseExp = null;

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.screen_settings_user;
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        ((CareApplication) getNavigator().getApplication()).component().inject(this);
        ScreenSettingsUserBinding screenSettingsUserBinding = (ScreenSettingsUserBinding) DataBindingUtil.bind(view);
        this.editText_firstName = screenSettingsUserBinding.editTextUserFirstName;
        this.editText_lastName = screenSettingsUserBinding.editTextUserLastName;
        this.editText_taxCode = screenSettingsUserBinding.editTextUserFiscalCode;
        this.editText_email = screenSettingsUserBinding.editTextUserEmail;
        this.editText_phoneNumber = screenSettingsUserBinding.editTextUserPhoneNumber;
        this.mDriverLicenseExpDate = screenSettingsUserBinding.editDateViewUserDriverLicense;
        this.mIconUserAddress = screenSettingsUserBinding.iconSetUserAddress;
        this.UserLogoutItem = screenSettingsUserBinding.layoutUserLogout;
        this.mDivLogoutItem = screenSettingsUserBinding.divTopUserLogout;
        screenSettingsUserBinding.layoutSetUserAddress.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.settings.user.SettingsUserScreen$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m426xe03935d(view2);
            }
        });
        this.editText_phoneNumber.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.settings.user.SettingsUserScreen$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m427x3757e89e(view2);
            }
        });
        this.UserLogoutItem.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.settings.user.SettingsUserScreen$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m428x60ac3ddf(view2);
            }
        });
        this.editText_phoneNumber.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.texa.careapp.app.settings.user.SettingsUserScreen$$ExternalSyntheticLambda7
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view2, boolean z) {
                this.f$0.m429x8a009320(view2, z);
            }
        });
        screenSettingsUserBinding.layoutExpDriverLicense.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.settings.user.SettingsUserScreen$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m430xb354e861(view2);
            }
        });
        this.editText_firstName.addTextChangedListener(new TextWatcher() { // from class: com.texa.careapp.app.settings.user.SettingsUserScreen.1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                if (charSequence.toString().equals("")) {
                    SettingsUserScreen.this.editText_firstName.setError(SettingsUserScreen.this.mContext.getResources().getString(R.string.required_field));
                } else if (Utils.isName(charSequence.toString())) {
                    SettingsUserScreen.this.editText_firstName.setError(null);
                } else {
                    SettingsUserScreen.this.editText_firstName.setError(SettingsUserScreen.this.mContext.getResources().getString(R.string.character_not_valid));
                }
            }
        });
        this.editText_lastName.addTextChangedListener(new TextWatcher() { // from class: com.texa.careapp.app.settings.user.SettingsUserScreen.2
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                if (charSequence.toString().equals("")) {
                    SettingsUserScreen.this.editText_lastName.setError(SettingsUserScreen.this.mContext.getResources().getString(R.string.required_field));
                } else if (Utils.isName(charSequence.toString())) {
                    SettingsUserScreen.this.editText_lastName.setError(null);
                } else {
                    SettingsUserScreen.this.editText_lastName.setError(SettingsUserScreen.this.mContext.getResources().getString(R.string.character_not_valid));
                }
            }
        });
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$0$com-texa-careapp-app-settings-user-SettingsUserScreen, reason: not valid java name */
    public /* synthetic */ void m426xe03935d(View view) {
        goToSettingsUserAddressActivity();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$1$com-texa-careapp-app-settings-user-SettingsUserScreen, reason: not valid java name */
    public /* synthetic */ void m427x3757e89e(View view) {
        goToNumberValidatorScreen();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$2$com-texa-careapp-app-settings-user-SettingsUserScreen, reason: not valid java name */
    public /* synthetic */ void m428x60ac3ddf(View view) {
        requestLogoutDialog();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$3$com-texa-careapp-app-settings-user-SettingsUserScreen, reason: not valid java name */
    public /* synthetic */ void m429x8a009320(View view, boolean z) {
        if (z) {
            goToNumberValidatorScreen();
        }
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$4$com-texa-careapp-app-settings-user-SettingsUserScreen, reason: not valid java name */
    public /* synthetic */ void m430xb354e861(View view) {
        this.mDriverLicenseExpDate.showDatePicker();
    }

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return TAG;
    }

    @Override // com.texa.care.navigation.Screen
    public void onResume() {
        super.onResume();
        Timber.d("%s onResume", TAG);
        loadUser();
        initEditText();
        showIconEmptyField();
        enabledUserLogout();
    }

    @Override // com.texa.care.navigation.Screen
    public void onPause() {
        super.onPause();
        String str = TAG;
        Timber.d("%s onPause", str);
        if (this.editText_lastName.getText().toString().equals("") || this.editText_lastName.getText().toString().equals("") || this.mUser == null) {
            return;
        }
        if (isDifferent()) {
            Timber.d("%s User info SyncNeeded", str);
            this.mUser.setSyncNeeded(true);
            try {
                Utils.safeModelSave(this.mUser, getContext());
            } catch (DatabaseIOException e) {
                Toast.makeText(this.mContext, R.string.error_msg_unexpected_error_occurred, 1).show();
                Timber.e(e, "Could not save user data in database", new Object[0]);
            }
        }
        if (this.mUser.isSyncNeeded()) {
            Timber.d("%s scheduleUserSyncTask()", TAG);
            scheduleUserSyncTask();
        }
    }

    private void enabledUserLogout() {
        this.UserLogoutItem.setVisibility(8);
        this.mDivLogoutItem.setVisibility(8);
    }

    public void loadUser() {
        UserModel userCached = this.mUserDataManager.getUserCached();
        this.mUser = userCached;
        if (userCached == null) {
            this.mUser = new UserModel();
        }
    }

    private void initEditText() {
        ContactModel userCellPhoneContact;
        UserModel userModel = this.mUser;
        if (userModel != null) {
            if (userModel.getFirstName() != null) {
                this.userFirstName = this.mUser.getFirstName();
            }
            if (this.mUser.getLastName() != null) {
                this.userLastName = this.mUser.getLastName();
            }
            if (this.mUser.getFiscalCode() != null) {
                this.userTaxCode = this.mUser.getFiscalCode();
            }
            if (this.mUser.getUserName() != null) {
                this.userEmail = this.mUser.getUserName();
            }
            if (this.mUser.getUserCellPhoneContact() != null && (userCellPhoneContact = this.mUser.getUserCellPhoneContact()) != null && userCellPhoneContact.getPhoneNumber() != null) {
                this.userPhoneNumber = userCellPhoneContact.getPhoneNumber();
            }
            if (this.mUser.getLicenseExpireDate() != null) {
                this.userDriveLicenseExp = this.mUser.getLicenseExpireDate();
            }
            Utils.setText(this.editText_firstName, this.userFirstName);
            Utils.setText(this.editText_lastName, this.userLastName);
            Utils.setText(this.editText_taxCode, this.userTaxCode);
            Utils.setText(this.editText_email, this.userEmail);
            Utils.setText(this.editText_phoneNumber, this.userPhoneNumber);
            this.mDriverLicenseExpDate.setDate(this.userDriveLicenseExp);
        }
        this.editText_firstName.addTextChangedListener(new TextWatcher() { // from class: com.texa.careapp.app.settings.user.SettingsUserScreen.3
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                SettingsUserScreen.this.mUser.setFirstName(SettingsUserScreen.this.getFirstName());
            }
        });
        this.editText_lastName.addTextChangedListener(new TextWatcher() { // from class: com.texa.careapp.app.settings.user.SettingsUserScreen.4
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                SettingsUserScreen.this.mUser.setLastName(SettingsUserScreen.this.getLastName());
            }
        });
        this.editText_taxCode.addTextChangedListener(new TextWatcher() { // from class: com.texa.careapp.app.settings.user.SettingsUserScreen.5
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                SettingsUserScreen.this.mUser.setFiscalCode(SettingsUserScreen.this.getTaxCode());
            }
        });
        this.editText_email.addTextChangedListener(new TextWatcher() { // from class: com.texa.careapp.app.settings.user.SettingsUserScreen.6
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }
        });
        this.mDriverLicenseExpDate.setListener(new DialogInterface.OnDismissListener() { // from class: com.texa.careapp.app.settings.user.SettingsUserScreen$$ExternalSyntheticLambda2
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                this.f$0.m431xa7afccb3(dialogInterface);
            }
        });
        this.editText_phoneNumber.setInputType(0);
        this.editText_email.setEnabled(false);
    }

    /* JADX INFO: renamed from: lambda$initEditText$5$com-texa-careapp-app-settings-user-SettingsUserScreen, reason: not valid java name */
    public /* synthetic */ void m431xa7afccb3(DialogInterface dialogInterface) {
        this.mUser.setLicenseExpireDate(getDriverLicenseExpDate());
    }

    private boolean isDifferent() {
        if (this.userFirstName.equals(getFirstName()) && this.userLastName.equals(getLastName()) && this.userTaxCode.equals(getTaxCode()) && this.userEmail.equals(getEmail())) {
            return (this.userDriveLicenseExp == null && getDriverLicenseExpDate() != null) || (this.userDriveLicenseExp != null && getDriverLicenseExpDate() == null) || !this.userDriveLicenseExp.equals(getDriverLicenseExpDate());
        }
        return true;
    }

    private void scheduleUserSyncTask() {
        this.mCAReWorkerManager.scheduleUserTask();
    }

    private void requestLogoutDialog() {
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
        builder.setTitle(this.mContext.getString(R.string.log_out_title_dialog));
        builder.setMessage(this.mContext.getString(R.string.log_out_description_dialog)).setCancelable(false).setPositiveButton(this.mContext.getString(R.string.log_out_remove_option_dialog), new DialogInterface.OnClickListener() { // from class: com.texa.careapp.app.settings.user.SettingsUserScreen$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f$0.m432xdbb0bf4(dialogInterface, i);
            }
        }).setNegativeButton(this.mContext.getString(android.R.string.cancel), new DialogInterface.OnClickListener() { // from class: com.texa.careapp.app.settings.user.SettingsUserScreen$$ExternalSyntheticLambda1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        });
        builder.create().show();
    }

    /* JADX INFO: renamed from: lambda$requestLogoutDialog$6$com-texa-careapp-app-settings-user-SettingsUserScreen, reason: not valid java name */
    public /* synthetic */ void m432xdbb0bf4(DialogInterface dialogInterface, int i) {
        this.mLoginHelperRx.doLogOut(true);
        dialogInterface.dismiss();
    }

    private void goToNumberValidatorScreen() {
        Context context = this.mContext;
        context.startActivity(ActivationPhoneNumberActivity.buildIntent(context));
    }

    private void goToSettingsUserAddressActivity() {
        this.mContext.startActivity(new Intent(SettingsUserAddressActivity.buildIntent(this.mContext)));
    }

    private boolean isAddressInfoSet() {
        UserModel userModel = this.mUser;
        if (userModel != null) {
            return (userModel.getAddress() == null || this.mUser.getAddress().isEmpty() || this.mUser.getCivicNumber() == null || this.mUser.getCivicNumber().isEmpty() || this.mUser.getCountryCode() == null || this.mUser.getCountryCode().isEmpty() || this.mUser.getCity() == null || this.mUser.getCity().isEmpty()) ? false : true;
        }
        return true;
    }

    public void showIconEmptyField() {
        Timber.d("%s showIconEmptyField isAddressInfoSet: %s   mUserDataManager.countContactsFamilyForEmergency(): %s", TAG, Boolean.valueOf(isAddressInfoSet()), Integer.valueOf(this.mUserDataManager.countContactsFamilyForEmergency()));
        if (!isAddressInfoSet()) {
            this.mIconUserAddress.setVisibility(0);
        } else {
            this.mIconUserAddress.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getFirstName() {
        return this.editText_firstName.getText().toString().trim();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getLastName() {
        return this.editText_lastName.getText().toString().trim();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getTaxCode() {
        return this.editText_taxCode.getText().toString().trim();
    }

    private String getEmail() {
        return this.editText_email.getText().toString().trim();
    }

    private Date getDriverLicenseExpDate() {
        return this.mDriverLicenseExpDate.getDate();
    }
}
