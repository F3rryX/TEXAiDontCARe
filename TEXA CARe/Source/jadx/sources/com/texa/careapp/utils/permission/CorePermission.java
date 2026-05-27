package com.texa.careapp.utils.permission;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import com.texa.careapp.utils.Utils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class CorePermission {
    public static final int REQUEST_CODE_ALL = 1;
    public static final int REQUEST_CODE_BATTERY = 7;
    public static final int REQUEST_CODE_CONTACTS = 2;
    public static final int REQUEST_CODE_LOCATION = 4;
    public static final int REQUEST_CODE_OVERLAY = 6;
    public static final int REQUEST_CODE_PHONE = 5;
    public static final int REQUEST_CODE_STORAGE = 3;
    public static final String[] USE_CONTACTS = {"android.permission.READ_CONTACTS"};
    public static final String[] USE_ACCESS_LOCATION = {"android.permission.ACCESS_FINE_LOCATION"};
    public static final String[] USE_ACCESS_BACKGROUND_LOCATION = {"android.permission.ACCESS_BACKGROUND_LOCATION"};
    public static final String[] USE_NEARBY_DEVICES = {"android.permission.BLUETOOTH_CONNECT", "android.permission.BLUETOOTH_SCAN"};
    public static final String[] USE_PHONE = {"android.permission.READ_PHONE_STATE"};
    public static final String[] DRAW_OVERLAY = {"android.settings.action.MANAGE_OVERLAY_PERMISSION"};

    public static boolean shouldRequestPermissions(Context context) {
        return !Utils.isPermissionEnabled(context, USE_ACCESS_LOCATION) || (Build.VERSION.SDK_INT >= 29 && !Utils.isPermissionEnabled(context, USE_ACCESS_BACKGROUND_LOCATION)) || !Utils.isPermissionEnabled(context, USE_PHONE) || ((Build.VERSION.SDK_INT >= 24 && !Utils.isAlreadyIgnoringBatteryOptimization(context)) || ((Build.VERSION.SDK_INT >= 31 && !Utils.isPermissionEnabled(context, USE_NEARBY_DEVICES)) || (Build.VERSION.SDK_INT >= 29 && !Utils.canDrawOverlays(context))));
    }

    public static PermissionObject with(AppCompatActivity appCompatActivity) {
        return new PermissionObject(appCompatActivity);
    }

    public static PermissionObject with(Fragment fragment) {
        return new PermissionObject(fragment);
    }

    public static PermissionObject with(Context context) {
        return new PermissionObject(context);
    }

    public static class PermissionObject {
        private AppCompatActivity mActivity;
        private Context mContext;
        private Fragment mFragment;

        PermissionObject(AppCompatActivity appCompatActivity) {
            this.mActivity = appCompatActivity;
        }

        PermissionObject(Fragment fragment) {
            this.mFragment = fragment;
        }

        PermissionObject(Context context) {
            this.mContext = context;
        }

        public boolean has(String str) {
            return CorePermission.isVersionSDKOld() || getPermissionValue(str) == 0;
        }

        public boolean has(String[] strArr) {
            return has(Arrays.asList(strArr));
        }

        public boolean has(List<String> list) {
            if (CorePermission.isVersionSDKOld()) {
                return true;
            }
            for (int i = 0; i < list.size(); i++) {
                if (getPermissionValue(list.get(i)) == -1) {
                    return false;
                }
            }
            return true;
        }

        private int getPermissionValue(String str) {
            AppCompatActivity appCompatActivity = this.mActivity;
            if (appCompatActivity != null) {
                return ContextCompat.checkSelfPermission(appCompatActivity, str);
            }
            Fragment fragment = this.mFragment;
            if (fragment != null) {
                return ContextCompat.checkSelfPermission(fragment.getContext(), str);
            }
            Context context = this.mContext;
            if (context != null) {
                return ContextCompat.checkSelfPermission(context, str);
            }
            return 0;
        }

        public PermissionRequestObject request(String str) {
            if (this.mActivity != null) {
                return new PermissionRequestObject(this.mActivity, new String[]{str});
            }
            return new PermissionRequestObject(this.mFragment, new String[]{str});
        }

        public PermissionRequestObject request(String... strArr) {
            return new PermissionRequestObject(this.mActivity, strArr);
        }

        public PermissionRequestObject request(List<String> list) {
            int size = list.size();
            String[] strArr = new String[size];
            for (int i = 0; i < size; i++) {
                strArr[i] = list.get(i);
            }
            return new PermissionRequestObject(this.mActivity, strArr);
        }
    }

    public static boolean isVersionSDKOld() {
        return Build.VERSION.SDK_INT < 23;
    }

    public static class PermissionRequestObject {
        private AppCompatActivity mActivity;
        private Func mDenyFunc;
        private Fragment mFragment;
        private Func mGrantFunc;
        private String[] mPermissionNames;
        private ArrayList<SinglePermission> mPermissionsWeDontHave;
        private Func3 mRationalFunc;
        private int mRequestCode;
        private Func2 mResultFunc;

        public PermissionRequestObject(AppCompatActivity appCompatActivity, String[] strArr) {
            this.mActivity = appCompatActivity;
            this.mPermissionNames = strArr;
        }

        public PermissionRequestObject(Fragment fragment, String[] strArr) {
            this.mFragment = fragment;
            this.mPermissionNames = strArr;
        }

        public PermissionRequestObject ask(int i) {
            this.mRequestCode = i;
            this.mPermissionsWeDontHave = new ArrayList<>(this.mPermissionNames.length);
            for (String str : this.mPermissionNames) {
                this.mPermissionsWeDontHave.add(new SinglePermission(str));
            }
            if (!CorePermission.isVersionSDKOld() && needToAsk()) {
                Timber.d("Asking for permission", new Object[0]);
                AppCompatActivity appCompatActivity = this.mActivity;
                if (appCompatActivity != null) {
                    ActivityCompat.requestPermissions(appCompatActivity, this.mPermissionNames, i);
                } else {
                    this.mFragment.requestPermissions(this.mPermissionNames, i);
                }
            } else {
                Timber.d("No need to ask for permission", new Object[0]);
                Func func = this.mGrantFunc;
                if (func != null) {
                    func.call();
                }
            }
            return this;
        }

        private boolean needToAsk() {
            int iCheckSelfPermission;
            boolean zShouldShowRequestPermissionRationale;
            ArrayList<SinglePermission> arrayList = new ArrayList<>(this.mPermissionsWeDontHave);
            for (int i = 0; i < this.mPermissionsWeDontHave.size(); i++) {
                SinglePermission singlePermission = this.mPermissionsWeDontHave.get(i);
                AppCompatActivity appCompatActivity = this.mActivity;
                if (appCompatActivity != null) {
                    iCheckSelfPermission = ContextCompat.checkSelfPermission(appCompatActivity, singlePermission.getPermissionName());
                } else {
                    iCheckSelfPermission = ContextCompat.checkSelfPermission(this.mFragment.getContext(), singlePermission.getPermissionName());
                }
                if (iCheckSelfPermission == 0) {
                    arrayList.remove(singlePermission);
                } else {
                    AppCompatActivity appCompatActivity2 = this.mActivity;
                    if (appCompatActivity2 != null) {
                        zShouldShowRequestPermissionRationale = ActivityCompat.shouldShowRequestPermissionRationale(appCompatActivity2, singlePermission.getPermissionName());
                    } else {
                        zShouldShowRequestPermissionRationale = this.mFragment.shouldShowRequestPermissionRationale(singlePermission.getPermissionName());
                    }
                    if (zShouldShowRequestPermissionRationale) {
                        singlePermission.setRationalNeeded(true);
                    }
                }
            }
            this.mPermissionsWeDontHave = arrayList;
            this.mPermissionNames = new String[arrayList.size()];
            for (int i2 = 0; i2 < this.mPermissionsWeDontHave.size(); i2++) {
                this.mPermissionNames[i2] = this.mPermissionsWeDontHave.get(i2).getPermissionName();
            }
            return this.mPermissionsWeDontHave.size() != 0;
        }

        private void askPermission(Activity activity, String[] strArr, int i) {
            ActivityCompat.requestPermissions(activity, strArr, i);
        }

        public PermissionRequestObject onRational(Func3 func3) {
            this.mRationalFunc = func3;
            return this;
        }

        public PermissionRequestObject onAllGranted(Func func) {
            this.mGrantFunc = func;
            return this;
        }

        public PermissionRequestObject onAnyDenied(Func func) {
            this.mDenyFunc = func;
            return this;
        }

        public PermissionRequestObject onResult(Func2 func2) {
            this.mResultFunc = func2;
            return this;
        }

        public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
            if (this.mRequestCode == i) {
                if (this.mResultFunc != null) {
                    Timber.d("Calling Results Func", new Object[0]);
                    this.mResultFunc.call(i, strArr, iArr);
                    return;
                }
                for (int i2 = 0; i2 < strArr.length; i2++) {
                    if (iArr[i2] == -1) {
                        if (this.mPermissionsWeDontHave.get(i2).isRationalNeeded() && this.mRationalFunc != null) {
                            Timber.d("Calling Rational Func", new Object[0]);
                            this.mRationalFunc.call(this.mPermissionsWeDontHave.get(i2).getPermissionName());
                            return;
                        } else if (this.mDenyFunc != null) {
                            Timber.d("Calling Deny Func", new Object[0]);
                            this.mDenyFunc.call();
                            return;
                        } else {
                            Timber.w("NUll DENY FUNCTIONS", new Object[0]);
                            return;
                        }
                    }
                }
                if (this.mGrantFunc != null) {
                    Timber.d("Calling Grant Func", new Object[0]);
                    this.mGrantFunc.call();
                } else {
                    Timber.d("NUll GRANT FUNCTIONS", new Object[0]);
                }
            }
        }
    }
}
