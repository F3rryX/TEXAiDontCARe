package com.texa.careapp.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.format.DateUtils;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import com.texa.careapp.R;
import com.texa.careapp.utils.Utils;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class RelativeTimeTextView extends AppCompatTextView {
    private boolean isUpdateTaskRunning;
    private Handler mHandler;
    private String mPrefix;
    private long mReferenceTime;
    private String mSuffix;
    private String mText;
    private UpdateTimeRunnable mUpdateTimeTask;
    private String noValue;

    public RelativeTimeTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mHandler = new Handler();
        this.isUpdateTaskRunning = false;
        init(context, attributeSet);
    }

    public RelativeTimeTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mHandler = new Handler();
        this.isUpdateTaskRunning = false;
        init(context, attributeSet);
    }

    private void init(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.RelativeTimeTextView, 0, 0);
        try {
            this.mText = typedArrayObtainStyledAttributes.getString(1);
            this.mPrefix = typedArrayObtainStyledAttributes.getString(2);
            this.mSuffix = typedArrayObtainStyledAttributes.getString(3);
            String string = typedArrayObtainStyledAttributes.getString(0);
            this.noValue = string;
            String str = this.mPrefix;
            String str2 = "";
            if (str == null) {
                str = "";
            }
            this.mPrefix = str;
            String str3 = this.mSuffix;
            if (str3 != null) {
                str2 = str3;
            }
            this.mSuffix = str2;
            if (string == null) {
                string = getContext().getString(com.texa.care.R.string.function_not_available_now);
            }
            this.noValue = string;
            typedArrayObtainStyledAttributes.recycle();
            this.mReferenceTime = -1L;
            try {
                if (!Utils.isEmpty(this.mText)) {
                    this.mReferenceTime = Long.valueOf(this.mText).longValue();
                }
            } catch (NumberFormatException e) {
                this.mReferenceTime = -1L;
                Timber.w(e, "NumberFormatException on Long.valueOf(mText)", new Object[0]);
            }
            setReferenceTime(this.mReferenceTime);
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    public String getPrefix() {
        return this.mPrefix;
    }

    public void setPrefix(String str) {
        this.mPrefix = str;
        updateTextDisplay(-1L);
    }

    public String getSuffix() {
        return this.mSuffix;
    }

    public void setSuffix(String str) {
        this.mSuffix = str;
        updateTextDisplay(-1L);
    }

    public void setReferenceTime(long j) {
        this.mReferenceTime = j;
        stopTaskForPeriodicallyUpdatingRelativeTime();
        this.mUpdateTimeTask = new UpdateTimeRunnable(this.mReferenceTime);
        startTaskForPeriodicallyUpdatingRelativeTime();
        updateTextDisplay(-1L);
    }

    public void updateTextDisplay(long j) {
        if (this.mReferenceTime == 0) {
            Timber.v("mReferenceTime is locked ", new Object[0]);
            return;
        }
        if (j != -1) {
            this.mReferenceTime = j;
        }
        if (this.mReferenceTime == -1) {
            Timber.v("error -> check mReferenceTime == -1L ", new Object[0]);
            setText(this.noValue);
            return;
        }
        String str = this.mPrefix + ((Object) getRelativeTimeDisplayString()) + this.mSuffix;
        Timber.v(" setText -> %s", str);
        setText(str);
    }

    private long getDifference() {
        return System.currentTimeMillis() - this.mReferenceTime;
    }

    private CharSequence getRelativeTimeDisplayString() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        long difference = getDifference();
        if (difference >= 0 && difference <= 60000) {
            this.mSuffix = "";
            return getResources().getString(com.texa.care.R.string.less_a_minute_ago);
        }
        return DateUtils.getRelativeTimeSpanString(this.mReferenceTime, jCurrentTimeMillis, 60000L, 262144);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        startTaskForPeriodicallyUpdatingRelativeTime();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        stopTaskForPeriodicallyUpdatingRelativeTime();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (i == 8 || i == 4) {
            stopTaskForPeriodicallyUpdatingRelativeTime();
        } else {
            startTaskForPeriodicallyUpdatingRelativeTime();
        }
    }

    private void startTaskForPeriodicallyUpdatingRelativeTime() {
        this.mHandler.post(this.mUpdateTimeTask);
        this.isUpdateTaskRunning = true;
    }

    private void stopTaskForPeriodicallyUpdatingRelativeTime() {
        if (this.isUpdateTaskRunning) {
            this.mHandler.removeCallbacks(this.mUpdateTimeTask);
            this.isUpdateTaskRunning = false;
        }
    }

    @Override // android.widget.TextView, android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.referenceTime = this.mReferenceTime;
        return savedState;
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        this.mReferenceTime = savedState.referenceTime;
        super.onRestoreInstanceState(savedState.getSuperState());
    }

    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.texa.careapp.views.RelativeTimeTextView.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        private long referenceTime;

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.referenceTime = parcel.readLong();
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeLong(this.referenceTime);
        }
    }

    private class UpdateTimeRunnable implements Runnable {
        private long mRefTime;

        UpdateTimeRunnable(long j) {
            this.mRefTime = j;
        }

        @Override // java.lang.Runnable
        public void run() {
            long jAbs = Math.abs(System.currentTimeMillis() - this.mRefTime);
            long j = 3600000;
            if (jAbs > 604800000) {
                j = 604800000;
            } else if (jAbs > 86400000) {
                j = 86400000;
            } else if (jAbs <= 3600000) {
                j = 60000;
            }
            RelativeTimeTextView.this.updateTextDisplay(-1L);
            RelativeTimeTextView.this.mHandler.postDelayed(this, j);
        }
    }
}
