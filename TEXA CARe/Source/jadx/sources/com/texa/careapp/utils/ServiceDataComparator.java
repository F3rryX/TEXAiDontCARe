package com.texa.careapp.utils;

import com.texa.careapp.model.ServiceDataModel;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import org.apache.commons.collections4.comparators.ComparatorChain;

/* JADX INFO: loaded from: classes2.dex */
class ServiceDataComparator {
    private ComparatorChain<ServiceDataModel> comparatorChain;

    ServiceDataComparator() {
        ComparatorChain<ServiceDataModel> comparatorChain = new ComparatorChain<>();
        this.comparatorChain = comparatorChain;
        comparatorChain.addComparator(new ServiceDataModelIdTypeComparator());
        this.comparatorChain.addComparator(new ServiceDataModelIsTrialComparator());
    }

    public void sort(List<ServiceDataModel> list) {
        Collections.sort(list, this.comparatorChain);
    }

    private class ServiceDataModelIdTypeComparator implements Comparator<ServiceDataModel> {
        private ServiceDataModelIdTypeComparator() {
        }

        @Override // java.util.Comparator
        public int compare(ServiceDataModel serviceDataModel, ServiceDataModel serviceDataModel2) {
            return serviceDataModel.getIdType().compareTo(serviceDataModel2.getIdType());
        }
    }

    private class ServiceDataModelIsTrialComparator implements Comparator<ServiceDataModel> {
        private ServiceDataModelIsTrialComparator() {
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [boolean] */
        /* JADX WARN: Type inference failed for: r2v1, types: [boolean] */
        @Override // java.util.Comparator
        public int compare(ServiceDataModel serviceDataModel, ServiceDataModel serviceDataModel2) {
            ?? IsTrial = serviceDataModel2.isTrial();
            ?? IsTrial2 = serviceDataModel.isTrial();
            if (IsTrial2 > IsTrial) {
                return 1;
            }
            return IsTrial2 < IsTrial ? -1 : 0;
        }
    }
}
