package com.texa.carelib.webservices;

import com.texa.carelib.care.vehicletroubles.DTC;
import com.texa.carelib.core.CareError;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface ServiceDTCResolutionProcedureListener {
    void onServiceDTCResolutionProcedureCompleted(ServiceDTCResolutionProcedure serviceDTCResolutionProcedure, List<DTC> list, CareError careError);
}
