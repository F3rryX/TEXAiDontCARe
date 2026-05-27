package com.texa.careapp.app.vehicle;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import androidx.databinding.DataBindingUtil;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.texa.care.R;
import com.texa.careapp.Constants;
import com.texa.careapp.app.MainActivity;
import com.texa.careapp.base.BaseActivity;
import com.texa.careapp.databinding.ActivityVehicleDataConfirmationBinding;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.sync.CAReWorkerManager;
import com.texa.careapp.utils.FirebaseAnalyticsEventManager;
import com.texa.careapp.utils.Utils;
import com.texa.careapp.utils.VehicleDataManager;
import com.texa.careapp.utils.VehicleObserver;
import com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration;
import javax.inject.Inject;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class VehicleDataConfirmationActivity extends BaseActivity {
    private static final String PARAM_START_MAIN_ACTIVITY = "start-main-activity-param";

    @Inject
    protected CAReWorkerManager mCAReWorkerManager;

    @Inject
    protected DataManagerConfiguration mDataManagerConfiguration;

    @Inject
    protected DongleDataManager mDongleDataManager;
    private EditText mKmEditText;
    private TextView mModelTextView;
    protected VehicleDataConfirmationPresenter mPresenter;
    private boolean mShouldStartMainActivity = false;

    @Inject
    protected VehicleDataManager mVehicleDataManager;
    private VehicleModel mVehicleModel;

    @Inject
    protected VehicleObserver mVehicleObserver;

    @Override // com.texa.careapp.base.BaseActivity
    protected boolean requiresAuthentication() {
        return true;
    }

    private static String formatVehicle(VehicleModel vehicleModel) {
        return vehicleModel.formatModel() + " " + vehicleModel.getPlate();
    }

    @Override // com.texa.careapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ActivityVehicleDataConfirmationBinding activityVehicleDataConfirmationBinding = (ActivityVehicleDataConfirmationBinding) DataBindingUtil.setContentView(this, R.layout.activity_vehicle_data_confirmation);
        this.mKmEditText = activityVehicleDataConfirmationBinding.vehicleDataConfirmKm;
        this.mModelTextView = activityVehicleDataConfirmationBinding.vehicleDataConfirmModel;
        activityVehicleDataConfirmationBinding.activityUpdateConfirm.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.vehicle.VehicleDataConfirmationActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.onConfirmClicked(view);
            }
        });
        getCareApplication().component().inject(this);
        if (getIntent() != null && getIntent().getBooleanExtra(Constants.INTENT_EXTRA_NOTIFICATION_TYPE_LOCAL, false)) {
            FirebaseAnalytics.getInstance(this).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_TAPPED_LOCAL_NOTIFICATION.getTag(), null);
        }
        parseExtras(getIntent());
        Timber.d("mShouldStartMainActivity: %s", Boolean.valueOf(this.mShouldStartMainActivity));
        initVehicle();
    }

    private void parseExtras(Intent intent) {
        if (intent == null || intent.getExtras() == null) {
            return;
        }
        this.mShouldStartMainActivity = intent.getExtras().getBoolean(PARAM_START_MAIN_ACTIVITY);
    }

    public static Intent buildFirstRunIntent(Activity activity) {
        Intent intent = new Intent(activity, (Class<?>) VehicleDataConfirmationActivity.class);
        intent.putExtra(PARAM_START_MAIN_ACTIVITY, true);
        return intent;
    }

    private void initVehicle() {
        VehicleModel currentVehicle = this.mVehicleObserver.getCurrentVehicle();
        this.mVehicleModel = currentVehicle;
        if (currentVehicle != null) {
            this.mPresenter = new VehicleDataConfirmationPresenter();
            this.mModelTextView.setText(formatVehicle(this.mVehicleModel));
            Integer odometer = this.mVehicleModel.getOdometer();
            if (odometer != null) {
                this.mKmEditText.setText(String.valueOf(odometer));
                return;
            }
            return;
        }
        Timber.e("mVehicleModel == NULL", new Object[0]);
        finish();
    }

    public void onConfirmClicked(View view) {
        if (this.mPresenter.onConfirmClicked(this.mKmEditText, this.mVehicleModel, this.mDataManagerConfiguration, this.mCAReWorkerManager)) {
            try {
                Utils.safeModelSave(this.mVehicleModel, this);
                lastStep();
            } catch (DatabaseIOException e) {
                Toast.makeText(this, R.string.error_msg_unexpected_error_occurred, 1).show();
                Timber.e(e, "Could not save vehicle model in database", new Object[0]);
            }
        }
    }

    private void lastStep() {
        FirebaseAnalytics.getInstance(this).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_OUT_OF_THE_BOX_COMPLETED.getTag(), null);
        if (this.mShouldStartMainActivity) {
            Intent intent = new Intent(this, (Class<?>) MainActivity.class);
            intent.addFlags(67108864);
            startActivity(intent);
            finish();
            return;
        }
        finish();
    }
}
