.class public Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceSelectContactNumberDialog;
.super Lcom/texa/care/navigation/Screen;
.source "ActivationServiceSelectContactNumberDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceSelectContactNumberDialog$PickContactNumber;
    }
.end annotation


# instance fields
.field protected mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private sosContact:Lcom/texa/careapp/model/ContactModel;


# direct methods
.method constructor <init>(Lcom/texa/careapp/model/ContactModel;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceSelectContactNumberDialog;->sosContact:Lcom/texa/careapp/model/ContactModel;

    return-void
.end method

.method static synthetic access$000(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceSelectContactNumberDialog;)Lcom/texa/careapp/model/ContactModel;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceSelectContactNumberDialog;->sosContact:Lcom/texa/careapp/model/ContactModel;

    return-object p0
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 7

    .line 42
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceSelectContactNumberDialog;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/CareApplication;

    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceSelectContactNumberDialog;)V

    .line 43
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/DialogActivationServiceSelectContactNumberBinding;

    .line 44
    iget-object p1, p1, Lcom/texa/careapp/databinding/DialogActivationServiceSelectContactNumberBinding;->dialogActivationServiceSelectContactNumberLay:Landroid/widget/LinearLayout;

    .line 46
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceSelectContactNumberDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 47
    :goto_0
    iget-object v3, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceSelectContactNumberDialog;->sosContact:Lcom/texa/careapp/model/ContactModel;

    invoke-virtual {v3}, Lcom/texa/careapp/model/ContactModel;->getPhoneNumbers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    const v3, 0x7f0d006e

    .line 48
    invoke-virtual {v0, v3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 50
    iget-object v4, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceSelectContactNumberDialog;->sosContact:Lcom/texa/careapp/model/ContactModel;

    invoke-virtual {v4}, Lcom/texa/careapp/model/ContactModel;->getPhoneNumbers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    new-instance v4, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceSelectContactNumberDialog$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v2}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceSelectContactNumberDialog$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceSelectContactNumberDialog;I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 62
    iget-object v3, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceSelectContactNumberDialog;->sosContact:Lcom/texa/careapp/model/ContactModel;

    invoke-virtual {v3}, Lcom/texa/careapp/model/ContactModel;->getPhoneNumbers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    .line 63
    new-instance v3, Landroid/view/View;

    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceSelectContactNumberDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v4, 0x7f080179

    .line 64
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 65
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "ActivationServiceSelectContactNumberDialog"

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d006d

    return v0
.end method

.method public getType()Lcom/texa/care/navigation/ScreenType;
    .locals 1

    .line 84
    sget-object v0, Lcom/texa/care/navigation/ScreenType;->DIALOG:Lcom/texa/care/navigation/ScreenType;

    return-object v0
.end method

.method public synthetic lambda$afterViewInjection$0$com-texa-careapp-app-activationSosServices-contact-ActivationServiceSelectContactNumberDialog(ILandroid/view/View;)V
    .locals 1

    .line 53
    iget-object p2, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceSelectContactNumberDialog;->sosContact:Lcom/texa/careapp/model/ContactModel;

    invoke-virtual {p2}, Lcom/texa/careapp/model/ContactModel;->getPhoneNumbers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/texa/careapp/model/ContactModel;->setPhoneNumber(Ljava/lang/String;)V

    .line 54
    iget-object p2, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceSelectContactNumberDialog;->sosContact:Lcom/texa/careapp/model/ContactModel;

    new-instance v0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceSelectContactNumberDialog$1;

    invoke-direct {v0, p0, p1}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceSelectContactNumberDialog$1;-><init>(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceSelectContactNumberDialog;I)V

    invoke-virtual {p2, v0}, Lcom/texa/careapp/model/ContactModel;->setPhoneNumbers(Ljava/util/List;)V

    .line 57
    iget-object p1, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceSelectContactNumberDialog;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance p2, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceSelectContactNumberDialog$PickContactNumber;

    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceSelectContactNumberDialog;->sosContact:Lcom/texa/careapp/model/ContactModel;

    invoke-direct {p2, p0, v0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceSelectContactNumberDialog$PickContactNumber;-><init>(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceSelectContactNumberDialog;Lcom/texa/careapp/model/ContactModel;)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 58
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceSelectContactNumberDialog;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/care/navigation/Navigator;->goBack()Z

    return-void
.end method
