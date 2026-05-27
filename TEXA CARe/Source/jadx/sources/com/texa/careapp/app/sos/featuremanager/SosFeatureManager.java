package com.texa.careapp.app.sos.featuremanager;

import android.content.Context;
import androidx.fragment.app.FragmentManager;
import com.texa.careapp.checks.Check;
import com.texa.careapp.model.ServiceDataModel;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes2.dex */
public interface SosFeatureManager {
    public static final int IMPACT_TYPE_CARE = 1;
    public static final int IMPACT_TYPE_SMART_PHONE = 2;
    public static final int IMPACT_TYPE_UNDEFINED = 0;

    @Retention(RetentionPolicy.SOURCE)
    public @interface ImpactType {
    }

    public @interface SosStatus {
    }

    Disposable getButtonObservableSubscription();

    String getSosServiceStatusDescription(Context context);

    String getSosServiceStatusDescription(Context context, ServiceDataModel serviceDataModel);

    void initData(ServiceDataModel serviceDataModel);

    boolean isEnabled();

    Observable<Check.Result> observeChecks();

    Observable<Check.Result> observeChecksForNotification();

    Observable<Check.Result> observeChecksForServices();

    void registerImpactDetectionListener();

    void registerImpactDetectorListener();

    void setFragmentManager(FragmentManager fragmentManager);

    boolean shouldCheckSosPrerequisites();

    void startButtonObserver();

    void unregisterImpactDetectionListener();

    void unregisterImpactDetectorListener();
}
