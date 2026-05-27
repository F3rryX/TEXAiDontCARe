package com.robotium.solo;

import android.content.Context;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
class RobotiumTextView extends TextView {
    private int locationX;
    private int locationY;

    public RobotiumTextView(Context context) {
        super(context);
        this.locationX = 0;
        this.locationY = 0;
    }

    public RobotiumTextView(Context context, String str, int i, int i2) {
        super(context);
        this.locationX = 0;
        this.locationY = 0;
        setText(str);
        setLocationX(i);
        setLocationY(i2);
    }

    @Override // android.view.View
    public void getLocationOnScreen(int[] iArr) {
        iArr[0] = this.locationX;
        iArr[1] = this.locationY;
    }

    public void setLocationX(int i) {
        this.locationX = i;
    }

    public void setLocationY(int i) {
        this.locationY = i;
    }
}
