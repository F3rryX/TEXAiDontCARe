.class public Lcom/texa/careapp/app/permission/PermissionPresenter;
.super Ljava/lang/Object;
.source "PermissionPresenter.java"


# static fields
.field private static final COUNT_BETA_WORD:I = 0x4


# instance fields
.field private mActivity:Lcom/texa/careapp/app/permission/PermissionActivity;

.field protected mContext:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mPermissionModel:Lcom/texa/careapp/app/permission/PermissionModel;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/permission/PermissionActivity;Lcom/texa/careapp/CareApplication$ApplicationComponent;Lcom/texa/careapp/app/permission/PermissionModel;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/texa/careapp/app/permission/PermissionPresenter;->mActivity:Lcom/texa/careapp/app/permission/PermissionActivity;

    .line 53
    invoke-interface {p2, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/permission/PermissionPresenter;)V

    .line 54
    iput-object p3, p0, Lcom/texa/careapp/app/permission/PermissionPresenter;->mPermissionModel:Lcom/texa/careapp/app/permission/PermissionModel;

    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroidx/databinding/ViewDataBinding;)V
    .locals 10

    .line 58
    instance-of v0, p1, Lcom/texa/careapp/databinding/ScreenPermissionBinding;

    if-eqz v0, :cond_1

    .line 59
    check-cast p1, Lcom/texa/careapp/databinding/ScreenPermissionBinding;

    .line 60
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenPermissionBinding;->screenPermissionTitle:Landroid/widget/TextView;

    .line 61
    iget-object v1, p1, Lcom/texa/careapp/databinding/ScreenPermissionBinding;->screenPermissionDescription:Landroid/widget/TextView;

    .line 62
    iget-object v2, p1, Lcom/texa/careapp/databinding/ScreenPermissionBinding;->screenPermissionBtn:Landroid/widget/TextView;

    .line 63
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenPermissionBinding;->screenPermissionImage:Landroid/widget/ImageView;

    .line 65
    iget-object v3, p0, Lcom/texa/careapp/app/permission/PermissionPresenter;->mPermissionModel:Lcom/texa/careapp/app/permission/PermissionModel;

    invoke-virtual {v3}, Lcom/texa/careapp/app/permission/PermissionModel;->isBeta()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 66
    iget-object v3, p0, Lcom/texa/careapp/app/permission/PermissionPresenter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/texa/careapp/app/permission/PermissionPresenter;->mPermissionModel:Lcom/texa/careapp/app/permission/PermissionModel;

    invoke-virtual {v5}, Lcom/texa/careapp/app/permission/PermissionModel;->getTitleRes()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 67
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 68
    new-instance v6, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v6}, Landroid/text/style/SuperscriptSpan;-><init>()V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x21

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 69
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    iget-object v7, p0, Lcom/texa/careapp/app/permission/PermissionPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060026

    invoke-static {v7, v8, v4}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 70
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 69
    invoke-virtual {v5, v6, v7, v3, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 71
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 73
    :cond_0
    iget-object v3, p0, Lcom/texa/careapp/app/permission/PermissionPresenter;->mPermissionModel:Lcom/texa/careapp/app/permission/PermissionModel;

    invoke-virtual {v3}, Lcom/texa/careapp/app/permission/PermissionModel;->getTitleRes()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 75
    :goto_0
    iget-object v0, p0, Lcom/texa/careapp/app/permission/PermissionPresenter;->mPermissionModel:Lcom/texa/careapp/app/permission/PermissionModel;

    invoke-virtual {v0}, Lcom/texa/careapp/app/permission/PermissionModel;->getDescriptionRes()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 78
    iget-object v0, p0, Lcom/texa/careapp/app/permission/PermissionPresenter;->mPermissionModel:Lcom/texa/careapp/app/permission/PermissionModel;

    invoke-virtual {v0}, Lcom/texa/careapp/app/permission/PermissionModel;->getBtnTextRes()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 79
    iget-object v0, p0, Lcom/texa/careapp/app/permission/PermissionPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/app/permission/PermissionPresenter;->mPermissionModel:Lcom/texa/careapp/app/permission/PermissionModel;

    .line 80
    invoke-virtual {v1}, Lcom/texa/careapp/app/permission/PermissionModel;->getImageRes()I

    move-result v1

    .line 79
    invoke-static {v0, v1, v4}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    new-instance p1, Lcom/texa/careapp/app/permission/PermissionPresenter$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/texa/careapp/app/permission/PermissionPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/permission/PermissionPresenter;)V

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 106
    :cond_1
    instance-of v0, p1, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBinding;

    if-eqz v0, :cond_2

    .line 107
    check-cast p1, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBinding;

    .line 108
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBinding;->fragmentPermissionBtn:Landroid/widget/TextView;

    new-instance v0, Lcom/texa/careapp/app/permission/PermissionPresenter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/permission/PermissionPresenter$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/permission/PermissionPresenter;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 109
    :cond_2
    instance-of v0, p1, Lcom/texa/careapp/databinding/ScreenDrawOverlayPermissionBinding;

    if-eqz v0, :cond_3

    .line 110
    check-cast p1, Lcom/texa/careapp/databinding/ScreenDrawOverlayPermissionBinding;

    .line 111
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenDrawOverlayPermissionBinding;->fragmentPermissionBtn:Landroid/widget/TextView;

    new-instance v0, Lcom/texa/careapp/app/permission/PermissionPresenter$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/permission/PermissionPresenter$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/app/permission/PermissionPresenter;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public synthetic lambda$afterViewInjection$0$com-texa-careapp-app-permission-PermissionPresenter(Landroid/view/View;)V
    .locals 3

    .line 83
    iget-object p1, p0, Lcom/texa/careapp/app/permission/PermissionPresenter;->mPermissionModel:Lcom/texa/careapp/app/permission/PermissionModel;

    invoke-virtual {p1}, Lcom/texa/careapp/app/permission/PermissionModel;->getPermissionType()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 84
    iget-object p1, p0, Lcom/texa/careapp/app/permission/PermissionPresenter;->mPermissionModel:Lcom/texa/careapp/app/permission/PermissionModel;

    invoke-virtual {p1}, Lcom/texa/careapp/app/permission/PermissionModel;->getPermissionType()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string v0, "android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    .line 85
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 86
    iget-object p1, p0, Lcom/texa/careapp/app/permission/PermissionPresenter;->mActivity:Lcom/texa/careapp/app/permission/PermissionActivity;

    const-string v1, "power"

    invoke-virtual {p1, v1}, Lcom/texa/careapp/app/permission/PermissionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 87
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1

    .line 88
    iget-object v1, p0, Lcom/texa/careapp/app/permission/PermissionPresenter;->mActivity:Lcom/texa/careapp/app/permission/PermissionActivity;

    invoke-virtual {v1}, Lcom/texa/careapp/app/permission/PermissionActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 89
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 90
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/app/permission/PermissionPresenter;->mActivity:Lcom/texa/careapp/app/permission/PermissionActivity;

    invoke-virtual {v1}, Lcom/texa/careapp/app/permission/PermissionActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 92
    iget-object v0, p0, Lcom/texa/careapp/app/permission/PermissionPresenter;->mActivity:Lcom/texa/careapp/app/permission/PermissionActivity;

    const/4 v1, 0x7

    invoke-virtual {v0, p1, v1}, Lcom/texa/careapp/app/permission/PermissionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/permission/PermissionPresenter;->mActivity:Lcom/texa/careapp/app/permission/PermissionActivity;

    iget-object p1, p1, Lcom/texa/careapp/app/permission/PermissionActivity;->mSkipBtn:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->callOnClick()Z

    goto :goto_0

    .line 97
    :cond_1
    iget-object p1, p0, Lcom/texa/careapp/app/permission/PermissionPresenter;->mActivity:Lcom/texa/careapp/app/permission/PermissionActivity;

    iget-object p1, p1, Lcom/texa/careapp/app/permission/PermissionActivity;->mSkipBtn:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->callOnClick()Z

    goto :goto_0

    .line 100
    :cond_2
    iget-object p1, p0, Lcom/texa/careapp/app/permission/PermissionPresenter;->mActivity:Lcom/texa/careapp/app/permission/PermissionActivity;

    iget-object v0, p0, Lcom/texa/careapp/app/permission/PermissionPresenter;->mPermissionModel:Lcom/texa/careapp/app/permission/PermissionModel;

    invoke-virtual {v0}, Lcom/texa/careapp/app/permission/PermissionModel;->getPermissionType()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/texa/careapp/app/permission/PermissionActivity;->requestPermission([Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_3
    iget-object p1, p0, Lcom/texa/careapp/app/permission/PermissionPresenter;->mActivity:Lcom/texa/careapp/app/permission/PermissionActivity;

    iget-object v0, p0, Lcom/texa/careapp/app/permission/PermissionPresenter;->mPermissionModel:Lcom/texa/careapp/app/permission/PermissionModel;

    invoke-virtual {v0}, Lcom/texa/careapp/app/permission/PermissionModel;->getPermissionType()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/texa/careapp/app/permission/PermissionActivity;->requestPermission([Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$afterViewInjection$1$com-texa-careapp-app-permission-PermissionPresenter(Landroid/view/View;)V
    .locals 1

    .line 108
    iget-object p1, p0, Lcom/texa/careapp/app/permission/PermissionPresenter;->mActivity:Lcom/texa/careapp/app/permission/PermissionActivity;

    iget-object v0, p0, Lcom/texa/careapp/app/permission/PermissionPresenter;->mPermissionModel:Lcom/texa/careapp/app/permission/PermissionModel;

    invoke-virtual {v0}, Lcom/texa/careapp/app/permission/PermissionModel;->getPermissionType()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/texa/careapp/app/permission/PermissionActivity;->requestPermission([Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$2$com-texa-careapp-app-permission-PermissionPresenter(Landroid/view/View;)V
    .locals 2

    .line 112
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p1, v0, :cond_1

    .line 113
    iget-object p1, p0, Lcom/texa/careapp/app/permission/PermissionPresenter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 114
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    .line 115
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/app/permission/PermissionPresenter;->mActivity:Lcom/texa/careapp/app/permission/PermissionActivity;

    invoke-virtual {v1}, Lcom/texa/careapp/app/permission/PermissionActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 117
    iget-object v0, p0, Lcom/texa/careapp/app/permission/PermissionPresenter;->mActivity:Lcom/texa/careapp/app/permission/PermissionActivity;

    const/4 v1, 0x6

    invoke-virtual {v0, p1, v1}, Lcom/texa/careapp/app/permission/PermissionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 119
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/permission/PermissionPresenter;->mActivity:Lcom/texa/careapp/app/permission/PermissionActivity;

    iget-object p1, p1, Lcom/texa/careapp/app/permission/PermissionActivity;->mSkipBtn:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->callOnClick()Z

    goto :goto_0

    .line 122
    :cond_1
    iget-object p1, p0, Lcom/texa/careapp/app/permission/PermissionPresenter;->mActivity:Lcom/texa/careapp/app/permission/PermissionActivity;

    iget-object p1, p1, Lcom/texa/careapp/app/permission/PermissionActivity;->mSkipBtn:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->callOnClick()Z

    :goto_0
    return-void
.end method
