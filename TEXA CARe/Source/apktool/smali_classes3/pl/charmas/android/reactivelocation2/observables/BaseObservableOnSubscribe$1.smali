.class Lpl/charmas/android/reactivelocation2/observables/BaseObservableOnSubscribe$1;
.super Ljava/lang/Object;
.source "BaseObservableOnSubscribe.java"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/charmas/android/reactivelocation2/observables/BaseObservableOnSubscribe;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/charmas/android/reactivelocation2/observables/BaseObservableOnSubscribe;

.field final synthetic val$apiClient:Lcom/google/android/gms/common/api/GoogleApiClient;


# direct methods
.method constructor <init>(Lpl/charmas/android/reactivelocation2/observables/BaseObservableOnSubscribe;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lpl/charmas/android/reactivelocation2/observables/BaseObservableOnSubscribe$1;->this$0:Lpl/charmas/android/reactivelocation2/observables/BaseObservableOnSubscribe;

    iput-object p2, p0, Lpl/charmas/android/reactivelocation2/observables/BaseObservableOnSubscribe$1;->val$apiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lpl/charmas/android/reactivelocation2/observables/BaseObservableOnSubscribe$1;->this$0:Lpl/charmas/android/reactivelocation2/observables/BaseObservableOnSubscribe;

    iget-object v1, p0, Lpl/charmas/android/reactivelocation2/observables/BaseObservableOnSubscribe$1;->val$apiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0, v1}, Lpl/charmas/android/reactivelocation2/observables/BaseObservableOnSubscribe;->onDisposed(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    .line 48
    iget-object v0, p0, Lpl/charmas/android/reactivelocation2/observables/BaseObservableOnSubscribe$1;->val$apiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    return-void
.end method
