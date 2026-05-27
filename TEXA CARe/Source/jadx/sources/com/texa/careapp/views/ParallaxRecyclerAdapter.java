package com.texa.careapp.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.TranslateAnimation;
import android.widget.RelativeLayout;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ParallaxRecyclerAdapter<T> extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    private List<T> mData;
    private CustomRelativeWrapper mHeader;
    private OnClickEvent mOnClickEvent;
    private OnLongClickEvent mOnLongClickEvent;
    private OnParallaxScroll mParallaxScroll;
    private RecyclerView mRecyclerView;
    private float mScrollMultiplier = 0.5f;
    private boolean mShouldClipView = true;

    public interface OnClickEvent {
        void onClick(View view, int i);
    }

    public interface OnLongClickEvent {
        void onLongClick(View view, int i);
    }

    public interface OnParallaxScroll {
        void onParallaxScroll(float f, float f2, View view);
    }

    public static class VIEW_TYPES {
        public static final int FIRST_VIEW = 3;
        public static final int HEADER = 2;
        public static final int NORMAL = 1;
    }

    public abstract int getItemCountImpl(ParallaxRecyclerAdapter<T> parallaxRecyclerAdapter);

    public abstract void onBindViewHolderImpl(RecyclerView.ViewHolder viewHolder, ParallaxRecyclerAdapter<T> parallaxRecyclerAdapter, int i);

    public abstract RecyclerView.ViewHolder onCreateViewHolderImpl(ViewGroup viewGroup, ParallaxRecyclerAdapter<T> parallaxRecyclerAdapter, int i);

    public void translateHeader(float f) {
        float f2 = this.mScrollMultiplier * f;
        if (f < this.mHeader.getHeight()) {
            this.mHeader.setTranslationY(f2);
        } else if (f < this.mHeader.getHeight()) {
            TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, f2, f2);
            translateAnimation.setFillAfter(true);
            translateAnimation.setDuration(0L);
            this.mHeader.startAnimation(translateAnimation);
        }
        this.mHeader.setClipY(Math.round(f2));
        if (this.mParallaxScroll != null) {
            this.mParallaxScroll.onParallaxScroll(this.mRecyclerView.findViewHolderForAdapterPosition(0) != null ? Math.min(1.0f, f2 / (this.mHeader.getHeight() * this.mScrollMultiplier)) : 1.0f, f, this.mHeader);
        }
    }

    public void setParallaxHeader(View view, RecyclerView recyclerView) {
        this.mRecyclerView = recyclerView;
        CustomRelativeWrapper customRelativeWrapper = new CustomRelativeWrapper(view.getContext(), this.mShouldClipView);
        this.mHeader = customRelativeWrapper;
        customRelativeWrapper.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        this.mHeader.addView(view, new RelativeLayout.LayoutParams(-1, -1));
        recyclerView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.texa.careapp.views.ParallaxRecyclerAdapter.1
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView2, int i, int i2) {
                super.onScrolled(recyclerView2, i, i2);
                if (ParallaxRecyclerAdapter.this.mHeader != null) {
                    ParallaxRecyclerAdapter parallaxRecyclerAdapter = ParallaxRecyclerAdapter.this;
                    parallaxRecyclerAdapter.translateHeader(parallaxRecyclerAdapter.mRecyclerView.getLayoutManager().getChildAt(0) == ParallaxRecyclerAdapter.this.mHeader ? ParallaxRecyclerAdapter.this.mRecyclerView.computeVerticalScrollOffset() : ParallaxRecyclerAdapter.this.mHeader.getHeight());
                }
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        if (this.mHeader == null) {
            onBindViewHolderImpl(viewHolder, this, i);
        } else {
            if (i == 0) {
                return;
            }
            onBindViewHolderImpl(viewHolder, this, i - 1);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        RecyclerView recyclerView;
        RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition;
        if (i == 2 && this.mHeader != null) {
            return new ViewHolder(this.mHeader);
        }
        if (i == 3 && this.mHeader != null && (recyclerView = this.mRecyclerView) != null && (viewHolderFindViewHolderForAdapterPosition = recyclerView.findViewHolderForAdapterPosition(0)) != null) {
            translateHeader(-viewHolderFindViewHolderForAdapterPosition.itemView.getTop());
        }
        final RecyclerView.ViewHolder viewHolderOnCreateViewHolderImpl = onCreateViewHolderImpl(viewGroup, this, i);
        if (this.mOnClickEvent != null) {
            viewHolderOnCreateViewHolderImpl.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.views.ParallaxRecyclerAdapter$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m676xfd77e625(viewHolderOnCreateViewHolderImpl, view);
                }
            });
        }
        if (this.mOnLongClickEvent != null) {
            viewHolderOnCreateViewHolderImpl.itemView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.texa.careapp.views.ParallaxRecyclerAdapter$$ExternalSyntheticLambda1
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    return this.f$0.m677x37428804(viewHolderOnCreateViewHolderImpl, view);
                }
            });
        }
        return viewHolderOnCreateViewHolderImpl;
    }

    /* JADX INFO: renamed from: lambda$onCreateViewHolder$0$com-texa-careapp-views-ParallaxRecyclerAdapter, reason: not valid java name */
    public /* synthetic */ void m676xfd77e625(RecyclerView.ViewHolder viewHolder, View view) {
        this.mOnClickEvent.onClick(view, viewHolder.getAdapterPosition() - (this.mHeader == null ? 0 : 1));
    }

    /* JADX INFO: renamed from: lambda$onCreateViewHolder$1$com-texa-careapp-views-ParallaxRecyclerAdapter, reason: not valid java name */
    public /* synthetic */ boolean m677x37428804(RecyclerView.ViewHolder viewHolder, View view) {
        this.mOnLongClickEvent.onLongClick(view, viewHolder.getAdapterPosition() - (this.mHeader == null ? 0 : 1));
        return false;
    }

    public boolean hasHeader() {
        return this.mHeader != null;
    }

    public void setOnClickEvent(OnClickEvent onClickEvent) {
        this.mOnClickEvent = onClickEvent;
    }

    public void setOnLongClickEvent(OnLongClickEvent onLongClickEvent) {
        this.mOnLongClickEvent = onLongClickEvent;
    }

    public boolean isShouldClipView() {
        return this.mShouldClipView;
    }

    public void setShouldClipView(boolean z) {
        this.mShouldClipView = z;
    }

    public void setOnParallaxScroll(OnParallaxScroll onParallaxScroll) {
        this.mParallaxScroll = onParallaxScroll;
        onParallaxScroll.onParallaxScroll(0.0f, 0.0f, this.mHeader);
    }

    public ParallaxRecyclerAdapter(List<T> list) {
        this.mData = list;
    }

    public List<T> getData() {
        return this.mData;
    }

    public void setData(List<T> list) {
        this.mData = list;
        notifyDataSetChanged();
    }

    public void addItem(T t, int i) {
        this.mData.add(i, t);
        notifyItemInserted(i + (this.mHeader == null ? 0 : 1));
    }

    public void removeItem(T t) {
        int iIndexOf = this.mData.indexOf(t);
        if (iIndexOf < 0) {
            return;
        }
        this.mData.remove(t);
        notifyItemRemoved(iIndexOf + (this.mHeader == null ? 0 : 1));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return getItemCountImpl(this) + (this.mHeader == null ? 0 : 1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        if (i == 1) {
            return 3;
        }
        return (i != 0 || this.mHeader == null) ? 1 : 2;
    }

    static class ViewHolder extends RecyclerView.ViewHolder {
        public ViewHolder(View view) {
            super(view);
        }
    }

    static class CustomRelativeWrapper extends RelativeLayout {
        private int mOffset;
        private boolean mShouldClip;

        public CustomRelativeWrapper(Context context, boolean z) {
            super(context);
            this.mShouldClip = z;
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            if (this.mShouldClip) {
                canvas.clipRect(new Rect(getLeft(), getTop(), getRight(), getBottom() + this.mOffset));
            }
            super.dispatchDraw(canvas);
        }

        public void setClipY(int i) {
            this.mOffset = i;
            invalidate();
        }
    }

    public void setScrollMultiplier(float f) {
        this.mScrollMultiplier = f;
    }

    public float getScrollMultiplier() {
        return this.mScrollMultiplier;
    }
}
