.class public final synthetic Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/configuration/UpdateConfigurationHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/configuration/UpdateConfigurationHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda2;->f$0:Lcom/texa/careapp/configuration/UpdateConfigurationHelper;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda2;->f$0:Lcom/texa/careapp/configuration/UpdateConfigurationHelper;

    check-cast p1, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/configuration/UpdateConfigurationHelper;->lambda$observeConfigurationInfos$5$com-texa-careapp-configuration-UpdateConfigurationHelper(Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
