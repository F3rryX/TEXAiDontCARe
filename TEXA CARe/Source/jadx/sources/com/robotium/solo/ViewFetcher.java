package com.robotium.solo;

import android.app.Instrumentation;
import android.os.Build;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.webkit.WebView;
import android.widget.AbsListView;
import android.widget.ScrollView;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class ViewFetcher {
    private static Class<?> windowManager;
    private Instrumentation instrumentation;
    private Sleeper sleeper;
    private String windowManagerString;

    public ViewFetcher(Instrumentation instrumentation, Sleeper sleeper) {
        this.instrumentation = instrumentation;
        this.sleeper = sleeper;
        setWindowManagerString();
    }

    public View getTopParent(View view) {
        Object parent = view.getParent();
        return (parent == null || !(parent instanceof View)) ? view : getTopParent((View) parent);
    }

    public View getScrollOrListParent(View view) {
        if ((view instanceof AbsListView) || (view instanceof ScrollView) || (view instanceof WebView)) {
            return view;
        }
        try {
            return getScrollOrListParent((View) view.getParent());
        } catch (Exception unused) {
            return null;
        }
    }

    public ArrayList<View> getAllViews(boolean z) {
        View[] windowDecorViews = getWindowDecorViews();
        ArrayList<View> arrayList = new ArrayList<>();
        View[] nonDecorViews = getNonDecorViews(windowDecorViews);
        if (nonDecorViews != null) {
            for (View view : nonDecorViews) {
                try {
                    addChildren(arrayList, (ViewGroup) view, z);
                } catch (Exception unused) {
                }
                if (view != null) {
                    arrayList.add(view);
                }
            }
        }
        if (windowDecorViews != null && windowDecorViews.length > 0) {
            View recentDecorView = getRecentDecorView(windowDecorViews);
            try {
                addChildren(arrayList, (ViewGroup) recentDecorView, z);
            } catch (Exception unused2) {
            }
            if (recentDecorView != null) {
                arrayList.add(recentDecorView);
            }
        }
        return arrayList;
    }

    public final View getRecentDecorView(View[] viewArr) {
        if (viewArr == null) {
            return null;
        }
        View[] viewArr2 = new View[viewArr.length];
        int i = 0;
        for (View view : viewArr) {
            if (isDecorView(view)) {
                viewArr2[i] = view;
                i++;
            }
        }
        return getRecentContainer(viewArr2);
    }

    private final View getRecentContainer(View[] viewArr) {
        View view = null;
        long drawingTime = 0;
        for (View view2 : viewArr) {
            if (view2 != null && view2.isShown() && view2.hasWindowFocus() && view2.getDrawingTime() > drawingTime) {
                drawingTime = view2.getDrawingTime();
                view = view2;
            }
        }
        return view;
    }

    private final View[] getNonDecorViews(View[] viewArr) {
        if (viewArr == null) {
            return null;
        }
        View[] viewArr2 = new View[viewArr.length];
        int i = 0;
        for (View view : viewArr) {
            if (!isDecorView(view)) {
                viewArr2[i] = view;
                i++;
            }
        }
        return viewArr2;
    }

    private boolean isDecorView(View view) {
        if (view == null) {
            return false;
        }
        String name = view.getClass().getName();
        return name.equals("com.android.internal.policy.impl.PhoneWindow$DecorView") || name.equals("com.android.internal.policy.impl.MultiPhoneWindow$MultiPhoneDecorView") || name.equals("com.android.internal.policy.PhoneWindow$DecorView");
    }

    public ArrayList<View> getViews(View view, boolean z) {
        ArrayList<View> arrayList = new ArrayList<>();
        if (view == null) {
            return getAllViews(z);
        }
        arrayList.add(view);
        if (view instanceof ViewGroup) {
            addChildren(arrayList, (ViewGroup) view, z);
        }
        return arrayList;
    }

    private void addChildren(ArrayList<View> arrayList, ViewGroup viewGroup, boolean z) {
        if (viewGroup != null) {
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                View childAt = viewGroup.getChildAt(i);
                if (z && isViewSufficientlyShown(childAt)) {
                    arrayList.add(childAt);
                } else if (!z && childAt != null) {
                    arrayList.add(childAt);
                }
                if (childAt instanceof ViewGroup) {
                    addChildren(arrayList, (ViewGroup) childAt, z);
                }
            }
        }
    }

    public final boolean isViewSufficientlyShown(View view) {
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        if (view == null) {
            return false;
        }
        float height = view.getHeight();
        View scrollOrListParent = getScrollOrListParent(view);
        view.getLocationOnScreen(iArr);
        if (scrollOrListParent == null) {
            iArr2[1] = 0;
        } else {
            scrollOrListParent.getLocationOnScreen(iArr2);
        }
        float f = height / 2.0f;
        return ((float) iArr[1]) + f <= getScrollListWindowHeight(view) && ((float) iArr[1]) + f >= ((float) iArr2[1]);
    }

    public float getScrollListWindowHeight(View view) {
        int[] iArr = new int[2];
        View scrollOrListParent = getScrollOrListParent(view);
        if (scrollOrListParent == null) {
            return ((WindowManager) this.instrumentation.getTargetContext().getSystemService("window")).getDefaultDisplay().getHeight();
        }
        scrollOrListParent.getLocationOnScreen(iArr);
        return iArr[1] + scrollOrListParent.getHeight();
    }

    public <T extends View> ArrayList<T> getCurrentViews(Class<T> cls, boolean z) {
        return getCurrentViews(cls, z, null);
    }

    public <T extends View> ArrayList<T> getCurrentViews(Class<T> cls, boolean z, View view) {
        ArrayList<T> arrayList = new ArrayList<>();
        for (View view2 : getViews(view, true)) {
            if (view2 != null) {
                Class<?> cls2 = view2.getClass();
                if ((z && cls.isAssignableFrom(cls2)) || (!z && cls == cls2)) {
                    arrayList.add(cls.cast(view2));
                }
            }
        }
        return arrayList;
    }

    public final <T extends View> T getFreshestView(ArrayList<T> arrayList) {
        int[] iArr = new int[2];
        T t = null;
        if (arrayList == null) {
            return null;
        }
        long drawingTime = 0;
        for (T t2 : arrayList) {
            if (t2 != null) {
                t2.getLocationOnScreen(iArr);
                if (iArr[0] >= 0 && t2.getHeight() > 0) {
                    if (t2.getDrawingTime() > drawingTime) {
                        drawingTime = t2.getDrawingTime();
                    } else if (t2.getDrawingTime() != drawingTime || !t2.isFocused()) {
                    }
                    t = t2;
                }
            }
        }
        return t;
    }

    public <T extends View> ViewGroup getRecyclerView(int i, int i2) {
        long jUptimeMillis = SystemClock.uptimeMillis() + ((long) i2);
        while (SystemClock.uptimeMillis() < jUptimeMillis) {
            View recyclerView = getRecyclerView(true, i);
            if (recyclerView != null) {
                return (ViewGroup) recyclerView;
            }
        }
        return null;
    }

    public View getRecyclerView(boolean z, int i) {
        HashSet hashSet = new HashSet();
        if (z) {
            this.sleeper.sleep();
        }
        for (View view : RobotiumUtils.removeInvisibleViews(RobotiumUtils.filterViewsToSet(new Class[]{ViewGroup.class}, getAllViews(false)))) {
            if (isViewType(view.getClass(), "widget.RecyclerView")) {
                hashSet.add(view);
            }
            if (hashSet.size() > i) {
                return (ViewGroup) view;
            }
        }
        return null;
    }

    public List<View> getScrollableSupportPackageViews(boolean z) {
        ArrayList arrayList = new ArrayList();
        if (z) {
            this.sleeper.sleep();
        }
        for (View view : RobotiumUtils.removeInvisibleViews(RobotiumUtils.filterViewsToSet(new Class[]{ViewGroup.class}, getAllViews(true)))) {
            if (isViewType(view.getClass(), "widget.RecyclerView") || isViewType(view.getClass(), "widget.NestedScrollView")) {
                arrayList.add(view);
            }
        }
        return arrayList;
    }

    private boolean isViewType(Class<?> cls, String str) {
        if (cls.getName().contains(str)) {
            return true;
        }
        if (cls.getSuperclass() != null) {
            return isViewType(cls.getSuperclass(), str);
        }
        return false;
    }

    public View getIdenticalView(View view) {
        if (view == null) {
            return null;
        }
        for (View view2 : RobotiumUtils.removeInvisibleViews(getCurrentViews(view.getClass(), true))) {
            if (areViewsIdentical(view2, view)) {
                return view2;
            }
        }
        return null;
    }

    private boolean areViewsIdentical(View view, View view2) {
        if (view.getId() != view2.getId() || !view.getClass().isAssignableFrom(view2.getClass())) {
            return false;
        }
        if (view.getParent() == null || !(view.getParent() instanceof View) || view2.getParent() == null || !(view2.getParent() instanceof View)) {
            return true;
        }
        return areViewsIdentical((View) view.getParent(), (View) view2.getParent());
    }

    static {
        try {
            windowManager = Class.forName(Build.VERSION.SDK_INT >= 17 ? "android.view.WindowManagerGlobal" : "android.view.WindowManagerImpl");
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        } catch (SecurityException e2) {
            e2.printStackTrace();
        }
    }

    public View[] getWindowDecorViews() {
        try {
            Field declaredField = windowManager.getDeclaredField("mViews");
            Field declaredField2 = windowManager.getDeclaredField(this.windowManagerString);
            declaredField.setAccessible(true);
            declaredField2.setAccessible(true);
            Object obj = declaredField2.get(null);
            if (Build.VERSION.SDK_INT >= 19) {
                return (View[]) ((ArrayList) declaredField.get(obj)).toArray(new View[0]);
            }
            return (View[]) declaredField.get(obj);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    private void setWindowManagerString() {
        if (Build.VERSION.SDK_INT >= 17) {
            this.windowManagerString = "sDefaultWindowManager";
        } else if (Build.VERSION.SDK_INT >= 13) {
            this.windowManagerString = "sWindowManager";
        } else {
            this.windowManagerString = "mWindowManager";
        }
    }
}
