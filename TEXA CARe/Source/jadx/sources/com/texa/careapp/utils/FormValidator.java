package com.texa.careapp.utils;

import android.content.Context;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import com.google.android.material.textfield.TextInputLayout;
import com.texa.care.R;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class FormValidator {
    private Context mContext;

    public FormValidator(Context context) {
        this.mContext = context;
    }

    public boolean validateRequiredFields(List<TextInputLayout> list, List<EditText> list2) {
        boolean z = true;
        for (int i = 0; i < list.size(); i++) {
            if (Utils.isEmpty(list2.get(i).getText().toString().trim())) {
                list.get(i).setError(this.mContext.getString(R.string.required_field));
                z = false;
            }
        }
        return z;
    }

    public boolean validateRequiredField(TextInputLayout textInputLayout, EditText editText) {
        if (!Utils.isEmpty(editText.getText().toString().trim())) {
            return true;
        }
        textInputLayout.setError(this.mContext.getString(R.string.required_field));
        return false;
    }

    public boolean validateRequiredField(TextInputLayout textInputLayout, AutoCompleteTextView autoCompleteTextView) {
        if (!Utils.isEmpty(autoCompleteTextView.getText().toString().trim())) {
            return true;
        }
        textInputLayout.setError(this.mContext.getString(R.string.required_field));
        return false;
    }

    public boolean validateEmailField(TextInputLayout textInputLayout, EditText editText) {
        boolean z;
        String strTrim = editText.getText().toString().trim();
        if (Utils.isEmpty(strTrim)) {
            textInputLayout.setError(this.mContext.getString(R.string.required_field));
            z = false;
        } else {
            z = true;
        }
        if (Utils.isEmail(strTrim)) {
            return z;
        }
        textInputLayout.setError(this.mContext.getString(R.string.signup_email_not_valid));
        return false;
    }
}
