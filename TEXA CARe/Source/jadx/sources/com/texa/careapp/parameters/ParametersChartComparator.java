package com.texa.careapp.parameters;

import com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import org.apache.commons.collections4.comparators.ComparatorChain;

/* JADX INFO: loaded from: classes2.dex */
public class ParametersChartComparator {
    ComparatorChain<ParametersChartItem> comparatorChain;

    public ParametersChartComparator() {
        ComparatorChain<ParametersChartItem> comparatorChain = new ComparatorChain<>();
        this.comparatorChain = comparatorChain;
        comparatorChain.addComparator(new ParametersPriorityComparator());
    }

    public void sort(List<ParametersChartItem> list) {
        Collections.sort(list, this.comparatorChain);
    }

    class ParametersPriorityComparator implements Comparator<ParametersChartItem> {
        ParametersPriorityComparator() {
        }

        @Override // java.util.Comparator
        public int compare(ParametersChartItem parametersChartItem, ParametersChartItem parametersChartItem2) {
            return parametersChartItem.getPriority() - parametersChartItem2.getPriority();
        }
    }
}
