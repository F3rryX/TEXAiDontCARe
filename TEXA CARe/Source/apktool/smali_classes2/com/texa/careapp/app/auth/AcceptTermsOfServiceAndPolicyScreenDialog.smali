.class public Lcom/texa/careapp/app/auth/AcceptTermsOfServiceAndPolicyScreenDialog;
.super Lcom/texa/care/navigation/Screen;
.source "AcceptTermsOfServiceAndPolicyScreenDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/app/auth/AcceptTermsOfServiceAndPolicyScreenDialog$TermsAcceptedEvent;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AcceptTermsOfServiceAndPolicyScreenDialog"


# instance fields
.field private final mAction:I

.field private final mActivity:Lcom/texa/careapp/app/auth/LoginActivity;

.field protected mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mScreen:Lcom/texa/careapp/app/auth/SignInScreen;

.field private final mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(ILcom/texa/careapp/app/auth/LoginActivity;Lcom/texa/careapp/app/auth/SignInScreen;Landroid/view/View;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    const-string v0, "loginActivity is marked @NonNull but is null"

    .line 34
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "signInScreen is marked @NonNull but is null"

    .line 35
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "view is marked @NonNull but is null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    iput p1, p0, Lcom/texa/careapp/app/auth/AcceptTermsOfServiceAndPolicyScreenDialog;->mAction:I

    .line 37
    iput-object p2, p0, Lcom/texa/careapp/app/auth/AcceptTermsOfServiceAndPolicyScreenDialog;->mActivity:Lcom/texa/careapp/app/auth/LoginActivity;

    .line 38
    iput-object p3, p0, Lcom/texa/careapp/app/auth/AcceptTermsOfServiceAndPolicyScreenDialog;->mScreen:Lcom/texa/careapp/app/auth/SignInScreen;

    .line 39
    iput-object p4, p0, Lcom/texa/careapp/app/auth/AcceptTermsOfServiceAndPolicyScreenDialog;->mView:Landroid/view/View;

    return-void
.end method

.method private termsAccepted()V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/texa/careapp/app/auth/AcceptTermsOfServiceAndPolicyScreenDialog;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lcom/texa/careapp/app/auth/AcceptTermsOfServiceAndPolicyScreenDialog$TermsAcceptedEvent;

    iget-object v2, p0, Lcom/texa/careapp/app/auth/AcceptTermsOfServiceAndPolicyScreenDialog;->mView:Landroid/view/View;

    invoke-direct {v1, p0, v2}, Lcom/texa/careapp/app/auth/AcceptTermsOfServiceAndPolicyScreenDialog$TermsAcceptedEvent;-><init>(Lcom/texa/careapp/app/auth/AcceptTermsOfServiceAndPolicyScreenDialog;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 51
    invoke-virtual {p0}, Lcom/texa/careapp/app/auth/AcceptTermsOfServiceAndPolicyScreenDialog;->goBack()V

    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 2

    .line 44
    invoke-virtual {p0}, Lcom/texa/careapp/app/auth/AcceptTermsOfServiceAndPolicyScreenDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/CareApplication;

    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/auth/AcceptTermsOfServiceAndPolicyScreenDialog;)V

    const v0, 0x7f0a0187

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/auth/AcceptTermsOfServiceAndPolicyScreenDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/auth/AcceptTermsOfServiceAndPolicyScreenDialog$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/auth/AcceptTermsOfServiceAndPolicyScreenDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0188

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/texa/careapp/app/auth/AcceptTermsOfServiceAndPolicyScreenDialog$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/auth/AcceptTermsOfServiceAndPolicyScreenDialog$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/auth/AcceptTermsOfServiceAndPolicyScreenDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 61
    sget-object v0, Lcom/texa/careapp/app/auth/AcceptTermsOfServiceAndPolicyScreenDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d006b

    return v0
.end method

.method public getType()Lcom/texa/care/navigation/ScreenType;
    .locals 1

    .line 66
    sget-object v0, Lcom/texa/care/navigation/ScreenType;->DIALOG:Lcom/texa/care/navigation/ScreenType;

    return-object v0
.end method

.method public synthetic lambda$afterViewInjection$0$com-texa-careapp-app-auth-AcceptTermsOfServiceAndPolicyScreenDialog(Landroid/view/View;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/texa/careapp/app/auth/AcceptTermsOfServiceAndPolicyScreenDialog;->termsAccepted()V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$1$com-texa-careapp-app-auth-AcceptTermsOfServiceAndPolicyScreenDialog(Landroid/view/View;)V
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/texa/careapp/app/auth/AcceptTermsOfServiceAndPolicyScreenDialog;->goBack()V

    return-void
.end method
