.class public final synthetic Lcom/texa/careapp/app/auth/SignUpEmailScreen$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/auth/SignUpEmailScreen;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/auth/SignUpEmailScreen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/auth/SignUpEmailScreen$$ExternalSyntheticLambda5;->f$0:Lcom/texa/careapp/app/auth/SignUpEmailScreen;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpEmailScreen$$ExternalSyntheticLambda5;->f$0:Lcom/texa/careapp/app/auth/SignUpEmailScreen;

    invoke-virtual {v0, p1, p2, p3}, Lcom/texa/careapp/app/auth/SignUpEmailScreen;->lambda$checkEmailInput$4$com-texa-careapp-app-auth-SignUpEmailScreen(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
