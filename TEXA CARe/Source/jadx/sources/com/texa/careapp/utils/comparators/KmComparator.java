package com.texa.careapp.utils.comparators;

import com.texa.careapp.model.IScheduleModel;
import com.texa.careapp.model.VehicleScheduleModel;
import com.texa.careapp.utils.Utils;
import java.util.Comparator;

/* JADX INFO: loaded from: classes2.dex */
public class KmComparator implements Comparator<IScheduleModel> {
    @Override // java.util.Comparator
    public int compare(IScheduleModel iScheduleModel, IScheduleModel iScheduleModel2) {
        int iNonNegativeSubtraction;
        int iNonNegativeSubtraction2;
        if (iScheduleModel.getExpireOdo() == null && iScheduleModel2.getExpireOdo() == null) {
            return 0;
        }
        if (iScheduleModel.getExpireOdo() == null && iScheduleModel2.getExpireOdo() != null) {
            return -1;
        }
        if ((iScheduleModel.getExpireOdo() == null || iScheduleModel2.getExpireOdo() != null) && (iNonNegativeSubtraction = Utils.nonNegativeSubtraction(iScheduleModel.getExpireOdo().intValue(), ((VehicleScheduleModel) iScheduleModel).getVehicle().getOdometer().intValue())) <= (iNonNegativeSubtraction2 = Utils.nonNegativeSubtraction(iScheduleModel2.getExpireOdo().intValue(), ((VehicleScheduleModel) iScheduleModel2).getVehicle().getOdometer().intValue()))) {
            return iNonNegativeSubtraction < iNonNegativeSubtraction2 ? -1 : 0;
        }
        return 1;
    }
}
