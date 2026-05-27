package com.texa.careapp.app.diagnosis.tab.parameters.chart;

import android.text.SpannableString;
import android.text.style.RelativeSizeSpan;
import android.view.View;
import android.widget.TextView;
import com.texa.care.R;
import com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem;

/* JADX INFO: loaded from: classes2.dex */
public class ParametersGeneric {
    public static void bindView(ParametersChartItem parametersChartItem, boolean z, View view) {
        StringBuilder sb;
        TextView textView = (TextView) view.findViewById(R.id.diagnosis_data_parameters_no_chart_value);
        ((TextView) view.findViewById(R.id.diagnosis_data_parameters_no_chart_title)).setText(parametersChartItem.getTitle());
        String readableValue = z ? parametersChartItem.getReadableValue() : "-";
        if (readableValue != null && parametersChartItem.getUnit() != null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(readableValue);
            if (parametersChartItem.getUnit().length() > 1) {
                sb = new StringBuilder();
                sb.append("\n");
            } else {
                sb = new StringBuilder();
                sb.append(" ");
            }
            sb.append(parametersChartItem.getUnit());
            sb2.append(sb.toString());
            String string = sb2.toString();
            SpannableString spannableString = new SpannableString(string);
            spannableString.setSpan(new RelativeSizeSpan(0.4f), readableValue.length(), string.length(), 33);
            textView.setText(spannableString);
            return;
        }
        textView.setText("");
    }
}
