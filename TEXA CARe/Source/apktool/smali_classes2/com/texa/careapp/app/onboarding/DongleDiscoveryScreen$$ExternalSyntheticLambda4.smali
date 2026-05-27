.class public final synthetic Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic f$0:Lcom/texa/carelib/communication/DeviceInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/carelib/communication/DeviceInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$$ExternalSyntheticLambda4;->f$0:Lcom/texa/carelib/communication/DeviceInfo;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$$ExternalSyntheticLambda4;->f$0:Lcom/texa/carelib/communication/DeviceInfo;

    invoke-static {v0, p1}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->lambda$removeBond$7(Lcom/texa/carelib/communication/DeviceInfo;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
