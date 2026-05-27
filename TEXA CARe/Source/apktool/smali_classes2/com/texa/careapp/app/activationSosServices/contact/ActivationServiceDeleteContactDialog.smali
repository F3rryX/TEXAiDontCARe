.class public Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceDeleteContactDialog;
.super Lcom/texa/care/navigation/Screen;
.source "ActivationServiceDeleteContactDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceDeleteContactDialog$DeleteContact;
    }
.end annotation


# instance fields
.field protected mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private sosContact:Lcom/texa/careapp/model/ContactModel;


# direct methods
.method public constructor <init>(Lcom/texa/careapp/model/ContactModel;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceDeleteContactDialog;->sosContact:Lcom/texa/careapp/model/ContactModel;

    return-void
.end method

.method private deleteContact()V
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceDeleteContactDialog;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceDeleteContactDialog$DeleteContact;

    iget-object v2, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceDeleteContactDialog;->sosContact:Lcom/texa/careapp/model/ContactModel;

    invoke-virtual {v2}, Lcom/texa/careapp/model/ContactModel;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceDeleteContactDialog$DeleteContact;-><init>(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceDeleteContactDialog;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 47
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceDeleteContactDialog;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->goBack()Z

    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 5

    .line 36
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceDeleteContactDialog;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/CareApplication;

    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceDeleteContactDialog;)V

    .line 37
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/DialogActivationServiceDeleteContactBinding;

    .line 39
    iget-object v0, p1, Lcom/texa/careapp/databinding/DialogActivationServiceDeleteContactBinding;->dialogActivationServiceDeleteContactDescription:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceDeleteContactDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110c6d

    .line 40
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceDeleteContactDialog;->sosContact:Lcom/texa/careapp/model/ContactModel;

    invoke-virtual {v3}, Lcom/texa/careapp/model/ContactModel;->getTitle()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 39
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v0, p1, Lcom/texa/careapp/databinding/DialogActivationServiceDeleteContactBinding;->dialogActivationServiceDeleteContactUndo:Landroid/widget/TextView;

    new-instance v1, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceDeleteContactDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceDeleteContactDialog$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceDeleteContactDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object p1, p1, Lcom/texa/careapp/databinding/DialogActivationServiceDeleteContactBinding;->dialogActivationServiceDeleteContactConfirm:Landroid/widget/TextView;

    new-instance v0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceDeleteContactDialog$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceDeleteContactDialog$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceDeleteContactDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "ActivationServiceDeleteContactDialog"

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d006c

    return v0
.end method

.method public getType()Lcom/texa/care/navigation/ScreenType;
    .locals 1

    .line 62
    sget-object v0, Lcom/texa/care/navigation/ScreenType;->DIALOG:Lcom/texa/care/navigation/ScreenType;

    return-object v0
.end method

.method public synthetic lambda$afterViewInjection$0$com-texa-careapp-app-activationSosServices-contact-ActivationServiceDeleteContactDialog(Landroid/view/View;)V
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceDeleteContactDialog;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/care/navigation/Navigator;->goBack()Z

    return-void
.end method

.method public synthetic lambda$afterViewInjection$1$com-texa-careapp-app-activationSosServices-contact-ActivationServiceDeleteContactDialog(Landroid/view/View;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceDeleteContactDialog;->deleteContact()V

    return-void
.end method
