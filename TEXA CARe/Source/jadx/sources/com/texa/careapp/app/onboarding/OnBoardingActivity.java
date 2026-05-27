package com.texa.careapp.app.onboarding;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.databinding.DataBindingUtil;
import com.activeandroid.ActiveAndroid;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.texa.care.R;
import com.texa.care.navigation.Navigator;
import com.texa.careapp.CareApplication;
import com.texa.careapp.Constants;
import com.texa.careapp.base.BaseActivity;
import com.texa.careapp.carelib.CommunicationObservable;
import com.texa.careapp.databinding.ActivityOnBoardingBinding;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.DongleModel;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.parameters.VehicleParametersManagerV2;
import com.texa.careapp.utils.FirebaseAnalyticsEventManager;
import com.texa.careapp.utils.Utils;
import com.texa.careapp.utils.VehicleObserver;
import com.texa.careapp.utils.permission.CorePermission;
import com.texa.careapp.utils.permission.Func;
import com.texa.carelib.care.diagnosticconfiguration.DiagnosticConfiguration;
import com.texa.carelib.care.diagnosticconfiguration.events.DiagnosticConfigurationErasedEvent;
import com.texa.carelib.communication.Communication;
import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.CareLibException;
import io.reactivex.disposables.CompositeDisposable;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class OnBoardingActivity extends BaseActivity {
    public static final String BRAND = "BRAND";
    public static final String DESCRIPTION = "DESCRIPTION";
    public static final String MODEL = "MODEL";
    public static final String OOTB_FLAG = "out_of_the_box_flag";
    public static final String PLATE = "PLATE";
    public static final String TAG = "OnBoardingActivity";
    protected ImageView backButton;

    @Inject
    protected Communication mCommunication;

    @Inject
    protected CommunicationObservable mCommunicationObservable;

    @Inject
    protected DiagnosticConfiguration mDiagnosticConfiguration;

    @Inject
    protected DongleDataManager mDongleDataManager;

    @Inject
    protected EventBus mEventBus;
    private Navigator mNavigator;
    private CorePermission.PermissionRequestObject mPermissionRequest;

    @Inject
    protected VehicleObserver mVehicleObserver;

    @Inject
    protected VehicleParametersManagerV2 mVehicleParametersManagerV2;
    private String brand = "";
    private String model = "";
    private String plate = "";
    private String description = "";
    private final CompositeDisposable mDisposable = new CompositeDisposable();

    static /* synthetic */ void lambda$openDialogInfo$2(DialogInterface dialogInterface, int i) {
    }

    @Override // com.texa.careapp.base.BaseActivity
    protected boolean requiresAuthentication() {
        return false;
    }

    public String getBrand() {
        return this.brand;
    }

    public void setBrand(String str) {
        this.brand = str;
    }

    public String getModel() {
        return this.model;
    }

    public void setModel(String str) {
        this.model = str;
    }

    public String getPlate() {
        return this.plate;
    }

    public void setPlate(String str) {
        this.plate = str;
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    @Override // com.texa.careapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ImageView imageView = ((ActivityOnBoardingBinding) DataBindingUtil.setContentView(this, R.layout.activity_on_boarding)).activityOnBoardingBackBtn;
        this.backButton = imageView;
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.onboarding.OnBoardingActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m289x72e85aac(view);
            }
        });
        CareApplication careApplication = (CareApplication) getApplication();
        careApplication.component().inject(this);
        FirebaseAnalytics.getInstance(this).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_OUT_OF_THE_BOX_START.getTag(), null);
        boolean booleanExtra = getIntent().getBooleanExtra(Constants.SETTINGS_ADD_VEHICLE_EXTRA, false);
        if (getIntent().getIntExtra(OOTB_FLAG, 0) == 1) {
            startWithFirstConfiguration();
        }
        if (booleanExtra) {
            try {
                this.mCommunication.disconnect();
            } catch (CareLibException e) {
                e.printStackTrace();
            }
        }
        Navigator instanceFor = Navigator.getInstanceFor(this);
        this.mNavigator = instanceFor;
        instanceFor.setContainerResId(R.id.activity_on_boarding_container);
        this.brand = getIntent().getStringExtra(BRAND);
        this.model = getIntent().getStringExtra(MODEL);
        this.plate = getIntent().getStringExtra(PLATE);
        this.description = getIntent().getStringExtra(DESCRIPTION);
        this.mNavigator.goTo(new BaseVehicleDataScreen(careApplication, this));
    }

    /* JADX INFO: renamed from: lambda$onCreate$0$com-texa-careapp-app-onboarding-OnBoardingActivity, reason: not valid java name */
    public /* synthetic */ void m289x72e85aac(View view) {
        onBackPressed();
    }

    @Override // com.texa.careapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
    }

    @Override // com.texa.careapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
    }

    private void startWithFirstConfiguration() {
        openDialogInfo();
        factoryReset();
        stopCareTasks();
        deleteVehicleData();
    }

    private void deleteVehicleData() {
        DongleModel dongleModel = this.mDongleDataManager.getDongleModel();
        if (dongleModel == null) {
            return;
        }
        String hwid = dongleModel.getHwid();
        VehicleModel currentVehicle = dongleModel.getCurrentVehicle();
        if (currentVehicle != null) {
            currentVehicle.delete();
        }
        dongleModel.delete();
        ActiveAndroid.clearCache();
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("dongle in db is cleared -> ");
        sb.append(!this.mDongleDataManager.isDongleInDb(hwid));
        Log.i(str, sb.toString());
        this.mVehicleObserver.resetVehicleObserver();
    }

    private void stopCareTasks() {
        this.mVehicleParametersManagerV2.stop();
    }

    private void factoryReset() {
        try {
            this.mDiagnosticConfiguration.clearConfiguration(new Callback() { // from class: com.texa.careapp.app.onboarding.OnBoardingActivity$$ExternalSyntheticLambda2
                @Override // com.texa.carelib.core.Callback
                public final void onCompleted(Object obj) {
                    OnBoardingActivity.lambda$factoryReset$1((DiagnosticConfigurationErasedEvent) obj);
                }
            });
        } catch (CareLibException e) {
            e.printStackTrace();
            Log.e(TAG, "cant do clear configuration");
        }
    }

    static /* synthetic */ void lambda$factoryReset$1(DiagnosticConfigurationErasedEvent diagnosticConfigurationErasedEvent) {
        CareError error = diagnosticConfigurationErasedEvent.getError();
        if (error != null && !Utils.isEmpty(error.getMessage())) {
            Log.e(TAG, "clearConfiguration fail", error.getException());
        } else {
            Log.i(TAG, "configuration cleared");
        }
    }

    private void openDialogInfo() {
        VehicleModel currentVehicle = this.mDongleDataManager.getDongleModel().getCurrentVehicle();
        if (currentVehicle == null) {
            Timber.w("vehicleModel is null", new Object[0]);
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle(R.string.warning);
        builder.setMessage(getString(R.string.ootb_first_configuration, new Object[]{Utils.formatVehicleModel(currentVehicle), currentVehicle.getPlate()}));
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setButton(-1, getString(android.R.string.ok), new DialogInterface.OnClickListener() { // from class: com.texa.careapp.app.onboarding.OnBoardingActivity$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                OnBoardingActivity.lambda$openDialogInfo$2(dialogInterface, i);
            }
        });
        alertDialogCreate.show();
    }

    public void requestLocationPermission() {
        this.mPermissionRequest = CorePermission.with((AppCompatActivity) this).request(CorePermission.USE_ACCESS_LOCATION).onAllGranted(new Func() { // from class: com.texa.careapp.app.onboarding.OnBoardingActivity.2
            @Override // com.texa.careapp.utils.permission.Func
            protected void call() {
                Timber.d("Permission enabled", new Object[0]);
            }
        }).onAnyDenied(new Func() { // from class: com.texa.careapp.app.onboarding.OnBoardingActivity.1
            @Override // com.texa.careapp.utils.permission.Func
            protected void call() {
                Timber.d("Permission not enabled", new Object[0]);
            }
        }).ask(1);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        CorePermission.PermissionRequestObject permissionRequestObject = this.mPermissionRequest;
        if (permissionRequestObject != null) {
            permissionRequestObject.onRequestPermissionsResult(i, strArr, iArr);
        }
        if (strArr.length > 0 && !Utils.isEmpty(strArr[0]) && strArr[0].equals("android.permission.WRITE_EXTERNAL_STORAGE")) {
            if (iArr[0] == 0) {
                this.mEventBus.post(new WritingPermissionEvent(true));
            } else {
                this.mEventBus.post(new WritingPermissionEvent(false));
            }
        }
        super.onRequestPermissionsResult(i, strArr, iArr);
    }

    public Navigator getNavigator() {
        return this.mNavigator;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.mNavigator.onBackPressed()) {
            return;
        }
        super.onBackPressed();
    }

    class WritingPermissionEvent {
        private boolean status;

        public boolean isStatus() {
            return this.status;
        }

        public WritingPermissionEvent(boolean z) {
            this.status = z;
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        Utils.safeDispose(this.mDisposable);
    }
}
