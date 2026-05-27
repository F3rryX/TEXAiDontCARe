.class public final synthetic Lcom/texa/careapp/configuration/UpdateConfigurationActivity$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/configuration/UpdateConfigurationActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/configuration/UpdateConfigurationActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity$$ExternalSyntheticLambda5;->f$0:Lcom/texa/careapp/configuration/UpdateConfigurationActivity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity$$ExternalSyntheticLambda5;->f$0:Lcom/texa/careapp/configuration/UpdateConfigurationActivity;

    check-cast p1, Lio/reactivex/disposables/Disposable;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->lambda$configurationStarter$1$com-texa-careapp-configuration-UpdateConfigurationActivity(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
