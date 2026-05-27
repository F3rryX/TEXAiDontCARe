.class public Lcom/texa/careapp/app/auth/RecoverPasswordScreen;
.super Lcom/texa/care/navigation/Screen;
.source "RecoverPasswordScreen.java"


# static fields
.field private static final D:Z = false

.field private static final TAG:Ljava/lang/String; = "RecoverPasswordScreen"


# instance fields
.field private mButton:Landroid/widget/TextView;

.field private mDescriptionTextView:Landroid/widget/TextView;

.field private mDisposable:Lio/reactivex/disposables/Disposable;

.field private mEmailEditText:Landroid/widget/EditText;

.field mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mOnClickRetry:Landroid/view/View$OnClickListener;

.field private mParentLinearLayout:Landroid/widget/RelativeLayout;

.field mRetrofitErrorParser:Lcom/texa/careapp/utils/RetrofitErrorParser;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceClient;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mTexaCareAuthServiceHelper:Lcom/texa/careapp/networking/TexaCareAuthServiceHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$eNKSKki0_nzc4xOBmcgs9Nsh5nw(Lcom/texa/careapp/app/auth/RecoverPasswordScreen;Lcom/texa/careapp/networking/response/ServerResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/auth/RecoverPasswordScreen;->onRequestSuccess(Lcom/texa/careapp/networking/response/ServerResponse;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    .line 53
    new-instance v0, Lcom/texa/careapp/app/auth/RecoverPasswordScreen$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/auth/RecoverPasswordScreen$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/auth/RecoverPasswordScreen;)V

    iput-object v0, p0, Lcom/texa/careapp/app/auth/RecoverPasswordScreen;->mOnClickRetry:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Lcom/texa/careapp/CareApplication;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    .line 53
    new-instance v0, Lcom/texa/careapp/app/auth/RecoverPasswordScreen$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/auth/RecoverPasswordScreen$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/auth/RecoverPasswordScreen;)V

    iput-object v0, p0, Lcom/texa/careapp/app/auth/RecoverPasswordScreen;->mOnClickRetry:Landroid/view/View$OnClickListener;

    .line 56
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/auth/RecoverPasswordScreen;)V

    return-void
.end method

.method private closeKeyBoard()V
    .locals 3

    .line 196
    iget-object v0, p0, Lcom/texa/careapp/app/auth/RecoverPasswordScreen;->mEmailEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/texa/careapp/app/auth/RecoverPasswordScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 199
    iget-object v1, p0, Lcom/texa/careapp/app/auth/RecoverPasswordScreen;->mEmailEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private getEmailValue()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/texa/careapp/app/auth/RecoverPasswordScreen;->mEmailEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private onRequestError(Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "password recover request error"

    .line 164
    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    instance-of v0, p1, Lretrofit2/HttpException;

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/texa/careapp/app/auth/RecoverPasswordScreen;->mRetrofitErrorParser:Lcom/texa/careapp/utils/RetrofitErrorParser;

    move-object v1, p1

    check-cast v1, Lretrofit2/HttpException;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/utils/RetrofitErrorParser;->parseToString(Lretrofit2/HttpException;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 168
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    :cond_0
    invoke-direct {p0, v0}, Lcom/texa/careapp/app/auth/RecoverPasswordScreen;->snackBarError(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private onRequestSuccess(Lcom/texa/careapp/networking/response/ServerResponse;)V
    .locals 0

    .line 175
    invoke-direct {p0}, Lcom/texa/careapp/app/auth/RecoverPasswordScreen;->updateSuccessfulRequest()V

    return-void
.end method

.method private onSigninClicked()V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/texa/careapp/app/auth/RecoverPasswordScreen;->mEmailEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/texa/careapp/app/auth/RecoverPasswordScreen;->goBack()V

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/auth/RecoverPasswordScreen;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    invoke-direct {p0}, Lcom/texa/careapp/app/auth/RecoverPasswordScreen;->recoverPassword()V

    :cond_1
    :goto_0
    return-void
.end method

.method private recoverPassword()V
    .locals 3

    .line 138
    invoke-direct {p0}, Lcom/texa/careapp/app/auth/RecoverPasswordScreen;->closeKeyBoard()V

    .line 140
    new-instance v0, Lcom/texa/careapp/networking/RecoverPassword;

    invoke-direct {v0}, Lcom/texa/careapp/networking/RecoverPassword;-><init>()V

    .line 141
    invoke-direct {p0}, Lcom/texa/careapp/app/auth/RecoverPasswordScreen;->getEmailValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/networking/RecoverPassword;->setEmail(Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/texa/careapp/app/auth/RecoverPasswordScreen;->mTexaCareAuthServiceHelper:Lcom/texa/careapp/networking/TexaCareAuthServiceHelper;

    invoke-virtual {v1}, Lcom/texa/careapp/networking/TexaCareAuthServiceHelper;->getAndPersistClientTokenObservable()Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/texa/careapp/app/auth/RecoverPasswordScreen$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0}, Lcom/texa/careapp/app/auth/RecoverPasswordScreen$$ExternalSyntheticLambda5;-><init>(Lcom/texa/careapp/app/auth/RecoverPasswordScreen;Lcom/texa/careapp/networking/RecoverPassword;)V

    .line 147
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 148
    invoke-static {}, Lcom/texa/careapp/utils/Utils;->applySchedulers()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/auth/RecoverPasswordScreen$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/auth/RecoverPasswordScreen$$ExternalSyntheticLambda3;-><init>(Lcom/texa/careapp/app/auth/RecoverPasswordScreen;)V

    new-instance v2, Lcom/texa/careapp/app/auth/RecoverPasswordScreen$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/texa/careapp/app/auth/RecoverPasswordScreen$$ExternalSyntheticLambda4;-><init>(Lcom/texa/careapp/app/auth/RecoverPasswordScreen;)V

    .line 149
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/auth/RecoverPasswordScreen;->mDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private snackBarError(Ljava/lang/String;)V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/texa/careapp/app/auth/RecoverPasswordScreen;->mParentLinearLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 189
    invoke-static {v0, p1, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 190
    invoke-virtual {p0}, Lcom/texa/careapp/app/auth/RecoverPasswordScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1100aa

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/app/auth/RecoverPasswordScreen;->mOnClickRetry:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 191
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    :cond_0
    return-void
.end method

.method private updateSuccessfulRequest()V
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/texa/careapp/app/auth/RecoverPasswordScreen;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/auth/RecoverPasswordScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1109c0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p0, Lcom/texa/careapp/app/auth/RecoverPasswordScreen;->mEmailEditText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 181
    iget-object v0, p0, Lcom/texa/careapp/app/auth/RecoverPasswordScreen;->mButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/auth/RecoverPasswordScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110a59

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private userRecoveryInProgress(Ljava/lang/Throwable;)Z
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/texa/careapp/app/auth/RecoverPasswordScreen;->mRetrofitErrorParser:Lcom/texa/careapp/utils/RetrofitErrorParser;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/utils/RetrofitErrorParser;->isUserRecoveryInProgress(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 2

    .line 69
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScreenRecoverPasswordBinding;

    .line 70
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenRecoverPasswordBinding;->recoverPswButton:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/auth/RecoverPasswordScreen;->mButton:Landroid/widget/TextView;

    .line 71
    new-instance v1, Lcom/texa/careapp/app/auth/RecoverPasswordScreen$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/auth/RecoverPasswordScreen$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/auth/RecoverPasswordScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenRecoverPasswordBinding;->screenRecoverPswLinearLayout:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/auth/RecoverPasswordScreen;->mParentLinearLayout:Landroid/widget/RelativeLayout;

    .line 73
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenRecoverPasswordBinding;->emailRecoverPswEditText:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/texa/careapp/app/auth/RecoverPasswordScreen;->mEmailEditText:Landroid/widget/EditText;

    .line 74
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenRecoverPasswordBinding;->recoverPswTextView:Landroid/widget/TextView;

    iput-object p1, p0, Lcom/texa/careapp/app/auth/RecoverPasswordScreen;->mDescriptionTextView:Landroid/widget/TextView;

    .line 75
    iget-object p1, p0, Lcom/texa/careapp/app/auth/RecoverPasswordScreen;->mEmailEditText:Landroid/widget/EditText;

    new-instance v0, Lcom/texa/careapp/app/auth/RecoverPasswordScreen$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/auth/RecoverPasswordScreen$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/app/auth/RecoverPasswordScreen;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 125
    sget-object v0, Lcom/texa/careapp/app/auth/RecoverPasswordScreen;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00d5

    return v0
.end method

.method public getTitle()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isValidate()Z
    .locals 4

    .line 99
    invoke-direct {p0}, Lcom/texa/careapp/app/auth/RecoverPasswordScreen;->getEmailValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/texa/careapp/app/auth/RecoverPasswordScreen;->mEmailEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/texa/careapp/app/auth/RecoverPasswordScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f110ba1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return v1

    .line 104
    :cond_0
    invoke-direct {p0}, Lcom/texa/careapp/app/auth/RecoverPasswordScreen;->getEmailValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isEmail(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/texa/careapp/app/auth/RecoverPasswordScreen;->mEmailEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/texa/careapp/app/auth/RecoverPasswordScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f110a0b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return v1

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/texa/careapp/app/auth/RecoverPasswordScreen;->mEmailEditText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$afterViewInjection$1$com-texa-careapp-app-auth-RecoverPasswordScreen(Landroid/view/View;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/texa/careapp/app/auth/RecoverPasswordScreen;->onSigninClicked()V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$2$com-texa-careapp-app-auth-RecoverPasswordScreen(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 76
    invoke-virtual {p0}, Lcom/texa/careapp/app/auth/RecoverPasswordScreen;->isValidate()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/texa/careapp/app/auth/RecoverPasswordScreen;->recoverPassword()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public synthetic lambda$new$0$com-texa-careapp-app-auth-RecoverPasswordScreen(Landroid/view/View;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/texa/careapp/app/auth/RecoverPasswordScreen;->recoverPassword()V

    return-void
.end method

.method public synthetic lambda$recoverPassword$3$com-texa-careapp-app-auth-RecoverPasswordScreen(Lcom/texa/careapp/networking/RecoverPassword;Lcom/texa/careapp/utils/authentication/AccessToken;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 147
    iget-object p2, p0, Lcom/texa/careapp/app/auth/RecoverPasswordScreen;->mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceClient;

    invoke-interface {p2, p1}, Lcom/texa/careapp/networking/TexaCareApiServiceClient;->recoverPasswordFromEmail(Lcom/texa/careapp/networking/RecoverPassword;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$recoverPassword$4$com-texa-careapp-app-auth-RecoverPasswordScreen(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 151
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/auth/RecoverPasswordScreen;->userRecoveryInProgress(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-direct {p0}, Lcom/texa/careapp/app/auth/RecoverPasswordScreen;->updateSuccessfulRequest()V

    goto :goto_0

    .line 154
    :cond_0
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/auth/RecoverPasswordScreen;->onRequestError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 91
    invoke-virtual {p0}, Lcom/texa/careapp/app/auth/RecoverPasswordScreen;->goBack()V

    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 1

    .line 85
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onPause()V

    .line 86
    iget-object v0, p0, Lcom/texa/careapp/app/auth/RecoverPasswordScreen;->mDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
