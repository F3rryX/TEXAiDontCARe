.class public Lcom/texa/careapp/app/activationSosServices/ActivationServiceVehicleDialog;
.super Lcom/texa/care/navigation/Screen;
.source "ActivationServiceVehicleDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/app/activationSosServices/ActivationServiceVehicleDialog$VehicleConfirmed;
    }
.end annotation


# instance fields
.field protected mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 4

    .line 38
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationServiceVehicleDialog;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/CareApplication;

    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/activationSosServices/ActivationServiceVehicleDialog;)V

    .line 39
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/DialogActivationServiceVehicleBinding;

    .line 40
    iget-object v0, p1, Lcom/texa/careapp/databinding/DialogActivationServiceVehicleBinding;->dialogActivationServiceVehicleUndo:Landroid/widget/TextView;

    new-instance v1, Lcom/texa/careapp/app/activationSosServices/ActivationServiceVehicleDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/activationSosServices/ActivationServiceVehicleDialog$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/activationSosServices/ActivationServiceVehicleDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object v0, p1, Lcom/texa/careapp/databinding/DialogActivationServiceVehicleBinding;->dialogActivationServiceVehicleConfirm:Landroid/widget/TextView;

    new-instance v1, Lcom/texa/careapp/app/activationSosServices/ActivationServiceVehicleDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/activationSosServices/ActivationServiceVehicleDialog$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/activationSosServices/ActivationServiceVehicleDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object p1, p1, Lcom/texa/careapp/databinding/DialogActivationServiceVehicleBinding;->dialogActivationServiceVehicleDescription:Landroid/widget/TextView;

    .line 48
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationServiceVehicleDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110c72

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceVehicleDialog;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    .line 49
    invoke-virtual {v2}, Lcom/texa/careapp/utils/VehicleObserver;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v2

    invoke-static {v2}, Lcom/texa/careapp/utils/Utils;->formatVehicleModel(Lcom/texa/careapp/model/VehicleModel;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 47
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "ActivationServiceVehicleDialog"

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d006f

    return v0
.end method

.method public getType()Lcom/texa/care/navigation/ScreenType;
    .locals 1

    .line 58
    sget-object v0, Lcom/texa/care/navigation/ScreenType;->DIALOG:Lcom/texa/care/navigation/ScreenType;

    return-object v0
.end method

.method public synthetic lambda$afterViewInjection$0$com-texa-careapp-app-activationSosServices-ActivationServiceVehicleDialog(Landroid/view/View;)V
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationServiceVehicleDialog;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/care/navigation/Navigator;->goBack()Z

    return-void
.end method

.method public synthetic lambda$afterViewInjection$1$com-texa-careapp-app-activationSosServices-ActivationServiceVehicleDialog(Landroid/view/View;)V
    .locals 1

    .line 42
    iget-object p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceVehicleDialog;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceVehicleDialog$VehicleConfirmed;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/activationSosServices/ActivationServiceVehicleDialog$VehicleConfirmed;-><init>(Lcom/texa/careapp/app/activationSosServices/ActivationServiceVehicleDialog;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 43
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationServiceVehicleDialog;->goBack()V

    return-void
.end method
