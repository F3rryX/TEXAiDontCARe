package com.texa.careapp.app.ecodriving;

import android.os.AsyncTask;
import android.view.View;
import android.view.ViewTreeObserver;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.content.res.ResourcesCompat;
import androidx.databinding.DataBindingUtil;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.careapp.CareApplication;
import com.texa.careapp.app.events.CancelProgressEvent;
import com.texa.careapp.app.events.ShowProgressEvent;
import com.texa.careapp.databinding.ScreenTermOfConditionsServicesBinding;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.utils.UserDataManager;
import com.texa.careapp.views.ObservableWebView;
import java.util.Locale;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AcceptationTermsScreen extends Screen {
    private static final int DELAY_SCROLL = 10;
    private static final String TAG = "AcceptationTermsScreen";
    private AsyncTask<Void, Void, String> loadTos;

    @Inject
    protected EventBus mEventBus;
    private ProgressBar mProgressBar;

    @Inject
    protected TexaCareApiServiceUser mTexaCareApiService;

    @Inject
    protected UserDataManager mUserDataManager;
    private ViewTreeObserver.OnScrollChangedListener scrollListener;
    private RelativeLayout tosButton;
    private TextView tosButtonDescription;
    private ImageView tosButtonImage;
    private boolean tosHasBeanRead;
    private ObservableWebView tosWebView;
    private final String url;
    private View.OnClickListener inactiveButtonListener = new View.OnClickListener() { // from class: com.texa.careapp.app.ecodriving.AcceptationTermsScreen$$ExternalSyntheticLambda0
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f$0.m227x460fd2a2(view);
        }
    };
    private View.OnClickListener activeButtonListenerForAcceptTos = new View.OnClickListener() { // from class: com.texa.careapp.app.ecodriving.AcceptationTermsScreen$$ExternalSyntheticLambda1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f$0.m228x47462581(view);
        }
    };

    public abstract void acceptedCondition();

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.screen_term_of_conditions_services;
    }

    /* JADX INFO: renamed from: lambda$new$0$com-texa-careapp-app-ecodriving-AcceptationTermsScreen, reason: not valid java name */
    public /* synthetic */ void m227x460fd2a2(View view) {
        goDownToWebView();
    }

    /* JADX INFO: renamed from: lambda$new$1$com-texa-careapp-app-ecodriving-AcceptationTermsScreen, reason: not valid java name */
    public /* synthetic */ void m228x47462581(View view) {
        acceptedCondition();
    }

    public AcceptationTermsScreen(String str) {
        if (str.contains("&lang")) {
            this.url = str;
            return;
        }
        this.url = str + getLangUrlParam();
    }

    private String getLangUrlParam() {
        return "&lang=" + Locale.getDefault().toString().toLowerCase().replaceAll("_", "-");
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        ((CareApplication) getNavigator().getApplication()).component().inject(this);
        ScreenTermOfConditionsServicesBinding screenTermOfConditionsServicesBinding = (ScreenTermOfConditionsServicesBinding) DataBindingUtil.bind(view);
        this.tosButton = screenTermOfConditionsServicesBinding.tosButton;
        this.tosWebView = screenTermOfConditionsServicesBinding.tosScrollView;
        this.tosButtonImage = screenTermOfConditionsServicesBinding.tosButtonImage;
        this.tosButtonDescription = screenTermOfConditionsServicesBinding.tosButtonDescription;
        this.mProgressBar = screenTermOfConditionsServicesBinding.progressBarFragmentTermOfConditions;
        setWebViewClient();
        this.tosWebView.loadUrl(this.url);
    }

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return TAG;
    }

    @Override // com.texa.care.navigation.Screen
    public void onResume() {
        super.onResume();
        setScrollChangedCallback();
        setButtonListener();
    }

    @Override // com.texa.care.navigation.Screen
    public void onPause() {
        super.onPause();
        this.tosWebView.getViewTreeObserver().removeOnScrollChangedListener(this.scrollListener);
        this.tosButton.setOnClickListener(null);
        AsyncTask<Void, Void, String> asyncTask = this.loadTos;
        if (asyncTask == null || !asyncTask.getStatus().equals(AsyncTask.Status.RUNNING)) {
            return;
        }
        this.loadTos.cancel(true);
    }

    private void enableTosButton() {
        this.tosButton.setBackground(ResourcesCompat.getDrawable(getContext().getResources(), R.drawable.button_green, null));
        this.tosButtonImage.setVisibility(8);
        this.tosButtonDescription.setText(getContext().getResources().getString(R.string.accept_the_conditions));
        setButtonListener();
    }

    private void setButtonListener() {
        if (this.tosHasBeanRead) {
            this.tosButton.setOnClickListener(this.activeButtonListenerForAcceptTos);
        } else {
            this.tosButton.setOnClickListener(this.inactiveButtonListener);
        }
    }

    private void goDownToWebView() {
        Timber.d(" click", new Object[0]);
        this.tosWebView.pageDown(true);
    }

    private void setScrollChangedCallback() {
        this.tosWebView.setOnScrollChangedCallback(new ObservableWebView.OnScrollChangedCallback() { // from class: com.texa.careapp.app.ecodriving.AcceptationTermsScreen$$ExternalSyntheticLambda2
            @Override // com.texa.careapp.views.ObservableWebView.OnScrollChangedCallback
            public final void onScroll(int i, int i2, int i3, int i4) {
                this.f$0.m229x8cc7889c(i, i2, i3, i4);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$setScrollChangedCallback$2$com-texa-careapp-app-ecodriving-AcceptationTermsScreen, reason: not valid java name */
    public /* synthetic */ void m229x8cc7889c(int i, int i2, int i3, int i4) {
        if (i2 != i4) {
            float contentHeight = this.tosWebView.getContentHeight() * getContext().getResources().getDisplayMetrics().density;
            int scrollY = this.tosWebView.getScrollY() + this.tosWebView.getMeasuredHeight();
            Timber.d("Height->" + contentHeight + " getScrollY()->" + scrollY, new Object[0]);
            if (scrollY < contentHeight - 10.0f || this.tosHasBeanRead) {
                return;
            }
            this.tosHasBeanRead = true;
            enableTosButton();
        }
    }

    private void setWebViewClient() {
        this.tosWebView.setWebViewClient(new WebViewClient() { // from class: com.texa.careapp.app.ecodriving.AcceptationTermsScreen.1
            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                Timber.d(" Finish to load URL!", new Object[0]);
                AcceptationTermsScreen.this.hideProgressBar();
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                super.onReceivedError(webView, webResourceRequest, webResourceError);
                AcceptationTermsScreen.this.hideProgressBar();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideProgressBar() {
        try {
            this.mProgressBar.setVisibility(8);
        } catch (Exception e) {
            Timber.e(e, "Error dismiss progress", new Object[0]);
        }
    }

    public void createProgressDialogScreen() {
        this.mEventBus.post(new ShowProgressEvent());
    }

    public void dismissProgressDialogScreen() {
        this.mEventBus.post(new CancelProgressEvent());
    }
}
