.class public Lcom/texa/careapp/app/settings/settingscare/SettingsCareFwUpdateScreenDialog;
.super Lcom/texa/care/navigation/Screen;
.source "SettingsCareFwUpdateScreenDialog.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SettingsCareFwUpdateScreenDialog"


# instance fields
.field private status:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILcom/texa/careapp/CareApplication;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    .line 26
    iput p1, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareFwUpdateScreenDialog;->status:I

    .line 27
    invoke-virtual {p2}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/settings/settingscare/SettingsCareFwUpdateScreenDialog;)V

    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 3

    .line 32
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScreenDialogFwUpdateBinding;

    .line 33
    iget v0, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareFwUpdateScreenDialog;->status:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    const v2, 0x7f11004d

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenDialogFwUpdateBinding;->dialogFwUpdateDescription:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/settingscare/SettingsCareFwUpdateScreenDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 41
    :cond_1
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenDialogFwUpdateBinding;->dialogFwUpdateDescription:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/settingscare/SettingsCareFwUpdateScreenDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 38
    :cond_2
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenDialogFwUpdateBinding;->dialogFwUpdateDescription:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/settingscare/SettingsCareFwUpdateScreenDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f11004b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 35
    :cond_3
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenDialogFwUpdateBinding;->dialogFwUpdateDescription:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/settingscare/SettingsCareFwUpdateScreenDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f11004c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    :goto_0
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenDialogFwUpdateBinding;->dialogFwUpdateBtn:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/settingscare/SettingsCareFwUpdateScreenDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f11004a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenDialogFwUpdateBinding;->dialogFwUpdateBtn:Landroid/widget/TextView;

    new-instance v0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareFwUpdateScreenDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/settings/settingscare/SettingsCareFwUpdateScreenDialog$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/settings/settingscare/SettingsCareFwUpdateScreenDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 64
    sget-object v0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareFwUpdateScreenDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00b7

    return v0
.end method

.method public getType()Lcom/texa/care/navigation/ScreenType;
    .locals 1

    .line 59
    sget-object v0, Lcom/texa/care/navigation/ScreenType;->DIALOG:Lcom/texa/care/navigation/ScreenType;

    return-object v0
.end method

.method public synthetic lambda$afterViewInjection$0$com-texa-careapp-app-settings-settingscare-SettingsCareFwUpdateScreenDialog(Landroid/view/View;)V
    .locals 0

    .line 49
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/settingscare/SettingsCareFwUpdateScreenDialog;->goBack()V

    return-void
.end method
