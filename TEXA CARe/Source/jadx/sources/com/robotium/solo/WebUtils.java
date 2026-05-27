package com.robotium.solo;

import android.app.Instrumentation;
import android.os.Build;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.TextView;
import com.robotium.solo.By;
import com.robotium.solo.Solo;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
class WebUtils {
    private Solo.Config config;
    private Instrumentation inst;
    WebChromeClient originalWebChromeClient = null;
    RobotiumWebClient robotiumWebCLient;
    private ViewFetcher viewFetcher;
    WebElementCreator webElementCreator;

    public WebUtils(Solo.Config config, Instrumentation instrumentation, ViewFetcher viewFetcher, Sleeper sleeper) {
        this.config = config;
        this.inst = instrumentation;
        this.viewFetcher = viewFetcher;
        this.webElementCreator = new WebElementCreator(sleeper);
        this.robotiumWebCLient = new RobotiumWebClient(instrumentation, this.webElementCreator);
    }

    public ArrayList<TextView> getTextViewsFromWebView() {
        return createAndReturnTextViewsFromWebElements(executeJavaScriptFunction("allTexts();"));
    }

    private ArrayList<TextView> createAndReturnTextViewsFromWebElements(boolean z) {
        ArrayList<TextView> arrayList = new ArrayList<>();
        if (z) {
            for (WebElement webElement : this.webElementCreator.getWebElementsFromWebViews()) {
                if (isWebElementSufficientlyShown(webElement)) {
                    arrayList.add(new RobotiumTextView(this.inst.getContext(), webElement.getText(), webElement.getLocationX(), webElement.getLocationY()));
                }
            }
        }
        return arrayList;
    }

    public ArrayList<WebElement> getWebElements(boolean z) {
        return getWebElements(executeJavaScriptFunction("allWebElements();"), z);
    }

    public ArrayList<WebElement> getWebElements(By by, boolean z) {
        boolean zExecuteJavaScript = executeJavaScript(by, false);
        if (!this.config.useJavaScriptToClickWebElements) {
            return getWebElements(zExecuteJavaScript, z);
        }
        if (!zExecuteJavaScript) {
            return new ArrayList<>();
        }
        return this.webElementCreator.getWebElementsFromWebViews();
    }

    private ArrayList<WebElement> getWebElements(boolean z, boolean z2) {
        ArrayList<WebElement> arrayList = new ArrayList<>();
        if (z) {
            for (WebElement webElement : this.webElementCreator.getWebElementsFromWebViews()) {
                if (!z2) {
                    arrayList.add(webElement);
                } else if (isWebElementSufficientlyShown(webElement)) {
                    arrayList.add(webElement);
                }
            }
        }
        return arrayList;
    }

    private String prepareForStartOfJavascriptExecution(List<WebView> list) {
        this.webElementCreator.prepareForStart();
        WebChromeClient currentWebChromeClient = getCurrentWebChromeClient();
        if (currentWebChromeClient != null && !currentWebChromeClient.getClass().isAssignableFrom(RobotiumWebClient.class)) {
            this.originalWebChromeClient = currentWebChromeClient;
        }
        this.robotiumWebCLient.enableJavascriptAndSetRobotiumWebClient(list, this.originalWebChromeClient);
        return getJavaScriptAsString();
    }

    private WebChromeClient getCurrentWebChromeClient() {
        ViewFetcher viewFetcher = this.viewFetcher;
        Object freshestView = viewFetcher.getFreshestView(viewFetcher.getCurrentViews(WebView.class, true));
        if (Build.VERSION.SDK_INT >= 16) {
            try {
                freshestView = new Reflect(freshestView).field("mProvider").out(Object.class);
            } catch (IllegalArgumentException unused) {
            }
        }
        try {
            if (Build.VERSION.SDK_INT >= 19) {
                return (WebChromeClient) new Reflect(new Reflect(freshestView).field("mContentsClientAdapter").out(Object.class)).field("mWebChromeClient").out(WebChromeClient.class);
            }
            return (WebChromeClient) new Reflect(new Reflect(freshestView).field("mCallbackProxy").out(Object.class)).field("mWebChromeClient").out(WebChromeClient.class);
        } catch (Exception unused2) {
            return null;
        }
    }

    public void enterTextIntoWebElement(By by, String str) {
        if (by instanceof By.Id) {
            executeJavaScriptFunction("enterTextById(\"" + by.getValue() + "\", \"" + str + "\");");
            return;
        }
        if (by instanceof By.Xpath) {
            executeJavaScriptFunction("enterTextByXpath(\"" + by.getValue() + "\", \"" + str + "\");");
            return;
        }
        if (by instanceof By.CssSelector) {
            executeJavaScriptFunction("enterTextByCssSelector(\"" + by.getValue() + "\", \"" + str + "\");");
            return;
        }
        if (by instanceof By.Name) {
            executeJavaScriptFunction("enterTextByName(\"" + by.getValue() + "\", \"" + str + "\");");
            return;
        }
        if (by instanceof By.ClassName) {
            executeJavaScriptFunction("enterTextByClassName(\"" + by.getValue() + "\", \"" + str + "\");");
            return;
        }
        if (by instanceof By.Text) {
            executeJavaScriptFunction("enterTextByTextContent(\"" + by.getValue() + "\", \"" + str + "\");");
            return;
        }
        if (by instanceof By.TagName) {
            executeJavaScriptFunction("enterTextByTagName(\"" + by.getValue() + "\", \"" + str + "\");");
        }
    }

    public boolean executeJavaScript(By by, boolean z) {
        if (by instanceof By.Id) {
            return executeJavaScriptFunction("id(\"" + by.getValue() + "\", \"" + String.valueOf(z) + "\");");
        }
        if (by instanceof By.Xpath) {
            return executeJavaScriptFunction("xpath(\"" + by.getValue() + "\", \"" + String.valueOf(z) + "\");");
        }
        if (by instanceof By.CssSelector) {
            return executeJavaScriptFunction("cssSelector(\"" + by.getValue() + "\", \"" + String.valueOf(z) + "\");");
        }
        if (by instanceof By.Name) {
            return executeJavaScriptFunction("name(\"" + by.getValue() + "\", \"" + String.valueOf(z) + "\");");
        }
        if (by instanceof By.ClassName) {
            return executeJavaScriptFunction("className(\"" + by.getValue() + "\", \"" + String.valueOf(z) + "\");");
        }
        if (by instanceof By.Text) {
            return executeJavaScriptFunction("textContent(\"" + by.getValue() + "\", \"" + String.valueOf(z) + "\");");
        }
        if (!(by instanceof By.TagName)) {
            return false;
        }
        return executeJavaScriptFunction("tagName(\"" + by.getValue() + "\", \"" + String.valueOf(z) + "\");");
    }

    private boolean executeJavaScriptFunction(final String str) {
        ArrayList currentViews = this.viewFetcher.getCurrentViews(WebView.class, true);
        final WebView webView = (WebView) this.viewFetcher.getFreshestView(currentViews);
        if (webView == null) {
            return false;
        }
        final String webFrame = setWebFrame(prepareForStartOfJavascriptExecution(currentViews));
        this.inst.runOnMainSync(new Runnable() { // from class: com.robotium.solo.WebUtils.1
            @Override // java.lang.Runnable
            public void run() {
                WebView webView2 = webView;
                if (webView2 != null) {
                    webView2.loadUrl("javascript:" + webFrame + str);
                }
            }
        });
        return true;
    }

    private String setWebFrame(String str) {
        String str2 = this.config.webFrame;
        if (str2.isEmpty() || str2.equals("document")) {
            return str;
        }
        return str.replaceAll(Pattern.quote("document, "), "document.getElementById(\"" + str2 + "\").contentDocument, ").replaceAll(Pattern.quote("document.body, "), "document.getElementById(\"" + str2 + "\").contentDocument, ");
    }

    public final boolean isWebElementSufficientlyShown(WebElement webElement) {
        ViewFetcher viewFetcher = this.viewFetcher;
        WebView webView = (WebView) viewFetcher.getFreshestView(viewFetcher.getCurrentViews(WebView.class, true));
        int[] iArr = new int[2];
        if (webView == null || webElement == null) {
            return false;
        }
        webView.getLocationOnScreen(iArr);
        return iArr[1] + webView.getHeight() > webElement.getLocationY();
    }

    public String splitNameByUpperCase(String str) {
        String[] strArrSplit = str.split("(?=\\p{Upper})");
        StringBuilder sb = new StringBuilder();
        for (String str2 : strArrSplit) {
            if (sb.length() > 0) {
                sb.append(" " + str2.toLowerCase());
            } else {
                sb.append(str2.toLowerCase());
            }
        }
        return sb.toString();
    }

    private String getJavaScriptAsString() {
        InputStream resourceAsStream = getClass().getResourceAsStream("RobotiumWeb.js");
        StringBuffer stringBuffer = new StringBuffer();
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(resourceAsStream));
            while (true) {
                String line = bufferedReader.readLine();
                if (line != null) {
                    stringBuffer.append(line);
                    stringBuffer.append("\n");
                } else {
                    bufferedReader.close();
                    return stringBuffer.toString();
                }
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
