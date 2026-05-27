package com.timehop.stickyheadersrecyclerview;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.SparseArray;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.timehop.stickyheadersrecyclerview.caching.HeaderProvider;
import com.timehop.stickyheadersrecyclerview.caching.HeaderViewCache;
import com.timehop.stickyheadersrecyclerview.calculation.DimensionCalculator;
import com.timehop.stickyheadersrecyclerview.rendering.HeaderRenderer;
import com.timehop.stickyheadersrecyclerview.util.LinearLayoutOrientationProvider;
import com.timehop.stickyheadersrecyclerview.util.OrientationProvider;

/* JADX INFO: loaded from: classes2.dex */
public class StickyRecyclerHeadersDecoration extends RecyclerView.ItemDecoration {
    private final StickyRecyclerHeadersAdapter mAdapter;
    private final DimensionCalculator mDimensionCalculator;
    private final HeaderPositionCalculator mHeaderPositionCalculator;
    private final HeaderProvider mHeaderProvider;
    private final SparseArray<Rect> mHeaderRects;
    private final OrientationProvider mOrientationProvider;
    private final HeaderRenderer mRenderer;
    private final Rect mTempRect;

    public StickyRecyclerHeadersDecoration(StickyRecyclerHeadersAdapter stickyRecyclerHeadersAdapter) {
        this(stickyRecyclerHeadersAdapter, new LinearLayoutOrientationProvider(), new DimensionCalculator());
    }

    private StickyRecyclerHeadersDecoration(StickyRecyclerHeadersAdapter stickyRecyclerHeadersAdapter, OrientationProvider orientationProvider, DimensionCalculator dimensionCalculator) {
        this(stickyRecyclerHeadersAdapter, orientationProvider, dimensionCalculator, new HeaderRenderer(orientationProvider), new HeaderViewCache(stickyRecyclerHeadersAdapter, orientationProvider));
    }

    private StickyRecyclerHeadersDecoration(StickyRecyclerHeadersAdapter stickyRecyclerHeadersAdapter, OrientationProvider orientationProvider, DimensionCalculator dimensionCalculator, HeaderRenderer headerRenderer, HeaderProvider headerProvider) {
        this(stickyRecyclerHeadersAdapter, headerRenderer, orientationProvider, dimensionCalculator, headerProvider, new HeaderPositionCalculator(stickyRecyclerHeadersAdapter, headerProvider, orientationProvider, dimensionCalculator));
    }

    private StickyRecyclerHeadersDecoration(StickyRecyclerHeadersAdapter stickyRecyclerHeadersAdapter, HeaderRenderer headerRenderer, OrientationProvider orientationProvider, DimensionCalculator dimensionCalculator, HeaderProvider headerProvider, HeaderPositionCalculator headerPositionCalculator) {
        this.mHeaderRects = new SparseArray<>();
        this.mTempRect = new Rect();
        this.mAdapter = stickyRecyclerHeadersAdapter;
        this.mHeaderProvider = headerProvider;
        this.mOrientationProvider = orientationProvider;
        this.mRenderer = headerRenderer;
        this.mDimensionCalculator = dimensionCalculator;
        this.mHeaderPositionCalculator = headerPositionCalculator;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        super.getItemOffsets(rect, view, recyclerView, state);
        int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
        if (childAdapterPosition != -1 && this.mHeaderPositionCalculator.hasNewHeader(childAdapterPosition, this.mOrientationProvider.isReverseLayout(recyclerView))) {
            setItemOffsetsForHeader(rect, getHeaderView(recyclerView, childAdapterPosition), this.mOrientationProvider.getOrientation(recyclerView));
        }
    }

    private void setItemOffsetsForHeader(Rect rect, View view, int i) {
        this.mDimensionCalculator.initMargins(this.mTempRect, view);
        if (i == 1) {
            rect.top = view.getHeight() + this.mTempRect.top + this.mTempRect.bottom;
        } else {
            rect.left = view.getWidth() + this.mTempRect.left + this.mTempRect.right;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        boolean zHasStickyHeader;
        super.onDrawOver(canvas, recyclerView, state);
        int childCount = recyclerView.getChildCount();
        if (childCount <= 0 || this.mAdapter.getItemCount() <= 0) {
            return;
        }
        for (int i = 0; i < childCount; i++) {
            View childAt = recyclerView.getChildAt(i);
            int childAdapterPosition = recyclerView.getChildAdapterPosition(childAt);
            if (childAdapterPosition != -1 && ((zHasStickyHeader = this.mHeaderPositionCalculator.hasStickyHeader(childAt, this.mOrientationProvider.getOrientation(recyclerView), childAdapterPosition)) || this.mHeaderPositionCalculator.hasNewHeader(childAdapterPosition, this.mOrientationProvider.isReverseLayout(recyclerView)))) {
                View header = this.mHeaderProvider.getHeader(recyclerView, childAdapterPosition);
                Rect rect = this.mHeaderRects.get(childAdapterPosition);
                if (rect == null) {
                    rect = new Rect();
                    this.mHeaderRects.put(childAdapterPosition, rect);
                }
                Rect rect2 = rect;
                this.mHeaderPositionCalculator.initHeaderBounds(rect2, recyclerView, header, childAt, zHasStickyHeader);
                this.mRenderer.drawHeader(recyclerView, canvas, header, rect2);
            }
        }
    }

    public int findHeaderPositionUnder(int i, int i2) {
        for (int i3 = 0; i3 < this.mHeaderRects.size(); i3++) {
            SparseArray<Rect> sparseArray = this.mHeaderRects;
            if (sparseArray.get(sparseArray.keyAt(i3)).contains(i, i2)) {
                return this.mHeaderRects.keyAt(i3);
            }
        }
        return -1;
    }

    public View getHeaderView(RecyclerView recyclerView, int i) {
        return this.mHeaderProvider.getHeader(recyclerView, i);
    }

    public void invalidateHeaders() {
        this.mHeaderProvider.invalidate();
    }
}
