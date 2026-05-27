package com.texa.careapp.app.onboarding;

import android.os.Build;
import android.view.View;
import android.webkit.CookieManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.databinding.DataBindingUtil;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.careapp.CareApplication;
import com.texa.careapp.Constants;
import com.texa.careapp.databinding.ScreenCareSiteBinding;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class CareSiteScreen extends Screen {
    private static final String url = "https://texa.care/";

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.screen_care_site;
    }

    CareSiteScreen(CareApplication careApplication) {
        careApplication.component().inject(this);
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        WebView webView = ((ScreenCareSiteBinding) DataBindingUtil.bind(view)).screenCareSiteWebView;
        String str = Locale.getDefault().getCountry().contains(Constants.LANGUAGE_IT) ? "" : "en-EN/";
        if (Build.VERSION.SDK_INT >= 21) {
            CookieManager.getInstance().setAcceptThirdPartyCookies(webView, true);
        } else {
            CookieManager.getInstance().setAcceptCookie(true);
        }
        WebSettings settings = webView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setSupportZoom(true);
        webView.setWebViewClient(new WebViewClient());
        webView.loadUrl(url + str);
    }

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return "SellerMapScreen";
    }
}
