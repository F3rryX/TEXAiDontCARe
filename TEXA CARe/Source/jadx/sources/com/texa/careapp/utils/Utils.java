package com.texa.careapp.utils;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.app.Notification;
import android.app.PendingIntent;
import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.database.SQLException;
import android.location.Address;
import android.location.Geocoder;
import android.location.Location;
import android.location.LocationManager;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.PowerManager;
import android.preference.PreferenceManager;
import android.provider.Settings;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Base64;
import android.util.Log;
import android.util.Patterns;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ScrollView;
import androidx.core.app.NotificationCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.util.Pair;
import com.activeandroid.Model;
import com.google.android.gms.location.LocationRequest;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.gson.FieldNamingPolicy;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.careapp.CareApplication;
import com.texa.careapp.Constants;
import com.texa.careapp.app.dashboard.card.ParametersCardPreferenceObject;
import com.texa.careapp.app.diagnosis.DiagnosisDataActivity;
import com.texa.careapp.app.diagnosis.DiagnosisType;
import com.texa.careapp.app.errorsDTC.LampStatus;
import com.texa.careapp.app.onboarding.IVehicleModel;
import com.texa.careapp.app.walkthrough.WalkthroughActivity;
import com.texa.careapp.carelib.ICareObserver;
import com.texa.careapp.configuration.UpdateConfigurationHelper;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.model.AlarmStatus;
import com.texa.careapp.model.AlarmType;
import com.texa.careapp.model.ContactModel;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.DongleModel;
import com.texa.careapp.model.EmergencyInfo;
import com.texa.careapp.model.IScheduleModel;
import com.texa.careapp.model.ScheduleType;
import com.texa.careapp.model.ServerLogModel;
import com.texa.careapp.model.ServiceDataModel;
import com.texa.careapp.model.ThresholdModel;
import com.texa.careapp.model.ThresholdModelList;
import com.texa.careapp.model.UserModel;
import com.texa.careapp.model.UserScheduleModel;
import com.texa.careapp.model.VehicleAlarm;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.model.VehicleParam;
import com.texa.careapp.model.VehicleScheduleModel;
import com.texa.careapp.networking.response.SelectionDataResponse;
import com.texa.careapp.parameters.ParameterBatteryVoltage;
import com.texa.careapp.remotelogger.LoggerManager;
import com.texa.careapp.utils.ScheduleHelper;
import com.texa.careapp.utils.activeandroid.VehicleParamSerializer;
import com.texa.careapp.utils.gson.ThresholdListSerializer;
import com.texa.careapp.utils.gson.ThresholdModelSerializer;
import com.texa.careapp.utils.permission.CorePermission;
import com.texa.carelib.care.accessory.Accessory;
import com.texa.carelib.care.trips.TripEndInfo;
import com.texa.carelib.care.vehicle.Vehicle;
import com.texa.carelib.communication.Communication;
import com.texa.carelib.communication.CommunicationStatus;
import com.texa.carelib.communication.DeviceInfo;
import com.texa.carelib.core.utils.FirmwareVersion;
import com.texa.carelib.diagresources.EnumValue;
import com.texa.carelib.webservices.VehicleConfigurationStatus;
import io.reactivex.Maybe;
import io.reactivex.MaybeSource;
import io.reactivex.MaybeTransformer;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.ObservableSource;
import io.reactivex.ObservableTransformer;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.functions.Predicate;
import io.reactivex.schedulers.Schedulers;
import java.beans.PropertyChangeEvent;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
import java.util.regex.Pattern;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import okhttp3.HttpUrl;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Utils {
    private static DateFormat DATE_FORMAT = SimpleDateFormat.getDateInstance();
    private static final boolean SET_ONLY_ALERT_ONCE = true;
    private static final String TAG = "Utils";
    Function<Throwable, Observable<Object>> resume = new Function() { // from class: com.texa.careapp.utils.Utils$$ExternalSyntheticLambda12
        @Override // io.reactivex.functions.Function
        public final Object apply(Object obj) {
            return Observable.just("twoResume", "threeResume");
        }
    };

    static /* synthetic */ boolean lambda$applyNotNullFilter$4(Object obj) throws Exception {
        return obj != null;
    }

    public static int nonNegativeSubtraction(int i, int i2) {
        int i3 = i - i2;
        if (i3 < 0) {
            return 0;
        }
        return i3;
    }

    private Utils() {
    }

    public static boolean isEmpty(String str) {
        return str == null || str.trim().length() == 0;
    }

    public static String getValue(EditText editText) {
        return editText.getText().toString().trim();
    }

    public static boolean isEmpty(List<?> list) {
        return list == null || list.isEmpty();
    }

    public static boolean isEmpty(Long[] lArr) {
        return lArr == null || lArr.length == 0;
    }

    public static String trimToEmpty(String str) {
        return str == null ? "" : str.trim();
    }

    public static String formatVehicleModel(VehicleModel vehicleModel) {
        if (vehicleModel == null) {
            return "";
        }
        String strTrimToEmpty = trimToEmpty(vehicleModel.getBrandName());
        String strTrimToEmpty2 = trimToEmpty(vehicleModel.getModelName());
        if (strTrimToEmpty2.length() > 0) {
            strTrimToEmpty2 = strTrimToEmpty2.replaceAll("\\(.+?\\)|\\[.+?\\]+", "");
            if (strTrimToEmpty2.contains(Pattern.quote(Constants.VEHICLE_DESCRIPTION_SEPARATOR))) {
                strTrimToEmpty2 = strTrimToEmpty2.replaceAll(Pattern.quote(Constants.VEHICLE_DESCRIPTION_SEPARATOR), "");
            }
        }
        return capitalize((strTrimToEmpty + " " + strTrimToEmpty2).trim());
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x004f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static List<IVehicleModel> cleanVehicleItems(List<IVehicleModel> list) {
        ArrayList arrayList = new ArrayList();
        for (IVehicleModel iVehicleModel : list) {
            boolean z = false;
            if (iVehicleModel.getVehicleInfo().contains(Constants.VEHICLE_DESCRIPTION_SEPARATOR)) {
                String[] strArrSplit = iVehicleModel.getVehicleInfo().split(Pattern.quote(Constants.VEHICLE_DESCRIPTION_SEPARATOR));
                if (strArrSplit.length == 2 && !isEmpty(strArrSplit[0]) && !isEmpty(strArrSplit[1])) {
                    z = true;
                }
            } else if (!isEmpty(iVehicleModel.getVehicleInfo())) {
            }
            if (!z) {
                arrayList.add(iVehicleModel);
            }
        }
        if (!arrayList.isEmpty()) {
            list.removeAll(arrayList);
        }
        return list;
    }

    public static String formatVehicleModel(String str) {
        if (isEmpty(str)) {
            return "";
        }
        if (str.length() > 0) {
            str = str.replaceAll("\\(.+?\\)|\\[.+?\\]+", "");
            if (str.contains(Pattern.quote(Constants.VEHICLE_DESCRIPTION_SEPARATOR))) {
                str = str.replaceAll(Pattern.quote(Constants.VEHICLE_DESCRIPTION_SEPARATOR), "");
            }
        }
        return capitalize(str.trim());
    }

    public static String formatDescription(String str, String str2) {
        String strTrimToEmpty = trimToEmpty(str);
        String strTrimToEmpty2 = trimToEmpty(str2);
        if (strTrimToEmpty2.length() > 0) {
            strTrimToEmpty2 = strTrimToEmpty2.replaceAll("\\(.+?\\)|\\[.+?\\]+", "");
        }
        return capitalize((strTrimToEmpty + " " + strTrimToEmpty2).trim());
    }

    public static boolean isOdometerEstimated(TripEndInfo tripEndInfo) {
        if (TripEndInfo.OdometerEstimationMethod.Estimated == tripEndInfo.getOdometerEstimationMethod()) {
            Timber.d("isOdometerEstimated -> true", new Object[0]);
            return true;
        }
        Timber.d("isOdometerEstimated -> false", new Object[0]);
        return false;
    }

    public static boolean isOdometerFromDiagnostic(TripEndInfo tripEndInfo) {
        if (TripEndInfo.OdometerEstimationMethod.Diagnostic == tripEndInfo.getOdometerEstimationMethod()) {
            Timber.d("isOdometerFromDiagnostic -> true", new Object[0]);
            return true;
        }
        Timber.d("isOdometerFromDiagnostic -> false", new Object[0]);
        return false;
    }

    public static String formatVehicleModel(SelectionDataResponse selectionDataResponse) {
        String strReplaceAll = "";
        if (selectionDataResponse == null) {
            return "";
        }
        ValueOrder brand = selectionDataResponse.getBrand();
        String strTrimToEmpty = brand != null ? trimToEmpty(brand.getValue()) : "";
        ValueOrder model = selectionDataResponse.getModel();
        if (model != null) {
            String strTrimToEmpty2 = trimToEmpty(model.getValue());
            strReplaceAll = strTrimToEmpty2.length() > 0 ? strTrimToEmpty2.replaceAll("\\(.+?\\)|\\[.+?\\]+", "") : strTrimToEmpty2;
        }
        return capitalize((strTrimToEmpty + " " + strReplaceAll).trim());
    }

    public static long daysToExpire(Date date) {
        return ((date.getTime() - new Date().getTime()) / 86400000) + 1;
    }

    public static void setText(EditText editText, Integer num) {
        if (num != null) {
            editText.setText(String.valueOf(num));
        }
    }

    public static void setText(EditText editText, String str) {
        editText.setText(str);
    }

    public static void setText(EditText editText, Date date) {
        if (date != null) {
            editText.setText(DATE_FORMAT.format(date));
        }
    }

    public static boolean isPermissionEnabled(Context context, String str) {
        return CorePermission.with(context).has(str);
    }

    public static boolean isPermissionEnabled(Context context, String... strArr) {
        return CorePermission.with(context).has(strArr);
    }

    public static boolean isCAReDevice(DeviceInfo deviceInfo) {
        if (deviceInfo == null) {
            return false;
        }
        return isValidCAReDeviceName(trimToEmpty(deviceInfo.getName()));
    }

    private static boolean isValidCAReDeviceName(String str) {
        return str.startsWith("TOC") || str.startsWith("D3M") || str.startsWith("MDARIOL");
    }

    public static boolean isSetThresholdValuesFromEditText(ThresholdModel thresholdModel, EditText editText) {
        if (editText.getText().length() <= 0 || thresholdModel == null || !isValidIntegerValuesFromEditText(editText)) {
            return false;
        }
        thresholdModel.setOdometer(Integer.valueOf(editText.getText().toString().trim()));
        try {
            thresholdModel.saveForSync();
            return true;
        } catch (DatabaseIOException e) {
            Timber.e(e, "Could not save vehicle threshold", new Object[0]);
            return true;
        }
    }

    public static boolean isValidIntegerValuesFromEditText(EditText editText) {
        Integer numValueOf;
        if (editText == null || editText.getText() == null || isEmpty(editText.getText().toString())) {
            numValueOf = null;
        } else {
            try {
                numValueOf = Integer.valueOf(editText.getText().toString().replaceAll("[-+.^:,]", "").trim());
            } catch (Exception unused) {
                numValueOf = null;
            }
        }
        return numValueOf != null;
    }

    public static void setOdoTextWatcher(final Context context, final EditText editText) {
        editText.addTextChangedListener(new TextWatcher() { // from class: com.texa.careapp.utils.Utils.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (!Utils.isValidIntegerValuesFromEditText(editText)) {
                    editText.setError(context.getResources().getString(R.string.km_invalid_value));
                } else {
                    editText.setError(null);
                }
            }
        });
    }

    public static Gson buildGsonInstance() {
        return new GsonBuilder().excludeFieldsWithoutExposeAnnotation().setFieldNamingPolicy(FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES).registerTypeAdapter(Date.class, new DateTypeAdapter()).registerTypeAdapter(VehicleParam.class, new VehicleParamSerializer()).registerTypeAdapter(ThresholdModel.class, new ThresholdModelSerializer()).registerTypeAdapter(ThresholdModelList.class, new ThresholdListSerializer()).create();
    }

    public static String readTextFromFile(Resources resources, int i) throws IOException {
        InputStream inputStreamOpenRawResource = resources.openRawResource(i);
        StringWriter stringWriter = new StringWriter();
        char[] cArr = new char[1024];
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStreamOpenRawResource, "UTF-8"));
            while (true) {
                int i2 = bufferedReader.read(cArr);
                if (i2 != -1) {
                    stringWriter.write(cArr, 0, i2);
                } else {
                    inputStreamOpenRawResource.close();
                    return stringWriter.toString();
                }
            }
        } catch (Throwable th) {
            inputStreamOpenRawResource.close();
            throw th;
        }
    }

    public static boolean isGpsAvailable(Context context) {
        return ((LocationManager) context.getSystemService(FirebaseAnalytics.Param.LOCATION)).isProviderEnabled("gps");
    }

    public static Locale[] getAcceptedLocales() {
        return new Locale[]{Locale.getDefault(), Locale.UK};
    }

    public static Notification buildAlternatorNotification(Context context, String str) {
        return getDefaultNotificationBuilder(context).setContentTitle(context.getString(R.string.notification_battery_charge_title)).setStyle(new NotificationCompat.BigTextStyle().bigText(str)).setOnlyAlertOnce(true).build();
    }

    public static NotificationCompat.Builder getDefaultNotificationBuilder(Context context) {
        return new NotificationCompat.Builder(context, Constants.NOTIFICATION_DEFAULT_PRIORITY).setContentTitle(context.getString(R.string.texa_care)).setSmallIcon(R.drawable.ic_notification).setWhen(System.currentTimeMillis()).setDefaults(1).setAutoCancel(false);
    }

    public static AlertDialog createPermissionExplanationAlertDialog(final Activity activity) {
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setTitle(activity.getString(R.string.error_permission_not_enabled_title));
        builder.setMessage(activity.getString(R.string.error_permission_not_enabled_description)).setCancelable(false).setPositiveButton(activity.getString(R.string.go_to_app_settings), new DialogInterface.OnClickListener() { // from class: com.texa.careapp.utils.Utils$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                Utils.goToSettings(activity);
            }
        }).setNegativeButton(android.R.string.cancel, new DialogInterface.OnClickListener() { // from class: com.texa.careapp.utils.Utils$$ExternalSyntheticLambda4
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                activity.finish();
            }
        });
        return builder.create();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void goToSettings(Activity activity) {
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS", Uri.fromParts("package", activity.getPackageName(), null));
        intent.addFlags(268435456);
        activity.startActivity(intent);
    }

    public static Notification buildLampsNotification(Context context, List<LampStatus> list) {
        return getDefaultNotificationBuilder(context).setContentTitle(context.getString(R.string.notification_dtc_title)).setContentText(context.getString(R.string.notification_dtc_summary)).setAutoCancel(true).setContentIntent(PendingIntent.getActivity(context, 1, DiagnosisDataActivity.buildIntent(context, 0), Build.VERSION.SDK_INT >= 31 ? 167772160 : 134217728)).setOnlyAlertOnce(true).build();
    }

    public static CharSequence getLampLabel(Context context, LampStatus lampStatus) {
        Long dataId = lampStatus.getDataId();
        if (dataId == null) {
            Timber.w("getLampLabel: dataId cannot be null!", new Object[0]);
            return "";
        }
        Integer num = Constants.DATAID_LABELS.get(dataId.longValue());
        if (num == null) {
            Timber.w("no resource string found for dataId: %s", dataId);
            return "";
        }
        return context.getString(num.intValue());
    }

    public static UserScheduleModel getDriverLicenseExpireDate(UserModel userModel) {
        if (userModel.getLicenseExpireDate() == null) {
            return null;
        }
        UserScheduleModel userScheduleModel = new UserScheduleModel();
        userScheduleModel.setUid(UUID.randomUUID().toString());
        userScheduleModel.setUser(userModel);
        userScheduleModel.setType(ScheduleType.LICENSE);
        userScheduleModel.setExpireDate(userModel.getLicenseExpireDate());
        return userScheduleModel;
    }

    public static String getScheduleTitle(IScheduleModel iScheduleModel, Context context) {
        ScheduleType type = iScheduleModel.getType();
        return type != null ? context.getString(type.getStringRes()) : "";
    }

    public static boolean isPhoneNumber(String str) {
        return Patterns.PHONE.matcher(str).matches();
    }

    public static boolean isEmail(String str) {
        return Patterns.EMAIL_ADDRESS.matcher(str).matches();
    }

    public static boolean isName(String str) {
        return Pattern.compile("^([A-z][A-Za-z]*\\s*[A-Za-z]*)$").matcher(str).find();
    }

    public static String capitalize(String str) {
        if (str == null || str.isEmpty()) {
            return "";
        }
        String[] strArrSplit = str.toLowerCase().split(" ");
        StringBuilder sb = new StringBuilder();
        for (String str2 : strArrSplit) {
            if (!str2.trim().isEmpty()) {
                sb.append(Character.toUpperCase(str2.charAt(0)));
                sb.append(str2.substring(1));
                sb.append(" ");
            }
        }
        return sb.toString().trim();
    }

    public static boolean isValidVehicleAlarm(VehicleAlarm vehicleAlarm) {
        return (vehicleAlarm == null || vehicleAlarm.getAlarmStatus() == null || vehicleAlarm.getAlarmType() == null || vehicleAlarm.getTimestamp() == null) ? false : true;
    }

    public static String getCareStatus(Context context, Integer num) {
        if (Constants.CARE_STATUS.get(num.intValue()) != 0) {
            return context.getString(Constants.CARE_STATUS.get(num.intValue()));
        }
        return context.getString(R.string.not_connected);
    }

    public static CareApplication.ApplicationComponent getComponent(Screen screen) {
        try {
            return ((CareApplication) screen.getNavigator().getApplication()).component();
        } catch (Exception e) {
            Log.w(TAG, "got exception", e);
            return null;
        }
    }

    public static boolean isActive(Vehicle vehicle, long j) {
        try {
            return vehicle.getEnumValue(Long.valueOf(j)) == EnumValue.ACTIVE.getId();
        } catch (Exception e) {
            Log.d(TAG, "got exception", e);
            return false;
        }
    }

    public static boolean isLampStatus(Long l) {
        return Constants.LAMP_STATUS_IMAGES.get(l.longValue()) != null;
    }

    public static boolean isVehicleParameter(long j) {
        return Constants.CARE_DRIVER_PARAMETERS.contains(Long.valueOf(j)) || Constants.CARE_PARAMETERS_FOR_MECHANIC.contains(Long.valueOf(j));
    }

    public static List<LampStatus> getLampsListFilteredForDiagnosisType(DiagnosisType diagnosisType, List<LampStatus> list) {
        ArrayList arrayList = new ArrayList();
        for (LampStatus lampStatus : list) {
            if (lampStatus.getDiagnosisType() == diagnosisType) {
                arrayList.add(lampStatus);
            }
        }
        return arrayList;
    }

    static <T> T safeGetByPosition(List<T> list, int i) {
        if (!isEmpty((List<?>) list) && i < list.size()) {
            return list.get(i);
        }
        return null;
    }

    public static boolean isParameterVisibleForUser(long j) {
        return Constants.CARE_DRIVER_PARAMETERS.contains(Long.valueOf(j));
    }

    public static String readableAccessoryStatus(int i) {
        String str = Constants.CARE_ACCESSORY_STATUS.get(i);
        return isEmpty(str) ? String.format(Locale.getDefault(), "N.A.(%d)", Integer.valueOf(i)) : str;
    }

    public static String getAppVersion(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            return packageInfo.versionName + "(" + packageInfo.versionCode + ")";
        } catch (PackageManager.NameNotFoundException e) {
            throw new RuntimeException("Could not get application version name or code.", e);
        }
    }

    public static int getVersionCode(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            throw new RuntimeException("Could not get application version code.", e);
        }
    }

    public static boolean shouldStartWalkthrough(SharedPreferences sharedPreferences) {
        return !WalkthroughActivity.hasShot(sharedPreferences);
    }

    public static boolean shouldStartOutOfTheBox(SharedPreferences sharedPreferences, DongleDataManager dongleDataManager) {
        if (dongleDataManager.count() <= 0) {
            return true;
        }
        return !sharedPreferences.getBoolean(Constants.OUT_OF_THE_BOX_COMPLETED, false);
    }

    public static boolean shouldStartService(Context context, Class<?> cls) {
        Iterator<ActivityManager.RunningServiceInfo> it = ((ActivityManager) context.getSystemService("activity")).getRunningServices(Integer.MAX_VALUE).iterator();
        while (it.hasNext()) {
            if (cls.getName().equals(it.next().service.getClassName())) {
                return false;
            }
        }
        return true;
    }

    public static void setOutOfTheBoxCompleted(SharedPreferences sharedPreferences) {
        sharedPreferences.edit().putBoolean(Constants.OUT_OF_THE_BOX_COMPLETED, true).apply();
    }

    public static void isBluetoothEnabled(LoggerManager loggerManager) {
        boolean zIsEnabled = false;
        try {
            zIsEnabled = BluetoothAdapter.getDefaultAdapter().isEnabled();
        } catch (Exception e) {
            Timber.w(e, "#isBluetoothEnabled()", new Object[0]);
        }
        if (zIsEnabled) {
            loggerManager.log(ServerLogModel.LogEvent.USER_INTERATION, ServerLogModel.ResultForLog.SUCCESSFULL, ServerLogModel.LogNote.BLUETOOTH_ENABLED);
        } else {
            loggerManager.log(ServerLogModel.LogEvent.USER_INTERATION, ServerLogModel.ResultForLog.SUCCESSFULL, ServerLogModel.LogNote.BLUETOOTH_DISABLED);
        }
    }

    public static String nullSafeToString(Object obj) {
        return obj == null ? "null" : obj.toString();
    }

    public static void show(View view) {
        if (view != null) {
            view.setVisibility(0);
        }
    }

    public static void hide(View view) {
        if (view != null) {
            view.setVisibility(8);
        }
    }

    static Integer getOdometerPercent(Integer num, Integer num2, Integer num3) {
        if (num3 == null || num3.intValue() == 0 || num2 == null || num == null) {
            return null;
        }
        return Integer.valueOf(((num.intValue() - num2.intValue()) * 100) / (num3.intValue() - num2.intValue()));
    }

    public static void scrollToThisView(final ScrollView scrollView, final View view) {
        scrollView.postDelayed(new Runnable() { // from class: com.texa.careapp.utils.Utils$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                ScrollView scrollView2 = scrollView;
                View view2 = view;
                scrollView2.scrollTo(view2.getLeft() + 10, view2.getRight() + 10);
            }
        }, 250);
    }

    public static Integer getOdometerToExpirePercent(Integer num, Integer num2, Integer num3) {
        Integer odometerPercent = getOdometerPercent(num, num2, num3);
        if (odometerPercent == null) {
            return null;
        }
        return Integer.valueOf(100 - odometerPercent.intValue());
    }

    public static Integer getDateToExpirePercent(Date date, Date date2) {
        return getDateToExpirePercent(date, new Date(), date2);
    }

    static Integer getDatePercent(Date date, Date date2, Date date3) {
        if (date == null || date2 == null || date3 == null) {
            return null;
        }
        long time = date.getTime();
        return Integer.valueOf((int) (((date2.getTime() - time) * 100) / (date3.getTime() - time)));
    }

    static Integer getDateToExpirePercent(Date date, Date date2, Date date3) {
        Integer datePercent = getDatePercent(date, date2, date3);
        if (datePercent == null) {
            return null;
        }
        return Integer.valueOf(100 - datePercent.intValue());
    }

    public static String convertTripDataRaw(byte[] bArr) throws UnsupportedEncodingException {
        return Base64.encodeToString(bArr, 2);
    }

    public static String checkDoubleAddress(List<Address> list) {
        if (list.get(0).getThoroughfare().equals(list.get(0).getFeatureName())) {
            return list.get(0).getThoroughfare();
        }
        return list.get(0).getThoroughfare() + ", " + list.get(0).getFeatureName();
    }

    public static int getCountOfScheduleIsExpiringNotExpired(List<IScheduleModel> list) {
        int i = 0;
        for (IScheduleModel iScheduleModel : list) {
            if (iScheduleModel.getExpiringStatus() == 0 || iScheduleModel.getExpiringStatus() == 1) {
                i++;
            }
        }
        return i;
    }

    public static int getCountOfScheduleIsExpired(List<IScheduleModel> list) {
        Iterator<IScheduleModel> it = list.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (it.next().getExpiringStatus() == -1) {
                i++;
            }
        }
        return i;
    }

    public static boolean isFirmwareVersionValid(FirmwareVersion firmwareVersion) {
        return FirmwareVersion.isValid(firmwareVersion);
    }

    private static int checkNullValue(Integer num) {
        if (num != null) {
            return num.intValue();
        }
        return -1;
    }

    public static boolean needsConfigurationUpdate(UpdateConfigurationHelper.CareConfigurationInfos careConfigurationInfos) {
        return careConfigurationInfos != null && (careConfigurationInfos.status == 3 || (careConfigurationInfos.status == 4 && (careConfigurationInfos.vehicleConfigurationStatus == VehicleConfigurationStatus.FirstConfiguration || careConfigurationInfos.vehicleConfigurationStatus == VehicleConfigurationStatus.NeedsUpdated)));
    }

    public static boolean isCareConnected(Communication communication) {
        return communication.getStatus() == CommunicationStatus.CONNECTED;
    }

    public static boolean isCareReadyForScan(Communication communication) {
        CommunicationStatus status = communication.getStatus();
        return CommunicationStatus.IDLE == status || CommunicationStatus.SCANNING_FINISHED == status;
    }

    public static void removeAccount(AccountManager accountManager) {
        Account[] accountsByType = accountManager.getAccountsByType(Constants.ACCOUNT_TYPE);
        if (accountsByType.length == 0) {
            return;
        }
        for (Account account : accountsByType) {
            accountManager.removeAccount(account, null, null);
        }
    }

    public static boolean isOBDConnected(Accessory accessory) {
        int status = accessory.getStatus();
        return status == 1 || status == 132 || status == 255 || status == 3 || status == 4;
    }

    public static boolean isValidatedUserPhoneNumber(UserModel userModel) {
        return userModel != null && isCellPhoneNumberNotEmpty(userModel.getUserCellPhoneContact());
    }

    private static boolean isCellPhoneNumberNotEmpty(ContactModel contactModel) {
        return (contactModel == null || isEmpty(contactModel.getPhoneNumber())) ? false : true;
    }

    public static String toString(Long[] lArr) {
        StringBuilder sb = new StringBuilder();
        for (Long l : lArr) {
            sb.append(String.valueOf(l.longValue()));
            sb.append(",");
        }
        return sb.toString();
    }

    public static EmergencyInfo buildEmergencyData(UserModel userModel, Location location, int i) {
        EmergencyInfo emergencyInfo = new EmergencyInfo();
        emergencyInfo.setUserId(userModel.getUid());
        ContactModel userCellPhoneContact = userModel.getUserCellPhoneContact();
        if (userCellPhoneContact != null) {
            emergencyInfo.setMainContact(userCellPhoneContact.getPhoneNumber());
        }
        emergencyInfo.setRequestType(i);
        if (location != null) {
            Timber.d("location: %s;%s", Double.valueOf(location.getLatitude()), Double.valueOf(location.getLongitude()));
            emergencyInfo.addLocation(location);
        }
        Timber.d(TAG, "emergency data: %s", emergencyInfo.toString());
        return emergencyInfo;
    }

    public static LocationRequest buildLocationRequestForEmergency() {
        return LocationRequest.create().setInterval(1000L).setFastestInterval(1000L).setPriority(100);
    }

    public static void safeDispose(Disposable disposable) {
        if (disposable == null || disposable.isDisposed()) {
            return;
        }
        disposable.dispose();
    }

    public static void safeDispose(CompositeDisposable compositeDisposable) {
        if (compositeDisposable != null) {
            compositeDisposable.clear();
        }
    }

    public static void safeDispose(HashMap<String, Disposable> map, String str) {
        Disposable disposable = map.get(str);
        if (disposable == null || disposable.isDisposed()) {
            return;
        }
        disposable.dispose();
    }

    public static <T> ObservableTransformer<T, T> applySchedulers() {
        return new ObservableTransformer() { // from class: com.texa.careapp.utils.Utils$$ExternalSyntheticLambda9
            @Override // io.reactivex.ObservableTransformer
            public final ObservableSource apply(Observable observable) {
                return observable.subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread());
            }
        };
    }

    public static <T> ObservableTransformer<T, T> applyNotNullFilter() {
        return new ObservableTransformer() { // from class: com.texa.careapp.utils.Utils$$ExternalSyntheticLambda8
            @Override // io.reactivex.ObservableTransformer
            public final ObservableSource apply(Observable observable) {
                return observable.filter(new Predicate() { // from class: com.texa.careapp.utils.Utils$$ExternalSyntheticLambda2
                    @Override // io.reactivex.functions.Predicate
                    public final boolean test(Object obj) {
                        return Utils.lambda$applyNotNullFilter$4(obj);
                    }
                });
            }
        };
    }

    public static <T> MaybeTransformer<T, T> applyMaybeSchedulers() {
        return new MaybeTransformer() { // from class: com.texa.careapp.utils.Utils$$ExternalSyntheticLambda5
            @Override // io.reactivex.MaybeTransformer
            public final MaybeSource apply(Maybe maybe) {
                return maybe.subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread());
            }
        };
    }

    public static Observable<Address> geocodeObservable(final Context context, final double d, final double d2, final int i) {
        return Observable.create(new ObservableOnSubscribe() { // from class: com.texa.careapp.utils.Utils$$ExternalSyntheticLambda6
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                Utils.lambda$geocodeObservable$8(context, d, d2, i, observableEmitter);
            }
        });
    }

    static /* synthetic */ void lambda$geocodeObservable$8(Context context, double d, double d2, int i, ObservableEmitter observableEmitter) throws Exception {
        try {
            Iterator<Address> it = new Geocoder(context, Locale.getDefault()).getFromLocation(d, d2, i).iterator();
            while (it.hasNext()) {
                observableEmitter.onNext(it.next());
            }
            observableEmitter.onComplete();
        } catch (IOException e) {
            observableEmitter.onError(e);
        }
    }

    public static ObservableTransformer<PropertyChangeEvent, PropertyChangeEvent> filterProperty(final String str) {
        return new ObservableTransformer() { // from class: com.texa.careapp.utils.Utils$$ExternalSyntheticLambda7
            @Override // io.reactivex.ObservableTransformer
            public final ObservableSource apply(Observable observable) {
                return observable.filter(new Predicate() { // from class: com.texa.careapp.utils.Utils$$ExternalSyntheticLambda1
                    @Override // io.reactivex.functions.Predicate
                    public final boolean test(Object obj) {
                        return str.equals(((PropertyChangeEvent) obj).getPropertyName());
                    }
                });
            }
        };
    }

    public static byte[] getCombinedTripRawData(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        int i;
        int length = bArr != null ? bArr.length + 0 : 0;
        if (bArr2 != null) {
            length += bArr2.length;
        }
        if (bArr3 != null) {
            length += bArr3.length;
        }
        if (bArr4 != null) {
            length += bArr4.length;
        }
        byte[] bArr5 = new byte[length];
        if (bArr != null) {
            i = 0;
            for (byte b : bArr) {
                bArr5[i] = b;
                i++;
            }
        } else {
            i = 0;
        }
        if (bArr2 != null) {
            for (byte b2 : bArr2) {
                bArr5[i] = b2;
                i++;
            }
        }
        if (bArr3 != null) {
            for (byte b3 : bArr3) {
                bArr5[i] = b3;
                i++;
            }
        }
        if (bArr4 != null) {
            for (byte b4 : bArr4) {
                bArr5[i] = b4;
                i++;
            }
        }
        return bArr5;
    }

    public static Date today() {
        Calendar calendar = Calendar.getInstance();
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        return calendar.getTime();
    }

    public static String getMurmurhash3x8632toHexString(String str) {
        try {
            return Integer.toHexString(MurmurHash3.murmurhash3x8632(str.getBytes("UTF-8"), 0, str.length()));
        } catch (Exception e) {
            Timber.e(e, "Exception in Utils#getMurmurhash3x8632toHexString(string) ", new Object[0]);
            return "";
        }
    }

    public static boolean isTimeElapsed(long j, long j2) {
        return System.currentTimeMillis() - j > j2;
    }

    public static String getLang() {
        return Locale.getDefault().toString().toLowerCase().replaceAll("_", "-");
    }

    @SafeVarargs
    public static String getUrlWithParams(String str, Pair<String, String>... pairArr) {
        if (pairArr == null || pairArr.length < 1) {
            return str;
        }
        StringBuilder sb = new StringBuilder(str);
        int i = 0;
        while (i < pairArr.length) {
            Pair<String, String> pair = pairArr[i];
            sb.append(i == 0 ? "?" : "&");
            sb.append(pair.first);
            sb.append("=");
            sb.append(pair.second);
            i++;
        }
        return sb.toString();
    }

    public static void resetAllSelectedDongleFlag(DongleDataManager dongleDataManager) {
        for (DongleModel dongleModel : dongleDataManager.getAll()) {
            dongleModel.setSelectedDongle(false);
            dongleModel.save();
        }
    }

    public static String encode(String str, String str2) throws Exception {
        Mac mac = Mac.getInstance("HmacSHA256");
        mac.init(new SecretKeySpec(str.getBytes("UTF-8"), "HmacSHA256"));
        return Base64.encodeToString(mac.doFinal(str2.getBytes("UTF-8")), 0).trim();
    }

    public static int getColorResource(Context context, int i) {
        return ResourcesCompat.getColor(context.getResources(), i, null);
    }

    public static boolean isScheduleEditableByUser(IScheduleModel iScheduleModel) {
        return !ScheduleType.TYPE_SCHEDULE_UNEDITABLE_FORM_USER.contains(iScheduleModel.getType());
    }

    public static boolean equals(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static long safeModelSave(Model model, Context context) throws DatabaseIOException {
        boolean z;
        long jLongValue;
        if (context != null) {
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
            z = !(defaultSharedPreferences.getString(Constants.CARE_ENVIRONMENT, "").equals(Constants.VIN_MISMATCH_ENVIRONMENT) || defaultSharedPreferences.getString(Constants.CARE_ENVIRONMENT, "").equals(Constants.IDLE_ENVIRONMENT)) || (model instanceof DongleModel) || (model instanceof ContactModel);
        }
        if (!z) {
            return -1L;
        }
        try {
            jLongValue = model.save().longValue();
        } catch (SQLException e) {
            Timber.w(e, "Error saving model. Retry: %d", 1);
            jLongValue = -1;
        }
        int i = 1;
        while (-1 == jLongValue && i < 3) {
            try {
                Thread.sleep(20L);
            } catch (InterruptedException unused) {
            }
            i++;
            try {
                jLongValue = model.save().longValue();
            } catch (SQLException e2) {
                Timber.e(e2, "Error saving model. Retry: %d", Integer.valueOf(i));
            }
        }
        if (-1 != jLongValue) {
            return jLongValue;
        }
        Timber.e("DBError: ActiveAndroid model save method return -1", new Object[0]);
        throw new DatabaseIOException("DBError: ActiveAndroid model save method return -1.");
    }

    public static boolean serviceModelIsConsistent(ServiceDataModel serviceDataModel) {
        return (serviceDataModel == null || serviceDataModel.getIdType() == null || serviceDataModel.getStatus() == null) ? false : true;
    }

    public static BatteryLevel getBatteryLevel(VehicleModel vehicleModel) {
        String strName = null;
        if (vehicleModel == null) {
            Timber.w("vehicleModel is NULL", new Object[0]);
            return null;
        }
        for (VehicleAlarm vehicleAlarm : vehicleModel.getAlarms()) {
            if (vehicleAlarm.getAlarmType() == AlarmType.BATTERY_STATE) {
                strName = vehicleAlarm.getAlarmStatus().name();
            }
        }
        if (strName != null && strName.equals(AlarmStatus.RED.name())) {
            return BatteryLevel.RED;
        }
        if (strName != null && strName.equals(AlarmStatus.YELLOW.name())) {
            return BatteryLevel.YELLOW;
        }
        return BatteryLevel.GREEN;
    }

    public static ScheduleHelper.ServiceScheduleInfo getServiceScheduleInfo(VehicleModel vehicleModel) {
        VehicleScheduleModel schedule = vehicleModel.getSchedule(ScheduleType.DIAG_SERVICE_ODO);
        VehicleScheduleModel schedule2 = vehicleModel.getSchedule(ScheduleType.DIAG_SERVICE_TIME);
        if (schedule == null && schedule2 == null) {
            schedule = vehicleModel.getSchedule(ScheduleType.SERVICE_ODO);
            schedule2 = vehicleModel.getSchedule(ScheduleType.SERVICE_TIME);
        }
        if (schedule == null && schedule2 == null) {
            Timber.e("getServiceScheduleInfo - OdometerSchedule and DateSchedule cannot be both null!", new Object[0]);
            return null;
        }
        return new ScheduleHelper(schedule, schedule2, vehicleModel.getOdometer().intValue()).parse();
    }

    public static long getParameterCardChartType(SharedPreferences sharedPreferences, String str) {
        if (str != null) {
            List listAsList = Arrays.asList((ParametersCardPreferenceObject[]) new Gson().fromJson(sharedPreferences.getString(Constants.PARAMETER_CARD_CHART_JSON, HttpUrl.PATH_SEGMENT_ENCODE_SET_URI), ParametersCardPreferenceObject[].class));
            for (int i = 0; i < listAsList.size(); i++) {
                if (listAsList.get(i) != null && ((ParametersCardPreferenceObject) listAsList.get(i)).getHwId() != null && ((ParametersCardPreferenceObject) listAsList.get(i)).getHwId().equals(str)) {
                    return ((ParametersCardPreferenceObject) listAsList.get(i)).getTypeId();
                }
            }
        }
        return ParameterBatteryVoltage.BATTERY_VOLTAGE_LEVEL;
    }

    public static void setParameterCardChartType(SharedPreferences sharedPreferences, String str, long j) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(Arrays.asList((ParametersCardPreferenceObject[]) new Gson().fromJson(sharedPreferences.getString(Constants.PARAMETER_CARD_CHART_JSON, HttpUrl.PATH_SEGMENT_ENCODE_SET_URI), ParametersCardPreferenceObject[].class)));
        if (arrayList.isEmpty()) {
            arrayList.add(new ParametersCardPreferenceObject(str, j));
        } else {
            int i = 0;
            while (true) {
                if (i >= arrayList.size()) {
                    break;
                }
                if (((ParametersCardPreferenceObject) arrayList.get(i)).getHwId().equals(str)) {
                    arrayList.set(i, new ParametersCardPreferenceObject(str, j));
                    break;
                } else {
                    arrayList.add(new ParametersCardPreferenceObject(str, j));
                    i++;
                }
            }
        }
        sharedPreferences.edit().putString(Constants.PARAMETER_CARD_CHART_JSON, new Gson().toJson(arrayList)).apply();
    }

    public static void saveLogToFile(String str, String str2) {
        File file = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + "/eco_driving/log");
        if (!file.exists()) {
            Timber.i("CREATE DIR LOG --> %s", Boolean.valueOf(file.mkdirs()));
        }
        try {
            BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(new File(file, "log_" + str2 + ".json"), false));
            bufferedWriter.write(str);
            bufferedWriter.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static String getCurrentLanguage() {
        return Locale.getDefault().getCountry().equalsIgnoreCase(Constants.LANGUAGE_IT) ? Constants.LANGUAGE_IT : Constants.LANGUAGE_EN;
    }

    public static boolean checkEcoDrivingMinFirmwareVersion(final ICareObserver iCareObserver, DongleModel dongleModel) {
        FirmwareVersion firmwareVersion = new FirmwareVersion(3, 1, 0, 5);
        FirmwareVersion firmwareVersion2 = new FirmwareVersion();
        if (dongleModel == null) {
            return false;
        }
        FirmwareVersion mainAppVersion = dongleModel.getMainAppVersion();
        if (mainAppVersion != null) {
            return mainAppVersion.getVersion().compareTo(firmwareVersion.getVersion()) > -1 || mainAppVersion.getVersion().compareTo(firmwareVersion2.getVersion()) == 0;
        }
        dongleModel.observerFirmwareVersion(iCareObserver).subscribe(new Consumer() { // from class: com.texa.careapp.utils.Utils$$ExternalSyntheticLambda10
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Utils.checkEcoDrivingMinFirmwareVersion(iCareObserver, (DongleModel) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.utils.Utils$$ExternalSyntheticLambda11
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.e((Throwable) obj, "Could not perform action", new Object[0]);
            }
        });
        return false;
    }

    public static boolean checkCurrentEcoDrivingMinFirmwareVersion(Accessory accessory) {
        FirmwareVersion firmwareVersion = new FirmwareVersion(3, 1, 0, 5);
        FirmwareVersion mainAPPVersion = accessory.getMainAPPVersion();
        FirmwareVersion serviceAPPVersion = accessory.getServiceAPPVersion();
        return mainAPPVersion != null && serviceAPPVersion != null && mainAPPVersion.getVersion().compareTo(firmwareVersion.getVersion()) > -1 && serviceAPPVersion.getVersion().compareTo(firmwareVersion.getVersion()) > -1;
    }

    public static boolean checkCalibrationMinFirmwareVersion(Accessory accessory) {
        FirmwareVersion firmwareVersion = new FirmwareVersion(4, 0, 0, 0);
        FirmwareVersion mainAPPVersion = accessory.getMainAPPVersion();
        FirmwareVersion serviceAPPVersion = accessory.getServiceAPPVersion();
        return mainAPPVersion != null && serviceAPPVersion != null && mainAPPVersion.getVersion().compareTo(firmwareVersion.getVersion()) > -1 && serviceAPPVersion.getVersion().compareTo(firmwareVersion.getVersion()) > -1;
    }

    public static boolean startWithPrefix(String str, List<String> list) {
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            if (str.startsWith(it.next())) {
                return true;
            }
        }
        return false;
    }

    static boolean startWithPrefix2(String str, List<String> list) {
        if (list.isEmpty()) {
            return false;
        }
        if (list.size() == 1) {
            return str.startsWith(list.get(0));
        }
        int size = list.size() / 2;
        return str.startsWith(list.get(size)) || startWithPrefix2(str, list.subList(0, size + (-1))) || startWithPrefix2(str, list.subList(size + 1, list.size()));
    }

    public static String getUniqueDeviceId(SharedPreferences sharedPreferences) {
        String string = sharedPreferences.getString(Constants.UNIQUE_DEVICE_UUID, null);
        if (string != null) {
            return string;
        }
        String string2 = UUID.randomUUID().toString();
        saveUniqueDeviceId(sharedPreferences, string2);
        return string2;
    }

    private static void saveUniqueDeviceId(SharedPreferences sharedPreferences, String str) {
        sharedPreferences.edit().putString(Constants.UNIQUE_DEVICE_UUID, str).apply();
    }

    public static void closeKeyboard(Context context, EditText editText) {
        InputMethodManager inputMethodManager = (InputMethodManager) context.getSystemService("input_method");
        if (inputMethodManager != null) {
            inputMethodManager.hideSoftInputFromWindow(editText.getWindowToken(), 0);
        }
    }

    public static String getTempUserPhoneNumber(SharedPreferences sharedPreferences) {
        String string = sharedPreferences.getString(Constants.USER_PHONE_NUMBER, null);
        return string != null ? string : "";
    }

    public static void saveTempUserPhoneNumber(SharedPreferences sharedPreferences, String str) {
        sharedPreferences.edit().putString(Constants.USER_PHONE_NUMBER, str).apply();
    }

    public static boolean isUserLogged(AccountManager accountManager, UserDataManager userDataManager) {
        return (accountManager.getAccountsByType(Constants.ACCOUNT_TYPE).length == 0 || userDataManager.getUserCached() == null) ? false : true;
    }

    public static boolean isAlreadyIgnoringBatteryOptimization(Context context) {
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        if (powerManager != null) {
            return powerManager.isIgnoringBatteryOptimizations(context.getPackageName());
        }
        return false;
    }

    public static boolean canDrawOverlays(Context context) {
        return Settings.canDrawOverlays(context);
    }
}
