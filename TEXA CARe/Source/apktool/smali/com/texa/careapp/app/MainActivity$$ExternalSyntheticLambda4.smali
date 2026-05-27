.class public final synthetic Lcom/texa/careapp/app/MainActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/MainActivity$$ExternalSyntheticLambda4;->f$0:Lcom/texa/careapp/app/MainActivity;

    return-void
.end method


# virtual methods
.method public final onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/app/MainActivity$$ExternalSyntheticLambda4;->f$0:Lcom/texa/careapp/app/MainActivity;

    check-cast p1, Lcom/google/android/gms/location/LocationSettingsResult;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/app/MainActivity;->lambda$requestGPSDialog$1$com-texa-careapp-app-MainActivity(Lcom/google/android/gms/location/LocationSettingsResult;)V

    return-void
.end method
