.class public Lcom/texa/careapp/app/activationSosServices/FirmwareVersionAlertDialog;
.super Lcom/texa/care/navigation/Screen;
.source "FirmwareVersionAlertDialog.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "FirmwareVersionAlertDialog"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 3

    .line 23
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/AlertDialogFirmwareVersionBinding;

    .line 24
    iget-object v0, p1, Lcom/texa/careapp/databinding/AlertDialogFirmwareVersionBinding;->fwDialogTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/FirmwareVersionAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110a74

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v0, p1, Lcom/texa/careapp/databinding/AlertDialogFirmwareVersionBinding;->fwDialogDescription:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/FirmwareVersionAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110a73

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object p1, p1, Lcom/texa/careapp/databinding/AlertDialogFirmwareVersionBinding;->fwDialogOkButton:Landroid/widget/TextView;

    new-instance v0, Lcom/texa/careapp/app/activationSosServices/FirmwareVersionAlertDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/activationSosServices/FirmwareVersionAlertDialog$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/activationSosServices/FirmwareVersionAlertDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Lcom/texa/careapp/app/activationSosServices/FirmwareVersionAlertDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0048

    return v0
.end method

.method public getType()Lcom/texa/care/navigation/ScreenType;
    .locals 1

    .line 36
    sget-object v0, Lcom/texa/care/navigation/ScreenType;->DIALOG:Lcom/texa/care/navigation/ScreenType;

    return-object v0
.end method

.method public synthetic lambda$afterViewInjection$0$com-texa-careapp-app-activationSosServices-FirmwareVersionAlertDialog(Landroid/view/View;)V
    .locals 0

    .line 26
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/FirmwareVersionAlertDialog;->goBack()V

    return-void
.end method
