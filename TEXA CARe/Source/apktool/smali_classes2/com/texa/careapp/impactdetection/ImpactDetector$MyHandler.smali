.class Lcom/texa/careapp/impactdetection/ImpactDetector$MyHandler;
.super Landroid/os/Handler;
.source "ImpactDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/impactdetection/ImpactDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyHandler"
.end annotation


# instance fields
.field private final mImpactDetector:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/texa/careapp/impactdetection/ImpactDetector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/texa/careapp/impactdetection/ImpactDetector;",
            ">;)V"
        }
    .end annotation

    .line 1166
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1167
    iput-object p1, p0, Lcom/texa/careapp/impactdetection/ImpactDetector$MyHandler;->mImpactDetector:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1172
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1174
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1194
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/impactdetection/ImpactDetector$MyHandler;->mImpactDetector:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1195
    iget-object p1, p0, Lcom/texa/careapp/impactdetection/ImpactDetector$MyHandler;->mImpactDetector:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/impactdetection/ImpactDetector;

    invoke-static {p1}, Lcom/texa/careapp/impactdetection/ImpactDetector;->access$000(Lcom/texa/careapp/impactdetection/ImpactDetector;)V

    goto :goto_0

    .line 1188
    :cond_1
    iget-object p1, p0, Lcom/texa/careapp/impactdetection/ImpactDetector$MyHandler;->mImpactDetector:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1189
    iget-object p1, p0, Lcom/texa/careapp/impactdetection/ImpactDetector$MyHandler;->mImpactDetector:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/impactdetection/ImpactDetector;

    invoke-virtual {p1}, Lcom/texa/careapp/impactdetection/ImpactDetector;->onCheckCommunicationStatus2()V

    goto :goto_0

    .line 1182
    :cond_2
    iget-object p1, p0, Lcom/texa/careapp/impactdetection/ImpactDetector$MyHandler;->mImpactDetector:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1183
    iget-object p1, p0, Lcom/texa/careapp/impactdetection/ImpactDetector$MyHandler;->mImpactDetector:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/impactdetection/ImpactDetector;

    invoke-virtual {p1}, Lcom/texa/careapp/impactdetection/ImpactDetector;->onCheckCommunicationStatus1()V

    goto :goto_0

    .line 1176
    :cond_3
    iget-object p1, p0, Lcom/texa/careapp/impactdetection/ImpactDetector$MyHandler;->mImpactDetector:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1177
    iget-object p1, p0, Lcom/texa/careapp/impactdetection/ImpactDetector$MyHandler;->mImpactDetector:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/impactdetection/ImpactDetector;

    invoke-virtual {p1}, Lcom/texa/careapp/impactdetection/ImpactDetector;->onStopListenOnSensorsEvents()V

    :cond_4
    :goto_0
    return-void
.end method
