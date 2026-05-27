.class Lcom/texa/careapp/utils/Utils$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/utils/Utils;->setOdoTextWatcher(Landroid/content/Context;Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$mContext:Landroid/content/Context;

.field final synthetic val$mEditText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Landroid/content/Context;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/texa/careapp/utils/Utils$1;->val$mEditText:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/texa/careapp/utils/Utils$1;->val$mContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 404
    iget-object p1, p0, Lcom/texa/careapp/utils/Utils$1;->val$mEditText:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->isValidIntegerValuesFromEditText(Landroid/widget/EditText;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 405
    iget-object p1, p0, Lcom/texa/careapp/utils/Utils$1;->val$mEditText:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/texa/careapp/utils/Utils$1;->val$mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110ab7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 407
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/utils/Utils$1;->val$mEditText:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
