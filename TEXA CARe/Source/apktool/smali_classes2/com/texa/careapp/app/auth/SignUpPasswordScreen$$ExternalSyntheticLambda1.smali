.class public final synthetic Lcom/texa/careapp/app/auth/SignUpPasswordScreen$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/auth/SignUpPasswordScreen;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/auth/SignUpPasswordScreen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/auth/SignUpPasswordScreen$$ExternalSyntheticLambda1;->f$0:Lcom/texa/careapp/app/auth/SignUpPasswordScreen;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPasswordScreen$$ExternalSyntheticLambda1;->f$0:Lcom/texa/careapp/app/auth/SignUpPasswordScreen;

    invoke-virtual {v0, p1, p2, p3}, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;->lambda$checkPasswordInput$1$com-texa-careapp-app-auth-SignUpPasswordScreen(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
