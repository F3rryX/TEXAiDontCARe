.class Lcom/texa/careapp/views/RelativeTimeTextView$UpdateTimeRunnable;
.super Ljava/lang/Object;
.source "RelativeTimeTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/views/RelativeTimeTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateTimeRunnable"
.end annotation


# instance fields
.field private mRefTime:J

.field final synthetic this$0:Lcom/texa/careapp/views/RelativeTimeTextView;


# direct methods
.method constructor <init>(Lcom/texa/careapp/views/RelativeTimeTextView;J)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/texa/careapp/views/RelativeTimeTextView$UpdateTimeRunnable;->this$0:Lcom/texa/careapp/views/RelativeTimeTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput-wide p2, p0, Lcom/texa/careapp/views/RelativeTimeTextView$UpdateTimeRunnable;->mRefTime:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 284
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/texa/careapp/views/RelativeTimeTextView$UpdateTimeRunnable;->mRefTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    const-wide/32 v4, 0x5265c00

    const-wide/32 v6, 0x240c8400

    cmp-long v8, v0, v6

    if-lez v8, :cond_0

    move-wide v2, v6

    goto :goto_0

    :cond_0
    cmp-long v6, v0, v4

    if-lez v6, :cond_1

    move-wide v2, v4

    goto :goto_0

    :cond_1
    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    goto :goto_0

    :cond_2
    const-wide/32 v2, 0xea60

    .line 293
    :goto_0
    iget-object v0, p0, Lcom/texa/careapp/views/RelativeTimeTextView$UpdateTimeRunnable;->this$0:Lcom/texa/careapp/views/RelativeTimeTextView;

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v4, v5}, Lcom/texa/careapp/views/RelativeTimeTextView;->updateTextDisplay(J)V

    .line 294
    iget-object v0, p0, Lcom/texa/careapp/views/RelativeTimeTextView$UpdateTimeRunnable;->this$0:Lcom/texa/careapp/views/RelativeTimeTextView;

    invoke-static {v0}, Lcom/texa/careapp/views/RelativeTimeTextView;->access$200(Lcom/texa/careapp/views/RelativeTimeTextView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
