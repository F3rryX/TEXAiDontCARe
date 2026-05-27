.class Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$1;
.super Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;
.source "SettingsServicesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;->lambda$bindView$0(Lcom/texa/care/navigation/Navigator;Lcom/texa/careapp/model/ServiceDataModel;Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$UpdateData;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;

.field final synthetic val$updateDataListener:Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$UpdateData;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;Lcom/texa/careapp/model/ServiceDataModel;Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$UpdateData;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$1;->this$0:Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;

    iput-object p3, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$1;->val$updateDataListener:Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$UpdateData;

    invoke-direct {p0, p2}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;-><init>(Lcom/texa/careapp/model/ServiceDataModel;)V

    return-void
.end method

.method static synthetic lambda$acceptedCondition$1(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ServiceAcceptTerms error"

    .line 183
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public acceptedCondition()V
    .locals 3

    .line 180
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$1;->activationService()Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$1;->val$updateDataListener:Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$UpdateData;

    new-instance v2, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$1$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$1;Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$UpdateData;)V

    sget-object v1, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$1$$ExternalSyntheticLambda1;->INSTANCE:Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$1$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v2, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public synthetic lambda$acceptedCondition$0$com-texa-careapp-app-settings-services-SettingsServicesAdapter$ServiceViewHolder$1(Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$UpdateData;Lcom/texa/careapp/model/ServiceDataModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 181
    invoke-interface {p1}, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$UpdateData;->updateDataAfterAcceptingTerms()V

    .line 182
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$1;->goBack()V

    return-void
.end method
