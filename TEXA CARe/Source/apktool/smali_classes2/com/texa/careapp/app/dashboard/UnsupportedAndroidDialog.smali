.class public Lcom/texa/careapp/app/dashboard/UnsupportedAndroidDialog;
.super Lcom/texa/care/navigation/Screen;
.source "UnsupportedAndroidDialog.java"


# direct methods
.method public constructor <init>(Lcom/texa/careapp/CareApplication;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    .line 13
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/dashboard/UnsupportedAndroidDialog;)V

    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a0180

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/texa/careapp/app/dashboard/UnsupportedAndroidDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/dashboard/UnsupportedAndroidDialog$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/dashboard/UnsupportedAndroidDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 33
    const-class v0, Lcom/texa/careapp/app/dashboard/PowerSaveScreenDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0071

    return v0
.end method

.method public getType()Lcom/texa/care/navigation/ScreenType;
    .locals 1

    .line 28
    sget-object v0, Lcom/texa/care/navigation/ScreenType;->DIALOG:Lcom/texa/care/navigation/ScreenType;

    return-object v0
.end method

.method public synthetic lambda$afterViewInjection$0$com-texa-careapp-app-dashboard-UnsupportedAndroidDialog(Landroid/view/View;)V
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/texa/careapp/app/dashboard/UnsupportedAndroidDialog;->goBack()V

    return-void
.end method
