package com.texa.carelib.care.vehicle.internal;

import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.core.utils.ReentrantLockWrapper;
import com.texa.carelib.core.utils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class ValueInfoCache {
    public static final String TAG = "ValueInfoCache";
    private Set<Long> mAvailableDataIDs;
    private Set<Long> mSupportedDataIDs;
    private final ReentrantLockWrapper mValuesLock = new ReentrantLockWrapper(TAG, "mValuesLock");
    private final Map<Long, DiaValueInfo> mValues = new HashMap();

    public Set<Long> getAvailableDataIDs() {
        Set<Long> set = this.mAvailableDataIDs;
        return set == null ? Collections.emptySet() : set;
    }

    public Set<Long> getSupportedDataIDs() {
        Set<Long> set = this.mSupportedDataIDs;
        return set == null ? Collections.emptySet() : set;
    }

    public List<DiaValueInfo> getValues() {
        ArrayList arrayList = new ArrayList();
        this.mValuesLock.lock("getValues");
        try {
            try {
                arrayList.addAll(this.mValues.values());
            } catch (Exception e) {
                CareLog.e(TAG, e, "Exception on getValues().", new Object[0]);
            }
            return Collections.unmodifiableList(arrayList);
        } finally {
            this.mValuesLock.unlock("getValues");
        }
    }

    public DiaValueInfo getValue(Long l) {
        this.mValuesLock.lock("getValueInfo");
        try {
            return this.mValues.containsKey(l) ? this.mValues.get(l) : null;
        } finally {
            this.mValuesLock.unlock("getValueInfo");
        }
    }

    private void setAllParametersAsNotAvailable(Map<Long, DiaValueInfo> map) {
        CareLog.d(TAG, "setAllParametersAsNotAvailable()", new Object[0]);
        Iterator<Map.Entry<Long, DiaValueInfo>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            this.mValues.get(it.next().getKey()).setAvailable(false);
        }
    }

    public void setAvailableParameters(Set<Long> set) {
        if (set == null) {
            this.mAvailableDataIDs = Collections.emptySet();
        } else {
            this.mAvailableDataIDs = set;
        }
        CareLog.d(TAG, "setAvailableParameters(%s)", StringUtils.join(this.mAvailableDataIDs, ","));
        this.mValuesLock.lock("setAvailableParameters");
        try {
            setAllParametersAsNotAvailable(this.mValues);
            if (this.mAvailableDataIDs.size() > 0) {
                for (Long l : this.mAvailableDataIDs) {
                    CareLog.d(TAG, "Available parameter: %s", DataIDFormatter.toString(l));
                    if (this.mValues.get(l) == null) {
                        DiaValueInfo diaValueInfo = new DiaValueInfo();
                        diaValueInfo.setID(l.longValue()).setAvailable(true);
                        this.mValues.put(l, diaValueInfo);
                    } else {
                        this.mValues.get(l).setAvailable(true);
                    }
                }
            }
        } finally {
            this.mValuesLock.unlock("setAvailableParameters");
        }
    }

    public void setSupportedParameters(Set<Long> set) {
        if (set == null) {
            this.mSupportedDataIDs = Collections.emptySet();
        } else {
            this.mSupportedDataIDs = set;
        }
        CareLog.d(TAG, "setSupportedParameters(%s)", StringUtils.join(this.mSupportedDataIDs, ","));
        this.mValuesLock.lock("onSupportedParametersChanged");
        try {
            Iterator<Long> it = this.mValues.keySet().iterator();
            while (it.hasNext()) {
                Long next = it.next();
                if (!this.mSupportedDataIDs.contains(next)) {
                    CareLog.d(TAG, "Removing supported parameter: %s", DataIDFormatter.toString(next));
                    it.remove();
                }
            }
            for (Long l : set) {
                if (!this.mValues.containsKey(l)) {
                    CareLog.d(TAG, "Adding supported parameter: %s", DataIDFormatter.toString(l));
                    DiaValueInfo diaValueInfo = new DiaValueInfo();
                    diaValueInfo.setID(l.longValue());
                    diaValueInfo.setAvailable(false);
                    putValue(l, diaValueInfo);
                }
            }
            CareLog.d(TAG, "Supported parameter: %d", Integer.valueOf(this.mValues.size()));
        } finally {
            this.mValuesLock.unlock("onSupportedParametersChanged");
        }
    }

    public void putValue(Long l, DiaValueInfo diaValueInfo) {
        diaValueInfo.setAvailable(getAvailableDataIDs().contains(l));
        this.mValues.put(l, diaValueInfo);
        CareLog.d(TAG, "putValue(0x%s,%s)", DataIDFormatter.toString(l), diaValueInfo);
    }

    public void clear() {
        CareLog.d(TAG, "clear()", new Object[0]);
        this.mValuesLock.lock("clear");
        try {
            this.mValues.clear();
        } finally {
            this.mValuesLock.unlock("clear");
        }
    }

    public boolean contains(Long l) {
        this.mValuesLock.lock("clear");
        try {
            return this.mValues.containsKey(l);
        } finally {
            this.mValuesLock.unlock("clear");
        }
    }
}
