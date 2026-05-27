package com.robotium.solo;

import android.app.Instrumentation;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.webkit.WebView;
import android.widget.AbsListView;
import android.widget.GridView;
import android.widget.ListView;
import android.widget.ScrollView;
import com.robotium.solo.Solo;
import java.util.ArrayList;
import java.util.Iterator;
import junit.framework.Assert;

/* JADX INFO: loaded from: classes.dex */
class Scroller {
    public static final int DOWN = 0;
    public static final int UP = 1;
    private boolean canScroll = false;
    private final Solo.Config config;
    private final Instrumentation inst;
    private final Sleeper sleeper;
    private final ViewFetcher viewFetcher;

    public enum Side {
        LEFT,
        RIGHT
    }

    public Scroller(Solo.Config config, Instrumentation instrumentation, ViewFetcher viewFetcher, Sleeper sleeper) {
        this.config = config;
        this.inst = instrumentation;
        this.viewFetcher = viewFetcher;
        this.sleeper = sleeper;
    }

    public void drag(float f, float f2, float f3, float f4, int i) {
        long jUptimeMillis = SystemClock.uptimeMillis();
        float f5 = i;
        float f6 = (f4 - f3) / f5;
        float f7 = (f2 - f) / f5;
        try {
            this.inst.sendPointerSync(MotionEvent.obtain(jUptimeMillis, SystemClock.uptimeMillis(), 0, f, f3, 0));
        } catch (SecurityException unused) {
        }
        float f8 = f;
        float f9 = f3;
        int i2 = 0;
        while (i2 < i) {
            float f10 = f9 + f6;
            float f11 = f8 + f7;
            try {
                this.inst.sendPointerSync(MotionEvent.obtain(jUptimeMillis, SystemClock.uptimeMillis(), 2, f11, f10, 0));
            } catch (SecurityException unused2) {
            }
            i2++;
            f9 = f10;
            f8 = f11;
        }
        try {
            this.inst.sendPointerSync(MotionEvent.obtain(jUptimeMillis, SystemClock.uptimeMillis(), 1, f2, f4, 0));
        } catch (SecurityException unused3) {
        }
    }

    public boolean scrollView(final View view, int i) {
        if (view == null) {
            return false;
        }
        final int i2 = -1;
        int height = view.getHeight() - 1;
        if (i == 0) {
            i2 = height;
        } else if (i == 1) {
            i2 = -height;
        }
        int scrollY = view.getScrollY();
        this.inst.runOnMainSync(new Runnable() { // from class: com.robotium.solo.Scroller.1
            @Override // java.lang.Runnable
            public void run() {
                view.scrollBy(0, i2);
            }
        });
        return scrollY != view.getScrollY();
    }

    public void scrollViewAllTheWay(View view, int i) {
        while (scrollView(view, i)) {
        }
    }

    public boolean scroll(int i) {
        return scroll(i, false);
    }

    public boolean scrollDown() {
        if (this.config.shouldScroll) {
            return scroll(0);
        }
        return false;
    }

    public boolean scroll(int i, boolean z) {
        ArrayList<View> arrayListFilterViewsToSet = RobotiumUtils.filterViewsToSet(new Class[]{ListView.class, ScrollView.class, GridView.class, WebView.class}, RobotiumUtils.removeInvisibleViews(this.viewFetcher.getAllViews(true)));
        Iterator<View> it = this.viewFetcher.getScrollableSupportPackageViews(true).iterator();
        while (it.hasNext()) {
            arrayListFilterViewsToSet.add(it.next());
        }
        View freshestView = this.viewFetcher.getFreshestView(arrayListFilterViewsToSet);
        if (freshestView == null) {
            return false;
        }
        if (freshestView instanceof AbsListView) {
            return scrollList((AbsListView) freshestView, i, z);
        }
        if (freshestView instanceof WebView) {
            return scrollWebView((WebView) freshestView, i, z);
        }
        if (z) {
            scrollViewAllTheWay(freshestView, i);
            return false;
        }
        return scrollView(freshestView, i);
    }

    public boolean scrollWebView(final WebView webView, int i, final boolean z) {
        if (i == 0) {
            this.inst.runOnMainSync(new Runnable() { // from class: com.robotium.solo.Scroller.2
                @Override // java.lang.Runnable
                public void run() {
                    Scroller.this.canScroll = webView.pageDown(z);
                }
            });
        }
        if (i == 1) {
            this.inst.runOnMainSync(new Runnable() { // from class: com.robotium.solo.Scroller.3
                @Override // java.lang.Runnable
                public void run() {
                    Scroller.this.canScroll = webView.pageUp(z);
                }
            });
        }
        return this.canScroll;
    }

    public <T extends AbsListView> boolean scrollList(T t, int i, boolean z) {
        if (t == null) {
            return false;
        }
        if (i == 0) {
            int count = t.getCount();
            int lastVisiblePosition = t.getLastVisiblePosition();
            if (z) {
                scrollListToLine(t, count - 1);
                return false;
            }
            if (lastVisiblePosition >= count - 1) {
                if (lastVisiblePosition > 0) {
                    scrollListToLine(t, lastVisiblePosition);
                }
                return false;
            }
            int firstVisiblePosition = t.getFirstVisiblePosition();
            if (firstVisiblePosition != lastVisiblePosition) {
                scrollListToLine(t, lastVisiblePosition);
            } else {
                scrollListToLine(t, firstVisiblePosition + 1);
            }
        } else if (i == 1) {
            int firstVisiblePosition2 = t.getFirstVisiblePosition();
            if (z || firstVisiblePosition2 < 2) {
                scrollListToLine(t, 0);
                return false;
            }
            int lastVisiblePosition2 = t.getLastVisiblePosition();
            int i2 = firstVisiblePosition2 - (lastVisiblePosition2 - firstVisiblePosition2);
            if (i2 == lastVisiblePosition2) {
                i2--;
            }
            scrollListToLine(t, i2 >= 0 ? i2 : 0);
        }
        this.sleeper.sleep();
        return true;
    }

    public <T extends AbsListView> void scrollListToLine(final T t, final int i) {
        if (t == null) {
            Assert.fail("AbsListView is null!");
        }
        if (t instanceof GridView) {
            i++;
        }
        this.inst.runOnMainSync(new Runnable() { // from class: com.robotium.solo.Scroller.4
            @Override // java.lang.Runnable
            public void run() {
                t.setSelection(i);
            }
        });
    }

    public void scrollToSide(Side side, float f, int i) {
        float width = f * r0.getDefaultDisplay().getWidth();
        float height = ((WindowManager) this.inst.getTargetContext().getSystemService("window")).getDefaultDisplay().getHeight() / 2.0f;
        if (side == Side.LEFT) {
            drag(70.0f, width, height, height, i);
        } else if (side == Side.RIGHT) {
            drag(width, 0.0f, height, height, i);
        }
    }

    public void scrollViewToSide(View view, Side side, float f, int i) {
        view.getLocationOnScreen(new int[2]);
        int height = view.getHeight();
        float width = (view.getWidth() * f) + r0[0];
        float f2 = r0[1] + (height / 2.0f);
        if (side == Side.LEFT) {
            drag(r0[0], width, f2, f2, i);
        } else if (side == Side.RIGHT) {
            drag(width, r0[0], f2, f2, i);
        }
    }
}
