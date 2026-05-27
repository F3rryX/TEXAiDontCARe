package com.texa.careapp.app.settings.user;

import android.content.Context;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.Toast;
import androidx.databinding.DataBindingUtil;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.careapp.CareApplication;
import com.texa.careapp.FlavorDelegator;
import com.texa.careapp.databinding.ScreenSettingsUserAddressBinding;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.model.UserModel;
import com.texa.careapp.utils.CountryAdapter;
import com.texa.careapp.utils.UserDataManager;
import com.texa.careapp.utils.Utils;
import java.util.Locale;
import javax.inject.Inject;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class SettingsUserAddressScreen extends Screen {
    private static final String TAG = "SettingsUserAddressScreen";

    @Inject
    protected Context mContext;
    private CountryAdapter mCountryAdapter;
    private EditText mEditTextAddress;
    private EditText mEditTextCap;
    private EditText mEditTextCity;
    private EditText mEditTextCivicNumber;
    private EditText mEditTextProvince;

    @Inject
    protected FlavorDelegator mFlavorDelegator;
    private Spinner mSpinnerCountry;
    private UserModel mUser;

    @Inject
    protected UserDataManager mUserDataManager;
    private String mUserAddress = "";
    private String mUserCivicNumber = "";
    private String mUserCap = "";
    private String mUserCity = "";
    private String mUserProvince = "";
    private String mUserCountry = "";
    private int mCountryIndex = -1;

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.screen_settings_user_address;
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        ((CareApplication) getNavigator().getApplication()).component().inject(this);
        ScreenSettingsUserAddressBinding screenSettingsUserAddressBinding = (ScreenSettingsUserAddressBinding) DataBindingUtil.bind(view);
        this.mEditTextAddress = screenSettingsUserAddressBinding.editTextUserAddress;
        this.mEditTextCivicNumber = screenSettingsUserAddressBinding.editTextUserCivicNumber;
        this.mEditTextCap = screenSettingsUserAddressBinding.editTextUserCap;
        this.mEditTextCity = screenSettingsUserAddressBinding.editTextUserCity;
        this.mEditTextProvince = screenSettingsUserAddressBinding.editTextUserProvince;
        this.mSpinnerCountry = screenSettingsUserAddressBinding.spinnerSetUserCountry;
        UserModel userCached = this.mUserDataManager.getUserCached();
        this.mUser = userCached;
        if (userCached == null) {
            this.mUser = new UserModel();
        }
        initEditText();
        initCountrySpinner();
    }

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return TAG;
    }

    @Override // com.texa.care.navigation.Screen
    public void onPause() {
        super.onPause();
        if (isDifferent()) {
            Timber.d("%s User address info SyncNeeded", TAG);
            this.mUser.setSyncNeeded(true);
            try {
                Utils.safeModelSave(this.mUser, getContext());
            } catch (DatabaseIOException e) {
                Toast.makeText(this.mContext, R.string.error_msg_unexpected_error_occurred, 1).show();
                Timber.e(e, "Could not save user address in database", new Object[0]);
            }
        }
    }

    @Override // com.texa.care.navigation.Screen
    public void onResume() {
        super.onResume();
    }

    public void initEditText() {
        UserModel userModel = this.mUser;
        if (userModel != null) {
            if (userModel.getAddress() != null) {
                this.mUserAddress = this.mUser.getAddress();
            }
            if (this.mUser.getCivicNumber() != null) {
                this.mUserCivicNumber = this.mUser.getCivicNumber();
            }
            if (this.mUser.getCountryCode() != null) {
                this.mUserCap = this.mUser.getCountryCode();
            }
            if (this.mUser.getCity() != null) {
                this.mUserCity = this.mUser.getCity();
            }
            if (this.mUser.getProvince() != null) {
                this.mUserProvince = this.mUser.getProvince();
            }
            if (this.mUser.getCountry() != null) {
                this.mUserCountry = this.mUser.getCountry();
            }
            Utils.setText(this.mEditTextAddress, this.mUserAddress);
            Utils.setText(this.mEditTextCivicNumber, this.mUserCivicNumber);
            Utils.setText(this.mEditTextCap, this.mUserCap);
            Utils.setText(this.mEditTextCity, this.mUserCity);
            Utils.setText(this.mEditTextProvince, this.mUserProvince);
        }
        this.mEditTextAddress.addTextChangedListener(new TextWatcher() { // from class: com.texa.careapp.app.settings.user.SettingsUserAddressScreen.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                SettingsUserAddressScreen.this.mUser.setAddress(SettingsUserAddressScreen.this.getAddress());
            }
        });
        this.mEditTextCivicNumber.addTextChangedListener(new TextWatcher() { // from class: com.texa.careapp.app.settings.user.SettingsUserAddressScreen.2
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                SettingsUserAddressScreen.this.mUser.setCivicNumber(SettingsUserAddressScreen.this.getCivicNumber());
            }
        });
        this.mEditTextCap.addTextChangedListener(new TextWatcher() { // from class: com.texa.careapp.app.settings.user.SettingsUserAddressScreen.3
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                SettingsUserAddressScreen.this.mUser.setCountryCode(SettingsUserAddressScreen.this.getCap());
            }
        });
        this.mEditTextCity.addTextChangedListener(new TextWatcher() { // from class: com.texa.careapp.app.settings.user.SettingsUserAddressScreen.4
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                SettingsUserAddressScreen.this.mUser.setCity(SettingsUserAddressScreen.this.getCity());
            }
        });
        this.mEditTextProvince.addTextChangedListener(new TextWatcher() { // from class: com.texa.careapp.app.settings.user.SettingsUserAddressScreen.5
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                SettingsUserAddressScreen.this.mUser.setProvince(SettingsUserAddressScreen.this.getProvince());
            }
        });
    }

    public void initCountrySpinner() {
        CountryAdapter countryAdapter = new CountryAdapter(this.mContext);
        this.mCountryAdapter = countryAdapter;
        this.mSpinnerCountry.setAdapter((SpinnerAdapter) countryAdapter);
        this.mSpinnerCountry.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.texa.careapp.app.settings.user.SettingsUserAddressScreen.6
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                SettingsUserAddressScreen.this.mCountryIndex = i;
                SettingsUserAddressScreen.this.mUser.setCountry(SettingsUserAddressScreen.this.mCountryAdapter.getCountryCode(i).toLowerCase());
            }
        });
        setCurrentCountry();
    }

    public void setCurrentCountry() {
        if (this.mUserCountry.isEmpty()) {
            this.mSpinnerCountry.setSelection(this.mCountryAdapter.getCountryPosition(new Locale("", this.mContext.getResources().getConfiguration().locale.getCountry()).getDisplayCountry()));
            return;
        }
        int countryPosition = this.mCountryAdapter.getCountryPosition(new Locale("", this.mUserCountry).getDisplayCountry());
        this.mCountryIndex = countryPosition;
        if (countryPosition != -1) {
            this.mSpinnerCountry.setSelection(countryPosition);
        }
    }

    public boolean isDifferent() {
        return (this.mUserAddress.equals(getAddress()) && this.mUserCivicNumber.equals(getCivicNumber()) && this.mUserCap.equals(getCap()) && this.mUserCity.equals(getCity()) && this.mUserProvince.equals(getProvince()) && this.mUserCountry.equals(this.mCountryAdapter.getCountryCode(this.mCountryIndex).toLowerCase())) ? false : true;
    }

    public String getAddress() {
        return this.mEditTextAddress.getText().toString().trim();
    }

    public String getCivicNumber() {
        return this.mEditTextCivicNumber.getText().toString().trim();
    }

    public String getCap() {
        return this.mEditTextCap.getText().toString().trim();
    }

    public String getCity() {
        return this.mEditTextCity.getText().toString().trim();
    }

    public String getProvince() {
        return this.mEditTextProvince.getText().toString().trim();
    }
}
