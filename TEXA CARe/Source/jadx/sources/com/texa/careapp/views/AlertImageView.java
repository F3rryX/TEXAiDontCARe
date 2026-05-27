package com.texa.careapp.views;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.animation.BounceInterpolator;
import androidx.appcompat.widget.AppCompatImageView;
import com.texa.careapp.R;

/* JADX INFO: loaded from: classes2.dex */
public class AlertImageView extends AppCompatImageView {
    private Context mContext;

    public AlertImageView(Context context) {
        super(context);
        init(context);
    }

    public AlertImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context);
    }

    public AlertImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context);
    }

    private void init(Context context) {
        this.mContext = context;
        setImageDrawable(context.getResources().getDrawable(R.drawable.ic_sos_error));
    }

    public void showWithSlide() {
        if (getVisibility() != 0) {
            slideInFromRight();
        }
    }

    public void hide() {
        setVisibility(8);
    }

    protected void slideInFromRight() {
        final int i = getResources().getDisplayMetrics().widthPixels;
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, (Property<AlertImageView, Float>) View.X, i, i - this.mContext.getResources().getDimensionPixelSize(com.texa.care.R.dimen.emergency_btn_slide_margin));
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(objectAnimatorOfFloat);
        animatorSet.setInterpolator(new BounceInterpolator());
        animatorSet.setDuration(1000L);
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.texa.careapp.views.AlertImageView.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                AlertImageView.this.setX(i);
                AlertImageView.this.setVisibility(0);
            }
        });
        animatorSet.setStartDelay(1000L);
        animatorSet.start();
    }

    public void showWithFade() {
        setAlpha(0.0f);
        setVisibility(0);
        animate().alpha(1.0f).setDuration(300L).setListener(null);
    }
}
