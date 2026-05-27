package com.robotium.solo;

import android.os.SystemClock;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
class Searcher {
    private int numberOfUniqueViews;
    private final Scroller scroller;
    private final Sleeper sleeper;
    private final ViewFetcher viewFetcher;
    private final WebUtils webUtils;
    private final String LOG_TAG = "Robotium";
    private final int TIMEOUT = 5000;
    List<WebElement> webElements = new ArrayList();
    Set<TextView> uniqueTextViews = new HashSet();

    public Searcher(ViewFetcher viewFetcher, WebUtils webUtils, Scroller scroller, Sleeper sleeper) {
        this.viewFetcher = viewFetcher;
        this.webUtils = webUtils;
        this.scroller = scroller;
        this.sleeper = sleeper;
    }

    public boolean searchWithTimeoutFor(Class<? extends TextView> cls, String str, int i, boolean z, boolean z2) {
        long jUptimeMillis = SystemClock.uptimeMillis() + 5000;
        while (SystemClock.uptimeMillis() < jUptimeMillis) {
            this.sleeper.sleep();
            if (searchFor(cls, str, i, 0L, z, z2) != null) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends TextView> T searchFor(final Class<T> cls, String str, int i, long j, boolean z, final boolean z2) {
        try {
            return (T) searchFor(new Callable<Collection<T>>() { // from class: com.robotium.solo.Searcher.1
                @Override // java.util.concurrent.Callable
                public Collection<T> call() throws Exception {
                    Searcher.this.sleeper.sleep();
                    ArrayList currentViews = Searcher.this.viewFetcher.getCurrentViews(cls, true);
                    if (z2) {
                        currentViews = RobotiumUtils.removeInvisibleViews(currentViews);
                    }
                    if (cls.isAssignableFrom(TextView.class)) {
                        currentViews.addAll(Searcher.this.webUtils.getTextViewsFromWebView());
                    }
                    return currentViews;
                }
            }, str, i < 1 ? 1 : i, j, z);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public <T extends View> boolean searchFor(Set<T> set, Class<T> cls, int i) {
        int numberOfUniqueViews = getNumberOfUniqueViews(set, RobotiumUtils.removeInvisibleViews(this.viewFetcher.getCurrentViews(cls, true)));
        if (numberOfUniqueViews <= 0 || i >= numberOfUniqueViews) {
            return numberOfUniqueViews > 0 && i == 0;
        }
        return true;
    }

    public <T extends View> boolean searchFor(View view) {
        Iterator<View> it = this.viewFetcher.getAllViews(true).iterator();
        while (it.hasNext()) {
            if (it.next().equals(view)) {
                return true;
            }
        }
        return false;
    }

    public <T extends TextView> T searchFor(Callable<Collection<T>> callable, String str, int i, long j, boolean z) throws Exception {
        long jUptimeMillis = SystemClock.uptimeMillis() + j;
        do {
            if (j > 0 && SystemClock.uptimeMillis() > jUptimeMillis) {
                logMatchesFound(str);
                return null;
            }
            for (T t : callable.call()) {
                if (RobotiumUtils.getNumberOfMatches(str, t, this.uniqueTextViews) == i) {
                    this.uniqueTextViews.clear();
                    return t;
                }
            }
            if (z && !this.scroller.scrollDown()) {
                logMatchesFound(str);
                return null;
            }
        } while (z);
        logMatchesFound(str);
        return null;
    }

    public WebElement searchForWebElement(By by, int i) {
        if (i < 1) {
            i = 1;
        }
        addViewsToList(this.webElements, this.webUtils.getWebElements(by, true));
        return getViewFromList(this.webElements, i);
    }

    private void addViewsToList(List<WebElement> list, List<WebElement> list2) {
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        for (WebElement webElement : list2) {
            webElement.getLocationOnScreen(iArr2);
            boolean z = false;
            for (WebElement webElement2 : list) {
                webElement2.getLocationOnScreen(iArr);
                if (webElement.getText().equals(webElement2.getText()) && iArr2[0] == iArr[0] && iArr2[1] == iArr[1]) {
                    z = true;
                }
            }
            if (!z) {
                list.add(webElement);
            }
        }
    }

    private WebElement getViewFromList(List<WebElement> list, int i) {
        WebElement webElement;
        if (list.size() >= i) {
            try {
                webElement = list.get(i - 1);
            } catch (Exception unused) {
                webElement = null;
            }
        } else {
            webElement = null;
        }
        if (webElement != null) {
            list.clear();
        }
        return webElement;
    }

    public <T extends View> int getNumberOfUniqueViews(Set<T> set, ArrayList<T> arrayList) {
        for (int i = 0; i < arrayList.size(); i++) {
            set.add(arrayList.get(i));
        }
        int size = set.size();
        this.numberOfUniqueViews = size;
        return size;
    }

    public int getNumberOfUniqueViews() {
        return this.numberOfUniqueViews;
    }

    public void logMatchesFound(String str) {
        if (this.uniqueTextViews.size() > 0) {
            Log.d("Robotium", " There are only " + this.uniqueTextViews.size() + " matches of '" + str + "'");
        } else if (this.webElements.size() > 0) {
            Log.d("Robotium", " There are only " + this.webElements.size() + " matches of '" + str + "'");
        }
        this.uniqueTextViews.clear();
        this.webElements.clear();
    }
}
