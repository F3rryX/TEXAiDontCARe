.class Lcom/texa/careapp/app/auth/AcceptTermsOfServiceAndPolicyScreenDialog$TermsAcceptedEvent;
.super Ljava/lang/Object;
.source "AcceptTermsOfServiceAndPolicyScreenDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/auth/AcceptTermsOfServiceAndPolicyScreenDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TermsAcceptedEvent"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/auth/AcceptTermsOfServiceAndPolicyScreenDialog;

.field private view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/auth/AcceptTermsOfServiceAndPolicyScreenDialog;Landroid/view/View;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/texa/careapp/app/auth/AcceptTermsOfServiceAndPolicyScreenDialog$TermsAcceptedEvent;->this$0:Lcom/texa/careapp/app/auth/AcceptTermsOfServiceAndPolicyScreenDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p2, p0, Lcom/texa/careapp/app/auth/AcceptTermsOfServiceAndPolicyScreenDialog$TermsAcceptedEvent;->view:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/texa/careapp/app/auth/AcceptTermsOfServiceAndPolicyScreenDialog$TermsAcceptedEvent;->view:Landroid/view/View;

    return-object v0
.end method
