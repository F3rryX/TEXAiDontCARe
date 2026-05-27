.class public final synthetic Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/texa/carelib/core/Callback;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$$ExternalSyntheticLambda0;->f$0:Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;

    iput-object p2, p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$$ExternalSyntheticLambda0;->f$0:Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;

    iget-object v1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    check-cast p1, Lcom/texa/carelib/webservices/ServiceVehicleConfigurationDownloadedEvent;

    invoke-virtual {v0, v1, p1}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->lambda$downloadConfiguration$0$com-texa-careapp-configuration-UpdateConfigurationIntentService(Ljava/lang/String;Lcom/texa/carelib/webservices/ServiceVehicleConfigurationDownloadedEvent;)V

    return-void
.end method
