package com.texa.careapp.app.sos.featuremanager;

import android.content.Context;
import android.os.Vibrator;
import android.widget.Toast;
import androidx.fragment.app.FragmentManager;
import com.texa.care.R;
import com.texa.careapp.Constants;
import com.texa.careapp.app.sos.AlertCentralActivity;
import com.texa.careapp.app.sos.AutomaticSosActivity;
import com.texa.careapp.checks.Check;
import com.texa.careapp.impactdetection.ImpactDetector;
import com.texa.careapp.impactdetection.ImpactDetectorListener;
import com.texa.careapp.impactdetection.ImpactEvent;
import com.texa.careapp.model.ContactModel;
import com.texa.careapp.model.ServiceDataModel;
import com.texa.careapp.utils.UserDataManager;
import com.texa.carelib.care.impacts.CrashReportStatus;
import com.texa.carelib.care.impacts.ImpactDetection;
import com.texa.carelib.care.impacts.ImpactDetectionListener;
import com.texa.carelib.care.impacts.events.ImpactDetectedEvent;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import java.util.Date;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class SosFeatureEnabled implements SosFeatureManager {
    private final Context mContext;
    private final ImpactDetection mImpactDetection;
    private final ImpactDetector mImpactDetector;
    private final UserDataManager mUserDataManager;
    private final Vibrator mVibrator;
    private ImpactDetectionListener mImpactDetectionListener = new ImpactDetectionListener() { // from class: com.texa.careapp.app.sos.featuremanager.SosFeatureEnabled.1
        @Override // com.texa.carelib.care.impacts.ImpactDetectionListener
        public void onImpactDetected(ImpactDetectedEvent impactDetectedEvent) {
            if (impactDetectedEvent.getImpact().getCrashReport() != null && CrashReportStatus.Valid != impactDetectedEvent.getImpact().getCrashReport().getStatus()) {
                Timber.w("Detected impact with status: %s", impactDetectedEvent.getImpact().getCrashReport().getStatus());
                return;
            }
            SosFeatureEnabled.this.mImpactDetector.onCareImpactDetected();
            Timber.d("CARe CRASH DETECTED", new Object[0]);
            SosFeatureEnabled.this.mContext.startActivity(AutomaticSosActivity.buildIntent(SosFeatureEnabled.this.mContext, 1, impactDetectedEvent.getImpact().getDate(), ServiceDataModel.DongleServiceId.SOS.ordinal()));
        }
    };
    private ImpactDetectorListener mImpactDetectorListener = new ImpactDetectorListener() { // from class: com.texa.careapp.app.sos.featuremanager.SosFeatureEnabled.2
        @Override // com.texa.careapp.impactdetection.ImpactDetectorListener
        public void onImpactDetected(ImpactEvent impactEvent) {
            Timber.d("Smart-phone CRASH DETECTED", new Object[0]);
            SosFeatureEnabled.this.mContext.startActivity(AutomaticSosActivity.buildIntent(SosFeatureEnabled.this.mContext, 2, impactEvent.getImpactTime() != null ? new Date(impactEvent.getImpactTime().longValue()) : null, ServiceDataModel.DongleServiceId.SOS.ordinal()));
        }
    };

    @Override // com.texa.careapp.app.sos.featuremanager.SosFeatureManager
    public Disposable getButtonObservableSubscription() {
        return null;
    }

    @Override // com.texa.careapp.app.sos.featuremanager.SosFeatureManager
    public String getSosServiceStatusDescription(Context context) {
        return "";
    }

    @Override // com.texa.careapp.app.sos.featuremanager.SosFeatureManager
    public String getSosServiceStatusDescription(Context context, ServiceDataModel serviceDataModel) {
        return "";
    }

    @Override // com.texa.careapp.app.sos.featuremanager.SosFeatureManager
    public void initData(ServiceDataModel serviceDataModel) {
    }

    @Override // com.texa.careapp.app.sos.featuremanager.SosFeatureManager
    public boolean isEnabled() {
        return true;
    }

    @Override // com.texa.careapp.app.sos.featuremanager.SosFeatureManager
    public void setFragmentManager(FragmentManager fragmentManager) {
    }

    @Override // com.texa.careapp.app.sos.featuremanager.SosFeatureManager
    public boolean shouldCheckSosPrerequisites() {
        return false;
    }

    @Override // com.texa.careapp.app.sos.featuremanager.SosFeatureManager
    public void startButtonObserver() {
    }

    public SosFeatureEnabled(Context context, UserDataManager userDataManager, ImpactDetection impactDetection, ImpactDetector impactDetector) {
        this.mContext = context;
        this.mUserDataManager = userDataManager;
        this.mImpactDetection = impactDetection;
        this.mImpactDetector = impactDetector;
        this.mVibrator = (Vibrator) context.getSystemService("vibrator");
    }

    protected void vibrate() {
        this.mVibrator.vibrate(Constants.TIME_TO_VIBRATE_ON_TOUCH);
    }

    @Override // com.texa.careapp.app.sos.featuremanager.SosFeatureManager
    public void registerImpactDetectionListener() {
        this.mImpactDetection.addImpactDetectionListener(this.mImpactDetectionListener);
    }

    @Override // com.texa.careapp.app.sos.featuremanager.SosFeatureManager
    public void unregisterImpactDetectionListener() {
        this.mImpactDetection.removeImpactDetectionListener(this.mImpactDetectionListener);
    }

    @Override // com.texa.careapp.app.sos.featuremanager.SosFeatureManager
    public void registerImpactDetectorListener() {
        this.mImpactDetector.setImpactDetectorListener(this.mImpactDetectorListener);
    }

    @Override // com.texa.careapp.app.sos.featuremanager.SosFeatureManager
    public void unregisterImpactDetectorListener() {
        this.mImpactDetector.setImpactDetectorListener(null);
    }

    @Override // com.texa.careapp.app.sos.featuremanager.SosFeatureManager
    public Observable<Check.Result> observeChecks() {
        return Observable.just(Check.Result.OK);
    }

    @Override // com.texa.careapp.app.sos.featuremanager.SosFeatureManager
    public Observable<Check.Result> observeChecksForNotification() {
        return Observable.just(Check.Result.OK);
    }

    @Override // com.texa.careapp.app.sos.featuremanager.SosFeatureManager
    public Observable<Check.Result> observeChecksForServices() {
        return Observable.just(Check.Result.OK);
    }

    private void onManualSosButtonClicked() {
        startAlertActivity();
    }

    protected void startAlertActivity() {
        ContactModel userCellPhoneContact = this.mUserDataManager.getUserCached().getUserCellPhoneContact();
        if (userCellPhoneContact != null && userCellPhoneContact.getPhoneNumber() != null) {
            this.mContext.startActivity(AlertCentralActivity.buildIntent(this.mContext, ServiceDataModel.DongleServiceId.SOS.ordinal()));
        } else {
            Context context = this.mContext;
            Toast.makeText(context, context.getResources().getString(R.string.user_cell_phone_not_validated), 0).show();
        }
    }
}
