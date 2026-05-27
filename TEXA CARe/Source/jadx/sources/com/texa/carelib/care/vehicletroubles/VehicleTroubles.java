package com.texa.carelib.care.vehicletroubles;

import android.os.Bundle;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.ObservableObject;
import java.util.List;
import org.spongycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes2.dex */
public interface VehicleTroubles extends ObservableObject {
    public static final String EXTRA_FILTER_UNKNOWN_DTC = "EXTRA_FILTER_UNKNOWN_DTC";
    public static final Long ONE_SHOT_READ = Long.valueOf(BodyPartID.bodyIdMax);
    public static final String PROPERTY_ACTIVE_SUBSCRIPTION_COUNT = "com.texa.carelib.care.vehicletroubles.VehicleTroubles#PROPERTY_ACTIVE_SUBSCRIPTION_COUNT";
    public static final String PROPERTY_DTCS = "com.texa.carelib.care.vehicletroubles.VehicleTroubles#PROPERTY_DTCS";
    public static final String PROPERTY_DTC_TRANSLATION_PROGRESS = "com.texa.carelib.care.vehicletroubles.VehicleTroubles#PROPERTY_DTC_TRANSLATION_PROGRESS";
    public static final String PROPERTY_ECU_COUNT = "com.texa.carelib.care.vehicletroubles.VehicleTroubles#PROPERTY_ECU_COUNT";
    public static final String PROPERTY_ECU_SCAN_PROGRESS = "com.texa.carelib.care.vehicletroubles.VehicleTroubles#PROPERTY_ECU_SCAN_PROGRESS";
    public static final String PROPERTY_MAXIMUM_SUBSCRIPTION_COUNT = "com.texa.carelib.care.vehicletroubles.VehicleTroubles#PROPERTY_MAXIMUM_SUBSCRIPTION_COUNT";

    VehicleTroublesListener addVehicleTroublesListener(VehicleTroublesListener vehicleTroublesListener);

    void beginUpdateDTCs(long j) throws CareLibException;

    void endUpdateDTCs() throws CareLibException;

    Integer getActiveSubscriptionCount();

    Bundle getArguments();

    float getDTCTranslationProgress();

    DTCTranslator getDTCTranslator();

    List<DTC> getDTCs();

    int getECUCount();

    float getECUScanProgress();

    Integer getMaximumSubscriptionCount();

    void loadDTCs() throws CareLibException;

    void removeVehicleTroublesListener(VehicleTroublesListener vehicleTroublesListener);

    void setDTCTranslator(DTCTranslator dTCTranslator);

    void updateDTC(List<DTC> list, long j, CareError careError);
}
