package com.texa.careapp.views;

import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.content.res.ResourcesCompat;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public class DrawerAlertImageView extends AppCompatImageView {
    public DrawerAlertImageView(Context context) {
        super(context);
        init(context);
    }

    public DrawerAlertImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context);
    }

    public DrawerAlertImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context);
    }

    private void init(Context context) {
        setImageDrawable(ResourcesCompat.getDrawable(context.getResources(), R.drawable.schedule_circle_error_background, null));
    }

    public void hide() {
        setVisibility(8);
    }

    public void show() {
        setVisibility(0);
    }
}
