.class public final synthetic Lcom/texa/careapp/configuration/UpdateConfigurationActivity$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/configuration/UpdateConfigurationActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/configuration/UpdateConfigurationActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity$$ExternalSyntheticLambda9;->f$0:Lcom/texa/careapp/configuration/UpdateConfigurationActivity;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationActivity$$ExternalSyntheticLambda9;->f$0:Lcom/texa/careapp/configuration/UpdateConfigurationActivity;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->lambda$configurationStarter$4$com-texa-careapp-configuration-UpdateConfigurationActivity(Ljava/lang/Integer;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
