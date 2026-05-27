package com.texa.careapp.app.ecodriving.serviceserializer;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import org.apache.commons.collections4.comparators.ComparatorChain;

/* JADX INFO: loaded from: classes2.dex */
public class TripScoreEntityComparator {
    ComparatorChain<ScoreEntity> comparatorChain;

    public TripScoreEntityComparator() {
        ComparatorChain<ScoreEntity> comparatorChain = new ComparatorChain<>();
        this.comparatorChain = comparatorChain;
        comparatorChain.addComparator(new ScoreEntityTimestampComparator());
    }

    public void sort(List<ScoreEntity> list) {
        Collections.sort(list, this.comparatorChain);
    }

    class ScoreEntityTimestampComparator implements Comparator<ScoreEntity> {
        ScoreEntityTimestampComparator() {
        }

        @Override // java.util.Comparator
        public int compare(ScoreEntity scoreEntity, ScoreEntity scoreEntity2) {
            if (scoreEntity.getTimestampMillis() > scoreEntity2.getTimestampMillis()) {
                return 1;
            }
            return scoreEntity.getTimestampMillis() < scoreEntity2.getTimestampMillis() ? -1 : 0;
        }
    }
}
