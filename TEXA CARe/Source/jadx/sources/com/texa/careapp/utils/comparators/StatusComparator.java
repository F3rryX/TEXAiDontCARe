package com.texa.careapp.utils.comparators;

import com.texa.careapp.model.IScheduleModel;
import java.util.Comparator;

/* JADX INFO: loaded from: classes2.dex */
public class StatusComparator implements Comparator<IScheduleModel> {
    @Override // java.util.Comparator
    public int compare(IScheduleModel iScheduleModel, IScheduleModel iScheduleModel2) {
        if (iScheduleModel.getExpiringStatus() > iScheduleModel2.getExpiringStatus()) {
            return 1;
        }
        return iScheduleModel.getExpiringStatus() < iScheduleModel2.getExpiringStatus() ? -1 : 0;
    }
}
