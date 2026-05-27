.class public Lcom/texa/careapp/app/diagnosis/DiagnosisAdvancedDialog;
.super Lcom/texa/care/navigation/Screen;
.source "DiagnosisAdvancedDialog.java"


# instance fields
.field private final haveAdvancedDiagnosis:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    .line 22
    iput-boolean p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisAdvancedDialog;->haveAdvancedDiagnosis:Z

    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 2

    .line 27
    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisAdvancedDialog;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/CareApplication;

    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/diagnosis/DiagnosisAdvancedDialog;)V

    .line 28
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/DialogAdvancedDiagnosisBinding;

    .line 29
    iget-object v0, p1, Lcom/texa/careapp/databinding/DialogAdvancedDiagnosisBinding;->dialogAdvancedDiagnosisButton:Landroid/widget/TextView;

    new-instance v1, Lcom/texa/careapp/app/diagnosis/DiagnosisAdvancedDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisAdvancedDialog$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/diagnosis/DiagnosisAdvancedDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object p1, p1, Lcom/texa/careapp/databinding/DialogAdvancedDiagnosisBinding;->dialogAdvancedDiagnosisText:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisAdvancedDialog;->haveAdvancedDiagnosis:Z

    if-eqz v0, :cond_0

    const v0, 0x7f11091c

    goto :goto_0

    :cond_0
    const v0, 0x7f11091f

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "DiagnosisAdvancedDialog"

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0070

    return v0
.end method

.method public getType()Lcom/texa/care/navigation/ScreenType;
    .locals 1

    .line 41
    sget-object v0, Lcom/texa/care/navigation/ScreenType;->DIALOG:Lcom/texa/care/navigation/ScreenType;

    return-object v0
.end method

.method public synthetic lambda$afterViewInjection$0$com-texa-careapp-app-diagnosis-DiagnosisAdvancedDialog(Landroid/view/View;)V
    .locals 0

    .line 29
    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisAdvancedDialog;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/care/navigation/Navigator;->goBack()Z

    return-void
.end method
