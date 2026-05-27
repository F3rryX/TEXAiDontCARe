.class Lpl/charmas/android/reactivelocation2/DataBufferObservable$1$1;
.super Ljava/lang/Object;
.source "DataBufferObservable.java"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/charmas/android/reactivelocation2/DataBufferObservable$1;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/charmas/android/reactivelocation2/DataBufferObservable$1;


# direct methods
.method constructor <init>(Lpl/charmas/android/reactivelocation2/DataBufferObservable$1;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lpl/charmas/android/reactivelocation2/DataBufferObservable$1$1;->this$0:Lpl/charmas/android/reactivelocation2/DataBufferObservable$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lpl/charmas/android/reactivelocation2/DataBufferObservable$1$1;->this$0:Lpl/charmas/android/reactivelocation2/DataBufferObservable$1;

    iget-object v0, v0, Lpl/charmas/android/reactivelocation2/DataBufferObservable$1;->val$buffer:Lcom/google/android/gms/common/data/AbstractDataBuffer;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->release()V

    return-void
.end method
