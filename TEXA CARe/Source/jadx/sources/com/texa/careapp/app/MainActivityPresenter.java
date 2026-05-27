package com.texa.careapp.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import com.texa.care.R;
import com.texa.careapp.app.vehicle.VehicleDataConfirmationActivity;
import com.texa.careapp.carelib.CommunicationObservable;
import com.texa.careapp.carelib.ICareObserver;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.utils.Utils;
import io.reactivex.Observable;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.BiFunction;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import timber.log.Timber;

/* JADX INFO: loaded from: classes.dex */
public class MainActivityPresenter {
    public static final int CARE_COLOR_GREEN = 1;
    public static final int CARE_COLOR_ORANGE = 0;
    public static final int CARE_COLOR_RED = 3;
    public static final int CARE_COLOR_WHITE = 2;
    public static boolean CHECK_VEHICLE_DATA_ENABLED = true;
    private static final String TAG = "MainActivityPresenter";
    private int defaultCareColor = 2;
    private String defaultTitle;
    private ICareObserver mCareObserver;
    private Disposable mCareStatusDisposable;
    private CommunicationObservable mCommunicationObservable;
    private Context mContext;
    private Resources.Theme mDefaultTheme;
    private Drawable mMenuIcon;
    private MenuItem mMenuItem;
    private Resources mResources;

    @Retention(RetentionPolicy.SOURCE)
    public @interface CareColor {
    }

    private boolean setMenuIcon(MenuItem menuItem, Drawable drawable, int i) {
        this.defaultCareColor = i;
        if (menuItem == null) {
            return false;
        }
        int color = -1;
        if (i == 0) {
            color = getColor(R.color.warning);
        } else if (i == 1) {
            color = getColor(R.color.ok);
        } else if (i != 2 && i == 3) {
            color = getColor(R.color.error);
        }
        Timber.d("%s setMenuIcon - value: %s", TAG, Integer.valueOf(i));
        drawable.setColorFilter(color, PorterDuff.Mode.SRC_ATOP);
        menuItem.setIcon(drawable);
        setTitleMenuItem(menuItem);
        return true;
    }

    private void setTitleMenuItem(MenuItem menuItem) {
        if (Utils.isEmpty(this.defaultTitle)) {
            return;
        }
        menuItem.setTitle(this.defaultTitle);
    }

    private Disposable observeCareStatus() {
        return Observable.combineLatest(this.mCareObserver.observeCareStatus(), this.mCommunicationObservable.observeConnectionStatus(), new BiFunction() { // from class: com.texa.careapp.app.MainActivityPresenter$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return this.f$0.m105xb157f1e6((Integer) obj, (CommunicationObservable.Status) obj2);
            }
        }).doOnError(new Consumer() { // from class: com.texa.careapp.app.MainActivityPresenter$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m106x74445b45((Throwable) obj);
            }
        }).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.texa.careapp.app.MainActivityPresenter$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m107x3730c4a4((Integer) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.MainActivityPresenter$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.e((Throwable) obj, "error observing care status", new Object[0]);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$observeCareStatus$0$com-texa-careapp-app-MainActivityPresenter, reason: not valid java name */
    public /* synthetic */ Integer m105xb157f1e6(Integer num, CommunicationObservable.Status status) throws Exception {
        chooseTitle(num, status);
        return careColorCondition(num, status);
    }

    /* JADX INFO: renamed from: lambda$observeCareStatus$1$com-texa-careapp-app-MainActivityPresenter, reason: not valid java name */
    public /* synthetic */ void m106x74445b45(Throwable th) throws Exception {
        Timber.w("Error in observeCareStatus()", th);
        chooseTitle(255, CommunicationObservable.Status.CARE_NOT_CONNECTED);
        careColorCondition(255, CommunicationObservable.Status.CARE_NOT_CONNECTED);
        setMenuIcon(this.mMenuItem, this.mMenuIcon, 2);
    }

    /* JADX INFO: renamed from: lambda$observeCareStatus$2$com-texa-careapp-app-MainActivityPresenter, reason: not valid java name */
    public /* synthetic */ void m107x3730c4a4(Integer num) throws Exception {
        setMenuIcon(this.mMenuItem, this.mMenuIcon, num.intValue());
    }

    private void chooseTitle(Integer num, CommunicationObservable.Status status) {
        if (status == CommunicationObservable.Status.CARE_NOT_CONNECTED) {
            this.defaultTitle = this.mResources.getString(R.string.not_connected);
        } else if (num.intValue() != 0) {
            this.defaultTitle = Utils.getCareStatus(this.mContext, num);
        }
    }

    protected Integer careColorCondition(Integer num, CommunicationObservable.Status status) {
        if (status == CommunicationObservable.Status.CARE_NOT_CONNECTED) {
            return 2;
        }
        if (num.intValue() == 4) {
            return 1;
        }
        if (num.intValue() == 5 || num.intValue() == 6) {
            return 3;
        }
        return 0;
    }

    public void onCreate(Context context) {
        this.mContext = context;
        this.mResources = context.getResources();
        this.mDefaultTheme = context.getTheme();
    }

    private int getColor(int i) {
        return this.mResources.getColor(i);
    }

    public void onStart(ICareObserver iCareObserver, CommunicationObservable communicationObservable) {
        this.mCareObserver = iCareObserver;
        this.mCommunicationObservable = communicationObservable;
        Utils.safeDispose(this.mCareStatusDisposable);
        this.mCareStatusDisposable = observeCareStatus();
    }

    public void onStop() {
        Utils.safeDispose(this.mCareStatusDisposable);
    }

    public boolean checkVehicleDataConfirmation(Activity activity, VehicleModel vehicleModel) {
        if (!CHECK_VEHICLE_DATA_ENABLED) {
            return true;
        }
        if (vehicleModel == null) {
            Timber.d("vehicleModel is NULL", new Object[0]);
            return false;
        }
        if (vehicleModel.isConfirmedByUser()) {
            return true;
        }
        activity.startActivity(new Intent(activity, (Class<?>) VehicleDataConfirmationActivity.class));
        return false;
    }

    protected void setupDefaultMenuItem(MenuItem menuItem, Drawable drawable, int i) {
        setMenuIcon(menuItem, drawable, i);
    }
}
