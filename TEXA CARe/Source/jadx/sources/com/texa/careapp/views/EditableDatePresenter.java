package com.texa.careapp.views;

import android.content.Context;
import android.widget.TextView;
import com.texa.care.R;
import com.texa.careapp.Constants;
import com.texa.careapp.databinding.EditabledateLayoutBinding;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class EditableDatePresenter {
    private static DateFormat DATE_FORMAT = new SimpleDateFormat(Constants.DEFAULT_FORMAT_DATE, Locale.getDefault());
    private Context context;
    private Calendar mCalendar = new GregorianCalendar();
    private TextView mValue;

    public EditableDatePresenter(Context context, EditabledateLayoutBinding editabledateLayoutBinding) {
        this.context = context;
        this.mValue = editabledateLayoutBinding.editabledateValue;
    }

    public Date getDate() {
        return this.mCalendar.getTime();
    }

    public void setDate(Date date) {
        if (date == null) {
            setText("");
        } else {
            this.mCalendar.setTime(date);
            updateView();
        }
    }

    private void updateView() {
        this.mValue.setText(DATE_FORMAT.format(this.mCalendar.getTime()));
    }

    public String getText() {
        return this.mValue.getText().toString();
    }

    public void setText(String str) {
        this.mValue.setText(str);
    }

    public int getYear() {
        return this.mCalendar.get(1);
    }

    public int getMonth() {
        return this.mCalendar.get(2);
    }

    public int getDay() {
        return this.mCalendar.get(5);
    }

    public void setValues(int i, int i2, int i3) {
        this.mCalendar.set(i, i2, i3, 0, 0, 0);
        updateView();
    }

    public boolean isEmpty() {
        return this.mValue.getText() == null || this.mValue.getText().length() <= 0 || this.mValue.getText().toString().equals(this.context.getResources().getString(R.string.not_available));
    }

    public void setTextSize(int i, int i2) {
        this.mValue.setTextSize(i, i2);
    }
}
