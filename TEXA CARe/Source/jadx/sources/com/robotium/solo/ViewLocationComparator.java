package com.robotium.solo;

import android.view.View;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
class ViewLocationComparator implements Comparator<View> {
    private final int[] a;
    private final int axis1;
    private final int axis2;
    private final int[] b;

    public ViewLocationComparator() {
        this(true);
    }

    public ViewLocationComparator(boolean z) {
        this.a = new int[2];
        this.b = new int[2];
        this.axis1 = z ? 1 : 0;
        this.axis2 = !z ? 1 : 0;
    }

    @Override // java.util.Comparator
    public int compare(View view, View view2) {
        view.getLocationOnScreen(this.a);
        view2.getLocationOnScreen(this.b);
        int[] iArr = this.a;
        int i = this.axis1;
        int i2 = iArr[i];
        int[] iArr2 = this.b;
        if (i2 != iArr2[i]) {
            return iArr[i] < iArr2[i] ? -1 : 1;
        }
        int i3 = this.axis2;
        if (iArr[i3] < iArr2[i3]) {
            return -1;
        }
        return iArr[i3] == iArr2[i3] ? 0 : 1;
    }
}
