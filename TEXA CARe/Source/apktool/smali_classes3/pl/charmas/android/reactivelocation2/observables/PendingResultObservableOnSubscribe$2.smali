.class Lpl/charmas/android/reactivelocation2/observables/PendingResultObservableOnSubscribe$2;
.super Ljava/lang/Object;
.source "PendingResultObservableOnSubscribe.java"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/charmas/android/reactivelocation2/observables/PendingResultObservableOnSubscribe;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/charmas/android/reactivelocation2/observables/PendingResultObservableOnSubscribe;


# direct methods
.method constructor <init>(Lpl/charmas/android/reactivelocation2/observables/PendingResultObservableOnSubscribe;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lpl/charmas/android/reactivelocation2/observables/PendingResultObservableOnSubscribe$2;->this$0:Lpl/charmas/android/reactivelocation2/observables/PendingResultObservableOnSubscribe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 38
    iget-object v0, p0, Lpl/charmas/android/reactivelocation2/observables/PendingResultObservableOnSubscribe$2;->this$0:Lpl/charmas/android/reactivelocation2/observables/PendingResultObservableOnSubscribe;

    invoke-static {v0}, Lpl/charmas/android/reactivelocation2/observables/PendingResultObservableOnSubscribe;->access$000(Lpl/charmas/android/reactivelocation2/observables/PendingResultObservableOnSubscribe;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lpl/charmas/android/reactivelocation2/observables/PendingResultObservableOnSubscribe$2;->this$0:Lpl/charmas/android/reactivelocation2/observables/PendingResultObservableOnSubscribe;

    invoke-static {v0}, Lpl/charmas/android/reactivelocation2/observables/PendingResultObservableOnSubscribe;->access$100(Lpl/charmas/android/reactivelocation2/observables/PendingResultObservableOnSubscribe;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/PendingResult;->cancel()V

    :cond_0
    return-void
.end method
