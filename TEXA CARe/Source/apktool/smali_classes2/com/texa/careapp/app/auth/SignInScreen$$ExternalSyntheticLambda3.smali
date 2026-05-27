.class public final synthetic Lcom/texa/careapp/app/auth/SignInScreen$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/auth/SignInScreen;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/auth/SignInScreen;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/auth/SignInScreen$$ExternalSyntheticLambda3;->f$0:Lcom/texa/careapp/app/auth/SignInScreen;

    iput-object p2, p0, Lcom/texa/careapp/app/auth/SignInScreen$$ExternalSyntheticLambda3;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignInScreen$$ExternalSyntheticLambda3;->f$0:Lcom/texa/careapp/app/auth/SignInScreen;

    iget-object v1, p0, Lcom/texa/careapp/app/auth/SignInScreen$$ExternalSyntheticLambda3;->f$1:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/texa/careapp/app/auth/SignInScreen;->lambda$afterViewInjection$0$com-texa-careapp-app-auth-SignInScreen(Landroid/view/View;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
