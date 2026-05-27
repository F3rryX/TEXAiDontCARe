.class public Lpl/charmas/android/reactivelocation2/ReactiveLocationProviderConfiguration$Builder;
.super Ljava/lang/Object;
.source "ReactiveLocationProviderConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/charmas/android/reactivelocation2/ReactiveLocationProviderConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private customCallbackHandler:Landroid/os/Handler;

.field private retryOnConnectionSuspended:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lpl/charmas/android/reactivelocation2/ReactiveLocationProviderConfiguration$Builder;->customCallbackHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lpl/charmas/android/reactivelocation2/ReactiveLocationProviderConfiguration$Builder;->retryOnConnectionSuspended:Z

    return-void
.end method

.method static synthetic access$000(Lpl/charmas/android/reactivelocation2/ReactiveLocationProviderConfiguration$Builder;)Landroid/os/Handler;
    .locals 0

    .line 30
    iget-object p0, p0, Lpl/charmas/android/reactivelocation2/ReactiveLocationProviderConfiguration$Builder;->customCallbackHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lpl/charmas/android/reactivelocation2/ReactiveLocationProviderConfiguration$Builder;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lpl/charmas/android/reactivelocation2/ReactiveLocationProviderConfiguration$Builder;->retryOnConnectionSuspended:Z

    return p0
.end method


# virtual methods
.method public build()Lpl/charmas/android/reactivelocation2/ReactiveLocationProviderConfiguration;
    .locals 2

    .line 66
    new-instance v0, Lpl/charmas/android/reactivelocation2/ReactiveLocationProviderConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lpl/charmas/android/reactivelocation2/ReactiveLocationProviderConfiguration;-><init>(Lpl/charmas/android/reactivelocation2/ReactiveLocationProviderConfiguration$Builder;Lpl/charmas/android/reactivelocation2/ReactiveLocationProviderConfiguration$1;)V

    return-object v0
.end method

.method public setCustomCallbackHandler(Landroid/os/Handler;)Lpl/charmas/android/reactivelocation2/ReactiveLocationProviderConfiguration$Builder;
    .locals 0

    .line 43
    iput-object p1, p0, Lpl/charmas/android/reactivelocation2/ReactiveLocationProviderConfiguration$Builder;->customCallbackHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public setRetryOnConnectionSuspended(Z)Lpl/charmas/android/reactivelocation2/ReactiveLocationProviderConfiguration$Builder;
    .locals 0

    .line 56
    iput-boolean p1, p0, Lpl/charmas/android/reactivelocation2/ReactiveLocationProviderConfiguration$Builder;->retryOnConnectionSuspended:Z

    return-object p0
.end method
