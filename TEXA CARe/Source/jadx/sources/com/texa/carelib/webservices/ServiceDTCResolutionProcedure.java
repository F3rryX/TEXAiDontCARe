package com.texa.carelib.webservices;

import com.texa.carelib.care.vehicletroubles.DTCDetail;
import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareLibException;
import java.util.Date;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public interface ServiceDTCResolutionProcedure {
    void resolveDTCIDs(Map<String, DTCDetail> map, Locale[] localeArr, String str, Date date, Callback<DTCTranslationCompletedEvent> callback) throws CareLibException;
}
