.class public Lpl/charmas/android/reactivelocation2/observables/ObservableContext;
.super Ljava/lang/Object;
.source "ObservableContext.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final handler:Landroid/os/Handler;

.field private final retryOnConnectionSuspended:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lpl/charmas/android/reactivelocation2/ReactiveLocationProviderConfiguration;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lpl/charmas/android/reactivelocation2/observables/ObservableContext;->context:Landroid/content/Context;

    .line 15
    invoke-virtual {p2}, Lpl/charmas/android/reactivelocation2/ReactiveLocationProviderConfiguration;->getCustomCallbackHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lpl/charmas/android/reactivelocation2/observables/ObservableContext;->handler:Landroid/os/Handler;

    .line 16
    invoke-virtual {p2}, Lpl/charmas/android/reactivelocation2/ReactiveLocationProviderConfiguration;->isRetryOnConnectionSuspended()Z

    move-result p1

    iput-boolean p1, p0, Lpl/charmas/android/reactivelocation2/observables/ObservableContext;->retryOnConnectionSuspended:Z

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 20
    iget-object v0, p0, Lpl/charmas/android/reactivelocation2/observables/ObservableContext;->context:Landroid/content/Context;

    return-object v0
.end method

.method getHandler()Landroid/os/Handler;
    .locals 1

    .line 24
    iget-object v0, p0, Lpl/charmas/android/reactivelocation2/observables/ObservableContext;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method isRetryOnConnectionSuspended()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lpl/charmas/android/reactivelocation2/observables/ObservableContext;->retryOnConnectionSuspended:Z

    return v0
.end method
