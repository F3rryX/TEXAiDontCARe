package com.texa.carelib.core.utils;

import com.texa.carelib.care.vehicletroubles.DTC;
import com.texa.carelib.care.vehicletroubles.DTCDetail;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.core.utils.internal.Utils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class DTCCache {
    private static final String TAG = "DTCCache";
    private final ReentrantLockWrapper mCachedDTCsLock = new ReentrantLockWrapper(TAG, "mCachedDTCsLock");
    private final Map<String, DTC> mCachedDTCs = new HashMap();
    private List<Locale> mLangs = new ArrayList();

    public void clear() {
        CareLog.d(TAG, "Deleting all DTCs from cache.", new Object[0]);
        this.mCachedDTCsLock.lock("clear");
        try {
            this.mCachedDTCs.clear();
        } finally {
            this.mCachedDTCsLock.unlock("clear");
        }
    }

    public int size() {
        this.mCachedDTCsLock.lock("size");
        try {
            return this.mCachedDTCs.size();
        } finally {
            this.mCachedDTCsLock.unlock("size");
        }
    }

    public void update(List<DTC> list, Locale[] localeArr, GenericAdapter<DTC, String> genericAdapter) {
        if (list.isEmpty()) {
            return;
        }
        List<Locale> listAsList = Arrays.asList(localeArr);
        if (!Utils.equalsArrayList(this.mLangs, listAsList)) {
            clear();
            this.mLangs = listAsList;
        }
        this.mCachedDTCsLock.lock("update");
        try {
            for (DTC dtc : list) {
                if (dtc != null) {
                    this.mCachedDTCs.put(genericAdapter.adaptee(dtc), new DTC(dtc));
                }
            }
        } finally {
            this.mCachedDTCsLock.unlock("update");
        }
    }

    public List<DTC> getCachedDTCs(Map<String, DTCDetail> map, Locale[] localeArr, Date date) {
        List listEmptyList;
        this.mCachedDTCsLock.lock("getCachedDTCs");
        try {
            if (this.mCachedDTCs.isEmpty() || map.isEmpty()) {
                listEmptyList = Collections.emptyList();
            } else {
                listEmptyList = new ArrayList();
                List listAsList = Arrays.asList(localeArr);
                for (Map.Entry<String, DTCDetail> entry : map.entrySet()) {
                    if (this.mCachedDTCs.containsKey(entry.getKey())) {
                        DTC dtc = this.mCachedDTCs.get(entry.getKey());
                        dtc.edit().setStatus(entry.getValue().getStatus()).setSourceNode(entry.getValue().getSourceNode()).setOccurrences(entry.getValue().getOccurrences()).setAcquisitionDate(date);
                        if (this.mLangs.containsAll(listAsList)) {
                            listEmptyList.add(new DTC(dtc));
                        }
                    }
                }
            }
            this.mCachedDTCsLock.unlock("getCachedDTCs");
            if (listEmptyList.size() > 0) {
                return Collections.unmodifiableList(listEmptyList);
            }
            return Collections.emptyList();
        } catch (Throwable th) {
            this.mCachedDTCsLock.unlock("getCachedDTCs");
            throw th;
        }
    }

    public Map<String, DTCDetail> getNotCachedDTC(Map<String, DTCDetail> map) {
        Map<String, DTCDetail> mapUnmodifiableMap;
        this.mCachedDTCsLock.lock("getNotCachedDTC");
        try {
            if (map.isEmpty()) {
                mapUnmodifiableMap = Collections.emptyMap();
            } else {
                HashMap map2 = new HashMap(map);
                Iterator it = map2.entrySet().iterator();
                while (it.hasNext()) {
                    if (this.mCachedDTCs.containsKey(((Map.Entry) it.next()).getKey())) {
                        it.remove();
                    }
                }
                mapUnmodifiableMap = Collections.unmodifiableMap(map2);
            }
            return mapUnmodifiableMap;
        } finally {
            this.mCachedDTCsLock.unlock("getNotCachedDTC");
        }
    }
}
