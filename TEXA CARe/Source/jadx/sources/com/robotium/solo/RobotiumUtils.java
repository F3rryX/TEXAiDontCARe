package com.robotium.solo;

import android.view.View;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

/* JADX INFO: loaded from: classes.dex */
public class RobotiumUtils {
    public static <T extends View> ArrayList<T> removeInvisibleViews(Iterable<T> iterable) {
        ArrayList<T> arrayList = new ArrayList<>();
        for (T t : iterable) {
            if (t != null && t.isShown()) {
                arrayList.add(t);
            }
        }
        return arrayList;
    }

    public static <T> ArrayList<T> filterViews(Class<T> cls, Iterable<?> iterable) {
        ArrayList<T> arrayList = new ArrayList<>();
        for (Object obj : iterable) {
            if (obj != null && cls.isAssignableFrom(obj.getClass())) {
                arrayList.add(cls.cast(obj));
            }
        }
        return arrayList;
    }

    public static ArrayList<View> filterViewsToSet(Class<View>[] clsArr, Iterable<View> iterable) {
        ArrayList<View> arrayList = new ArrayList<>();
        for (View view : iterable) {
            if (view != null) {
                int length = clsArr.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        break;
                    }
                    if (clsArr[i].isAssignableFrom(view.getClass())) {
                        arrayList.add(view);
                        break;
                    }
                    i++;
                }
            }
        }
        return arrayList;
    }

    public static void sortViewsByLocationOnScreen(List<? extends View> list) {
        Collections.sort(list, new ViewLocationComparator());
    }

    public static void sortViewsByLocationOnScreen(List<? extends View> list, boolean z) {
        Collections.sort(list, new ViewLocationComparator(z));
    }

    public static int getNumberOfMatches(String str, TextView textView, Set<TextView> set) {
        Pattern patternCompile;
        if (textView == null) {
            return set.size();
        }
        try {
            patternCompile = Pattern.compile(str);
        } catch (PatternSyntaxException unused) {
            patternCompile = Pattern.compile(str, 16);
        }
        if (patternCompile.matcher(textView.getText().toString()).find()) {
            set.add(textView);
        }
        if (textView.getError() != null && patternCompile.matcher(textView.getError().toString()).find()) {
            set.add(textView);
        }
        if (textView.getText().toString().equals("") && textView.getHint() != null && patternCompile.matcher(textView.getHint().toString()).find()) {
            set.add(textView);
        }
        return set.size();
    }

    public static <T extends TextView> List<T> filterViewsByText(Iterable<T> iterable, String str) {
        return filterViewsByText(iterable, Pattern.compile(str));
    }

    public static <T extends TextView> List<T> filterViewsByText(Iterable<T> iterable, Pattern pattern) {
        ArrayList arrayList = new ArrayList();
        for (T t : iterable) {
            if (t != null && pattern.matcher(t.getText()).matches()) {
                arrayList.add(t);
            }
        }
        return arrayList;
    }
}
