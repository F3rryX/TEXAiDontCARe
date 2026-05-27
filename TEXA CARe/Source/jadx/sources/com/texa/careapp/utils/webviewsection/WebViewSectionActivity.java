package com.texa.careapp.utils.webviewsection;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ProgressBar;
import androidx.appcompat.app.ActionBar;
import androidx.core.util.Pair;
import androidx.databinding.DataBindingUtil;
import androidx.exifinterface.media.ExifInterface;
import com.activeandroid.query.Select;
import com.texa.care.R;
import com.texa.careapp.BuildConfig;
import com.texa.careapp.Constants;
import com.texa.careapp.base.BaseActivity;
import com.texa.careapp.databinding.ActivitySectionsBinding;
import com.texa.careapp.model.TermsModel;
import com.texa.careapp.model.UserModel;
import com.texa.careapp.utils.Utils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Locale;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class WebViewSectionActivity extends BaseActivity {
    public static final String EXTRA_URL = "extra-url";
    public static final String WEB_VIEW_TYPE = "web_view_code";
    private ProgressBar mProgressLoadingBar;
    private WebView mWebView;

    @Override // com.texa.careapp.base.BaseActivity
    protected boolean requiresAuthentication() {
        return false;
    }

    public static Intent buildIntentFor(Context context, String str) {
        Intent intent = new Intent(context, (Class<?>) WebViewSectionActivity.class);
        intent.putExtra(EXTRA_URL, str);
        intent.setFlags(268435456);
        return intent;
    }

    @Override // com.texa.careapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ActivitySectionsBinding activitySectionsBinding = (ActivitySectionsBinding) DataBindingUtil.setContentView(this, R.layout.activity_sections);
        this.mProgressLoadingBar = activitySectionsBinding.progressBarWebview;
        this.mWebView = activitySectionsBinding.webView;
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayHomeAsUpEnabled(true);
            supportActionBar.setDisplayShowHomeEnabled(true);
        }
    }

    @Override // com.texa.careapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        this.mWebView.getSettings().setBuiltInZoomControls(true);
        this.mWebView.getSettings().setSupportZoom(true);
        this.mWebView.setVisibility(8);
        final Intent intent = getIntent();
        this.mWebView.setWebViewClient(new WebViewClient() { // from class: com.texa.careapp.utils.webviewsection.WebViewSectionActivity.1
            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                Timber.d(" Finish to load URL!", new Object[0]);
                WebViewSectionActivity.this.mWebView.setVisibility(0);
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                if (intent.getIntExtra(WebViewSectionActivity.WEB_VIEW_TYPE, 1) == 4) {
                    Timber.d("LINK LOAD ON ERROR %s", "file:///android_asset/third_part_license/ThirdPartLibraryAndroid.html");
                    WebViewSectionActivity.this.mWebView.loadUrl("file:///android_asset/third_part_license/ThirdPartLibraryAndroid.html");
                }
            }
        });
        if (handleCustomUrlFromExtras(intent)) {
            return;
        }
        String strReplaceAll = Locale.getDefault().toString().toLowerCase().replaceAll("_", "-");
        int intExtra = intent.getIntExtra(WEB_VIEW_TYPE, 1);
        Timber.d(" Start to load URL", new Object[0]);
        if (intExtra == 1) {
            String urlWithParams = Utils.getUrlWithParams(BuildConfig.CARE_PORTAL_URL + getResources().getString(R.string.url_document), new Pair("lang", strReplaceAll), new Pair("type", Constants.TERM_CONDITION_NAME), new Pair("version", ExifInterface.GPS_MEASUREMENT_2D));
            Timber.d("LINK %s", urlWithParams);
            this.mWebView.loadUrl(urlWithParams);
            return;
        }
        if (intExtra != 2) {
            if (intExtra != 4) {
                return;
            }
            String urlWithParams2 = Utils.getUrlWithParams(BuildConfig.CARE_PORTAL_URL + getResources().getString(R.string.url_library), new Pair("type", Constants.THIRD_PART_LICENSE_NAME), new Pair("version", ExifInterface.GPS_MEASUREMENT_3D));
            Timber.d("LINK %s", urlWithParams2);
            this.mWebView.loadUrl(urlWithParams2);
            return;
        }
        Pair pair = new Pair("lang", strReplaceAll);
        Pair pair2 = new Pair("type", Constants.TERM_OF_SERVICES_NAME_PRIVACY);
        String urlWithParams3 = Utils.getUrlWithParams(BuildConfig.CARE_PORTAL_URL + getResources().getString(R.string.url_document), pair, pair2, new Pair("version", ExifInterface.GPS_MEASUREMENT_2D));
        UserModel userModel = (UserModel) new Select().from(UserModel.class).executeSingle();
        if (userModel != null) {
            TermsModel termAcepted = userModel.getTermAcepted(Constants.TERM_OF_SERVICES_NAME_PRIVACY);
            StringBuilder sb = new StringBuilder();
            sb.append("");
            sb.append(termAcepted != null ? termAcepted.version : 1);
            urlWithParams3 = Utils.getUrlWithParams(BuildConfig.CARE_PORTAL_URL + getResources().getString(R.string.url_document), pair, pair2, new Pair("version", sb.toString()));
        }
        Timber.d("LINK %s", urlWithParams3);
        this.mWebView.loadUrl(urlWithParams3);
    }

    private String getHTMLData(String str) throws Throwable {
        BufferedReader bufferedReader;
        StringBuilder sb;
        boolean z;
        BufferedReader bufferedReader2 = null;
        try {
            sb = new StringBuilder();
            bufferedReader = new BufferedReader(new InputStreamReader(getApplicationContext().getAssets().open(str)));
            z = true;
        } catch (IOException e) {
            e = e;
            bufferedReader = null;
        } catch (Throwable th) {
            th = th;
        }
        while (true) {
            try {
                try {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    }
                    if (z) {
                        z = false;
                    } else {
                        sb.append('\n');
                    }
                    sb.append(line);
                } catch (IOException e2) {
                    e = e2;
                    Timber.e(e, "Error opening asset ", new Object[0]);
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException e3) {
                            Timber.e(e3, "Error closing asset ", new Object[0]);
                        }
                    }
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                bufferedReader2 = bufferedReader;
            }
            th = th2;
            bufferedReader2 = bufferedReader;
            if (bufferedReader2 != null) {
                try {
                    bufferedReader2.close();
                } catch (IOException e4) {
                    Timber.e(e4, "Error closing asset ", new Object[0]);
                }
            }
            throw th;
        }
        String string = sb.toString();
        try {
            bufferedReader.close();
        } catch (IOException e5) {
            Timber.e(e5, "Error closing asset ", new Object[0]);
        }
        return string;
    }

    private boolean handleCustomUrlFromExtras(Intent intent) {
        if (!intent.hasExtra(EXTRA_URL)) {
            return false;
        }
        this.mWebView.loadUrl(intent.getStringExtra(EXTRA_URL));
        this.mWebView.setWebViewClient(new WebViewClient() { // from class: com.texa.careapp.utils.webviewsection.WebViewSectionActivity.2
            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                WebViewSectionActivity.this.mWebView.setVisibility(0);
            }
        });
        return true;
    }

    private String getLangUrlParam() {
        return "?lang=" + Locale.getDefault().toString().toLowerCase().replaceAll("_", "-");
    }
}
