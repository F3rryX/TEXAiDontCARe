.class public final synthetic Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/configuration/UpdateConfigurationHelper;

.field public final synthetic f$1:Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/configuration/UpdateConfigurationHelper;Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda7;->f$0:Lcom/texa/careapp/configuration/UpdateConfigurationHelper;

    iput-object p2, p0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda7;->f$1:Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 2

    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda7;->f$0:Lcom/texa/careapp/configuration/UpdateConfigurationHelper;

    iget-object v1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda7;->f$1:Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;

    invoke-virtual {v0, v1, p1}, Lcom/texa/careapp/configuration/UpdateConfigurationHelper;->lambda$checkConfigurationStatusOnServer$13$com-texa-careapp-configuration-UpdateConfigurationHelper(Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
