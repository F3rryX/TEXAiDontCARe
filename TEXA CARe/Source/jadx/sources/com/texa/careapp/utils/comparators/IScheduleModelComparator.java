package com.texa.careapp.utils.comparators;

import com.texa.careapp.model.IScheduleModel;
import java.util.Collections;
import java.util.List;
import org.apache.commons.collections4.comparators.ComparatorChain;

/* JADX INFO: loaded from: classes2.dex */
public class IScheduleModelComparator {
    ComparatorChain comparatorChain;

    public IScheduleModelComparator() {
        ComparatorChain comparatorChain = new ComparatorChain();
        this.comparatorChain = comparatorChain;
        comparatorChain.addComparator(new StatusComparator());
        this.comparatorChain.addComparator(new DateAndKmComparator());
        this.comparatorChain.addComparator(new DateComparator());
        this.comparatorChain.addComparator(new KmComparator());
    }

    public void sort(List<IScheduleModel> list) {
        Collections.sort(list, this.comparatorChain);
    }
}
