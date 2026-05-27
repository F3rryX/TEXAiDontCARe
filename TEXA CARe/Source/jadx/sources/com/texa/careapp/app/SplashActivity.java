package com.texa.careapp.app;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import com.activeandroid.ActiveAndroid;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.texa.care.R;
import com.texa.careapp.Constants;
import com.texa.careapp.app.events.CancelProgressEvent;
import com.texa.careapp.app.permission.PermissionActivity;
import com.texa.careapp.app.walkthrough.WalkthroughActivity;
import com.texa.careapp.app.walkthrough.WalkthroughActivityLastStep;
import com.texa.careapp.base.BaseActivity;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.TermsModel;
import com.texa.careapp.model.UserModel;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.networking.response.UserResponse;
import com.texa.careapp.utils.FirebaseAnalyticsEventManager;
import com.texa.careapp.utils.LoginHelperRx;
import com.texa.careapp.utils.Utils;
import com.texa.careapp.utils.permission.CorePermission;
import com.texa.carelib.care.accessory.Accessory;
import com.texa.carelib.care.accessory.FactoryResetFlag;
import com.texa.carelib.care.accessory.events.FactoryResetCompletedEvent;
import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.CareLibException;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.nio.channels.FileChannel;
import java.util.EnumSet;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;
import timber.log.Timber;

/* JADX INFO: loaded from: classes.dex */
public class SplashActivity extends BaseActivity {
    static int SPLASH_TIME_OUT = 1000;

    @Inject
    protected Accessory mAccessory;

    @Inject
    protected DongleDataManager mDongleDataManager;

    @Inject
    protected EventBus mEventBus;
    private Handler mHandler;

    @Inject
    protected LoginHelperRx mLoginHelperRx;

    @Inject
    protected SharedPreferences mPreferences;
    private boolean mShouldStartOutOfTheBox;
    private boolean mShouldStartWalkthrough;

    @Inject
    protected TexaCareApiServiceUser mTexaCareApiService;
    private Runnable mRunnable = new Runnable() { // from class: com.texa.careapp.app.SplashActivity$$ExternalSyntheticLambda4
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.proceed();
        }
    };
    private final CompositeDisposable mDisposable = new CompositeDisposable();

    @Override // com.texa.careapp.base.BaseActivity
    protected boolean requiresAuthentication() {
        return false;
    }

    public static Intent buildIntent(Context context) {
        Intent intent = new Intent(context, (Class<?>) SplashActivity.class);
        intent.setFlags(268468224);
        return intent;
    }

    @Override // com.texa.careapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        EventBus eventBus;
        CancelProgressEvent cancelProgressEvent;
        super.onCreate(bundle);
        getCareApplication().component().inject(this);
        int i = 0;
        if (getIntent() != null && getIntent().getBooleanExtra(Constants.INTENT_EXTRA_NOTIFICATION_TYPE_LOCAL, false)) {
            FirebaseAnalytics.getInstance(this).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_TAPPED_LOCAL_NOTIFICATION.getTag(), null);
        }
        try {
            i = getPackageManager().getApplicationInfo(getPackageName(), 128).metaData.getInt("AA_DB_VERSION");
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        if (i == 36 && !checkMissingColumnInDB()) {
            EnumSet<FactoryResetFlag> enumSetNoneOf = EnumSet.noneOf(FactoryResetFlag.class);
            enumSetNoneOf.add(FactoryResetFlag.UserData);
            try {
                this.mAccessory.resetToFactory(enumSetNoneOf, new Callback() { // from class: com.texa.careapp.app.SplashActivity$$ExternalSyntheticLambda0
                    @Override // com.texa.carelib.core.Callback
                    public final void onCompleted(Object obj) {
                        SplashActivity.lambda$onCreate$0((FactoryResetCompletedEvent) obj);
                    }
                });
                this.mLoginHelperRx.doLogOut(true);
                eventBus = this.mEventBus;
                cancelProgressEvent = new CancelProgressEvent();
            } catch (CareLibException unused) {
                this.mLoginHelperRx.doLogOut(true);
                eventBus = this.mEventBus;
                cancelProgressEvent = new CancelProgressEvent();
            } catch (Throwable th) {
                this.mLoginHelperRx.doLogOut(true);
                this.mEventBus.post(new CancelProgressEvent());
                startActivity(buildIntent(this));
                throw th;
            }
            eventBus.post(cancelProgressEvent);
            startActivity(buildIntent(this));
            return;
        }
        checkUserTerms();
        this.mShouldStartWalkthrough = Utils.shouldStartWalkthrough(this.mPreferences);
        this.mShouldStartOutOfTheBox = Utils.shouldStartOutOfTheBox(this.mPreferences, this.mDongleDataManager);
        proceed();
    }

    static /* synthetic */ void lambda$onCreate$0(FactoryResetCompletedEvent factoryResetCompletedEvent) {
        CareError error = factoryResetCompletedEvent.getError();
        if (error != null) {
            Timber.e("CareError %s", error.toString());
        }
    }

    /* JADX WARN: Not initialized variable reg: 3, insn: 0x004a: MOVE (r2 I:??[OBJECT, ARRAY]) = (r3 I:??[OBJECT, ARRAY]), block:B:30:0x004a */
    private boolean checkMissingColumnInDB() throws Throwable {
        Cursor cursor;
        Cursor cursorRawQuery;
        Cursor cursor2 = null;
        try {
            try {
                try {
                    cursorRawQuery = ActiveAndroid.getDatabase().rawQuery("SELECT * FROM Terms LIMIT 0", null);
                } catch (Throwable th) {
                    th = th;
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    throw th;
                }
            } catch (SQLiteException e) {
                e = e;
            }
            try {
                if (cursorRawQuery.getColumnIndex("User") != -1) {
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                    return true;
                }
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                return false;
            } catch (SQLiteException e2) {
                e = e2;
                e.printStackTrace();
                Cursor cursorRawQuery2 = ActiveAndroid.getDatabase().rawQuery("select DISTINCT tbl_name from sqlite_master where tbl_name = 'Terms'", null);
                if (cursorRawQuery2 == null || cursorRawQuery2.getCount() <= 0) {
                    if (cursorRawQuery2 != null) {
                        cursorRawQuery2.close();
                    }
                    return true;
                }
                if (cursorRawQuery2 != null) {
                    cursorRawQuery2.close();
                }
                return false;
            }
        } catch (Throwable th2) {
            th = th2;
            cursor2 = cursor;
        }
    }

    private void checkUserTerms() {
        final UserModel userCached = this.mUserDataManager.getUserCached();
        if (userCached == null) {
            return;
        }
        TermsModel termAcepted = userCached.getTermAcepted(Constants.TERM_OF_SERVICES_NAME_PRIVACY);
        if (termAcepted == null || termAcepted.version < 2) {
            this.mDisposable.add(this.mTexaCareApiService.getUserObservable().subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).doOnNext(new Consumer() { // from class: com.texa.careapp.app.SplashActivity$$ExternalSyntheticLambda1
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) throws Exception {
                    this.f$0.m109lambda$checkUserTerms$1$comtexacareappappSplashActivity(userCached, (UserResponse) obj);
                }
            }).subscribe(new Consumer() { // from class: com.texa.careapp.app.SplashActivity$$ExternalSyntheticLambda2
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    Timber.d("User Synced", new Object[0]);
                }
            }, new Consumer() { // from class: com.texa.careapp.app.SplashActivity$$ExternalSyntheticLambda3
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    Timber.e((Throwable) obj, "User not Synced", new Object[0]);
                }
            }));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: updateUserModelAndTerms, reason: merged with bridge method [inline-methods] */
    public void m109lambda$checkUserTerms$1$comtexacareappappSplashActivity(UserModel userModel, UserResponse userResponse) {
        userModel.updateFrom(userResponse.userData);
        try {
            Utils.safeModelSave(userModel, this);
            updateTermsInDb(userModel, userResponse);
        } catch (DatabaseIOException e) {
            e.printStackTrace();
        }
    }

    private void updateTermsInDb(UserModel userModel, UserResponse userResponse) throws DatabaseIOException {
        for (TermsModel termsModel : userResponse.userData.termsModelList) {
            TermsModel termAcepted = userModel.getTermAcepted(termsModel.termsType);
            if (termAcepted == null) {
                termsModel.setUser(userModel);
                Utils.safeModelSave(termsModel, this);
            } else if (termsModel.version > termAcepted.version) {
                termAcepted.update(termsModel);
                Utils.safeModelSave(termAcepted, this);
            }
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        removeCallbacks();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
        removeCallbacks();
    }

    private void removeCallbacks() {
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.removeCallbacks(this.mRunnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void proceed() {
        Class cls;
        if (this.mLoginHelperRx.isUserLogged() && !this.mDongleDataManager.getAll().isEmpty() && !this.mShouldStartOutOfTheBox && !this.mShouldStartWalkthrough && this.mLoginHelperRx.isUserLogged()) {
            if (CorePermission.shouldRequestPermissions(this)) {
                cls = PermissionActivity.class;
            } else {
                cls = MainActivity.class;
            }
        } else if (this.mShouldStartWalkthrough) {
            cls = WalkthroughActivity.class;
        } else if (!this.mLoginHelperRx.isUserLogged() || this.mShouldStartOutOfTheBox) {
            cls = WalkthroughActivityLastStep.class;
        } else {
            cls = MainActivity.class;
        }
        startActivity(new Intent(this, (Class<?>) cls));
        overridePendingTransition(R.anim.fadein_animation, R.anim.fadeout_animation);
        finish();
    }

    public void exportDatabase(String str) {
        try {
            File externalStorageDirectory = Environment.getExternalStorageDirectory();
            File dataDirectory = Environment.getDataDirectory();
            if (externalStorageDirectory.canWrite()) {
                File file = new File(dataDirectory, "//data//" + getPackageName() + "//databases//" + str + "");
                File file2 = new File(externalStorageDirectory, "backupCARe.db");
                if (file.exists()) {
                    FileChannel channel = new FileInputStream(file).getChannel();
                    FileChannel channel2 = new FileOutputStream(file2).getChannel();
                    channel2.transferFrom(channel, 0L, channel.size());
                    channel.close();
                    channel2.close();
                }
            }
        } catch (Exception e) {
            Timber.e(e, "ERROR EXPORT DB", new Object[0]);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        Utils.safeDispose(this.mDisposable);
    }
}
