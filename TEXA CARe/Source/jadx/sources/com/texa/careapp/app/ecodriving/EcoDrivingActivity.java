package com.texa.careapp.app.ecodriving;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.MenuItem;
import androidx.appcompat.app.ActionBar;
import com.activeandroid.query.Delete;
import com.texa.care.R;
import com.texa.care.navigation.Navigator;
import com.texa.careapp.CareApplication;
import com.texa.careapp.Constants;
import com.texa.careapp.app.ecodriving.model.HintModel;
import com.texa.careapp.app.ecodriving.serviceserializer.HintBaseEntity;
import com.texa.careapp.app.ecodriving.serviceserializer.HintEntity;
import com.texa.careapp.app.ecodriving.serviceserializer.HintTranslationEntity;
import com.texa.careapp.base.BaseActivity;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.model.TermsModel;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.utils.Utils;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.util.Iterator;
import javax.inject.Inject;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class EcoDrivingActivity extends BaseActivity {
    protected CareApplication mCareApplication;
    private Context mContext;
    private final CompositeDisposable mDisposable = new CompositeDisposable();
    private Navigator mNavigator;

    @Inject
    SharedPreferences mSharedPreferences;

    @Inject
    protected TexaCareApiServiceUser mTexaCareApiService;

    @Override // com.texa.careapp.base.BaseActivity
    protected boolean requiresAuthentication() {
        return true;
    }

    public CompositeDisposable getMDisposable() {
        return this.mDisposable;
    }

    public static Intent buildIntent(Context context) {
        Intent intent = new Intent(context, (Class<?>) EcoDrivingActivity.class);
        intent.addFlags(268435456);
        return intent;
    }

    @Override // com.texa.careapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_eco_driving);
        CareApplication careApplication = getCareApplication();
        this.mCareApplication = careApplication;
        careApplication.component().inject(this);
        this.mContext = this;
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayHomeAsUpEnabled(true);
            supportActionBar.setDisplayShowHomeEnabled(true);
        }
        Navigator instanceFor = Navigator.getInstanceFor(this);
        this.mNavigator = instanceFor;
        instanceFor.setContainerResId(R.id.container);
        this.mNavigator.goTo(new EcoDrivingScreen(this.mCareApplication, this));
        String string = this.mSharedPreferences.getString(Constants.PREFS_KEY_ECO_DRIVING_HINT_TIME, null);
        if (string == null) {
            string = "1970-01-01T01:00:00Z";
        }
        this.mDisposable.add(this.mTexaCareApiService.getEcoDrivingHints(string).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.texa.careapp.app.ecodriving.EcoDrivingActivity$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m230x59fd38c((HintBaseEntity) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.ecodriving.EcoDrivingActivity$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.e((Throwable) obj, "ERROR PROCESS HINT CALL", new Object[0]);
            }
        }));
        TermsModel termAcepted = this.mUserDataManager.getUserCached().getTermAcepted(Constants.TERM_OF_SERVICES_NAME_PRIVACY);
        if (termAcepted == null || termAcepted.version < 2) {
            startActivity(AcceptationTermsActivity.buildIntent(this));
        }
    }

    /* JADX INFO: renamed from: lambda$onCreate$0$com-texa-careapp-app-ecodriving-EcoDrivingActivity, reason: not valid java name */
    public /* synthetic */ void m230x59fd38c(HintBaseEntity hintBaseEntity) throws Exception {
        for (HintEntity hintEntity : hintBaseEntity.getList()) {
            HintModel hintModel = hintEntity.getHintModel();
            try {
                new Delete().from(HintModel.class).where("idHint = ?", hintModel.getIdHint()).execute();
                Utils.safeModelSave(hintModel, this.mContext);
                if (hintEntity.getTranslations() != null) {
                    Iterator<HintTranslationEntity> it = hintEntity.getTranslations().iterator();
                    while (it.hasNext()) {
                        Utils.safeModelSave(it.next().getHintTranslationModel(hintModel), this.mContext);
                    }
                }
                saveTimePrefs(hintBaseEntity.getTimestamp());
            } catch (DatabaseIOException e) {
                Timber.e(e, "ERROR SAVE HINT CALL", new Object[0]);
            }
        }
    }

    protected void saveTimePrefs(String str) {
        SharedPreferences.Editor editorEdit = this.mSharedPreferences.edit();
        editorEdit.putString(Constants.PREFS_KEY_ECO_DRIVING_HINT_TIME, str);
        editorEdit.apply();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.mNavigator.onBackPressed()) {
            return;
        }
        super.onBackPressed();
    }

    @Override // com.texa.careapp.base.BaseActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            onBackPressed();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.texa.careapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
    }

    @Override // com.texa.careapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        Utils.safeDispose(this.mDisposable);
    }
}
