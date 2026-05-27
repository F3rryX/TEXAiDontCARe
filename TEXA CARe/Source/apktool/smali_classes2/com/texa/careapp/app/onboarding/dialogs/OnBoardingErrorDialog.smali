.class public Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorDialog;
.super Lcom/texa/care/navigation/Screen;
.source "OnBoardingErrorDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorDialog$ErrorConfirmedEvent;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "OnBoardingErrorDialog"


# instance fields
.field private error:Lretrofit2/HttpException;

.field protected mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lretrofit2/HttpException;Lcom/texa/careapp/CareApplication;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    .line 38
    invoke-virtual {p2}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p2

    invoke-interface {p2, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorDialog;)V

    .line 39
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorDialog;->error:Lretrofit2/HttpException;

    return-void
.end method

.method private dismiss()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorDialog;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorDialog$ErrorConfirmedEvent;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorDialog$ErrorConfirmedEvent;-><init>(Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorDialog;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 76
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorDialog;->goBack()V

    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 3

    .line 44
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/DialogOnboardingErrorBinding;

    .line 45
    iget-object v0, p1, Lcom/texa/careapp/databinding/DialogOnboardingErrorBinding;->dialogOnboardingErrorText:Landroid/widget/TextView;

    .line 46
    iget-object p1, p1, Lcom/texa/careapp/databinding/DialogOnboardingErrorBinding;->dialogOnboardingErrorBtn:Landroid/widget/TextView;

    .line 48
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110bd6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    new-instance v1, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorDialog$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorDialog;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f110a24

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    :try_start_0
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorDialog;->error:Lretrofit2/HttpException;

    invoke-virtual {v1}, Lretrofit2/HttpException;->response()Lretrofit2/Response;

    move-result-object v1

    invoke-virtual {v1}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->charStream()Ljava/io/Reader;

    move-result-object v1

    const-class v2, Lcom/texa/careapp/networking/response/ServerResponse;

    invoke-virtual {p1, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/networking/response/ServerResponse;

    .line 57
    invoke-virtual {p1}, Lcom/texa/careapp/networking/response/ServerResponse;->getError()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 59
    invoke-virtual {p1}, Lcom/texa/careapp/networking/response/ServerResponse;->getMessage()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string p1, "KO_USER-DONGLE_LIMIT_EXCEEDED"

    .line 62
    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 63
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f110a4d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string p1, "KO_DONGLE-USER_LIMIT_EXCEEDED"

    .line 64
    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 65
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f110a09

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const-string p1, "KO_CUSTOMER-NOT_FOUND"

    .line 66
    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 67
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f110b2d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Error parsing server response"

    .line 70
    invoke-static {v0, p1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 92
    sget-object v0, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0079

    return v0
.end method

.method public getType()Lcom/texa/care/navigation/ScreenType;
    .locals 1

    .line 97
    sget-object v0, Lcom/texa/care/navigation/ScreenType;->DIALOG:Lcom/texa/care/navigation/ScreenType;

    return-object v0
.end method

.method public synthetic lambda$afterViewInjection$0$com-texa-careapp-app-onboarding-dialogs-OnBoardingErrorDialog(Landroid/view/View;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorDialog;->dismiss()V

    return-void
.end method
