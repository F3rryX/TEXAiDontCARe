package com.robotium.solo;

import android.app.Instrumentation;
import android.graphics.Bitmap;
import android.os.Message;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.GeolocationPermissions;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebStorage;
import android.webkit.WebView;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class RobotiumWebClient extends WebChromeClient {
    private Instrumentation inst;
    private WebChromeClient originalWebChromeClient = null;
    private WebChromeClient robotiumWebClient = this;
    WebElementCreator webElementCreator;

    public RobotiumWebClient(Instrumentation instrumentation, WebElementCreator webElementCreator) {
        this.inst = instrumentation;
        this.webElementCreator = webElementCreator;
    }

    public void enableJavascriptAndSetRobotiumWebClient(List<WebView> list, WebChromeClient webChromeClient) {
        this.originalWebChromeClient = webChromeClient;
        for (final WebView webView : list) {
            if (webView != null) {
                this.inst.runOnMainSync(new Runnable() { // from class: com.robotium.solo.RobotiumWebClient.1
                    @Override // java.lang.Runnable
                    public void run() {
                        webView.getSettings().setJavaScriptEnabled(true);
                        webView.setWebChromeClient(RobotiumWebClient.this.robotiumWebClient);
                    }
                });
            }
        }
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        if (str2 != null && (str2.contains(";,") || str2.contains("robotium-finished"))) {
            if (str2.equals("robotium-finished")) {
                this.webElementCreator.setFinished(true);
            } else {
                this.webElementCreator.createWebElementAndAddInList(str2, webView);
            }
            jsPromptResult.confirm();
            return true;
        }
        WebChromeClient webChromeClient = this.originalWebChromeClient;
        if (webChromeClient != null) {
            return webChromeClient.onJsPrompt(webView, str, str2, str3, jsPromptResult);
        }
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public Bitmap getDefaultVideoPoster() {
        WebChromeClient webChromeClient = this.originalWebChromeClient;
        if (webChromeClient != null) {
            return webChromeClient.getDefaultVideoPoster();
        }
        return null;
    }

    @Override // android.webkit.WebChromeClient
    public View getVideoLoadingProgressView() {
        WebChromeClient webChromeClient = this.originalWebChromeClient;
        if (webChromeClient != null) {
            return webChromeClient.getVideoLoadingProgressView();
        }
        return null;
    }

    @Override // android.webkit.WebChromeClient
    public void getVisitedHistory(ValueCallback<String[]> valueCallback) {
        WebChromeClient webChromeClient = this.originalWebChromeClient;
        if (webChromeClient != null) {
            webChromeClient.getVisitedHistory(valueCallback);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onCloseWindow(WebView webView) {
        WebChromeClient webChromeClient = this.originalWebChromeClient;
        if (webChromeClient != null) {
            webChromeClient.onCloseWindow(webView);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onConsoleMessage(String str, int i, String str2) {
        WebChromeClient webChromeClient = this.originalWebChromeClient;
        if (webChromeClient != null) {
            webChromeClient.onConsoleMessage(str, i, str2);
        }
    }

    @Override // android.webkit.WebChromeClient
    public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        WebChromeClient webChromeClient = this.originalWebChromeClient;
        if (webChromeClient != null) {
            return webChromeClient.onConsoleMessage(consoleMessage);
        }
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
        WebChromeClient webChromeClient = this.originalWebChromeClient;
        if (webChromeClient != null) {
            return webChromeClient.onCreateWindow(webView, z, z2, message);
        }
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public void onExceededDatabaseQuota(String str, String str2, long j, long j2, long j3, WebStorage.QuotaUpdater quotaUpdater) {
        WebChromeClient webChromeClient = this.originalWebChromeClient;
        if (webChromeClient != null) {
            webChromeClient.onExceededDatabaseQuota(str, str2, j, j2, j3, quotaUpdater);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onGeolocationPermissionsHidePrompt() {
        WebChromeClient webChromeClient = this.originalWebChromeClient;
        if (webChromeClient != null) {
            webChromeClient.onGeolocationPermissionsHidePrompt();
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
        WebChromeClient webChromeClient = this.originalWebChromeClient;
        if (webChromeClient != null) {
            webChromeClient.onGeolocationPermissionsShowPrompt(str, callback);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onHideCustomView() {
        WebChromeClient webChromeClient = this.originalWebChromeClient;
        if (webChromeClient != null) {
            webChromeClient.onHideCustomView();
        }
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        WebChromeClient webChromeClient = this.originalWebChromeClient;
        if (webChromeClient != null) {
            return webChromeClient.onJsAlert(webView, str, str2, jsResult);
        }
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsBeforeUnload(WebView webView, String str, String str2, JsResult jsResult) {
        if (this.originalWebChromeClient.onJsBeforeUnload(webView, str, str2, jsResult)) {
            return this.originalWebChromeClient.onJsBeforeUnload(webView, str, str2, jsResult);
        }
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
        WebChromeClient webChromeClient = this.originalWebChromeClient;
        if (webChromeClient != null) {
            return webChromeClient.onJsConfirm(webView, str, str2, jsResult);
        }
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsTimeout() {
        WebChromeClient webChromeClient = this.originalWebChromeClient;
        if (webChromeClient != null) {
            return webChromeClient.onJsTimeout();
        }
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public void onProgressChanged(WebView webView, int i) {
        WebChromeClient webChromeClient = this.originalWebChromeClient;
        if (webChromeClient != null) {
            webChromeClient.onProgressChanged(webView, i);
        }
    }

    public void onReachedMaxAppCacheSize(long j, long j2, WebStorage.QuotaUpdater quotaUpdater) {
        WebChromeClient webChromeClient = this.originalWebChromeClient;
        if (webChromeClient != null) {
            webChromeClient.onReachedMaxAppCacheSize(j, j2, quotaUpdater);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onReceivedIcon(WebView webView, Bitmap bitmap) {
        WebChromeClient webChromeClient = this.originalWebChromeClient;
        if (webChromeClient != null) {
            webChromeClient.onReceivedIcon(webView, bitmap);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onReceivedTitle(WebView webView, String str) {
        WebChromeClient webChromeClient = this.originalWebChromeClient;
        if (webChromeClient != null) {
            webChromeClient.onReceivedTitle(webView, str);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onReceivedTouchIconUrl(WebView webView, String str, boolean z) {
        WebChromeClient webChromeClient = this.originalWebChromeClient;
        if (webChromeClient != null) {
            webChromeClient.onReceivedTouchIconUrl(webView, str, z);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onRequestFocus(WebView webView) {
        WebChromeClient webChromeClient = this.originalWebChromeClient;
        if (webChromeClient != null) {
            webChromeClient.onRequestFocus(webView);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        WebChromeClient webChromeClient = this.originalWebChromeClient;
        if (webChromeClient != null) {
            webChromeClient.onShowCustomView(view, customViewCallback);
        }
    }
}
