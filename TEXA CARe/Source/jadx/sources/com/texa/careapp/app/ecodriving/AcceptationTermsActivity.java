package com.texa.careapp.app.ecodriving;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.widget.Toast;
import androidx.appcompat.app.ActionBar;
import com.texa.care.R;
import com.texa.care.navigation.Navigator;
import com.texa.careapp.BuildConfig;
import com.texa.careapp.Constants;
import com.texa.careapp.app.events.CloseActivityEvent;
import com.texa.careapp.base.BaseActivity;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.model.TermsModel;
import com.texa.careapp.model.TermsModelsEntity;
import com.texa.careapp.model.UserModel;
import com.texa.careapp.utils.Utils;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class AcceptationTermsActivity extends BaseActivity {
    private Context mContext;
    private final CompositeDisposable mDisposable = new CompositeDisposable();

    @Inject
    protected EventBus mEventBus;
    Navigator mNavigator;

    @Override // com.texa.careapp.base.BaseActivity
    protected boolean requiresAuthentication() {
        return true;
    }

    public static Intent buildIntent(Context context) {
        return new Intent(context, (Class<?>) AcceptationTermsActivity.class);
    }

    @Override // com.texa.careapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_activation_service);
        getCareApplication().component().inject(this);
        this.mContext = this;
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayHomeAsUpEnabled(true);
            supportActionBar.setDisplayShowHomeEnabled(true);
        }
        Navigator instanceFor = Navigator.getInstanceFor(this);
        this.mNavigator = instanceFor;
        instanceFor.setContainerResId(R.id.container);
        this.mNavigator.goTo(new AnonymousClass1(getUrl()));
    }

    /* JADX INFO: renamed from: com.texa.careapp.app.ecodriving.AcceptationTermsActivity$1, reason: invalid class name */
    class AnonymousClass1 extends AcceptationTermsScreen {
        AnonymousClass1(String str) {
            super(str);
        }

        @Override // com.texa.careapp.app.ecodriving.AcceptationTermsScreen
        public void acceptedCondition() {
            final UserModel userCached = this.mUserDataManager.getUserCached();
            Timber.d("ACCEPTED", new Object[0]);
            ArrayList arrayList = new ArrayList();
            final TermsModel termsModel = new TermsModel(Constants.TERM_OF_SERVICES_NAME_PRIVACY, 2, new Date());
            arrayList.add(termsModel);
            AcceptationTermsActivity.this.mDisposable.add(this.mTexaCareApiService.acceptTerms(new TermsModelsEntity(arrayList)).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).doOnSubscribe(new Consumer() { // from class: com.texa.careapp.app.ecodriving.AcceptationTermsActivity$1$$ExternalSyntheticLambda1
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) throws Exception {
                    this.f$0.m224x78b7013e((Disposable) obj);
                }
            }).subscribe(new Action() { // from class: com.texa.careapp.app.ecodriving.AcceptationTermsActivity$1$$ExternalSyntheticLambda0
                @Override // io.reactivex.functions.Action
                public final void run() throws Exception {
                    this.f$0.m225x7ebacc9d(termsModel, userCached);
                }
            }, new Consumer() { // from class: com.texa.careapp.app.ecodriving.AcceptationTermsActivity$1$$ExternalSyntheticLambda2
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) throws Exception {
                    this.f$0.m226x84be97fc((Throwable) obj);
                }
            }));
        }

        /* JADX INFO: renamed from: lambda$acceptedCondition$0$com-texa-careapp-app-ecodriving-AcceptationTermsActivity$1, reason: not valid java name */
        public /* synthetic */ void m224x78b7013e(Disposable disposable) throws Exception {
            createProgressDialogScreen();
        }

        /* JADX INFO: renamed from: lambda$acceptedCondition$1$com-texa-careapp-app-ecodriving-AcceptationTermsActivity$1, reason: not valid java name */
        public /* synthetic */ void m225x7ebacc9d(TermsModel termsModel, UserModel userModel) throws Exception {
            termsModel.setUser(userModel);
            try {
                Utils.safeModelSave(termsModel, AcceptationTermsActivity.this.mContext);
                this.mEventBus.post(new CloseActivityEvent((Class<? extends BaseActivity>) AcceptationTermsActivity.class));
                dismissProgressDialogScreen();
            } catch (DatabaseIOException e) {
                throw new RuntimeException(e);
            }
        }

        /* JADX INFO: renamed from: lambda$acceptedCondition$2$com-texa-careapp-app-ecodriving-AcceptationTermsActivity$1, reason: not valid java name */
        public /* synthetic */ void m226x84be97fc(Throwable th) throws Exception {
            Timber.e(th, "Eco driving Terms not accepted", new Object[0]);
            Toast.makeText(getContext(), R.string.error_network, 0).show();
        }
    }

    private String getUrl() {
        return BuildConfig.CARE_PORTAL_URL + getResources().getString(R.string.url_document) + getLangUrlParam() + "&type=" + Constants.TERM_OF_SERVICES_NAME_PRIVACY + "&version=2";
    }

    private String getLangUrlParam() {
        return "?lang=" + Locale.getDefault().toString().toLowerCase().replaceAll("_", "-");
    }

    @Override // com.texa.careapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        this.mEventBus.register(this);
    }

    @Override // com.texa.careapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        this.mEventBus.unregister(this);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        Utils.safeDispose(this.mDisposable);
    }

    @Subscribe
    public void onEvent(CloseActivityEvent closeActivityEvent) {
        if (closeActivityEvent.getActivity().equals(AcceptationTermsActivity.class)) {
            finish();
        }
    }
}
