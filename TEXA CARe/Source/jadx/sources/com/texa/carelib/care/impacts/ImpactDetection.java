package com.texa.carelib.care.impacts;

import android.os.Bundle;
import com.texa.carelib.care.impacts.events.ImpactDataErasedEvent;
import com.texa.carelib.care.impacts.events.SimulateImpactCompletedEvent;
import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.ObservableObject;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public interface ImpactDetection extends ObservableObject {
    public static final String EXTRA_CRASH_ONE_SHOT = "com.texa.carelib.care.impacts.ImpactDetection#EXTRA_CRASH_ONE_SHOT";
    public static final String EXTRA_CRASH_PERIOD = "com.texa.carelib.care.impacts.ImpactDetection#EXTRA_CRASH_PERIOD";
    public static final String EXTRA_DUMP_REPORTS = "com.texa.carelib.care.impacts.ImpactDetection#EXTRA_DUMP_REPORTS";
    public static final String PROPERTY_ACCELERATION_EVENTS = "com.texa.carelib.care.impacts.ImpactDetection#PROPERTY_ACCELERATION_EVENTS";
    public static final String PROPERTY_ACCELERATION_EVENTS_LPM = "com.texa.carelib.care.impacts.ImpactDetection#PROPERTY_ACCELERATION_EVENTS_LPM";
    public static final String PROPERTY_ENABLED = "com.texa.carelib.care.impacts.ImpactDetection#PROPERTY_ENABLED";
    public static final String PROPERTY_IMPACTS = "com.texa.carelib.care.impacts.ImpactDetection#PROPERTY_IMPACTS";
    public static final String PROPERTY_LAST_IMPACT = "com.texa.carelib.care.impacts.ImpactDetection#PROPERTY_LAST_IMPACT";
    public static final String PROPERTY_SUPPORTED_FREQUENCIES = "com.texa.carelib.care.impacts.ImpactDetection#PROPERTY_SUPPORTED_FREQUENCIES";

    ImpactDetectionListener addImpactDetectionListener(ImpactDetectionListener impactDetectionListener);

    void eraseImpacts(Callback<ImpactDataErasedEvent> callback) throws CareLibException;

    List<CrashReport> getAccelerationEvents();

    List<CrashReport> getAccelerationEventsLPM();

    Bundle getArguments();

    List<Impact> getImpacts();

    Impact getLastImpact();

    Set<Integer> getSupportedFrequencies();

    Long getVerboseReportSamplesCount();

    boolean isEnabled();

    boolean isReadingImpactData();

    void loadImpacts(ImpactDataDownloadListener impactDataDownloadListener) throws CareLibException;

    void removeImpactDetectionListener(ImpactDetectionListener impactDetectionListener);

    void simulateImpact(int i, Callback<SimulateImpactCompletedEvent> callback) throws CareLibException;
}
