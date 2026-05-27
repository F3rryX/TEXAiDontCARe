package com.robotium.solo;

import android.os.SystemClock;
import android.webkit.WebView;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
class WebElementCreator {
    private Sleeper sleeper;
    private boolean isFinished = false;
    private List<WebElement> webElements = new CopyOnWriteArrayList();

    public WebElementCreator(Sleeper sleeper) {
        this.sleeper = sleeper;
    }

    public void prepareForStart() {
        setFinished(false);
        this.webElements.clear();
    }

    public ArrayList<WebElement> getWebElementsFromWebViews() {
        waitForWebElementsToBeCreated();
        return new ArrayList<>(this.webElements);
    }

    public boolean isFinished() {
        return this.isFinished;
    }

    public void setFinished(boolean z) {
        this.isFinished = z;
    }

    public void createWebElementAndAddInList(String str, WebView webView) {
        WebElement webElementCreateWebElementAndSetLocation = createWebElementAndSetLocation(str, webView);
        if (webElementCreateWebElementAndSetLocation != null) {
            this.webElements.add(webElementCreateWebElementAndSetLocation);
        }
    }

    private void setLocation(WebElement webElement, WebView webView, int i, int i2, int i3, int i4) {
        float scale = webView.getScale();
        int[] iArr = new int[2];
        webView.getLocationOnScreen(iArr);
        double d = iArr[0];
        double dFloor = ((double) i) + Math.floor(i3 / 2);
        double d2 = scale;
        int iFloor = (int) (((double) iArr[1]) + ((((double) i2) + Math.floor(i4 / 2)) * d2));
        webElement.setLocationX((int) (d + (dFloor * d2)));
        webElement.setLocationY(iFloor);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0067  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private WebElement createWebElementAndSetLocation(String str, WebView webView) {
        int iRound;
        int iRound2;
        int iRound3;
        int iRound4;
        int i;
        int i2;
        int i3;
        int i4;
        String[] strArrSplit;
        WebElement webElement;
        String[] strArrSplit2 = str.split(";,");
        Hashtable hashtable = new Hashtable();
        WebElement webElement2 = null;
        try {
            iRound = Math.round(Float.valueOf(strArrSplit2[5]).floatValue());
            try {
                iRound2 = Math.round(Float.valueOf(strArrSplit2[6]).floatValue());
                try {
                    iRound3 = Math.round(Float.valueOf(strArrSplit2[7]).floatValue());
                    try {
                        iRound4 = Math.round(Float.valueOf(strArrSplit2[8]).floatValue());
                        try {
                            strArrSplit = strArrSplit2[9].split("\\#\\$");
                            i = iRound;
                            i2 = iRound2;
                            i3 = iRound3;
                            i4 = iRound4;
                        } catch (Exception unused) {
                            i = iRound;
                            i2 = iRound2;
                            i3 = iRound3;
                            i4 = iRound4;
                            strArrSplit = null;
                        }
                    } catch (Exception unused2) {
                        iRound4 = 0;
                        i = iRound;
                        i2 = iRound2;
                        i3 = iRound3;
                        i4 = iRound4;
                        strArrSplit = null;
                        if (strArrSplit != null) {
                        }
                        webElement = new WebElement(strArrSplit2[0], strArrSplit2[1], strArrSplit2[2], strArrSplit2[3], strArrSplit2[4], hashtable);
                        setLocation(webElement, webView, i, i2, i3, i4);
                        return webElement;
                    }
                } catch (Exception unused3) {
                    iRound3 = 0;
                    iRound4 = 0;
                    i = iRound;
                    i2 = iRound2;
                    i3 = iRound3;
                    i4 = iRound4;
                    strArrSplit = null;
                    if (strArrSplit != null) {
                    }
                    webElement = new WebElement(strArrSplit2[0], strArrSplit2[1], strArrSplit2[2], strArrSplit2[3], strArrSplit2[4], hashtable);
                    setLocation(webElement, webView, i, i2, i3, i4);
                    return webElement;
                }
            } catch (Exception unused4) {
                iRound2 = 0;
                iRound3 = 0;
                iRound4 = 0;
                i = iRound;
                i2 = iRound2;
                i3 = iRound3;
                i4 = iRound4;
                strArrSplit = null;
                if (strArrSplit != null) {
                }
                webElement = new WebElement(strArrSplit2[0], strArrSplit2[1], strArrSplit2[2], strArrSplit2[3], strArrSplit2[4], hashtable);
                setLocation(webElement, webView, i, i2, i3, i4);
                return webElement;
            }
        } catch (Exception unused5) {
            iRound = 0;
        }
        if (strArrSplit != null) {
            for (String str2 : strArrSplit) {
                String[] strArrSplit3 = str2.split("::");
                if (strArrSplit3.length > 1) {
                    hashtable.put(strArrSplit3[0], strArrSplit3[1]);
                } else {
                    hashtable.put(strArrSplit3[0], strArrSplit3[0]);
                }
            }
        }
        try {
            webElement = new WebElement(strArrSplit2[0], strArrSplit2[1], strArrSplit2[2], strArrSplit2[3], strArrSplit2[4], hashtable);
        } catch (Exception unused6) {
        }
        try {
            setLocation(webElement, webView, i, i2, i3, i4);
            return webElement;
        } catch (Exception unused7) {
            webElement2 = webElement;
            return webElement2;
        }
    }

    private boolean waitForWebElementsToBeCreated() {
        long jUptimeMillis = SystemClock.uptimeMillis() + 5000;
        while (SystemClock.uptimeMillis() < jUptimeMillis) {
            if (this.isFinished) {
                return true;
            }
            this.sleeper.sleepMini();
        }
        return false;
    }
}
