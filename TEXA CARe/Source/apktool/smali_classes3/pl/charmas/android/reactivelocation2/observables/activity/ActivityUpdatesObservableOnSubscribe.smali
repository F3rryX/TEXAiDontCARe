.class public Lpl/charmas/android/reactivelocation2/observables/activity/ActivityUpdatesObservableOnSubscribe;
.super Lpl/charmas/android/reactivelocation2/observables/activity/BaseActivityObservableOnSubscribe;
.source "ActivityUpdatesObservableOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/charmas/android/reactivelocation2/observables/activity/ActivityUpdatesObservableOnSubscribe$ActivityUpdatesBroadcastReceiver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpl/charmas/android/reactivelocation2/observables/activity/BaseActivityObservableOnSubscribe<",
        "Lcom/google/android/gms/location/ActivityRecognitionResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACTION_ACTIVITY_DETECTED:Ljava/lang/String; = "pl.charmas.android.reactivelocation2.ACTION_ACTIVITY_UPDATE_DETECTED"


# instance fields
.field private final context:Landroid/content/Context;

.field private final detectionIntervalMilliseconds:I

.field private receiver:Lpl/charmas/android/reactivelocation2/observables/activity/ActivityUpdatesObservableOnSubscribe$ActivityUpdatesBroadcastReceiver;


# direct methods
.method private constructor <init>(Lpl/charmas/android/reactivelocation2/observables/ObservableContext;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lpl/charmas/android/reactivelocation2/observables/activity/BaseActivityObservableOnSubscribe;-><init>(Lpl/charmas/android/reactivelocation2/observables/ObservableContext;)V

    .line 33
    invoke-virtual {p1}, Lpl/charmas/android/reactivelocation2/observables/ObservableContext;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lpl/charmas/android/reactivelocation2/observables/activity/ActivityUpdatesObservableOnSubscribe;->context:Landroid/content/Context;

    .line 34
    iput p2, p0, Lpl/charmas/android/reactivelocation2/observables/activity/ActivityUpdatesObservableOnSubscribe;->detectionIntervalMilliseconds:I

    return-void
.end method

.method public static createObservable(Lpl/charmas/android/reactivelocation2/observables/ObservableContext;Lpl/charmas/android/reactivelocation2/observables/ObservableFactory;I)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl/charmas/android/reactivelocation2/observables/ObservableContext;",
            "Lpl/charmas/android/reactivelocation2/observables/ObservableFactory;",
            "I)",
            "Lio/reactivex/Observable<",
            "Lcom/google/android/gms/location/ActivityRecognitionResult;",
            ">;"
        }
    .end annotation

    .line 28
    new-instance v0, Lpl/charmas/android/reactivelocation2/observables/activity/ActivityUpdatesObservableOnSubscribe;

    invoke-direct {v0, p0, p2}, Lpl/charmas/android/reactivelocation2/observables/activity/ActivityUpdatesObservableOnSubscribe;-><init>(Lpl/charmas/android/reactivelocation2/observables/ObservableContext;I)V

    invoke-virtual {p1, v0}, Lpl/charmas/android/reactivelocation2/observables/ObservableFactory;->createObservable(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private getReceiverPendingIntent()Landroid/app/PendingIntent;
    .locals 4

    .line 46
    iget-object v0, p0, Lpl/charmas/android/reactivelocation2/observables/activity/ActivityUpdatesObservableOnSubscribe;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "pl.charmas.android.reactivelocation2.ACTION_ACTIVITY_UPDATE_DETECTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onDisposed(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 2

    .line 51
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, Lcom/google/android/gms/location/ActivityRecognition;->ActivityRecognitionApi:Lcom/google/android/gms/location/ActivityRecognitionApi;

    invoke-direct {p0}, Lpl/charmas/android/reactivelocation2/observables/activity/ActivityUpdatesObservableOnSubscribe;->getReceiverPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/location/ActivityRecognitionApi;->removeActivityUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/PendingResult;

    .line 54
    :cond_0
    iget-object p1, p0, Lpl/charmas/android/reactivelocation2/observables/activity/ActivityUpdatesObservableOnSubscribe;->receiver:Lpl/charmas/android/reactivelocation2/observables/activity/ActivityUpdatesObservableOnSubscribe$ActivityUpdatesBroadcastReceiver;

    if-eqz p1, :cond_1

    .line 55
    iget-object v0, p0, Lpl/charmas/android/reactivelocation2/observables/activity/ActivityUpdatesObservableOnSubscribe;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 56
    iput-object p1, p0, Lpl/charmas/android/reactivelocation2/observables/activity/ActivityUpdatesObservableOnSubscribe;->receiver:Lpl/charmas/android/reactivelocation2/observables/activity/ActivityUpdatesObservableOnSubscribe$ActivityUpdatesBroadcastReceiver;

    :cond_1
    return-void
.end method

.method protected onGoogleApiClientReady(Lcom/google/android/gms/common/api/GoogleApiClient;Lio/reactivex/ObservableEmitter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lio/reactivex/ObservableEmitter<",
            "-",
            "Lcom/google/android/gms/location/ActivityRecognitionResult;",
            ">;)V"
        }
    .end annotation

    .line 39
    new-instance v0, Lpl/charmas/android/reactivelocation2/observables/activity/ActivityUpdatesObservableOnSubscribe$ActivityUpdatesBroadcastReceiver;

    invoke-direct {v0, p2}, Lpl/charmas/android/reactivelocation2/observables/activity/ActivityUpdatesObservableOnSubscribe$ActivityUpdatesBroadcastReceiver;-><init>(Lio/reactivex/ObservableEmitter;)V

    iput-object v0, p0, Lpl/charmas/android/reactivelocation2/observables/activity/ActivityUpdatesObservableOnSubscribe;->receiver:Lpl/charmas/android/reactivelocation2/observables/activity/ActivityUpdatesObservableOnSubscribe$ActivityUpdatesBroadcastReceiver;

    .line 40
    iget-object p2, p0, Lpl/charmas/android/reactivelocation2/observables/activity/ActivityUpdatesObservableOnSubscribe;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "pl.charmas.android.reactivelocation2.ACTION_ACTIVITY_UPDATE_DETECTED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 41
    invoke-direct {p0}, Lpl/charmas/android/reactivelocation2/observables/activity/ActivityUpdatesObservableOnSubscribe;->getReceiverPendingIntent()Landroid/app/PendingIntent;

    move-result-object p2

    .line 42
    sget-object v0, Lcom/google/android/gms/location/ActivityRecognition;->ActivityRecognitionApi:Lcom/google/android/gms/location/ActivityRecognitionApi;

    iget v1, p0, Lpl/charmas/android/reactivelocation2/observables/activity/ActivityUpdatesObservableOnSubscribe;->detectionIntervalMilliseconds:I

    int-to-long v1, v1

    invoke-interface {v0, p1, v1, v2, p2}, Lcom/google/android/gms/location/ActivityRecognitionApi;->requestActivityUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;JLandroid/app/PendingIntent;)Lcom/google/android/gms/common/api/PendingResult;

    return-void
.end method
