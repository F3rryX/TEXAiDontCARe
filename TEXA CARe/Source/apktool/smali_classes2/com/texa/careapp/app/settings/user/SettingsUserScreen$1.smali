.class Lcom/texa/careapp/app/settings/user/SettingsUserScreen$1;
.super Ljava/lang/Object;
.source "SettingsUserScreen.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->afterViewInjection(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/settings/user/SettingsUserScreen;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/settings/user/SettingsUserScreen;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen$1;->this$0:Lcom/texa/careapp/app/settings/user/SettingsUserScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 117
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 118
    iget-object p1, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen$1;->this$0:Lcom/texa/careapp/app/settings/user/SettingsUserScreen;

    invoke-static {p1}, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->access$000(Lcom/texa/careapp/app/settings/user/SettingsUserScreen;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p2, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen$1;->this$0:Lcom/texa/careapp/app/settings/user/SettingsUserScreen;

    iget-object p2, p2, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f110ba1

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 119
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->isName(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 120
    iget-object p1, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen$1;->this$0:Lcom/texa/careapp/app/settings/user/SettingsUserScreen;

    invoke-static {p1}, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->access$000(Lcom/texa/careapp/app/settings/user/SettingsUserScreen;)Landroid/widget/EditText;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 122
    :cond_1
    iget-object p1, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen$1;->this$0:Lcom/texa/careapp/app/settings/user/SettingsUserScreen;

    invoke-static {p1}, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->access$000(Lcom/texa/careapp/app/settings/user/SettingsUserScreen;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p2, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen$1;->this$0:Lcom/texa/careapp/app/settings/user/SettingsUserScreen;

    iget-object p2, p2, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f1108ad

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
