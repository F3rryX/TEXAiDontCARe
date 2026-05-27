package com.texa.careapp.app.ecodriving;

import com.texa.careapp.app.ecodriving.model.TripObjectModel;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import org.apache.commons.collections4.comparators.ComparatorChain;

/* JADX INFO: loaded from: classes2.dex */
class TripComparator {
    private ComparatorChain<TripObjectModel> comparatorChain;

    TripComparator() {
        ComparatorChain<TripObjectModel> comparatorChain = new ComparatorChain<>();
        this.comparatorChain = comparatorChain;
        comparatorChain.addComparator(new TripEventHwIdComparator());
        this.comparatorChain.addComparator(new TripEventTimestampComparator());
    }

    public void sort(List<TripObjectModel> list) {
        Collections.sort(list, this.comparatorChain);
    }

    private class TripEventTimestampComparator implements Comparator<TripObjectModel> {
        private TripEventTimestampComparator() {
        }

        @Override // java.util.Comparator
        public int compare(TripObjectModel tripObjectModel, TripObjectModel tripObjectModel2) {
            if (tripObjectModel.getStartTrip() < tripObjectModel2.getStartTrip()) {
                return 1;
            }
            return tripObjectModel.getStartTrip() > tripObjectModel2.getStartTrip() ? -1 : 0;
        }
    }

    private class TripEventHwIdComparator implements Comparator<TripObjectModel> {
        private TripEventHwIdComparator() {
        }

        @Override // java.util.Comparator
        public int compare(TripObjectModel tripObjectModel, TripObjectModel tripObjectModel2) {
            return tripObjectModel.getHwId().compareToIgnoreCase(tripObjectModel2.getHwId());
        }
    }
}
