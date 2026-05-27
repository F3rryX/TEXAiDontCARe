.class public Lcom/texa/careapp/base/GooglePlayServicesActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "GooglePlayServicesActivity.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/base/GooglePlayServicesActivity$LocationRetriever;
    }
.end annotation


# static fields
.field private static final KEY_IN_RESOLUTION:Ljava/lang/String; = "is_in_resolution"

.field protected static final REQUEST_CODE_RESOLUTION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GooglePlayServicesActivity"


# instance fields
.field private mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private mIsInResolution:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/texa/careapp/base/GooglePlayServicesActivity;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/texa/careapp/base/GooglePlayServicesActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object p0
.end method

.method private retryConnecting()V
    .locals 1

    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Lcom/texa/careapp/base/GooglePlayServicesActivity;->mIsInResolution:Z

    .line 113
    iget-object v0, p0, Lcom/texa/careapp/base/GooglePlayServicesActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/texa/careapp/base/GooglePlayServicesActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getGoogleApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/texa/careapp/base/GooglePlayServicesActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method public synthetic lambda$onConnectionFailed$0$com-texa-careapp-base-GooglePlayServicesActivity(Landroid/content/DialogInterface;)V
    .locals 0

    .line 147
    invoke-direct {p0}, Lcom/texa/careapp/base/GooglePlayServicesActivity;->retryConnecting()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 103
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    invoke-direct {p0}, Lcom/texa/careapp/base/GooglePlayServicesActivity;->retryConnecting()V

    :goto_0
    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 1

    .line 123
    sget-object p1, Lcom/texa/careapp/base/GooglePlayServicesActivity;->TAG:Ljava/lang/String;

    const-string v0, "GoogleApiClient connected"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    .line 143
    sget-object v0, Lcom/texa/careapp/base/GooglePlayServicesActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GoogleApiClient connection failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result p1

    const/4 v0, 0x0

    new-instance v1, Lcom/texa/careapp/base/GooglePlayServicesActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/base/GooglePlayServicesActivity$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/base/GooglePlayServicesActivity;)V

    .line 146
    invoke-static {p1, p0, v0, v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;ILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p1

    .line 147
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    .line 153
    :cond_0
    iget-boolean v0, p0, Lcom/texa/careapp/base/GooglePlayServicesActivity;->mIsInResolution:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 156
    iput-boolean v0, p0, Lcom/texa/careapp/base/GooglePlayServicesActivity;->mIsInResolution:Z

    .line 158
    :try_start_0
    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/common/ConnectionResult;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 160
    sget-object v0, Lcom/texa/careapp/base/GooglePlayServicesActivity;->TAG:Ljava/lang/String;

    const-string v1, "Exception while starting resolution activity"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    invoke-direct {p0}, Lcom/texa/careapp/base/GooglePlayServicesActivity;->retryConnecting()V

    :goto_0
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 1

    .line 131
    sget-object p1, Lcom/texa/careapp/base/GooglePlayServicesActivity;->TAG:Ljava/lang/String;

    const-string v0, "GoogleApiClient connection suspended"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-direct {p0}, Lcom/texa/careapp/base/GooglePlayServicesActivity;->retryConnecting()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 44
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "is_in_resolution"

    .line 47
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/texa/careapp/base/GooglePlayServicesActivity;->mIsInResolution:Z

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 94
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 95
    iget-boolean v0, p0, Lcom/texa/careapp/base/GooglePlayServicesActivity;->mIsInResolution:Z

    const-string v1, "is_in_resolution"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 65
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 66
    iget-object v0, p0, Lcom/texa/careapp/base/GooglePlayServicesActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    .line 69
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 70
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    .line 71
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/base/GooglePlayServicesActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/base/GooglePlayServicesActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/texa/careapp/base/GooglePlayServicesActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 86
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method
