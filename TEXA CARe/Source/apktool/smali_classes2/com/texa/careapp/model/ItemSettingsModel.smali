.class public Lcom/texa/careapp/model/ItemSettingsModel;
.super Ljava/lang/Object;
.source "ItemSettingsModel.java"

# interfaces
.implements Lcom/texa/careapp/model/ISettingsModel;


# instance fields
.field private hasImage:Z

.field private mAction:I

.field private mImage:I

.field private mSubtitle:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mType:I

.field private visible:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 28
    iput-object v0, p0, Lcom/texa/careapp/model/ItemSettingsModel;->mTitle:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/texa/careapp/model/ItemSettingsModel;->mSubtitle:Ljava/lang/String;

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/texa/careapp/model/ItemSettingsModel;->hasImage:Z

    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lcom/texa/careapp/model/ItemSettingsModel;->mType:I

    .line 32
    iput v0, p0, Lcom/texa/careapp/model/ItemSettingsModel;->mImage:I

    .line 33
    iput v0, p0, Lcom/texa/careapp/model/ItemSettingsModel;->mAction:I

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/texa/careapp/model/ItemSettingsModel;->visible:Z

    return-void
.end method

.method static synthetic lambda$setOnCLickListener$0(ILandroid/content/Context;Landroid/view/View;)V
    .locals 3

    const/high16 p2, 0x10000000

    if-eqz p0, :cond_3

    const/16 v0, 0x12

    if-eq p0, v0, :cond_2

    const/16 v0, 0xa

    const-string/jumbo v1, "web_view_code"

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_0

    .line 164
    :pswitch_0
    new-instance p0, Landroid/content/Intent;

    const-class v2, Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity;

    invoke-direct {p0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 165
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 166
    invoke-virtual {p0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 167
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 157
    :pswitch_1
    new-instance p0, Landroid/content/Intent;

    const-class v0, Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity;

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x2

    .line 158
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 159
    invoke-virtual {p0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 160
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 151
    :pswitch_2
    new-instance p0, Landroid/content/Intent;

    invoke-static {p1}, Lcom/texa/careapp/app/settings/companyinfo/CompanyInfoActivity;->buildIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 152
    invoke-virtual {p0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 153
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 145
    :pswitch_3
    new-instance p0, Landroid/content/Intent;

    const-class v0, Lcom/texa/careapp/app/settings/services/SettingsServicesActivity;

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    invoke-virtual {p0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 147
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 139
    :pswitch_4
    new-instance p0, Landroid/content/Intent;

    invoke-static {p1}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionActivity;->buildIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 140
    invoke-virtual {p0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 141
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 135
    :pswitch_5
    invoke-static {p1}, Lcom/texa/careapp/app/settings/settingscare/SettingsCareActivity;->buildIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 122
    :pswitch_6
    new-instance p0, Landroid/content/Intent;

    const-class v1, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    invoke-direct {p0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "settings_add_vehicle"

    .line 123
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 124
    invoke-virtual {p0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p2, 0x4000000

    .line 125
    invoke-virtual {p0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 126
    invoke-static {p1}, Lcom/texa/careapp/app/service/CareService;->buildDefaultIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 127
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 178
    :cond_0
    new-instance p0, Landroid/content/Intent;

    invoke-static {p1}, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsActivity;->buildIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 179
    invoke-virtual {p0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 180
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 171
    :cond_1
    new-instance p0, Landroid/content/Intent;

    const-class v0, Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity;

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x4

    .line 172
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 173
    invoke-virtual {p0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 174
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 131
    :cond_2
    invoke-static {p1}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactActivity;->buildIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 112
    :cond_3
    new-instance p0, Landroid/content/Intent;

    invoke-static {p1}, Lcom/texa/careapp/app/settings/user/SettingsUserActivity;->buildIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 113
    invoke-virtual {p0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 114
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic lambda$setOnCLickListener$1(Lcom/texa/care/navigation/Navigator;Landroid/view/View;)V
    .locals 0

    .line 189
    new-instance p1, Lcom/texa/careapp/app/settings/FactoryResetScreenDialog;

    invoke-direct {p1}, Lcom/texa/careapp/app/settings/FactoryResetScreenDialog;-><init>()V

    invoke-virtual {p0, p1}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    return-void
.end method

.method static synthetic lambda$setOnCLickListener$2(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/texa/careapp/model/ServiceDataModel;Landroid/view/View;)V
    .locals 0

    .line 195
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 196
    invoke-virtual {p2}, Lcom/texa/careapp/model/ServiceDataModel;->getContractUrl()Ljava/lang/String;

    move-result-object p2

    .line 195
    invoke-static {p1, p2}, Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity;->buildIntentFor(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 194
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/texa/careapp/model/ItemSettingsModel;->mAction:I

    return v0
.end method

.method public getImage()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/texa/careapp/model/ItemSettingsModel;->mImage:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/texa/careapp/model/ItemSettingsModel;->mSubtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/texa/careapp/model/ItemSettingsModel;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/texa/careapp/model/ItemSettingsModel;->mType:I

    return v0
.end method

.method public getVisibility()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/texa/careapp/model/ItemSettingsModel;->visible:Z

    return v0
.end method

.method public hasImage()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/texa/careapp/model/ItemSettingsModel;->hasImage:Z

    return v0
.end method

.method public isVisible(Z)V
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/texa/careapp/model/ItemSettingsModel;->visible:Z

    return-void
.end method

.method public setAction(I)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/texa/careapp/model/ItemSettingsModel;->mAction:I

    return-void
.end method

.method public setHasImage(Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/texa/careapp/model/ItemSettingsModel;->hasImage:Z

    return-void
.end method

.method public setImage(I)V
    .locals 0

    .line 83
    iput p1, p0, Lcom/texa/careapp/model/ItemSettingsModel;->mImage:I

    return-void
.end method

.method public setOnCLickListener(Landroid/widget/RelativeLayout;ILandroid/content/Context;)V
    .locals 1

    .line 108
    new-instance v0, Lcom/texa/careapp/model/ItemSettingsModel$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p3}, Lcom/texa/careapp/model/ItemSettingsModel$$ExternalSyntheticLambda0;-><init>(ILandroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnCLickListener(Landroid/widget/RelativeLayout;Landroid/content/Context;Lcom/texa/careapp/model/ServiceDataModel;)V
    .locals 1

    .line 194
    new-instance v0, Lcom/texa/careapp/model/ItemSettingsModel$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2, p1, p3}, Lcom/texa/careapp/model/ItemSettingsModel$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/texa/careapp/model/ServiceDataModel;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnCLickListener(Landroid/widget/RelativeLayout;Lcom/texa/care/navigation/Navigator;)V
    .locals 1

    .line 189
    new-instance v0, Lcom/texa/careapp/model/ItemSettingsModel$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2}, Lcom/texa/careapp/model/ItemSettingsModel$$ExternalSyntheticLambda2;-><init>(Lcom/texa/care/navigation/Navigator;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/texa/careapp/model/ItemSettingsModel;->mSubtitle:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/texa/careapp/model/ItemSettingsModel;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/texa/careapp/model/ItemSettingsModel;->mType:I

    return-void
.end method
