.class public Lcom/texa/careapp/views/ObservableWebView;
.super Landroid/webkit/WebView;
.source "ObservableWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/views/ObservableWebView$OnScrollChangedCallback;
    }
.end annotation


# instance fields
.field private mOnScrollChangedCallback:Lcom/texa/careapp/views/ObservableWebView$OnScrollChangedCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getOnScrollChangedCallback()Lcom/texa/careapp/views/ObservableWebView$OnScrollChangedCallback;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/texa/careapp/views/ObservableWebView;->mOnScrollChangedCallback:Lcom/texa/careapp/views/ObservableWebView$OnScrollChangedCallback;

    return-object v0
.end method

.method protected onScrollChanged(IIII)V
    .locals 1

    .line 30
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 31
    iget-object v0, p0, Lcom/texa/careapp/views/ObservableWebView;->mOnScrollChangedCallback:Lcom/texa/careapp/views/ObservableWebView$OnScrollChangedCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/texa/careapp/views/ObservableWebView$OnScrollChangedCallback;->onScroll(IIII)V

    :cond_0
    return-void
.end method

.method public setOnScrollChangedCallback(Lcom/texa/careapp/views/ObservableWebView$OnScrollChangedCallback;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/texa/careapp/views/ObservableWebView;->mOnScrollChangedCallback:Lcom/texa/careapp/views/ObservableWebView$OnScrollChangedCallback;

    return-void
.end method
