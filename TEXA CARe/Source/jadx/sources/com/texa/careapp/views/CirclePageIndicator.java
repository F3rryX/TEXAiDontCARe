package com.texa.careapp.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.util.AttributeSet;
import android.view.View;
import androidx.viewpager.widget.ViewPager;
import com.texa.careapp.R;
import com.texa.careapp.utils.ShapeHolder;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class CirclePageIndicator extends View {
    private int mCurItemPosition;
    private float mCurItemPositionOffset;
    private int mIndicatorBackground;
    private Gravity mIndicatorLayoutGravity;
    private float mIndicatorMargin;
    private Mode mIndicatorMode;
    private float mIndicatorRadius;
    private int mIndicatorSelectedBackground;
    private ShapeHolder movingItem;
    private List<ShapeHolder> tabItems;
    private ViewPager viewPager;

    public enum Gravity {
        LEFT,
        CENTER,
        RIGHT
    }

    public enum Mode {
        INSIDE,
        OUTSIDE,
        SOLO
    }

    public CirclePageIndicator(Context context) {
        super(context);
        init(context, null);
    }

    public CirclePageIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context, attributeSet);
    }

    public CirclePageIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context, attributeSet);
    }

    private void init(Context context, AttributeSet attributeSet) {
        this.tabItems = new ArrayList();
        handleTypedArray(context, attributeSet);
    }

    private void handleTypedArray(Context context, AttributeSet attributeSet) {
        if (attributeSet == null) {
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CirclePageIndicator);
        this.mIndicatorRadius = typedArrayObtainStyledAttributes.getDimensionPixelSize(4, 10);
        this.mIndicatorMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, 40);
        this.mIndicatorBackground = typedArrayObtainStyledAttributes.getColor(0, -16776961);
        this.mIndicatorSelectedBackground = typedArrayObtainStyledAttributes.getColor(5, -65536);
        this.mIndicatorLayoutGravity = Gravity.values()[typedArrayObtainStyledAttributes.getInt(1, Gravity.CENTER.ordinal())];
        this.mIndicatorMode = Mode.values()[typedArrayObtainStyledAttributes.getInt(3, Mode.SOLO.ordinal())];
        typedArrayObtainStyledAttributes.recycle();
    }

    public void setViewPager(ViewPager viewPager) {
        this.viewPager = viewPager;
        createTabItems();
        createMovingItem();
        setUpListener();
    }

    private void setUpListener() {
        this.viewPager.addOnPageChangeListener(new ViewPager.SimpleOnPageChangeListener() { // from class: com.texa.careapp.views.CirclePageIndicator.1
            @Override // androidx.viewpager.widget.ViewPager.SimpleOnPageChangeListener, androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i, float f, int i2) {
                super.onPageScrolled(i, f, i2);
                if (CirclePageIndicator.this.mIndicatorMode != Mode.SOLO) {
                    CirclePageIndicator.this.trigger(i, f);
                }
            }

            @Override // androidx.viewpager.widget.ViewPager.SimpleOnPageChangeListener, androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageSelected(int i) {
                super.onPageSelected(i);
                if (CirclePageIndicator.this.mIndicatorMode == Mode.SOLO) {
                    CirclePageIndicator.this.trigger(i, 0.0f);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void trigger(int i, float f) {
        this.mCurItemPosition = i;
        this.mCurItemPositionOffset = f;
        requestLayout();
        invalidate();
    }

    private void createTabItems() {
        for (int i = 0; i < this.viewPager.getAdapter().getCount(); i++) {
            ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
            ShapeHolder shapeHolder = new ShapeHolder(shapeDrawable);
            Paint paint = shapeDrawable.getPaint();
            paint.setColor(this.mIndicatorBackground);
            paint.setAntiAlias(true);
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeWidth(2.0f);
            paint.setColor(this.mIndicatorSelectedBackground);
            shapeHolder.setPaint(paint);
            this.tabItems.add(shapeHolder);
        }
    }

    private void createMovingItem() {
        ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
        this.movingItem = new ShapeHolder(shapeDrawable);
        Paint paint = shapeDrawable.getPaint();
        paint.setColor(this.mIndicatorSelectedBackground);
        paint.setAntiAlias(true);
        int i = AnonymousClass2.$SwitchMap$com$texa$careapp$views$CirclePageIndicator$Mode[this.mIndicatorMode.ordinal()];
        if (i == 1) {
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_ATOP));
        } else if (i == 2) {
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_OVER));
        } else if (i == 3) {
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        }
        this.movingItem.setPaint(paint);
    }

    /* JADX INFO: renamed from: com.texa.careapp.views.CirclePageIndicator$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$careapp$views$CirclePageIndicator$Mode;

        static {
            int[] iArr = new int[Mode.values().length];
            $SwitchMap$com$texa$careapp$views$CirclePageIndicator$Mode = iArr;
            try {
                iArr[Mode.INSIDE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$texa$careapp$views$CirclePageIndicator$Mode[Mode.OUTSIDE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$texa$careapp$views$CirclePageIndicator$Mode[Mode.SOLO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        layoutTabItems(getWidth(), getHeight());
        layoutMovingItem(this.mCurItemPosition, this.mCurItemPositionOffset);
    }

    private void layoutTabItems(int i, int i2) {
        if (this.tabItems == null) {
            throw new IllegalStateException("forget to create tabItems?");
        }
        float f = i2 * 0.5f;
        float fStartDrawPosition = startDrawPosition(i);
        for (int i3 = 0; i3 < this.tabItems.size(); i3++) {
            ShapeHolder shapeHolder = this.tabItems.get(i3);
            float f2 = this.mIndicatorRadius;
            shapeHolder.resizeShape(f2 * 2.0f, f2 * 2.0f);
            shapeHolder.setY(f - this.mIndicatorRadius);
            shapeHolder.setX(((this.mIndicatorMargin + (this.mIndicatorRadius * 2.0f)) * i3) + fStartDrawPosition);
        }
    }

    private float startDrawPosition(int i) {
        if (this.mIndicatorLayoutGravity == Gravity.LEFT) {
            return 0.0f;
        }
        float size = this.tabItems.size();
        float f = this.mIndicatorRadius * 2.0f;
        float f2 = this.mIndicatorMargin;
        float f3 = (size * (f + f2)) - f2;
        float f4 = i;
        if (f4 < f3) {
            return 0.0f;
        }
        return this.mIndicatorLayoutGravity == Gravity.CENTER ? (f4 - f3) / 2.0f : f4 - f3;
    }

    private void layoutMovingItem(int i, float f) {
        if (this.movingItem == null) {
            throw new IllegalStateException("forget to create movingItem?");
        }
        ShapeHolder shapeHolder = this.tabItems.get(i);
        this.movingItem.resizeShape(shapeHolder.getWidth(), shapeHolder.getHeight());
        this.movingItem.setX(shapeHolder.getX() + ((this.mIndicatorMargin + (this.mIndicatorRadius * 2.0f)) * f));
        this.movingItem.setY(shapeHolder.getY());
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int iSaveLayer = canvas.saveLayer(0.0f, 0.0f, getWidth(), getHeight(), null, 31);
        for (ShapeHolder shapeHolder : this.tabItems) {
            canvas.save();
            canvas.translate(shapeHolder.getX(), shapeHolder.getY());
            shapeHolder.getShape().draw(canvas);
            canvas.restore();
        }
        if (this.movingItem != null) {
            canvas.save();
            canvas.translate(this.movingItem.getX(), this.movingItem.getY());
            this.movingItem.getShape().draw(canvas);
            canvas.restore();
        }
        canvas.restoreToCount(iSaveLayer);
    }

    public void setIndicatorRadius(float f) {
        this.mIndicatorRadius = f;
    }

    public void setIndicatorMargin(float f) {
        this.mIndicatorMargin = f;
    }

    public void setIndicatorBackground(int i) {
        this.mIndicatorBackground = i;
    }

    public void setIndicatorSelectedBackground(int i) {
        this.mIndicatorSelectedBackground = i;
    }

    public void setIndicatorLayoutGravity(Gravity gravity) {
        this.mIndicatorLayoutGravity = gravity;
    }

    public void setIndicatorMode(Mode mode) {
        this.mIndicatorMode = mode;
    }
}
