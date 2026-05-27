package com.texa.carelib.tools.integrator;

import com.texa.carelib.care.vehicletroubles.DTCDetail;
import com.texa.carelib.care.vehicletroubles.DTCTranslator;
import com.texa.carelib.care.vehicletroubles.VehicleTroubles;
import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.core.utils.internal.Utils;
import com.texa.carelib.webservices.DTCTranslationCompletedEvent;
import com.texa.carelib.webservices.ServiceDTCResolutionProcedure;
import java.util.ArrayList;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class DTCResolutionIntegrator implements DTCTranslator {
    private static final String TAG = "DTCResolutionIntegrator";
    private String mHardwareID;
    private Locale[] mLanguages;
    private ServiceDTCResolutionProcedure mServiceDTCResolutionProcedure;

    public DTCResolutionIntegrator setLanguages(Locale[] localeArr) {
        this.mLanguages = localeArr;
        return this;
    }

    public DTCResolutionIntegrator setHardwareID(String str) {
        this.mHardwareID = str;
        return this;
    }

    public DTCResolutionIntegrator setServiceDTCResolutionProcedure(ServiceDTCResolutionProcedure serviceDTCResolutionProcedure) {
        this.mServiceDTCResolutionProcedure = serviceDTCResolutionProcedure;
        return this;
    }

    public DTCResolutionIntegrator() {
    }

    public DTCResolutionIntegrator(ServiceDTCResolutionProcedure serviceDTCResolutionProcedure) {
        this.mServiceDTCResolutionProcedure = serviceDTCResolutionProcedure;
    }

    @Override // com.texa.carelib.care.vehicletroubles.DTCTranslator
    public void translateDTCsForECU(final VehicleTroubles vehicleTroubles, final long j, Map<String, DTCDetail> map) throws CareLibException {
        this.mServiceDTCResolutionProcedure.resolveDTCIDs(map, this.mLanguages, this.mHardwareID, Utils.getUTCNow(), new Callback() { // from class: com.texa.carelib.tools.integrator.DTCResolutionIntegrator$$ExternalSyntheticLambda0
            @Override // com.texa.carelib.core.Callback
            public final void onCompleted(Object obj) {
                DTCResolutionIntegrator.lambda$translateDTCsForECU$0(j, vehicleTroubles, (DTCTranslationCompletedEvent) obj);
            }
        });
    }

    static /* synthetic */ void lambda$translateDTCsForECU$0(long j, VehicleTroubles vehicleTroubles, DTCTranslationCompletedEvent dTCTranslationCompletedEvent) {
        ArrayList arrayList = new ArrayList();
        if (dTCTranslationCompletedEvent.getError() != null) {
            CareLog.e(TAG, "DTC translation for ECU %d fails. Error: %s", Long.valueOf(j), dTCTranslationCompletedEvent.getError());
        } else {
            String str = TAG;
            CareLog.v(str, "DTC translation for ECU %d completed.", Long.valueOf(j));
            int size = dTCTranslationCompletedEvent.getDTCs() != null ? dTCTranslationCompletedEvent.getDTCs().size() : 0;
            CareLog.d(str, "ECU %d has %d DTC translated successfully.", Long.valueOf(j), Integer.valueOf(size));
            if (size > 0) {
                arrayList.addAll(dTCTranslationCompletedEvent.getDTCs());
            }
        }
        vehicleTroubles.updateDTC(arrayList, j, dTCTranslationCompletedEvent.getError());
    }
}
