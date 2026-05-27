package com.texa.careapp.app.ecodriving;

import com.texa.careapp.app.ecodriving.model.TripEventModel;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import org.apache.commons.collections4.comparators.ComparatorChain;

/* JADX INFO: loaded from: classes2.dex */
class TripEventComparator {
    private ComparatorChain<TripEventModel> comparatorChain;

    TripEventComparator() {
        ComparatorChain<TripEventModel> comparatorChain = new ComparatorChain<>();
        this.comparatorChain = comparatorChain;
        comparatorChain.addComparator(new TripEventTimestampComparator());
    }

    public void sort(List<TripEventModel> list) {
        Collections.sort(list, this.comparatorChain);
    }

    private class TripEventTimestampComparator implements Comparator<TripEventModel> {
        private TripEventTimestampComparator() {
        }

        @Override // java.util.Comparator
        public int compare(TripEventModel tripEventModel, TripEventModel tripEventModel2) {
            if (tripEventModel.getTimestamp().longValue() > tripEventModel2.getTimestamp().longValue()) {
                return 1;
            }
            return tripEventModel.getTimestamp().longValue() < tripEventModel2.getTimestamp().longValue() ? -1 : 0;
        }
    }
}
