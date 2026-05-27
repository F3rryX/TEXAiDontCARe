package com.timehop.stickyheadersrecyclerview;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.timehop.stickyheadersrecyclerview.caching.HeaderProvider;
import com.timehop.stickyheadersrecyclerview.calculation.DimensionCalculator;
import com.timehop.stickyheadersrecyclerview.util.OrientationProvider;

/* JADX INFO: loaded from: classes2.dex */
public class HeaderPositionCalculator {
    private final StickyRecyclerHeadersAdapter mAdapter;
    private final DimensionCalculator mDimensionCalculator;
    private final HeaderProvider mHeaderProvider;
    private final OrientationProvider mOrientationProvider;
    private final Rect mTempRect1 = new Rect();
    private final Rect mTempRect2 = new Rect();

    public HeaderPositionCalculator(StickyRecyclerHeadersAdapter stickyRecyclerHeadersAdapter, HeaderProvider headerProvider, OrientationProvider orientationProvider, DimensionCalculator dimensionCalculator) {
        this.mAdapter = stickyRecyclerHeadersAdapter;
        this.mHeaderProvider = headerProvider;
        this.mOrientationProvider = orientationProvider;
        this.mDimensionCalculator = dimensionCalculator;
    }

    public boolean hasStickyHeader(View view, int i, int i2) {
        int left;
        int i3;
        this.mDimensionCalculator.initMargins(this.mTempRect1, view);
        if (i == 1) {
            left = view.getTop();
            i3 = this.mTempRect1.top;
        } else {
            left = view.getLeft();
            i3 = this.mTempRect1.left;
        }
        return left <= i3 && this.mAdapter.getHeaderId(i2) >= 0;
    }

    public boolean hasNewHeader(int i, boolean z) {
        if (indexOutOfBounds(i)) {
            return false;
        }
        long headerId = this.mAdapter.getHeaderId(i);
        if (headerId < 0) {
            return false;
        }
        int i2 = (z ? 1 : -1) + i;
        return i == (z ? this.mAdapter.getItemCount() - 1 : 0) || headerId != (indexOutOfBounds(i2) ? -1L : this.mAdapter.getHeaderId(i2));
    }

    private boolean indexOutOfBounds(int i) {
        return i < 0 || i >= this.mAdapter.getItemCount();
    }

    public void initHeaderBounds(Rect rect, RecyclerView recyclerView, View view, View view2, boolean z) {
        initDefaultHeaderOffset(rect, recyclerView, view, view2, this.mOrientationProvider.getOrientation(recyclerView));
        if (z && isStickyHeaderBeingPushedOffscreen(recyclerView, view)) {
            View firstViewUnobscuredByHeader = getFirstViewUnobscuredByHeader(recyclerView, view);
            translateHeaderWithNextHeader(recyclerView, this.mOrientationProvider.getOrientation(recyclerView), rect, view, firstViewUnobscuredByHeader, this.mHeaderProvider.getHeader(recyclerView, recyclerView.getChildAdapterPosition(firstViewUnobscuredByHeader)));
        }
    }

    private void initDefaultHeaderOffset(Rect rect, RecyclerView recyclerView, View view, View view2, int i) {
        int i2;
        int iMax;
        int iMax2;
        this.mDimensionCalculator.initMargins(this.mTempRect1, view);
        ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
        int i3 = 0;
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            int i4 = marginLayoutParams.leftMargin;
            i3 = marginLayoutParams.topMargin;
            i2 = i4;
        } else {
            i2 = 0;
        }
        if (i == 1) {
            iMax = (view2.getLeft() - i2) + this.mTempRect1.left;
            iMax2 = Math.max(((view2.getTop() - i3) - view.getHeight()) - this.mTempRect1.bottom, getListTop(recyclerView) + this.mTempRect1.top);
        } else {
            int top = (view2.getTop() - i3) + this.mTempRect1.top;
            iMax = Math.max(((view2.getLeft() - i2) - view.getWidth()) - this.mTempRect1.right, getListLeft(recyclerView) + this.mTempRect1.left);
            iMax2 = top;
        }
        rect.set(iMax, iMax2, view.getWidth() + iMax, view.getHeight() + iMax2);
    }

    private boolean isStickyHeaderBeingPushedOffscreen(RecyclerView recyclerView, View view) {
        View firstViewUnobscuredByHeader = getFirstViewUnobscuredByHeader(recyclerView, view);
        int childAdapterPosition = recyclerView.getChildAdapterPosition(firstViewUnobscuredByHeader);
        if (childAdapterPosition == -1) {
            return false;
        }
        boolean zIsReverseLayout = this.mOrientationProvider.isReverseLayout(recyclerView);
        if (childAdapterPosition > 0 && hasNewHeader(childAdapterPosition, zIsReverseLayout)) {
            View header = this.mHeaderProvider.getHeader(recyclerView, childAdapterPosition);
            this.mDimensionCalculator.initMargins(this.mTempRect1, header);
            this.mDimensionCalculator.initMargins(this.mTempRect2, view);
            if (this.mOrientationProvider.getOrientation(recyclerView) == 1) {
                if (((firstViewUnobscuredByHeader.getTop() - this.mTempRect1.bottom) - header.getHeight()) - this.mTempRect1.top < recyclerView.getPaddingTop() + view.getBottom() + this.mTempRect2.top + this.mTempRect2.bottom) {
                    return true;
                }
            } else if (((firstViewUnobscuredByHeader.getLeft() - this.mTempRect1.right) - header.getWidth()) - this.mTempRect1.left < recyclerView.getPaddingLeft() + view.getRight() + this.mTempRect2.left + this.mTempRect2.right) {
                return true;
            }
        }
        return false;
    }

    private void translateHeaderWithNextHeader(RecyclerView recyclerView, int i, Rect rect, View view, View view2, View view3) {
        this.mDimensionCalculator.initMargins(this.mTempRect1, view3);
        this.mDimensionCalculator.initMargins(this.mTempRect2, view);
        if (i == 1) {
            int listTop = getListTop(recyclerView) + this.mTempRect2.top + this.mTempRect2.bottom;
            int top = ((((view2.getTop() - view3.getHeight()) - this.mTempRect1.bottom) - this.mTempRect1.top) - view.getHeight()) - listTop;
            if (top < listTop) {
                rect.top += top;
                return;
            }
            return;
        }
        int listLeft = getListLeft(recyclerView) + this.mTempRect2.left + this.mTempRect2.right;
        int left = ((((view2.getLeft() - view3.getWidth()) - this.mTempRect1.right) - this.mTempRect1.left) - view.getWidth()) - listLeft;
        if (left < listLeft) {
            rect.left += left;
        }
    }

    private View getFirstViewUnobscuredByHeader(RecyclerView recyclerView, View view) {
        boolean zIsReverseLayout = this.mOrientationProvider.isReverseLayout(recyclerView);
        int i = zIsReverseLayout ? -1 : 1;
        for (int childCount = zIsReverseLayout ? recyclerView.getChildCount() - 1 : 0; childCount >= 0 && childCount <= recyclerView.getChildCount() - 1; childCount += i) {
            View childAt = recyclerView.getChildAt(childCount);
            if (!itemIsObscuredByHeader(recyclerView, childAt, view, this.mOrientationProvider.getOrientation(recyclerView))) {
                return childAt;
            }
        }
        return null;
    }

    private boolean itemIsObscuredByHeader(RecyclerView recyclerView, View view, View view2, int i) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        this.mDimensionCalculator.initMargins(this.mTempRect1, view2);
        int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
        if (childAdapterPosition == -1 || this.mHeaderProvider.getHeader(recyclerView, childAdapterPosition) != view2) {
            return false;
        }
        if (i == 1) {
            if (view.getTop() - layoutParams.topMargin > view2.getBottom() + this.mTempRect1.bottom + this.mTempRect1.top) {
                return false;
            }
        } else if (view.getLeft() - layoutParams.leftMargin > view2.getRight() + this.mTempRect1.right + this.mTempRect1.left) {
            return false;
        }
        return true;
    }

    private int getListTop(RecyclerView recyclerView) {
        if (recyclerView.getLayoutManager().getClipToPadding()) {
            return recyclerView.getPaddingTop();
        }
        return 0;
    }

    private int getListLeft(RecyclerView recyclerView) {
        if (recyclerView.getLayoutManager().getClipToPadding()) {
            return recyclerView.getPaddingLeft();
        }
        return 0;
    }
}
