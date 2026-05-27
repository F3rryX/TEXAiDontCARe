package com.texa.carelib.care.vehicletroubles;

import com.texa.carelib.core.CareLibException;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public interface DTCTranslator {
    void translateDTCsForECU(VehicleTroubles vehicleTroubles, long j, Map<String, DTCDetail> map) throws CareLibException;
}
