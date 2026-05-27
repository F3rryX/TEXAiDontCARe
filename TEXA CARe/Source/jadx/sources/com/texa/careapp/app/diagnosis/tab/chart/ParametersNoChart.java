package com.texa.careapp.app.diagnosis.tab.chart;

import android.text.SpannableString;
import android.text.style.RelativeSizeSpan;
import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ParametersNoChart extends ParametersChartItem {

    public static class NoChartChartViewHolder extends RecyclerView.ViewHolder {
        final TextView title;
        final TextView value;

        public NoChartChartViewHolder(View view) {
            super(view);
            this.title = (TextView) view.findViewById(R.id.diagnosis_data_parameters_no_chart_title);
            this.value = (TextView) view.findViewById(R.id.diagnosis_data_parameters_no_chart_value);
        }

        public void bindView(ParametersChartItem parametersChartItem, boolean z) {
            StringBuilder sb;
            String str;
            this.title.setText(parametersChartItem.getTitle());
            String readableValue = z ? parametersChartItem.getReadableValue() : "-";
            if (readableValue != null && parametersChartItem.getUnit() != null) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(readableValue);
                if (parametersChartItem.getUnit().length() > 1) {
                    sb = new StringBuilder();
                    str = "\n";
                } else {
                    sb = new StringBuilder();
                    str = " ";
                }
                sb.append(str);
                sb.append(parametersChartItem.getUnit());
                sb2.append(sb.toString());
                String string = sb2.toString();
                SpannableString spannableString = new SpannableString(string);
                spannableString.setSpan(new RelativeSizeSpan(0.4f), readableValue.length(), string.length(), 33);
                this.value.setText(spannableString);
                return;
            }
            this.value.setText("");
        }
    }
}
