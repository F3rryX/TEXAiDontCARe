.class public final synthetic Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen$$ExternalSyntheticLambda4;->f$0:Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen$$ExternalSyntheticLambda4;->f$0:Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;

    check-cast p1, Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->lambda$onConfirmClicked$1$com-texa-careapp-app-settings-tyres-TyresInversionScreen(Lcom/texa/careapp/model/VehicleModel;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
