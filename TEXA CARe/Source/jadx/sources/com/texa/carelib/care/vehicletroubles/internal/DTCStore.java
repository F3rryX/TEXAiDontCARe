package com.texa.carelib.care.vehicletroubles.internal;

import com.texa.carelib.care.vehicletroubles.DTC;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class DTCStore {
    private final Map<Long, List<DTC>> mDTCs = new LinkedHashMap();

    public void clear() {
        this.mDTCs.clear();
    }

    public int getECUCount() {
        return this.mDTCs.keySet().size();
    }

    public List<DTC> getDTCList() {
        ArrayList arrayList = new ArrayList(this.mDTCs.size());
        if (this.mDTCs.size() == 0) {
            return arrayList;
        }
        for (List<DTC> list : this.mDTCs.values()) {
            if (list != null && list.size() > 0) {
                Iterator<DTC> it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(new DTC(it.next()));
                }
            }
        }
        return arrayList;
    }

    public void updateECUDTC(List<DTC> list, long j) {
        this.mDTCs.put(Long.valueOf(j), list);
    }
}
