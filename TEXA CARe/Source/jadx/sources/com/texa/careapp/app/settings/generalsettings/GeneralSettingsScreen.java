package com.texa.careapp.app.settings.generalsettings;

import android.content.SharedPreferences;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.SwitchCompat;
import androidx.databinding.DataBindingUtil;
import com.texa.care.R;
import com.texa.care.eco_driving.DrivingStyleManager;
import com.texa.care.eco_driving.score.BaseScore;
import com.texa.care.navigation.Screen;
import com.texa.careapp.CareApplication;
import com.texa.careapp.Constants;
import com.texa.careapp.app.service.ServiceNotificationController;
import com.texa.careapp.databinding.ScreenGeneralSettingsPreferencesBinding;
import javax.inject.Inject;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class GeneralSettingsScreen extends Screen {
    private static final String TAG = "GeneralSettingsScreen";

    @Inject
    protected DrivingStyleManager drivingStyleManager;
    private LinearLayout mProfileLayout;

    @Inject
    protected ServiceNotificationController mServiceNotificationController;

    @Inject
    protected SharedPreferences mSharedPreferences;
    private SwitchCompat mToggleViewAdditionalPhoneImpactDetection;
    private SwitchCompat mToggleViewEcoDriving;
    private SwitchCompat mToggleViewNotification;
    private SwitchCompat mToggleViewPlaySoundOnConnection;
    private RelativeLayout mViewAdditionalPhoneImpactDetection;
    private RelativeLayout mViewEcoDriving;
    private RelativeLayout mViewNotification;
    private RelativeLayout mViewPlaySoundOnConnection;
    private RadioButton profileEco;
    private RadioButton profileNormal;
    private RadioButton profileSport;
    private boolean mPlaySoundOnConnectionValue = true;
    private boolean mAdditionalPhoneImpactDetectionValue = true;
    private boolean mEcoDrivingValue = true;
    private boolean mNotificationEnableValue = true;

    static /* synthetic */ void lambda$loadListeners$6(View view) {
    }

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.screen_general_settings_preferences;
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        ((CareApplication) getNavigator().getApplication()).component().inject(this);
        ScreenGeneralSettingsPreferencesBinding screenGeneralSettingsPreferencesBinding = (ScreenGeneralSettingsPreferencesBinding) DataBindingUtil.bind(view);
        this.mToggleViewPlaySoundOnConnection = screenGeneralSettingsPreferencesBinding.toggleButtonSoundOnConnection;
        this.mViewPlaySoundOnConnection = screenGeneralSettingsPreferencesBinding.buttonSoundOnConnection;
        this.mToggleViewAdditionalPhoneImpactDetection = screenGeneralSettingsPreferencesBinding.toggleButtonAdditionalPhoneImpactDetection;
        this.mViewAdditionalPhoneImpactDetection = screenGeneralSettingsPreferencesBinding.buttonAdditionalPhoneImpactDetection;
        this.mToggleViewEcoDriving = screenGeneralSettingsPreferencesBinding.toggleButtonEcoDrivingActivation;
        this.mViewEcoDriving = screenGeneralSettingsPreferencesBinding.buttonEcoDrivingActivation;
        this.profileEco = screenGeneralSettingsPreferencesBinding.radioEcoDrivingProfileEco;
        this.profileNormal = screenGeneralSettingsPreferencesBinding.radioEcoDrivingProfileNormal;
        this.profileSport = screenGeneralSettingsPreferencesBinding.radioEcoDrivingProfileSport;
        this.mProfileLayout = screenGeneralSettingsPreferencesBinding.buttonEcoDrivingProfile;
        this.mToggleViewNotification = screenGeneralSettingsPreferencesBinding.toggleButtonEnableNotification;
        this.mViewNotification = screenGeneralSettingsPreferencesBinding.buttonEnableNotification;
    }

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return TAG;
    }

    @Override // com.texa.care.navigation.Screen
    public void onResume() {
        super.onResume();
        loadPrefs();
        loadListeners();
    }

    @Override // com.texa.care.navigation.Screen
    public void onPause() {
        super.onPause();
    }

    private void loadPrefs() {
        try {
            this.mPlaySoundOnConnectionValue = this.mSharedPreferences.getBoolean(Constants.PREFS_KEY_SOUND_ON_CONNETION, true);
        } catch (Exception unused) {
            Timber.w("Prefs of KEY PREFS_KEY_SOUND_ON_CONNECTION not found", new Object[0]);
        }
        try {
            this.mAdditionalPhoneImpactDetectionValue = this.mSharedPreferences.getBoolean(Constants.PREFS_KEY_ADDITIONAL_PHONE_IMPACT_DETECTION, true);
        } catch (Exception unused2) {
            Timber.w("Prefs of KEY PREFS_KEY_ADDITIONAL_PHONE_IMPACT_DETECTION not found", new Object[0]);
        }
        try {
            this.mEcoDrivingValue = this.mSharedPreferences.getBoolean(Constants.PREFS_KEY_ECO_DRIVING_ACTIVATION, true);
        } catch (Exception unused3) {
            Timber.w("Prefs of KEY PREFS_KEY_ECO_DRIVING_ACTIVATION not found", new Object[0]);
        }
        try {
            this.mNotificationEnableValue = this.mSharedPreferences.getBoolean(Constants.PREFS_KEY_NOTIFICATION, true);
        } catch (Exception unused4) {
            Timber.w("Prefs of KEY PREFS_KEY_NOTIFICATION not found", new Object[0]);
        }
        Timber.d("mPlaySoundOnConnectionValue: %s  mAdditionalPhoneImpactDetectionValue: %s", Boolean.valueOf(this.mPlaySoundOnConnectionValue), Boolean.valueOf(this.mAdditionalPhoneImpactDetectionValue));
        this.mToggleViewPlaySoundOnConnection.setChecked(this.mPlaySoundOnConnectionValue);
        this.mToggleViewPlaySoundOnConnection.setClickable(false);
        this.mToggleViewAdditionalPhoneImpactDetection.setChecked(this.mAdditionalPhoneImpactDetectionValue);
        this.mToggleViewAdditionalPhoneImpactDetection.setClickable(false);
        this.mToggleViewEcoDriving.setChecked(this.mEcoDrivingValue);
        this.mToggleViewEcoDriving.setClickable(false);
        this.mToggleViewNotification.setChecked(this.mNotificationEnableValue);
        this.mToggleViewNotification.setClickable(false);
        this.mProfileLayout.setVisibility(8);
    }

    private /* synthetic */ void lambda$loadPrefs$0(CompoundButton compoundButton, boolean z) {
        setProfilePref(BaseScore.DrivingProfile.CHAUFFEUR, z);
    }

    private /* synthetic */ void lambda$loadPrefs$1(CompoundButton compoundButton, boolean z) {
        setProfilePref(BaseScore.DrivingProfile.EXPERIENCED, z);
    }

    private /* synthetic */ void lambda$loadPrefs$2(CompoundButton compoundButton, boolean z) {
        setProfilePref(BaseScore.DrivingProfile.NEWBIE, z);
    }

    private void loadListeners() {
        this.mViewPlaySoundOnConnection.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.settings.generalsettings.GeneralSettingsScreen$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m394x340b6022(view);
            }
        });
        this.mViewAdditionalPhoneImpactDetection.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.settings.generalsettings.GeneralSettingsScreen$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m395x255cefa3(view);
            }
        });
        this.mViewEcoDriving.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.settings.generalsettings.GeneralSettingsScreen$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m396x16ae7f24(view);
            }
        });
        this.mViewNotification.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.settings.generalsettings.GeneralSettingsScreen$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GeneralSettingsScreen.lambda$loadListeners$6(view);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$loadListeners$3$com-texa-careapp-app-settings-generalsettings-GeneralSettingsScreen, reason: not valid java name */
    public /* synthetic */ void m394x340b6022(View view) {
        boolean z = !this.mPlaySoundOnConnectionValue;
        this.mPlaySoundOnConnectionValue = z;
        Timber.d("Prefs PREFS_KEY_SOUND_ON_CONNECTION value: %s", Boolean.valueOf(z));
        this.mToggleViewPlaySoundOnConnection.setChecked(this.mPlaySoundOnConnectionValue);
        savePrefs(Constants.PREFS_KEY_SOUND_ON_CONNETION, this.mPlaySoundOnConnectionValue);
    }

    /* JADX INFO: renamed from: lambda$loadListeners$4$com-texa-careapp-app-settings-generalsettings-GeneralSettingsScreen, reason: not valid java name */
    public /* synthetic */ void m395x255cefa3(View view) {
        boolean z = !this.mAdditionalPhoneImpactDetectionValue;
        this.mAdditionalPhoneImpactDetectionValue = z;
        Timber.d("Prefs PREFS_KEY_ADDITIONAL_PHONE_IMPACT_DETECTION value: %s", Boolean.valueOf(z));
        this.mToggleViewAdditionalPhoneImpactDetection.setChecked(this.mAdditionalPhoneImpactDetectionValue);
        savePrefs(Constants.PREFS_KEY_ADDITIONAL_PHONE_IMPACT_DETECTION, this.mAdditionalPhoneImpactDetectionValue);
    }

    /* JADX INFO: renamed from: lambda$loadListeners$5$com-texa-careapp-app-settings-generalsettings-GeneralSettingsScreen, reason: not valid java name */
    public /* synthetic */ void m396x16ae7f24(View view) {
        boolean z = !this.mEcoDrivingValue;
        this.mEcoDrivingValue = z;
        Timber.d("Prefs PREFS_KEY_ECO_DRIVING_ACTIVATION value: %s", Boolean.valueOf(z));
        this.mToggleViewEcoDriving.setChecked(this.mEcoDrivingValue);
        savePrefs(Constants.PREFS_KEY_ECO_DRIVING_ACTIVATION, this.mEcoDrivingValue);
        DrivingStyleManager drivingStyleManager = this.drivingStyleManager;
        if (drivingStyleManager != null) {
            if (this.mEcoDrivingValue) {
                drivingStyleManager.start();
            } else {
                drivingStyleManager.stop();
            }
        }
    }

    private void setProfilePref(BaseScore.DrivingProfile drivingProfile, boolean z) {
        if (z) {
            SharedPreferences.Editor editorEdit = this.mSharedPreferences.edit();
            editorEdit.putInt(Constants.PREFS_KEY_ECO_DRIVING_PROFILE, drivingProfile.getNumericType());
            editorEdit.apply();
            this.drivingStyleManager.setDrivingProfile(drivingProfile);
        }
    }

    private void savePrefs(String str, boolean z) {
        SharedPreferences.Editor editorEdit = this.mSharedPreferences.edit();
        editorEdit.putBoolean(str, z);
        editorEdit.apply();
    }
}
