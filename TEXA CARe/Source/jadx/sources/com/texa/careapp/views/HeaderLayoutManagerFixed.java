package com.texa.careapp.views;

import android.content.Context;
import android.graphics.PointF;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class HeaderLayoutManagerFixed extends RecyclerView.LayoutManager {
    private static final boolean DEBUG = true;
    public static final int HORIZONTAL = 0;
    public static final int INVALID_OFFSET = Integer.MIN_VALUE;
    private static final float MAX_SCROLL_FACTOR = 0.33f;
    private static final String TAG = "LinearLayoutManager";
    public static final int VERTICAL = 1;
    private int mHeaderIncrementFixer;
    private boolean mLastStackFromEnd;
    private int mOrientation;
    OrientationHelper mOrientationHelper;
    private SavedState mPendingSavedState;
    private int mPendingScrollPosition;
    private int mPendingScrollPositionOffset;
    private RenderState mRenderState;
    private boolean mReverseLayout;
    private boolean mShouldReverseLayout;
    private boolean mStackFromEnd;

    interface OrientationHelper {
        int getDecoratedEnd(View view);

        int getDecoratedMeasurement(View view);

        int getDecoratedMeasurementInOther(View view);

        int getDecoratedStart(View view);

        int getEndAfterPadding();

        int getStartAfterPadding();

        int getTotalSpace();

        void offsetChildren(int i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean supportsPredictiveItemAnimations() {
        return true;
    }

    public HeaderLayoutManagerFixed(Context context) {
        this(context, 1, false);
    }

    public HeaderLayoutManagerFixed(Context context, int i, boolean z) {
        this.mHeaderIncrementFixer = 0;
        this.mReverseLayout = false;
        this.mShouldReverseLayout = false;
        this.mStackFromEnd = false;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mPendingSavedState = null;
        setOrientation(i);
        setReverseLayout(z);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new RecyclerView.LayoutParams(-2, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public Parcelable onSaveInstanceState() {
        if (this.mPendingSavedState != null) {
            return new SavedState(this.mPendingSavedState);
        }
        SavedState savedState = new SavedState();
        if (getChildCount() > 0) {
            boolean z = this.mLastStackFromEnd ^ this.mShouldReverseLayout;
            savedState.mAnchorLayoutFromEnd = z;
            if (z) {
                View childClosestToEnd = getChildClosestToEnd();
                savedState.mAnchorOffset = this.mOrientationHelper.getEndAfterPadding() - this.mOrientationHelper.getDecoratedEnd(childClosestToEnd);
                savedState.mAnchorPosition = getPosition(childClosestToEnd);
            } else {
                View childClosestToStart = getChildClosestToStart();
                savedState.mAnchorPosition = getPosition(childClosestToStart);
                savedState.mAnchorOffset = this.mOrientationHelper.getDecoratedStart(childClosestToStart) - this.mOrientationHelper.getStartAfterPadding();
            }
        } else {
            savedState.mAnchorPosition = 0;
            savedState.mAnchorOffset = 0;
        }
        savedState.mStackFromEnd = this.mStackFromEnd;
        savedState.mReverseLayout = this.mReverseLayout;
        savedState.mOrientation = this.mOrientation;
        return savedState;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            this.mPendingSavedState = (SavedState) parcelable;
            requestLayout();
            Log.d(TAG, "loaded saved state");
            return;
        }
        Log.d(TAG, "invalid saved state class");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollHorizontally() {
        return this.mOrientation == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollVertically() {
        return this.mOrientation == 1;
    }

    public void setStackFromEnd(boolean z) {
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null && savedState.mStackFromEnd != z) {
            this.mPendingSavedState.mStackFromEnd = z;
        }
        if (this.mStackFromEnd == z) {
            return;
        }
        this.mStackFromEnd = z;
        requestLayout();
    }

    public boolean getStackFromEnd() {
        return this.mStackFromEnd;
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public void setOrientation(int i) {
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException("invalid orientation.");
        }
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null && savedState.mOrientation != i) {
            this.mPendingSavedState.mOrientation = i;
        }
        if (i == this.mOrientation) {
            return;
        }
        this.mOrientation = i;
        this.mOrientationHelper = null;
        requestLayout();
    }

    private void resolveShouldLayoutReverse() {
        if (this.mOrientation == 1 || !isLayoutRTL()) {
            this.mShouldReverseLayout = this.mReverseLayout;
        } else {
            this.mShouldReverseLayout = !this.mReverseLayout;
        }
    }

    public boolean getReverseLayout() {
        return this.mReverseLayout;
    }

    public void setReverseLayout(boolean z) {
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null && savedState.mReverseLayout != z) {
            this.mPendingSavedState.mReverseLayout = z;
        }
        if (z == this.mReverseLayout) {
            return;
        }
        this.mReverseLayout = z;
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public View findViewByPosition(int i) {
        int position;
        int childCount = getChildCount();
        if (childCount != 0 && (position = i - getPosition(getChildAt(0))) >= 0 && position < childCount) {
            return getChildAt(position);
        }
        return null;
    }

    protected int getExtraLayoutSpace(RecyclerView.State state) {
        if (state.hasTargetScrollPosition()) {
            return this.mOrientationHelper.getTotalSpace();
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i) {
        LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext()) { // from class: com.texa.careapp.views.HeaderLayoutManagerFixed.1
            @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller
            public PointF computeScrollVectorForPosition(int i2) {
                return HeaderLayoutManagerFixed.this.computeScrollVectorForPosition(i2);
            }
        };
        linearSmoothScroller.setTargetPosition(i);
        startSmoothScroll(linearSmoothScroller);
    }

    public PointF computeScrollVectorForPosition(int i) {
        if (getChildCount() == 0) {
            return null;
        }
        int i2 = (i < getPosition(getChildAt(0))) != this.mShouldReverseLayout ? -1 : 1;
        if (this.mOrientation == 0) {
            return new PointF(i2, 0.0f);
        }
        return new PointF(0.0f, i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r5v5 */
    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        int startAfterPadding;
        int decoratedStart;
        int i;
        SavedState savedState;
        ?? r5;
        int i2;
        int i3;
        int iFixLayoutEndGap;
        boolean z;
        Log.d(TAG, "is pre layout:" + state.isPreLayout());
        SavedState savedState2 = this.mPendingSavedState;
        if (savedState2 != null) {
            setOrientation(savedState2.mOrientation);
            setReverseLayout(this.mPendingSavedState.mReverseLayout);
            setStackFromEnd(this.mPendingSavedState.mStackFromEnd);
            this.mPendingScrollPosition = this.mPendingSavedState.mAnchorPosition;
        }
        ensureRenderState();
        resolveShouldLayoutReverse();
        int i4 = this.mPendingScrollPosition;
        if (i4 != -1 && (i4 < 0 || i4 >= state.getItemCount())) {
            this.mPendingScrollPosition = -1;
            this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
            Log.e(TAG, "ignoring invalid scroll position " + this.mPendingScrollPosition);
        }
        boolean z2 = this.mShouldReverseLayout;
        boolean z3 = this.mStackFromEnd;
        boolean z4 = z2 ^ z3;
        boolean z5 = this.mLastStackFromEnd != z3;
        int itemCount = this.mPendingScrollPosition;
        if (itemCount != -1) {
            SavedState savedState3 = this.mPendingSavedState;
            if (savedState3 != null) {
                z4 = savedState3.mAnchorLayoutFromEnd;
                if (z4) {
                    startAfterPadding = this.mOrientationHelper.getEndAfterPadding() - this.mPendingSavedState.mAnchorOffset;
                } else {
                    startAfterPadding = this.mOrientationHelper.getStartAfterPadding() + this.mPendingSavedState.mAnchorOffset;
                }
            } else if (this.mPendingScrollPositionOffset == Integer.MIN_VALUE) {
                View viewFindViewByPosition = findViewByPosition(itemCount);
                if (viewFindViewByPosition != null) {
                    int decoratedStart2 = this.mOrientationHelper.getDecoratedStart(viewFindViewByPosition) - this.mOrientationHelper.getStartAfterPadding();
                    int endAfterPadding = this.mOrientationHelper.getEndAfterPadding() - this.mOrientationHelper.getDecoratedEnd(viewFindViewByPosition);
                    if (this.mOrientationHelper.getDecoratedMeasurement(viewFindViewByPosition) > this.mOrientationHelper.getTotalSpace()) {
                        if (z4) {
                            startAfterPadding = this.mOrientationHelper.getEndAfterPadding();
                        } else {
                            startAfterPadding = this.mOrientationHelper.getStartAfterPadding();
                        }
                    } else if (decoratedStart2 < 0) {
                        startAfterPadding = this.mOrientationHelper.getStartAfterPadding();
                        z4 = false;
                    } else if (endAfterPadding < 0) {
                        startAfterPadding = this.mOrientationHelper.getEndAfterPadding();
                        z4 = true;
                    } else if (z4) {
                        startAfterPadding = this.mOrientationHelper.getDecoratedEnd(viewFindViewByPosition);
                    } else {
                        startAfterPadding = this.mOrientationHelper.getDecoratedStart(viewFindViewByPosition);
                    }
                } else if (getChildCount() > 0) {
                    if ((this.mPendingScrollPosition < getPosition(getChildAt(0))) == this.mShouldReverseLayout) {
                        startAfterPadding = this.mOrientationHelper.getEndAfterPadding();
                        z = true;
                    } else {
                        startAfterPadding = this.mOrientationHelper.getStartAfterPadding();
                        z = false;
                    }
                    z4 = z;
                } else if (z4) {
                    startAfterPadding = this.mOrientationHelper.getEndAfterPadding();
                } else {
                    startAfterPadding = this.mOrientationHelper.getStartAfterPadding();
                }
            } else if (z2) {
                startAfterPadding = this.mOrientationHelper.getEndAfterPadding() - this.mPendingScrollPositionOffset;
                z4 = true;
            } else {
                startAfterPadding = this.mOrientationHelper.getStartAfterPadding() + this.mPendingScrollPositionOffset;
                z4 = false;
            }
        } else if (getChildCount() <= 0 || z5) {
            if (z4) {
                startAfterPadding = this.mOrientationHelper.getEndAfterPadding();
            } else {
                startAfterPadding = this.mOrientationHelper.getStartAfterPadding();
            }
            itemCount = this.mStackFromEnd ? state.getItemCount() - 1 : 0;
        } else {
            if (z4) {
                View childClosestToEnd = getChildClosestToEnd();
                decoratedStart = this.mOrientationHelper.getDecoratedEnd(childClosestToEnd);
                itemCount = getPosition(childClosestToEnd);
            } else {
                View childClosestToStart = getChildClosestToStart();
                decoratedStart = this.mOrientationHelper.getDecoratedStart(childClosestToStart);
                itemCount = getPosition(childClosestToStart);
            }
            startAfterPadding = decoratedStart;
        }
        detachAndScrapAttachedViews(recycler);
        int extraLayoutSpace = getExtraLayoutSpace(state);
        if ((state.getTargetScrollPosition() < itemCount) == this.mShouldReverseLayout) {
            i = extraLayoutSpace;
            extraLayoutSpace = 0;
        } else {
            i = 0;
        }
        updateRenderStateToFillStart(itemCount, startAfterPadding);
        this.mRenderState.mExtra = extraLayoutSpace;
        if (!z4) {
            this.mRenderState.mCurrentPosition += this.mRenderState.mItemDirection;
        }
        fill(recycler, this.mRenderState, state, false);
        int i5 = this.mRenderState.mOffset;
        updateRenderStateToFillEnd(itemCount, startAfterPadding);
        this.mRenderState.mExtra = i;
        if (z4) {
            this.mRenderState.mCurrentPosition += this.mRenderState.mItemDirection;
        }
        fill(recycler, this.mRenderState, state, false);
        int i6 = this.mRenderState.mOffset;
        if (getChildCount() > 0) {
            if (this.mShouldReverseLayout ^ this.mStackFromEnd) {
                int iFixLayoutEndGap2 = fixLayoutEndGap(i6, recycler, state, true);
                i2 = i5 + iFixLayoutEndGap2;
                i3 = i6 + iFixLayoutEndGap2;
                iFixLayoutEndGap = fixLayoutStartGap(i2, recycler, state, false);
            } else {
                int iFixLayoutStartGap = fixLayoutStartGap(i5, recycler, state, true);
                i2 = i5 + iFixLayoutStartGap;
                i3 = i6 + iFixLayoutStartGap;
                iFixLayoutEndGap = fixLayoutEndGap(i3, recycler, state, false);
            }
            i5 = i2 + iFixLayoutEndGap;
            i6 = i3 + iFixLayoutEndGap;
        }
        if (getChildCount() <= 0 || state.isPreLayout() || !supportsPredictiveItemAnimations()) {
            savedState = null;
        } else {
            List<RecyclerView.ViewHolder> scrapList = recycler.getScrapList();
            int size = scrapList.size();
            int position = getPosition(getChildAt(0));
            int decoratedMeasurement = 0;
            int decoratedMeasurement2 = 0;
            for (int i7 = 0; i7 < size; i7++) {
                RecyclerView.ViewHolder viewHolder = scrapList.get(i7);
                if (((viewHolder.getPosition() < position) != this.mShouldReverseLayout ? (byte) -1 : (byte) 1) == -1) {
                    decoratedMeasurement2 += this.mOrientationHelper.getDecoratedMeasurement(viewHolder.itemView);
                } else {
                    decoratedMeasurement += this.mOrientationHelper.getDecoratedMeasurement(viewHolder.itemView);
                }
            }
            Log.d(TAG, "for unused scrap, decided to add " + decoratedMeasurement2 + " towards start and " + decoratedMeasurement + " towards end");
            this.mRenderState.mScrapList = scrapList;
            if (decoratedMeasurement2 > 0) {
                updateRenderStateToFillStart(getPosition(getChildClosestToStart()), i5);
                this.mRenderState.mExtra = decoratedMeasurement2;
                r5 = 0;
                this.mRenderState.mAvailable = 0;
                this.mRenderState.mCurrentPosition += this.mShouldReverseLayout ? 1 : -1;
                fill(recycler, this.mRenderState, state, false);
            } else {
                r5 = 0;
            }
            if (decoratedMeasurement > 0) {
                updateRenderStateToFillEnd(getPosition(getChildClosestToEnd()), i6);
                this.mRenderState.mExtra = decoratedMeasurement;
                this.mRenderState.mAvailable = r5;
                this.mRenderState.mCurrentPosition += this.mShouldReverseLayout ? -1 : 1;
                fill(recycler, this.mRenderState, state, r5);
            }
            savedState = null;
            this.mRenderState.mScrapList = null;
        }
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mLastStackFromEnd = this.mStackFromEnd;
        this.mPendingSavedState = savedState;
        validateChildOrder();
    }

    private int fixLayoutEndGap(int i, RecyclerView.Recycler recycler, RecyclerView.State state, boolean z) {
        int endAfterPadding;
        int endAfterPadding2 = this.mOrientationHelper.getEndAfterPadding() - i;
        if (endAfterPadding2 <= 0) {
            return 0;
        }
        int i2 = -scrollBy(-endAfterPadding2, recycler, state);
        int i3 = i + i2;
        if (!z || (endAfterPadding = this.mOrientationHelper.getEndAfterPadding() - i3) <= 0) {
            return i2;
        }
        this.mOrientationHelper.offsetChildren(endAfterPadding);
        return endAfterPadding + i2;
    }

    private int fixLayoutStartGap(int i, RecyclerView.Recycler recycler, RecyclerView.State state, boolean z) {
        int startAfterPadding;
        int startAfterPadding2 = i - this.mOrientationHelper.getStartAfterPadding();
        if (startAfterPadding2 <= 0) {
            return 0;
        }
        int i2 = -scrollBy(startAfterPadding2, recycler, state);
        int i3 = i + i2;
        if (!z || (startAfterPadding = i3 - this.mOrientationHelper.getStartAfterPadding()) <= 0) {
            return i2;
        }
        this.mOrientationHelper.offsetChildren(-startAfterPadding);
        return i2 - startAfterPadding;
    }

    private void updateRenderStateToFillEnd(int i, int i2) {
        this.mRenderState.mAvailable = this.mOrientationHelper.getEndAfterPadding() - i2;
        this.mRenderState.mItemDirection = this.mShouldReverseLayout ? -1 : 1;
        this.mRenderState.mCurrentPosition = i;
        this.mRenderState.mLayoutDirection = 1;
        this.mRenderState.mOffset = i2;
        this.mRenderState.mScrollingOffset = Integer.MIN_VALUE;
    }

    private void updateRenderStateToFillStart(int i, int i2) {
        this.mRenderState.mAvailable = i2 - this.mOrientationHelper.getStartAfterPadding();
        this.mRenderState.mCurrentPosition = i;
        this.mRenderState.mItemDirection = this.mShouldReverseLayout ? 1 : -1;
        this.mRenderState.mLayoutDirection = -1;
        this.mRenderState.mOffset = i2;
        this.mRenderState.mScrollingOffset = Integer.MIN_VALUE;
    }

    private boolean isLayoutRTL() {
        return getLayoutDirection() == 1;
    }

    void ensureRenderState() {
        if (this.mRenderState == null) {
            this.mRenderState = new RenderState();
        }
        if (this.mOrientationHelper == null) {
            this.mOrientationHelper = this.mOrientation == 0 ? createHorizontalOrientationHelper() : createVerticalOrientationHelper();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void scrollToPosition(int i) {
        this.mPendingScrollPosition = i;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        requestLayout();
    }

    public void scrollToPositionWithOffset(int i, int i2) {
        this.mPendingScrollPosition = i;
        this.mPendingScrollPositionOffset = i2;
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollHorizontallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.mOrientation == 1) {
            return 0;
        }
        return scrollBy(i, recycler, state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollVerticallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.mOrientation == 0) {
            return 0;
        }
        return scrollBy(i, recycler, state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollOffset(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        int position = getPosition(getChildClosestToStart());
        return this.mShouldReverseLayout ? (state.getItemCount() - 1) - position : position;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollOffset(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        int position = getPosition(getChildClosestToStart());
        return this.mShouldReverseLayout ? (state.getItemCount() - 1) - position : position;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollExtent(RecyclerView.State state) {
        return getChildCount();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollExtent(RecyclerView.State state) {
        return getChildCount();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollRange(RecyclerView.State state) {
        return state.getItemCount();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollRange(RecyclerView.State state) {
        return state.getItemCount();
    }

    private void updateRenderState(int i, int i2, boolean z, RecyclerView.State state) {
        int startAfterPadding;
        this.mRenderState.mExtra = getExtraLayoutSpace(state);
        this.mRenderState.mLayoutDirection = i;
        if (i == 1) {
            View childClosestToEnd = getChildClosestToEnd();
            this.mRenderState.mItemDirection = this.mShouldReverseLayout ? -1 : 1;
            this.mRenderState.mCurrentPosition = getPosition(childClosestToEnd) + this.mRenderState.mItemDirection;
            this.mRenderState.mOffset = this.mOrientationHelper.getDecoratedEnd(childClosestToEnd);
            startAfterPadding = this.mOrientationHelper.getDecoratedEnd(childClosestToEnd) - this.mOrientationHelper.getEndAfterPadding();
        } else {
            View childClosestToStart = getChildClosestToStart();
            this.mRenderState.mItemDirection = this.mShouldReverseLayout ? 1 : -1;
            this.mRenderState.mCurrentPosition = getPosition(childClosestToStart) + this.mRenderState.mItemDirection;
            this.mRenderState.mOffset = this.mOrientationHelper.getDecoratedStart(childClosestToStart);
            startAfterPadding = (-this.mOrientationHelper.getDecoratedStart(childClosestToStart)) + this.mOrientationHelper.getStartAfterPadding();
        }
        this.mRenderState.mAvailable = i2;
        if (z) {
            this.mRenderState.mAvailable -= startAfterPadding;
        }
        this.mRenderState.mScrollingOffset = startAfterPadding;
    }

    private int scrollBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (getChildCount() == 0 || i == 0) {
            return 0;
        }
        ensureRenderState();
        int i2 = i > 0 ? 1 : -1;
        int iAbs = Math.abs(i);
        updateRenderState(i2, iAbs, true, state);
        int iFill = this.mRenderState.mScrollingOffset + fill(recycler, this.mRenderState, state, false);
        if (iFill < 0) {
            Log.d(TAG, "Don't have any more elements to scroll");
            return 0;
        }
        int i3 = iAbs > iFill ? i2 * iFill : i;
        this.mOrientationHelper.offsetChildren(-i3);
        Log.d(TAG, "scroll req: " + i + " scrolled: " + i3);
        return i3;
    }

    private void recycleChildren(RecyclerView.Recycler recycler, int i, int i2) {
        if (i == i2) {
            return;
        }
        Log.d(TAG, "Recycling " + Math.abs(i - i2) + " items");
        if (i2 <= i) {
            while (i > i2) {
                removeAndRecycleViewAt(i, recycler);
                i--;
            }
        } else {
            for (int i3 = i2 - 1; i3 >= i; i3--) {
                removeAndRecycleViewAt(i3, recycler);
            }
        }
    }

    private void recycleViewsFromStart(RecyclerView.Recycler recycler, int i) {
        if (i < 0) {
            Log.d(TAG, "Called recycle from start with a negative value. This might happen during layout changes but may be sign of a bug");
            return;
        }
        int startAfterPadding = (this.mOrientationHelper.getStartAfterPadding() + i) - this.mHeaderIncrementFixer;
        int childCount = getChildCount();
        if (!this.mShouldReverseLayout) {
            for (int i2 = 0; i2 < childCount; i2++) {
                if (this.mOrientationHelper.getDecoratedEnd(getChildAt(i2)) > startAfterPadding) {
                    recycleChildren(recycler, 0, i2);
                    return;
                }
            }
            return;
        }
        int i3 = childCount - 1;
        for (int i4 = i3; i4 >= 0; i4--) {
            if (this.mOrientationHelper.getDecoratedEnd(getChildAt(i4)) > startAfterPadding) {
                recycleChildren(recycler, i3, i4);
                return;
            }
        }
    }

    private void recycleViewsFromEnd(RecyclerView.Recycler recycler, int i) {
        int childCount = getChildCount();
        if (i < 0) {
            Log.d(TAG, "Called recycle from end with a negative value. This might happen during layout changes but may be sign of a bug");
            return;
        }
        int endAfterPadding = (this.mOrientationHelper.getEndAfterPadding() - i) + this.mHeaderIncrementFixer;
        if (this.mShouldReverseLayout) {
            for (int i2 = 0; i2 < childCount; i2++) {
                if (this.mOrientationHelper.getDecoratedStart(getChildAt(i2)) < endAfterPadding) {
                    recycleChildren(recycler, 0, i2);
                    return;
                }
            }
            return;
        }
        int i3 = childCount - 1;
        for (int i4 = i3; i4 >= 0; i4--) {
            if (this.mOrientationHelper.getDecoratedStart(getChildAt(i4)) < endAfterPadding) {
                recycleChildren(recycler, i3, i4);
                return;
            }
        }
    }

    private void recycleByRenderState(RecyclerView.Recycler recycler, RenderState renderState) {
        if (renderState.mLayoutDirection == -1) {
            recycleViewsFromEnd(recycler, renderState.mScrollingOffset);
        } else {
            recycleViewsFromStart(recycler, renderState.mScrollingOffset);
        }
    }

    private int fill(RecyclerView.Recycler recycler, RenderState renderState, RecyclerView.State state, boolean z) {
        int paddingTop;
        int i;
        int i2;
        int i3;
        int paddingLeft;
        int decoratedMeasurementInOther;
        int i4;
        int i5 = renderState.mAvailable;
        if (renderState.mScrollingOffset != Integer.MIN_VALUE) {
            if (renderState.mAvailable < 0) {
                renderState.mScrollingOffset += renderState.mAvailable;
            }
            recycleByRenderState(recycler, renderState);
        }
        int i6 = renderState.mAvailable + renderState.mExtra + this.mHeaderIncrementFixer;
        while (true) {
            if (i6 > 0 && renderState.hasMore(state)) {
                View next = renderState.next(recycler);
                if (next == null) {
                    if (renderState.mScrapList == null) {
                        throw new RuntimeException("received null view when unexpected");
                    }
                } else {
                    RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) next.getLayoutParams();
                    if (!layoutParams.isItemRemoved() && this.mRenderState.mScrapList == null) {
                        if (this.mShouldReverseLayout == (renderState.mLayoutDirection == -1)) {
                            addView(next);
                        } else {
                            addView(next, 0);
                        }
                    }
                    measureChildWithMargins(next, 0, 0);
                    int decoratedMeasurement = this.mOrientationHelper.getDecoratedMeasurement(next);
                    if (this.mOrientation == 1) {
                        if (isLayoutRTL()) {
                            decoratedMeasurementInOther = getWidth() - getPaddingRight();
                            paddingLeft = decoratedMeasurementInOther - this.mOrientationHelper.getDecoratedMeasurementInOther(next);
                        } else {
                            paddingLeft = getPaddingLeft();
                            decoratedMeasurementInOther = this.mOrientationHelper.getDecoratedMeasurementInOther(next) + paddingLeft;
                        }
                        if (renderState.mLayoutDirection == -1) {
                            i4 = renderState.mOffset;
                            paddingTop = renderState.mOffset - decoratedMeasurement;
                        } else {
                            paddingTop = renderState.mOffset;
                            i4 = renderState.mOffset + decoratedMeasurement;
                        }
                        i3 = decoratedMeasurementInOther;
                        i2 = paddingLeft;
                        i = i4;
                    } else {
                        paddingTop = getPaddingTop();
                        int decoratedMeasurementInOther2 = this.mOrientationHelper.getDecoratedMeasurementInOther(next) + paddingTop;
                        if (renderState.mLayoutDirection == -1) {
                            i = decoratedMeasurementInOther2;
                            i3 = renderState.mOffset;
                            i2 = renderState.mOffset - decoratedMeasurement;
                        } else {
                            i = decoratedMeasurementInOther2;
                            i2 = renderState.mOffset;
                            i3 = renderState.mOffset + decoratedMeasurement;
                        }
                    }
                    int i7 = paddingTop;
                    layoutDecorated(next, i2 + layoutParams.leftMargin, i7 + layoutParams.topMargin, i3 - layoutParams.rightMargin, i - layoutParams.bottomMargin);
                    Log.d(TAG, "laid out child at position " + getPosition(next) + ", with l:" + (i2 + layoutParams.leftMargin) + ", t:" + (i7 + layoutParams.topMargin) + ", r:" + (i3 - layoutParams.rightMargin) + ", b:" + (i - layoutParams.bottomMargin));
                    renderState.mOffset = renderState.mOffset + (renderState.mLayoutDirection * decoratedMeasurement);
                    if (!layoutParams.isItemRemoved()) {
                        renderState.mAvailable -= decoratedMeasurement;
                        i6 -= decoratedMeasurement;
                    }
                    if (renderState.mScrollingOffset != Integer.MIN_VALUE) {
                        renderState.mScrollingOffset += decoratedMeasurement;
                        if (renderState.mAvailable < 0) {
                            renderState.mScrollingOffset += renderState.mAvailable;
                        }
                        recycleByRenderState(recycler, renderState);
                    }
                    if ((z && next.isFocusable()) || (state != null && state.getTargetScrollPosition() == getPosition(next))) {
                        break;
                    }
                }
            } else {
                break;
            }
        }
        validateChildOrder();
        return i5 - renderState.mAvailable;
    }

    private int convertFocusDirectionToLayoutDirection(int i) {
        if (i == 1) {
            return -1;
        }
        if (i == 2) {
            return 1;
        }
        if (i == 17) {
            return this.mOrientation == 0 ? -1 : Integer.MIN_VALUE;
        }
        if (i == 33) {
            return this.mOrientation == 1 ? -1 : Integer.MIN_VALUE;
        }
        if (i == 66) {
            return this.mOrientation == 0 ? 1 : Integer.MIN_VALUE;
        }
        if (i == 130) {
            return this.mOrientation == 1 ? 1 : Integer.MIN_VALUE;
        }
        Log.d(TAG, "Unknown focus request:" + i);
        return Integer.MIN_VALUE;
    }

    private View getChildClosestToStart() {
        return getChildAt(this.mShouldReverseLayout ? getChildCount() - 1 : 0);
    }

    private View getChildClosestToEnd() {
        return getChildAt(this.mShouldReverseLayout ? 0 : getChildCount() - 1);
    }

    public int findFirstVisibleItemPosition() {
        return findOneVisibleChild(0, getChildCount(), false);
    }

    public int findFirstCompletelyVisibleItemPosition() {
        return findOneVisibleChild(0, getChildCount(), true);
    }

    public int findLastVisibleItemPosition() {
        return findOneVisibleChild(getChildCount() - 1, -1, false);
    }

    public int findLastCompletelyVisibleItemPosition() {
        return findOneVisibleChild(getChildCount() - 1, -1, true);
    }

    int findOneVisibleChild(int i, int i2, boolean z) {
        int startAfterPadding = this.mOrientationHelper.getStartAfterPadding();
        int endAfterPadding = this.mOrientationHelper.getEndAfterPadding();
        int i3 = i2 > i ? 1 : -1;
        while (i != i2) {
            View childAt = getChildAt(i);
            int decoratedStart = this.mOrientationHelper.getDecoratedStart(childAt);
            int decoratedEnd = this.mOrientationHelper.getDecoratedEnd(childAt);
            if (decoratedStart < endAfterPadding && decoratedEnd > startAfterPadding) {
                if (!z) {
                    return getPosition(childAt);
                }
                if (decoratedStart >= startAfterPadding && decoratedEnd <= endAfterPadding) {
                    return getPosition(childAt);
                }
            }
            i += i3;
        }
        return -1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public View onFocusSearchFailed(View view, int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        int iConvertFocusDirectionToLayoutDirection;
        View childClosestToEnd;
        View childClosestToEnd2;
        resolveShouldLayoutReverse();
        if (getChildCount() == 0 || (iConvertFocusDirectionToLayoutDirection = convertFocusDirectionToLayoutDirection(i)) == Integer.MIN_VALUE) {
            return null;
        }
        if (iConvertFocusDirectionToLayoutDirection == -1) {
            childClosestToEnd = getChildClosestToStart();
        } else {
            childClosestToEnd = getChildClosestToEnd();
        }
        ensureRenderState();
        updateRenderState(iConvertFocusDirectionToLayoutDirection, (int) ((this.mOrientationHelper.getEndAfterPadding() - this.mOrientationHelper.getStartAfterPadding()) * MAX_SCROLL_FACTOR), false, state);
        this.mRenderState.mScrollingOffset = Integer.MIN_VALUE;
        fill(recycler, this.mRenderState, state, true);
        if (iConvertFocusDirectionToLayoutDirection == -1) {
            childClosestToEnd2 = getChildClosestToStart();
        } else {
            childClosestToEnd2 = getChildClosestToEnd();
        }
        if (childClosestToEnd2 == childClosestToEnd || !childClosestToEnd2.isFocusable()) {
            return null;
        }
        return childClosestToEnd2;
    }

    private void logChildren() {
        Log.d(TAG, "internal representation of views on the screen");
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            Log.d(TAG, "item " + getPosition(childAt) + ", coord:" + this.mOrientationHelper.getDecoratedStart(childAt));
        }
        Log.d(TAG, "==============");
    }

    private void validateChildOrder() {
        Log.d(TAG, "validating child count " + getChildCount());
        if (getChildCount() < 1) {
            return;
        }
        int position = getPosition(getChildAt(0));
        int decoratedStart = this.mOrientationHelper.getDecoratedStart(getChildAt(0));
        if (this.mShouldReverseLayout) {
            for (int i = 1; i < getChildCount(); i++) {
                View childAt = getChildAt(i);
                int position2 = getPosition(childAt);
                int decoratedStart2 = this.mOrientationHelper.getDecoratedStart(childAt);
                if (position2 < position) {
                    logChildren();
                    StringBuilder sb = new StringBuilder();
                    sb.append("detected invalid position. loc invalid? ");
                    sb.append(decoratedStart2 < decoratedStart);
                    throw new RuntimeException(sb.toString());
                }
                if (decoratedStart2 > decoratedStart) {
                    logChildren();
                    throw new RuntimeException("detected invalid location");
                }
            }
            return;
        }
        for (int i2 = 1; i2 < getChildCount(); i2++) {
            View childAt2 = getChildAt(i2);
            int position3 = getPosition(childAt2);
            int decoratedStart3 = this.mOrientationHelper.getDecoratedStart(childAt2);
            if (position3 < position) {
                logChildren();
                StringBuilder sb2 = new StringBuilder();
                sb2.append("detected invalid position. loc invalid? ");
                sb2.append(decoratedStart3 < decoratedStart);
                throw new RuntimeException(sb2.toString());
            }
            if (decoratedStart3 < decoratedStart) {
                logChildren();
                throw new RuntimeException("detected invalid location");
            }
        }
    }

    private static class RenderState {
        static final int INVALID_LAYOUT = Integer.MIN_VALUE;
        static final int ITEM_DIRECTION_HEAD = -1;
        static final int ITEM_DIRECTION_TAIL = 1;
        static final int LAYOUT_END = 1;
        static final int LAYOUT_START = -1;
        static final int SCOLLING_OFFSET_NaN = Integer.MIN_VALUE;
        static final String TAG = "LinearLayoutManager#RenderState";
        int mAvailable;
        int mCurrentPosition;
        int mExtra;
        int mItemDirection;
        int mLayoutDirection;
        int mOffset;
        List<RecyclerView.ViewHolder> mScrapList;
        int mScrollingOffset;

        private RenderState() {
            this.mExtra = 0;
            this.mScrapList = null;
        }

        boolean hasMore(RecyclerView.State state) {
            int i = this.mCurrentPosition;
            return i >= 0 && i < state.getItemCount();
        }

        View next(RecyclerView.Recycler recycler) {
            if (this.mScrapList != null) {
                return nextFromLimitedList();
            }
            View viewForPosition = recycler.getViewForPosition(this.mCurrentPosition);
            this.mCurrentPosition += this.mItemDirection;
            return viewForPosition;
        }

        private View nextFromLimitedList() {
            int size = this.mScrapList.size();
            int i = Integer.MAX_VALUE;
            RecyclerView.ViewHolder viewHolder = null;
            for (int i2 = 0; i2 < size; i2++) {
                RecyclerView.ViewHolder viewHolder2 = this.mScrapList.get(i2);
                int position = (viewHolder2.getPosition() - this.mCurrentPosition) * this.mItemDirection;
                if (position >= 0 && position < i) {
                    viewHolder = viewHolder2;
                    if (position == 0) {
                        break;
                    }
                    i = position;
                }
            }
            if (viewHolder == null) {
                return null;
            }
            this.mCurrentPosition = viewHolder.getPosition() + this.mItemDirection;
            return viewHolder.itemView;
        }
    }

    public int getHeaderIncrementFixer() {
        return this.mHeaderIncrementFixer;
    }

    public void setHeaderIncrementFixer(final View view) {
        view.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.texa.careapp.views.HeaderLayoutManagerFixed.2
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                if (Build.VERSION.SDK_INT >= 16) {
                    view.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                } else {
                    view.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                }
                HeaderLayoutManagerFixed.this.mHeaderIncrementFixer = view.getHeight();
            }
        });
    }

    OrientationHelper createVerticalOrientationHelper() {
        return new OrientationHelper() { // from class: com.texa.careapp.views.HeaderLayoutManagerFixed.3
            @Override // com.texa.careapp.views.HeaderLayoutManagerFixed.OrientationHelper
            public int getEndAfterPadding() {
                return HeaderLayoutManagerFixed.this.getHeight() - HeaderLayoutManagerFixed.this.getPaddingBottom();
            }

            @Override // com.texa.careapp.views.HeaderLayoutManagerFixed.OrientationHelper
            public void offsetChildren(int i) {
                HeaderLayoutManagerFixed.this.offsetChildrenVertical(i);
            }

            @Override // com.texa.careapp.views.HeaderLayoutManagerFixed.OrientationHelper
            public int getStartAfterPadding() {
                return HeaderLayoutManagerFixed.this.getPaddingTop();
            }

            @Override // com.texa.careapp.views.HeaderLayoutManagerFixed.OrientationHelper
            public int getDecoratedMeasurement(View view) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                return HeaderLayoutManagerFixed.this.getDecoratedMeasuredHeight(view) + layoutParams.topMargin + layoutParams.bottomMargin;
            }

            @Override // com.texa.careapp.views.HeaderLayoutManagerFixed.OrientationHelper
            public int getDecoratedMeasurementInOther(View view) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                return HeaderLayoutManagerFixed.this.getDecoratedMeasuredWidth(view) + layoutParams.leftMargin + layoutParams.rightMargin;
            }

            @Override // com.texa.careapp.views.HeaderLayoutManagerFixed.OrientationHelper
            public int getDecoratedEnd(View view) {
                return HeaderLayoutManagerFixed.this.getDecoratedBottom(view) + ((RecyclerView.LayoutParams) view.getLayoutParams()).bottomMargin;
            }

            @Override // com.texa.careapp.views.HeaderLayoutManagerFixed.OrientationHelper
            public int getDecoratedStart(View view) {
                return HeaderLayoutManagerFixed.this.getDecoratedTop(view) - ((RecyclerView.LayoutParams) view.getLayoutParams()).topMargin;
            }

            @Override // com.texa.careapp.views.HeaderLayoutManagerFixed.OrientationHelper
            public int getTotalSpace() {
                return (HeaderLayoutManagerFixed.this.getHeight() - HeaderLayoutManagerFixed.this.getPaddingTop()) - HeaderLayoutManagerFixed.this.getPaddingBottom();
            }
        };
    }

    OrientationHelper createHorizontalOrientationHelper() {
        return new OrientationHelper() { // from class: com.texa.careapp.views.HeaderLayoutManagerFixed.4
            @Override // com.texa.careapp.views.HeaderLayoutManagerFixed.OrientationHelper
            public int getEndAfterPadding() {
                return HeaderLayoutManagerFixed.this.getWidth() - HeaderLayoutManagerFixed.this.getPaddingRight();
            }

            @Override // com.texa.careapp.views.HeaderLayoutManagerFixed.OrientationHelper
            public void offsetChildren(int i) {
                HeaderLayoutManagerFixed.this.offsetChildrenHorizontal(i);
            }

            @Override // com.texa.careapp.views.HeaderLayoutManagerFixed.OrientationHelper
            public int getStartAfterPadding() {
                return HeaderLayoutManagerFixed.this.getPaddingLeft();
            }

            @Override // com.texa.careapp.views.HeaderLayoutManagerFixed.OrientationHelper
            public int getDecoratedMeasurement(View view) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                return HeaderLayoutManagerFixed.this.getDecoratedMeasuredWidth(view) + layoutParams.leftMargin + layoutParams.rightMargin;
            }

            @Override // com.texa.careapp.views.HeaderLayoutManagerFixed.OrientationHelper
            public int getDecoratedMeasurementInOther(View view) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                return HeaderLayoutManagerFixed.this.getDecoratedMeasuredHeight(view) + layoutParams.topMargin + layoutParams.bottomMargin;
            }

            @Override // com.texa.careapp.views.HeaderLayoutManagerFixed.OrientationHelper
            public int getDecoratedEnd(View view) {
                return HeaderLayoutManagerFixed.this.getDecoratedRight(view) + ((RecyclerView.LayoutParams) view.getLayoutParams()).rightMargin;
            }

            @Override // com.texa.careapp.views.HeaderLayoutManagerFixed.OrientationHelper
            public int getDecoratedStart(View view) {
                return HeaderLayoutManagerFixed.this.getDecoratedLeft(view) - ((RecyclerView.LayoutParams) view.getLayoutParams()).leftMargin;
            }

            @Override // com.texa.careapp.views.HeaderLayoutManagerFixed.OrientationHelper
            public int getTotalSpace() {
                return (HeaderLayoutManagerFixed.this.getWidth() - HeaderLayoutManagerFixed.this.getPaddingLeft()) - HeaderLayoutManagerFixed.this.getPaddingRight();
            }
        };
    }

    static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.texa.careapp.views.HeaderLayoutManagerFixed.SavedState.1
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
        boolean mAnchorLayoutFromEnd;
        int mAnchorOffset;
        int mAnchorPosition;
        int mOrientation;
        boolean mReverseLayout;
        boolean mStackFromEnd;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public SavedState() {
        }

        SavedState(Parcel parcel) {
            this.mOrientation = parcel.readInt();
            this.mAnchorPosition = parcel.readInt();
            this.mAnchorOffset = parcel.readInt();
            this.mReverseLayout = parcel.readInt() == 1;
            this.mStackFromEnd = parcel.readInt() == 1;
            this.mAnchorLayoutFromEnd = parcel.readInt() == 1;
        }

        public SavedState(SavedState savedState) {
            this.mOrientation = savedState.mOrientation;
            this.mAnchorPosition = savedState.mAnchorPosition;
            this.mAnchorOffset = savedState.mAnchorOffset;
            this.mReverseLayout = savedState.mReverseLayout;
            this.mStackFromEnd = savedState.mStackFromEnd;
            this.mAnchorLayoutFromEnd = savedState.mAnchorLayoutFromEnd;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.mOrientation);
            parcel.writeInt(this.mAnchorPosition);
            parcel.writeInt(this.mAnchorOffset);
            parcel.writeInt(this.mReverseLayout ? 1 : 0);
            parcel.writeInt(this.mStackFromEnd ? 1 : 0);
            parcel.writeInt(this.mAnchorLayoutFromEnd ? 1 : 0);
        }
    }
}
