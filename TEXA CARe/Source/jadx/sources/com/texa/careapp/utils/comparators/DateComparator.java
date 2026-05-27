package com.texa.careapp.utils.comparators;

import com.texa.careapp.model.IScheduleModel;
import java.util.Comparator;

/* JADX INFO: loaded from: classes2.dex */
public class DateComparator implements Comparator<IScheduleModel> {
    @Override // java.util.Comparator
    public int compare(IScheduleModel iScheduleModel, IScheduleModel iScheduleModel2) {
        if (iScheduleModel.getExpireDate() == null && iScheduleModel2.getExpireDate() == null) {
            return 0;
        }
        if (iScheduleModel.getExpireDate() == null && iScheduleModel2.getExpireDate() != null) {
            return 1;
        }
        if ((iScheduleModel.getExpireDate() == null || iScheduleModel2.getExpireDate() != null) && iScheduleModel.getExpireDate().getTime() >= iScheduleModel2.getExpireDate().getTime()) {
            return iScheduleModel.getExpireDate().getTime() == iScheduleModel2.getExpireDate().getTime() ? 0 : 1;
        }
        return -1;
    }
}
