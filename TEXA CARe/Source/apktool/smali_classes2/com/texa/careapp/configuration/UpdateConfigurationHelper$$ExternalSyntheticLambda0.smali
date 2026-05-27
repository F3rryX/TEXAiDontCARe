.class public final synthetic Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/texa/carelib/core/Callback;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;

.field public final synthetic f$1:Lio/reactivex/ObservableEmitter;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda0;->f$0:Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;

    iput-object p2, p0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda0;->f$1:Lio/reactivex/ObservableEmitter;

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda0;->f$0:Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;

    iget-object v1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda0;->f$1:Lio/reactivex/ObservableEmitter;

    check-cast p1, Lcom/texa/carelib/webservices/VehicleConfigurationInfoLoadedEvent;

    invoke-static {v0, v1, p1}, Lcom/texa/careapp/configuration/UpdateConfigurationHelper;->lambda$checkConfigurationStatusOnServer$12(Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;Lio/reactivex/ObservableEmitter;Lcom/texa/carelib/webservices/VehicleConfigurationInfoLoadedEvent;)V

    return-void
.end method
