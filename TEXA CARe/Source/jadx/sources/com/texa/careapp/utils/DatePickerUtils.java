package com.texa.careapp.utils;

import android.R;
import android.app.DatePickerDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Build;
import android.util.Log;
import android.widget.DatePicker;
import com.activeandroid.Cache;
import java.util.Calendar;

/* JADX INFO: loaded from: classes2.dex */
public class DatePickerUtils {
    public static void showDatePicker(Context context, Calendar calendar, DatePickerDialog.OnDateSetListener onDateSetListener) {
        DatePickerDialog datePickerDialog = new DatePickerDialog(context, isAffectedVersion() ? null : onDateSetListener, calendar.get(1), calendar.get(2), calendar.get(5));
        if (isAffectedVersion()) {
            fixDatePicker(datePickerDialog, onDateSetListener);
        }
        datePickerDialog.show();
    }

    private static void fixDatePicker(final DatePickerDialog datePickerDialog, final DatePickerDialog.OnDateSetListener onDateSetListener) {
        datePickerDialog.setCancelable(true);
        datePickerDialog.setCanceledOnTouchOutside(true);
        datePickerDialog.setButton(-1, Cache.getContext().getString(R.string.ok), new DialogInterface.OnClickListener() { // from class: com.texa.careapp.utils.DatePickerUtils$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                DatePickerUtils.lambda$fixDatePicker$0(datePickerDialog, onDateSetListener, dialogInterface, i);
            }
        });
        datePickerDialog.setButton(-2, Cache.getContext().getString(R.string.cancel), new DialogInterface.OnClickListener() { // from class: com.texa.careapp.utils.DatePickerUtils$$ExternalSyntheticLambda1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                Log.d("Picker", "Cancel!");
            }
        });
    }

    static /* synthetic */ void lambda$fixDatePicker$0(DatePickerDialog datePickerDialog, DatePickerDialog.OnDateSetListener onDateSetListener, DialogInterface dialogInterface, int i) {
        Log.d("Picker", "Correct behavior!");
        DatePicker datePicker = datePickerDialog.getDatePicker();
        onDateSetListener.onDateSet(datePicker, datePicker.getYear(), datePicker.getMonth(), datePicker.getDayOfMonth());
    }

    private static boolean isAffectedVersion() {
        return Build.VERSION.SDK_INT >= 16 && Build.VERSION.SDK_INT < 21;
    }
}
