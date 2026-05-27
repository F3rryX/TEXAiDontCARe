package com.texa.careapp.views;

import android.app.DatePickerDialog;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.DatePicker;
import android.widget.LinearLayout;
import androidx.databinding.DataBindingUtil;
import com.texa.care.R;
import com.texa.careapp.databinding.EditabledateLayoutBinding;
import java.util.Date;
import java.util.IllegalFormatConversionException;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class EditableDateView extends LinearLayout implements DatePickerDialog.OnDateSetListener {
    private EditabledateLayoutBinding mBinding;
    private DialogInterface.OnDismissListener mListener;
    protected EditableDatePresenter mPresenter;

    public EditableDateView(Context context) {
        super(context);
        init(context);
    }

    public EditableDateView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context);
    }

    public EditableDateView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context);
    }

    private void init(Context context) {
        this.mBinding = (EditabledateLayoutBinding) DataBindingUtil.inflate(LayoutInflater.from(context), R.layout.editabledate_layout, this, true);
        this.mPresenter = new EditableDatePresenter(context, this.mBinding);
        setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.views.EditableDateView$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m674lambda$init$0$comtexacareappviewsEditableDateView(view);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$init$0$com-texa-careapp-views-EditableDateView, reason: not valid java name */
    public /* synthetic */ void m674lambda$init$0$comtexacareappviewsEditableDateView(View view) {
        showDatePicker();
    }

    public void showDatePicker() {
        Context context = getContext();
        if (isBrokenSamsungDevice()) {
            context = getCorrectContext();
        }
        DatePickerDialog datePickerDialog = new DatePickerDialog(context, isAffectedVersion() ? null : this, this.mPresenter.getYear(), this.mPresenter.getMonth(), this.mPresenter.getDay());
        if (isAffectedVersion()) {
            fixDatePicker(datePickerDialog);
        }
        datePickerDialog.show();
        DialogInterface.OnDismissListener onDismissListener = this.mListener;
        if (onDismissListener != null) {
            datePickerDialog.setOnDismissListener(onDismissListener);
        }
    }

    private Context getCorrectContext() {
        return new ContextWrapper(getContext()) { // from class: com.texa.careapp.views.EditableDateView.1
            private Resources wrappedResources;

            @Override // android.content.ContextWrapper, android.content.Context
            public Resources getResources() {
                Resources resources = super.getResources();
                if (this.wrappedResources == null) {
                    this.wrappedResources = new Resources(resources.getAssets(), resources.getDisplayMetrics(), resources.getConfiguration()) { // from class: com.texa.careapp.views.EditableDateView.1.1
                        @Override // android.content.res.Resources
                        public String getString(int i, Object... objArr) throws Resources.NotFoundException {
                            try {
                                return super.getString(i, objArr);
                            } catch (IllegalFormatConversionException e) {
                                Timber.e(e, "DatePickerDialogFix IllegalFormatConversionException Fixed!", new Object[0]);
                                return String.format(getConfiguration().locale, super.getString(i).replaceAll("%" + e.getConversion(), "%s"), objArr);
                            }
                        }
                    };
                }
                return this.wrappedResources;
            }
        };
    }

    public static boolean isBrokenSamsungDevice() {
        return Build.MANUFACTURER.equalsIgnoreCase("samsung") && isBetweenAndroidVersions(21, 22);
    }

    private static boolean isBetweenAndroidVersions(int i, int i2) {
        return Build.VERSION.SDK_INT >= i && Build.VERSION.SDK_INT <= i2;
    }

    private void fixDatePicker(final DatePickerDialog datePickerDialog) {
        datePickerDialog.setCancelable(true);
        datePickerDialog.setCanceledOnTouchOutside(true);
        datePickerDialog.setButton(-1, getContext().getString(android.R.string.ok), new DialogInterface.OnClickListener() { // from class: com.texa.careapp.views.EditableDateView$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f$0.m673lambda$fixDatePicker$1$comtexacareappviewsEditableDateView(datePickerDialog, dialogInterface, i);
            }
        });
        datePickerDialog.setButton(-2, getContext().getString(android.R.string.cancel), new DialogInterface.OnClickListener() { // from class: com.texa.careapp.views.EditableDateView$$ExternalSyntheticLambda1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                Log.d("Picker", "Cancel!");
            }
        });
    }

    /* JADX INFO: renamed from: lambda$fixDatePicker$1$com-texa-careapp-views-EditableDateView, reason: not valid java name */
    public /* synthetic */ void m673lambda$fixDatePicker$1$comtexacareappviewsEditableDateView(DatePickerDialog datePickerDialog, DialogInterface dialogInterface, int i) {
        Log.d("Picker", "Correct behavior!");
        DatePicker datePicker = datePickerDialog.getDatePicker();
        onDateSet(datePicker, datePicker.getYear(), datePicker.getMonth(), datePicker.getDayOfMonth());
    }

    private static boolean isAffectedVersion() {
        return Build.VERSION.SDK_INT >= 16 && Build.VERSION.SDK_INT < 21;
    }

    public void setTextSize(int i, int i2) {
        this.mPresenter.setTextSize(i, i2);
    }

    public Date getDate() {
        return this.mPresenter.getDate();
    }

    public void setDate(Date date) {
        this.mPresenter.setDate(date);
    }

    public String getText() {
        return this.mPresenter.getText();
    }

    public void show() {
        setVisibility(0);
    }

    public void hide() {
        setVisibility(8);
    }

    public boolean isHidden() {
        return getVisibility() != 0;
    }

    public boolean isVisible() {
        return getVisibility() == 0;
    }

    @Override // android.app.DatePickerDialog.OnDateSetListener
    public void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
        this.mPresenter.setValues(i, i2, i3);
    }

    public void setListener(DialogInterface.OnDismissListener onDismissListener) {
        this.mListener = onDismissListener;
    }

    public boolean isEmpty() {
        return this.mPresenter.isEmpty();
    }
}
