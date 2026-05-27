package com.texa.careapp.app.ecodriving.utils;

import androidx.collection.LongSparseArray;
import com.texa.careapp.utils.Utils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class AvgCalculator {
    public List<EcoDrivingScore> createList() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new EcoDrivingScore(1, Float.valueOf(0.3f), Float.valueOf(60.2f), Double.valueOf(15.0d), ""));
        arrayList.add(new EcoDrivingScore(1, Float.valueOf(2.2f), Float.valueOf(183.7f), Double.valueOf(88.0d), ""));
        return arrayList;
    }

    public List<EcoDrivingAverage> getAverage(List<EcoDrivingScore> list) {
        return averagesComputation(list);
    }

    public EcoDrivingAverage getAverageByType(List<EcoDrivingScore> list) {
        return averageComputationByType(list);
    }

    public EcoDrivingAverage getNormalizedAverageByType(List<EcoDrivingScore> list) {
        return normalizedAverageComputationByType(list);
    }

    private List<EcoDrivingAverage> averagesComputation(List<EcoDrivingScore> list) {
        ArrayList arrayList = new ArrayList();
        if (!Utils.isEmpty(list)) {
            LongSparseArray longSparseArray = new LongSparseArray();
            for (EcoDrivingScore ecoDrivingScore : list) {
                if (longSparseArray.get(ecoDrivingScore.getTypeId().intValue()) == null) {
                    AvgScoresComponent avgScoresComponent = new AvgScoresComponent();
                    avgScoresComponent.addScore(ecoDrivingScore);
                    longSparseArray.put(ecoDrivingScore.getTypeId().intValue(), avgScoresComponent);
                } else {
                    AvgScoresComponent avgScoresComponent2 = (AvgScoresComponent) longSparseArray.get(ecoDrivingScore.getTypeId().intValue());
                    avgScoresComponent2.addScore(ecoDrivingScore);
                    longSparseArray.put(ecoDrivingScore.getTypeId().intValue(), avgScoresComponent2);
                }
            }
            for (int i = 0; i < longSparseArray.size(); i++) {
                arrayList.add(new EcoDrivingAverage(Integer.valueOf((int) longSparseArray.keyAt(i)), Double.valueOf(((AvgScoresComponent) longSparseArray.get(longSparseArray.keyAt(i))).getAverageValue()), ((AvgScoresComponent) longSparseArray.get(longSparseArray.keyAt(i))).denominator));
            }
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [com.texa.careapp.app.ecodriving.utils.AvgCalculator$1] */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13 */
    private EcoDrivingAverage averageComputationByType(List<EcoDrivingScore> list) {
        EcoDrivingAverage ecoDrivingAverage = 0;
        ecoDrivingAverage = 0;
        Double dValueOf = Double.valueOf(-1.0d);
        if (list != null && !list.isEmpty()) {
            AvgScoresComponent avgScoresComponent = new AvgScoresComponent();
            avgScoresComponent.typeId = list.get(0).getTypeId().intValue();
            for (EcoDrivingScore ecoDrivingScore : list) {
                if (avgScoresComponent.typeId != ecoDrivingScore.getTypeId().intValue()) {
                    return new EcoDrivingAverage(-1, dValueOf, -1.0d);
                }
                avgScoresComponent.addScoreByType(ecoDrivingScore);
            }
            ecoDrivingAverage = new EcoDrivingAverage(Integer.valueOf(avgScoresComponent.typeId), Double.valueOf(avgScoresComponent.getAverageValue()), avgScoresComponent.denominator);
        }
        return ecoDrivingAverage != 0 ? ecoDrivingAverage : new EcoDrivingAverage(-1, dValueOf, -1.0d);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.texa.careapp.app.ecodriving.utils.AvgCalculator$1] */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v12 */
    private EcoDrivingAverage normalizedAverageComputationByType(List<EcoDrivingScore> list) {
        EcoDrivingAverage ecoDrivingAverage = 0;
        ecoDrivingAverage = 0;
        Double dValueOf = Double.valueOf(-1.0d);
        if (list != null && !list.isEmpty()) {
            float fFloatValue = -1.0f;
            int iIndexOf = -1;
            for (EcoDrivingScore ecoDrivingScore : list) {
                if (ecoDrivingScore.getDuration().floatValue() > fFloatValue) {
                    iIndexOf = list.indexOf(ecoDrivingScore);
                    fFloatValue = ecoDrivingScore.getDuration().floatValue();
                }
            }
            EcoDrivingScore ecoDrivingScore2 = iIndexOf != -1 ? list.get(iIndexOf) : null;
            if (ecoDrivingScore2 != null) {
                list.remove(iIndexOf);
                Iterator<EcoDrivingScore> it = list.iterator();
                int iFloatValue = 0;
                while (it.hasNext()) {
                    iFloatValue = (int) (iFloatValue + it.next().getDuration().floatValue());
                }
                ecoDrivingScore2.setDuration(Float.valueOf(ecoDrivingScore2.getDuration().floatValue() - iFloatValue));
                list.add(ecoDrivingScore2);
            }
            AvgScoresComponent avgScoresComponent = new AvgScoresComponent();
            avgScoresComponent.typeId = list.get(0).getTypeId().intValue();
            for (EcoDrivingScore ecoDrivingScore3 : list) {
                if (avgScoresComponent.typeId != ecoDrivingScore3.getTypeId().intValue()) {
                    return new EcoDrivingAverage(-1, dValueOf, -1.0d);
                }
                avgScoresComponent.addScoreByType(ecoDrivingScore3);
            }
            ecoDrivingAverage = new EcoDrivingAverage(Integer.valueOf(avgScoresComponent.typeId), Double.valueOf(avgScoresComponent.getAverageValue()), avgScoresComponent.denominator);
        }
        return ecoDrivingAverage != 0 ? ecoDrivingAverage : new EcoDrivingAverage(-1, dValueOf, -1.0d);
    }

    private class AvgScoresComponent {
        private double denominator;
        private double nominator;
        private int typeId;

        private AvgScoresComponent() {
        }

        double getAverageValue() {
            return this.nominator / this.denominator;
        }

        void addScore(EcoDrivingScore ecoDrivingScore) {
            if (this.typeId != ecoDrivingScore.getTypeId().intValue()) {
                Timber.i("Invalid score type", new Object[0]);
            }
            this.nominator += ecoDrivingScore.getValue().doubleValue() * ((double) ecoDrivingScore.getDuration().floatValue());
            this.denominator += (double) ecoDrivingScore.getDuration().floatValue();
            this.typeId = ecoDrivingScore.getTypeId().intValue();
        }

        void addScoreByType(EcoDrivingScore ecoDrivingScore) {
            this.nominator += ecoDrivingScore.getValue().doubleValue() * ((double) ecoDrivingScore.getDuration().floatValue());
            this.denominator += (double) ecoDrivingScore.getDuration().floatValue();
        }
    }
}
