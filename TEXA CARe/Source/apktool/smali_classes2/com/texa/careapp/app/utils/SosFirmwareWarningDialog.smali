.class public Lcom/texa/careapp/app/utils/SosFirmwareWarningDialog;
.super Lcom/texa/care/navigation/Screen;
.source "SosFirmwareWarningDialog.java"


# instance fields
.field private btnOk:Landroid/widget/TextView;

.field private btnUndo:Landroid/widget/TextView;

.field private mActivity:Landroid/app/Activity;

.field mCommunication:Lcom/texa/carelib/communication/Communication;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mNavigator:Lcom/texa/care/navigation/Navigator;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/texa/careapp/app/utils/SosFirmwareWarningDialog;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/texa/careapp/app/utils/SosFirmwareWarningDialog;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/utils/SosFirmwareWarningDialog;->mNavigator:Lcom/texa/care/navigation/Navigator;

    .line 45
    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/CareApplication;

    .line 46
    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/utils/SosFirmwareWarningDialog;)V

    .line 48
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/DialogCheckFirmwareSosBinding;

    .line 49
    iget-object v0, p1, Lcom/texa/careapp/databinding/DialogCheckFirmwareSosBinding;->dialogCheckFirmwareSosUndo:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/utils/SosFirmwareWarningDialog;->btnUndo:Landroid/widget/TextView;

    .line 50
    iget-object p1, p1, Lcom/texa/careapp/databinding/DialogCheckFirmwareSosBinding;->dialogCheckFirmwareSosOk:Landroid/widget/TextView;

    iput-object p1, p0, Lcom/texa/careapp/app/utils/SosFirmwareWarningDialog;->btnOk:Landroid/widget/TextView;

    .line 53
    iget-object p1, p0, Lcom/texa/careapp/app/utils/SosFirmwareWarningDialog;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-interface {p1}, Lcom/texa/carelib/communication/Communication;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 54
    iget-object p1, p0, Lcom/texa/careapp/app/utils/SosFirmwareWarningDialog;->btnUndo:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 55
    iget-object p1, p0, Lcom/texa/careapp/app/utils/SosFirmwareWarningDialog;->btnUndo:Landroid/widget/TextView;

    new-instance v0, Lcom/texa/careapp/app/utils/SosFirmwareWarningDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/utils/SosFirmwareWarningDialog$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/utils/SosFirmwareWarningDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object p1, p0, Lcom/texa/careapp/app/utils/SosFirmwareWarningDialog;->btnOk:Landroid/widget/TextView;

    const v0, 0x7f110944

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 57
    iget-object p1, p0, Lcom/texa/careapp/app/utils/SosFirmwareWarningDialog;->btnOk:Landroid/widget/TextView;

    new-instance v0, Lcom/texa/careapp/app/utils/SosFirmwareWarningDialog$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/utils/SosFirmwareWarningDialog$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/utils/SosFirmwareWarningDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/utils/SosFirmwareWarningDialog;->btnUndo:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    iget-object p1, p0, Lcom/texa/careapp/app/utils/SosFirmwareWarningDialog;->btnOk:Landroid/widget/TextView;

    const v0, 0x7f110945

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 64
    iget-object p1, p0, Lcom/texa/careapp/app/utils/SosFirmwareWarningDialog;->btnOk:Landroid/widget/TextView;

    new-instance v0, Lcom/texa/careapp/app/utils/SosFirmwareWarningDialog$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/utils/SosFirmwareWarningDialog$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/app/utils/SosFirmwareWarningDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "dialog_check_firmware_sos"

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0073

    return v0
.end method

.method public getType()Lcom/texa/care/navigation/ScreenType;
    .locals 1

    .line 75
    sget-object v0, Lcom/texa/care/navigation/ScreenType;->DIALOG:Lcom/texa/care/navigation/ScreenType;

    return-object v0
.end method

.method public synthetic lambda$afterViewInjection$0$com-texa-careapp-app-utils-SosFirmwareWarningDialog(Landroid/view/View;)V
    .locals 0

    .line 55
    iget-object p1, p0, Lcom/texa/careapp/app/utils/SosFirmwareWarningDialog;->mNavigator:Lcom/texa/care/navigation/Navigator;

    invoke-virtual {p1}, Lcom/texa/care/navigation/Navigator;->goBack()Z

    return-void
.end method

.method public synthetic lambda$afterViewInjection$1$com-texa-careapp-app-utils-SosFirmwareWarningDialog(Landroid/view/View;)V
    .locals 2

    .line 58
    iget-object p1, p0, Lcom/texa/careapp/app/utils/SosFirmwareWarningDialog;->mNavigator:Lcom/texa/care/navigation/Navigator;

    invoke-virtual {p1}, Lcom/texa/care/navigation/Navigator;->goBack()Z

    .line 59
    iget-object p1, p0, Lcom/texa/careapp/app/utils/SosFirmwareWarningDialog;->mNavigator:Lcom/texa/care/navigation/Navigator;

    new-instance v0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;

    iget-object v1, p0, Lcom/texa/careapp/app/utils/SosFirmwareWarningDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$2$com-texa-careapp-app-utils-SosFirmwareWarningDialog(Landroid/view/View;)V
    .locals 0

    .line 64
    iget-object p1, p0, Lcom/texa/careapp/app/utils/SosFirmwareWarningDialog;->mNavigator:Lcom/texa/care/navigation/Navigator;

    invoke-virtual {p1}, Lcom/texa/care/navigation/Navigator;->goBack()Z

    return-void
.end method
