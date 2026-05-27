package com.texa.careapp.utils.comparators;

import com.texa.careapp.model.IScheduleModel;
import java.util.Comparator;

/* JADX INFO: loaded from: classes2.dex */
public class DateAndKmComparator implements Comparator<IScheduleModel> {
    @Override // java.util.Comparator
    public int compare(IScheduleModel iScheduleModel, IScheduleModel iScheduleModel2) {
        if (iScheduleModel.getExpireDate() == null && iScheduleModel.getExpireOdo() == null) {
            return 1;
        }
        if (iScheduleModel.getExpireDate() != null) {
            return iScheduleModel2.getExpireDate() != null ? 0 : -1;
        }
        if (iScheduleModel.getExpireOdo() != null) {
            if (iScheduleModel2.getExpireDate() != null) {
                return 1;
            }
            if (iScheduleModel2.getExpireOdo() != null) {
                return 0;
            }
        }
        return -1;
    }
}
