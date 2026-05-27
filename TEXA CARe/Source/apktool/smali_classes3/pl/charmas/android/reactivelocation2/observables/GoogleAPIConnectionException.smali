.class public Lpl/charmas/android/reactivelocation2/observables/GoogleAPIConnectionException;
.super Ljava/lang/RuntimeException;
.source "GoogleAPIConnectionException.java"


# instance fields
.field private final connectionResult:Lcom/google/android/gms/common/ConnectionResult;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 10
    iput-object p2, p0, Lpl/charmas/android/reactivelocation2/observables/GoogleAPIConnectionException;->connectionResult:Lcom/google/android/gms/common/ConnectionResult;

    return-void
.end method


# virtual methods
.method public getConnectionResult()Lcom/google/android/gms/common/ConnectionResult;
    .locals 1

    .line 14
    iget-object v0, p0, Lpl/charmas/android/reactivelocation2/observables/GoogleAPIConnectionException;->connectionResult:Lcom/google/android/gms/common/ConnectionResult;

    return-object v0
.end method
