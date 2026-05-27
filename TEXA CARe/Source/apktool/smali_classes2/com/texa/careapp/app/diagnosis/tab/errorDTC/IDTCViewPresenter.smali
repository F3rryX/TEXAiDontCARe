.class public interface abstract Lcom/texa/careapp/app/diagnosis/tab/errorDTC/IDTCViewPresenter;
.super Ljava/lang/Object;
.source "IDTCViewPresenter.java"


# virtual methods
.method public abstract afterViewInjection(Landroid/view/View;)V
.end method

.method public abstract destroySub()V
.end method

.method public abstract getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.end method

.method public abstract observeActiveLamps()V
.end method

.method public abstract updateAdapter(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/errorsDTC/LampStatus;",
            ">;)V"
        }
    .end annotation
.end method
