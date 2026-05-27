package com.texa.careapp.app.onboarding;

import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.view.View;
import android.webkit.CookieManager;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.core.net.MailTo;
import androidx.databinding.DataBindingUtil;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.careapp.CareApplication;
import com.texa.careapp.databinding.ScreenSellerMapBinding;

/* JADX INFO: loaded from: classes2.dex */
public class SellerMapScreen extends Screen {
    private static final String url = "https://texa.care/#maps";

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return "SellerMapScreen";
    }

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.screen_seller_map;
    }

    SellerMapScreen(CareApplication careApplication) {
        careApplication.component().inject(this);
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        WebView webView = ((ScreenSellerMapBinding) DataBindingUtil.bind(view)).screenSellerMapWebView;
        if (Build.VERSION.SDK_INT >= 21) {
            CookieManager.getInstance().setAcceptThirdPartyCookies(webView, true);
        } else {
            CookieManager.getInstance().setAcceptCookie(true);
        }
        WebSettings settings = webView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setSupportZoom(true);
        webView.setWebViewClient(new WebViewClient() { // from class: com.texa.careapp.app.onboarding.SellerMapScreen.1
            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView2, String str) {
                if (str.startsWith(MailTo.MAILTO_SCHEME)) {
                    SellerMapScreen.this.getContext().startActivity(SellerMapScreen.this.mailIntent(android.net.MailTo.parse(str)));
                    return true;
                }
                if (str.startsWith("tel:")) {
                    Intent intent = new Intent("android.intent.action.DIAL", Uri.parse(str));
                    intent.addFlags(268435456);
                    SellerMapScreen.this.getContext().startActivity(intent);
                    return true;
                }
                webView2.loadUrl(str);
                return true;
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView2, WebResourceRequest webResourceRequest) {
                Uri url2 = webResourceRequest.getUrl();
                if (url2.toString().startsWith(MailTo.MAILTO_SCHEME)) {
                    Intent intent = new Intent("android.intent.action.SENDTO", url2);
                    intent.addFlags(268435456);
                    SellerMapScreen.this.getContext().startActivity(intent);
                    return true;
                }
                if (url2.toString().startsWith("tel:")) {
                    Intent intent2 = new Intent(new Intent("android.intent.action.DIAL", url2));
                    intent2.addFlags(268435456);
                    SellerMapScreen.this.getContext().startActivity(intent2);
                    return true;
                }
                webView2.loadUrl(url2.toString());
                return true;
            }
        });
        webView.loadUrl(url);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Intent mailIntent(android.net.MailTo mailTo) {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.putExtra("android.intent.extra.EMAIL", new String[]{mailTo.getTo()});
        intent.putExtra("android.intent.extra.TEXT", mailTo.getBody());
        intent.putExtra("android.intent.extra.SUBJECT", mailTo.getSubject());
        intent.putExtra("android.intent.extra.CC", mailTo.getCc());
        intent.setType("message/rfc822");
        intent.addFlags(268435456);
        return intent;
    }
}
