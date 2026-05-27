package com.texa.careapp.app.sos.countdown;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.animation.DecelerateInterpolator;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public class CountdownView extends RelativeLayout {
    private AnimatorSet mAnimatorSet;
    protected TextView mNumberTw;

    public CountdownView(Context context) {
        super(context);
        this.mAnimatorSet = new AnimatorSet();
        init(context);
    }

    public CountdownView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mAnimatorSet = new AnimatorSet();
        init(context);
    }

    public CountdownView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mAnimatorSet = new AnimatorSet();
        init(context);
    }

    protected void init(Context context) {
        inflate(context, R.layout.countdown, this);
        TextView textView = (TextView) findViewById(R.id.countdown_number);
        this.mNumberTw = textView;
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(textView, "scaleY", 0.1f, 1.0f);
        objectAnimatorOfFloat.setDuration(300L);
        objectAnimatorOfFloat.setInterpolator(new DecelerateInterpolator());
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.mNumberTw, "scaleX", 0.1f, 1.0f);
        objectAnimatorOfFloat2.setDuration(300L);
        objectAnimatorOfFloat2.setInterpolator(new DecelerateInterpolator());
        this.mAnimatorSet.playTogether(objectAnimatorOfFloat2, objectAnimatorOfFloat);
    }

    public void show() {
        setVisibility(0);
    }

    public void hide() {
        setVisibility(8);
    }

    public void update(String str) {
        this.mNumberTw.setText(str);
    }

    public void update(int i) {
        this.mNumberTw.setText(String.valueOf(i));
    }

    public void updateWithAnim(int i) {
        update(i);
        this.mAnimatorSet.start();
    }

    public boolean isHidden() {
        return getVisibility() != 0;
    }

    public boolean isVisible() {
        return getVisibility() == 0;
    }

    public CharSequence getText() {
        TextView textView = this.mNumberTw;
        return textView == null ? "" : textView.getText();
    }
}
