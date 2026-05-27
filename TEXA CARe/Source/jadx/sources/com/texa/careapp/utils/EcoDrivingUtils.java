package com.texa.careapp.utils;

import android.content.Context;
import android.text.SpannableString;
import androidx.core.content.res.ResourcesCompat;
import com.texa.care.R;
import com.texa.careapp.app.ecodriving.model.EcoDrivingEventsDataManager;
import com.texa.careapp.app.ecodriving.model.TripObjectModel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: classes2.dex */
public class EcoDrivingUtils {
    public static int MAX_VALUE = 100;
    public static int PROBLEM_VALUE = 30;
    public static int WARN_VALUE = 60;

    public static int getReferenceColor(Context context, int i) {
        int i2 = PROBLEM_VALUE;
        if (i <= i2) {
            return Utils.getColorResource(context, R.color.eco_driving_problem_color);
        }
        if (i <= WARN_VALUE && i > i2) {
            return Utils.getColorResource(context, R.color.eco_driving_warning_color);
        }
        return Utils.getColorResource(context, R.color.eco_driving_normal_color);
    }

    public static int getReferenceDrawable(int i) {
        int i2 = PROBLEM_VALUE;
        return i <= i2 ? com.texa.careapp.R.drawable.ic_bad_behavior : (i > WARN_VALUE || i <= i2) ? com.texa.careapp.R.drawable.ic_great_behavior : com.texa.careapp.R.drawable.ic_capa;
    }

    public static List<Integer> getRandomHintColor(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(Utils.getColorResource(context, R.color.eco_driving_hint_color_1)));
        arrayList.add(Integer.valueOf(Utils.getColorResource(context, R.color.eco_driving_hint_color_2)));
        arrayList.add(Integer.valueOf(Utils.getColorResource(context, R.color.eco_driving_hint_color_3)));
        arrayList.add(Integer.valueOf(Utils.getColorResource(context, R.color.eco_driving_hint_color_4)));
        arrayList.add(Integer.valueOf(Utils.getColorResource(context, R.color.eco_driving_hint_color_5)));
        arrayList.add(Integer.valueOf(Utils.getColorResource(context, R.color.eco_driving_hint_color_6)));
        arrayList.add(Integer.valueOf(Utils.getColorResource(context, R.color.eco_driving_hint_color_7)));
        arrayList.add(Integer.valueOf(Utils.getColorResource(context, R.color.eco_driving_hint_color_8)));
        Collections.shuffle(arrayList, new Random());
        return arrayList;
    }

    private static CareTypefaceSpan getSpanStyle(Context context) {
        return new CareTypefaceSpan(ResourcesCompat.getFont(context, R.font.font_bold));
    }

    public static SpannableString getTripInfoData(Context context, String str, String str2, Float f, Float f2, long j, long j2, boolean z) {
        if (z) {
            return new SpannableString(context.getString(R.string.eco_driving_format_from_to_current));
        }
        if (notNullNotEmpty(str) && notNullNotEmpty(str2)) {
            return getTripInfoDataWithLocation(context, str, str2, f, f2, j, j2);
        }
        if (f != null && f2 != null && f.floatValue() != -1.0f && f2.floatValue() != -1.0f && f2.floatValue() - f.floatValue() >= 0.0f) {
            return getTripInfoDataWithOdometer(context, f.floatValue(), f2.floatValue(), j, j2);
        }
        if (j > 0 && j2 > 0) {
            return new SpannableString(String.format(context.getString(R.string.eco_driving_format_from_to_trip_not_location_with_hour), String.valueOf(j), String.valueOf(j2)));
        }
        if (j2 > 0) {
            return new SpannableString(String.format(context.getString(R.string.eco_driving_format_from_to_trip_not_location_without_hour), String.valueOf(j2)));
        }
        return new SpannableString("");
    }

    private static SpannableString getTripInfoDataWithLocation(Context context, String str, String str2, Float f, Float f2, long j, long j2) {
        String strSplitCityLocation = splitCityLocation(str);
        String strSplitCityLocation2 = splitCityLocation(str2);
        if (strSplitCityLocation != null && strSplitCityLocation2 != null) {
            if (strSplitCityLocation.equalsIgnoreCase(strSplitCityLocation2)) {
                strSplitCityLocation = splitAddressLocation(str);
                strSplitCityLocation2 = splitAddressLocation(str2);
            }
            if (f != null && f2 != null && f.floatValue() != -1.0f && f2.floatValue() != -1.0f && f2.floatValue() - f.floatValue() >= 0.0f) {
                String str3 = String.format(context.getString(R.string.eco_driving_format_from_to_trip), strSplitCityLocation, strSplitCityLocation2, String.valueOf((int) (f2.floatValue() - f.floatValue())));
                SpannableString spannableString = new SpannableString(str3);
                spannableString.setSpan(getSpanStyle(context), str3.length() - (String.valueOf((int) (f2.floatValue() - f.floatValue())).length() + 4), str3.length(), 33);
                return spannableString;
            }
            if (j > 0 && j2 > 0) {
                String str4 = String.format(context.getString(R.string.eco_driving_format_from_to_trip_not_odo_with_hour), strSplitCityLocation, strSplitCityLocation2, String.valueOf(j), String.valueOf(j2));
                SpannableString spannableString2 = new SpannableString(str4);
                spannableString2.setSpan(getSpanStyle(context), str4.length() - 12, str4.length(), 33);
                return spannableString2;
            }
            if (j2 > 0) {
                String str5 = String.format(context.getString(R.string.eco_driving_format_from_to_trip_not_odo_without_hour), strSplitCityLocation, strSplitCityLocation2, String.valueOf(j2));
                SpannableString spannableString3 = new SpannableString(str5);
                spannableString3.setSpan(getSpanStyle(context), str5.length() - (String.valueOf(j2).length() + 4), str5.length(), 33);
                return spannableString3;
            }
        } else {
            if (f == null || f2 == null || f.floatValue() == -1.0f || f2.floatValue() == -1.0f) {
                if (j > 0 && j2 > 0) {
                    return new SpannableString(String.format(context.getString(R.string.eco_driving_format_from_to_trip_not_location_with_hour), String.valueOf(j), String.valueOf(j2)));
                }
                if (j2 > 0) {
                    return new SpannableString(String.format(context.getString(R.string.eco_driving_format_from_to_trip_not_location_without_hour), String.valueOf(j2)));
                }
                return new SpannableString("");
            }
            getTripInfoDataWithOdometer(context, f.floatValue(), f2.floatValue(), j, j2);
        }
        return null;
    }

    private static SpannableString getTripInfoDataWithOdometer(Context context, float f, float f2, long j, long j2) {
        String strValueOf = String.valueOf(((int) f2) - f);
        if (j > 0 && j2 > 0) {
            String str = String.format(context.getString(R.string.eco_driving_format_from_to_trip_not_location_odo_with_hour), String.valueOf(j), String.valueOf(j2), strValueOf);
            SpannableString spannableString = new SpannableString(str);
            spannableString.setSpan(getSpanStyle(context), str.length() - (strValueOf.length() + 2), str.length(), 33);
            return spannableString;
        }
        if (j2 <= 0) {
            return null;
        }
        String str2 = String.format(context.getString(R.string.eco_driving_format_from_to_trip_not_location_odo_without_hour), String.valueOf(j2), strValueOf);
        SpannableString spannableString2 = new SpannableString(str2);
        spannableString2.setSpan(getSpanStyle(context), str2.length() - (strValueOf.length() + 2), str2.length(), 33);
        return spannableString2;
    }

    private static boolean notNullNotEmpty(String str) {
        return (str == null || str.equalsIgnoreCase("")) ? false : true;
    }

    public static String splitLocation(String str) {
        String[] strArrSplit = str.split(" - ");
        String str2 = strArrSplit.length > 0 ? "" : null;
        for (String str3 : strArrSplit) {
            str2 = str2 + str3 + "\n";
        }
        return str2;
    }

    public static String splitCityLocation(String str) {
        String[] strArrSplit = str.split(" - ");
        if (strArrSplit.length > 0) {
            return strArrSplit[0];
        }
        return null;
    }

    private static String splitAddressLocation(String str) {
        String[] strArrSplit = str.split(" - ");
        if (strArrSplit.length > 1) {
            return strArrSplit[1];
        }
        return null;
    }

    public static boolean isTripInProgress(TripObjectModel tripObjectModel) {
        if (tripObjectModel == null) {
            return false;
        }
        if (!Utils.isEmpty(tripObjectModel.getIdParent())) {
            return tripObjectModel.getEndTrip() == 0;
        }
        List<TripObjectModel> tripGroup = EcoDrivingEventsDataManager.getTripGroup(tripObjectModel.getUuid());
        if (Utils.isEmpty(tripGroup)) {
            return tripObjectModel.getEndTrip() == 0;
        }
        TripObjectModel tripObjectModel2 = null;
        for (TripObjectModel tripObjectModel3 : tripGroup) {
            if (tripObjectModel2 == null || tripObjectModel3.getStartTrip() > tripObjectModel2.getStartTrip()) {
                tripObjectModel2 = tripObjectModel3;
            }
        }
        if (tripObjectModel2 != null) {
            if (tripObjectModel2.getEndTrip() != 0) {
                return false;
            }
        } else if (tripObjectModel.getEndTrip() != 0) {
            return false;
        }
        return true;
    }
}
