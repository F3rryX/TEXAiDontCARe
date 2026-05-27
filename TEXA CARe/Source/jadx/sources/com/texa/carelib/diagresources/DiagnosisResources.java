package com.texa.carelib.diagresources;

import android.content.Context;
import android.content.res.Resources;
import android.util.Log;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class DiagnosisResources {
    private static final String ECU_NAME_KEY_FORMAT = "carelib_diag_resources_ecu_%1$d_name";
    private static final String ENUM_VALUE_KEY_FORMAT = "carelib_diag_resources_enum_%1$d_value";
    private static final int INVALID_RES_ID = 0;
    private static final String PARAMETER_HELP_KEY_FORMAT = "carelib_diag_resources_parameter_%1$d_help";
    private static final String PARAMETER_NAME_KEY_FORMAT = "carelib_diag_resources_parameter_%1$d_name";

    public String getParameterName(Context context, long j) {
        int resId = getResId(context, String.format(Locale.US, PARAMETER_NAME_KEY_FORMAT, Long.valueOf(j)));
        if (resId == 0) {
            return null;
        }
        try {
            return context.getString(resId);
        } catch (Resources.NotFoundException e) {
            Log.d("", "", e);
            return null;
        }
    }

    public String getParameterName(Context context, long j, String str) {
        String parameterName = getParameterName(context, j);
        return parameterName != null ? parameterName : str;
    }

    public String getParameterHelp(Context context, long j) {
        int resId = getResId(context, String.format(Locale.US, PARAMETER_HELP_KEY_FORMAT, Long.valueOf(j)));
        if (resId == 0) {
            return null;
        }
        try {
            return context.getString(resId);
        } catch (Resources.NotFoundException e) {
            Log.d("", "", e);
            return null;
        }
    }

    public String getParameterHelp(Context context, long j, String str) {
        String parameterHelp = getParameterHelp(context, j);
        return parameterHelp != null ? parameterHelp : str;
    }

    public String getEnumValue(Context context, long j) {
        int resId = getResId(context, String.format(Locale.US, ENUM_VALUE_KEY_FORMAT, Long.valueOf(j)));
        if (resId != 0) {
            return context.getString(resId);
        }
        return null;
    }

    public String getEnumValue(Context context, long j, String str) {
        String enumValue = getEnumValue(context, j);
        return enumValue != null ? enumValue : str;
    }

    public String getECUName(Context context, long j) {
        int resId = getResId(context, String.format(Locale.US, ECU_NAME_KEY_FORMAT, Long.valueOf(j)));
        if (resId != 0) {
            return context.getString(resId);
        }
        return null;
    }

    public String getECUName(Context context, long j, String str) {
        String eCUName = getECUName(context, j);
        return eCUName != null ? eCUName : str;
    }

    private static int getResId(Context context, String str) {
        return getResIdResources(context, str, "string");
    }

    private static int getResIdResources(Context context, String str, String str2) {
        int identifier;
        try {
            identifier = context.getResources().getIdentifier(str, str2, context.getApplicationInfo().packageName);
        } catch (Exception unused) {
            identifier = 0;
        }
        if (identifier > 0) {
            return identifier;
        }
        return 0;
    }
}
