.class Lcom/texa/careapp/app/settings/user/SettingsUserScreen$4;
.super Ljava/lang/Object;
.source "SettingsUserScreen.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->initEditText()V
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

    .line 280
    iput-object p1, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen$4;->this$0:Lcom/texa/careapp/app/settings/user/SettingsUserScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 292
    iget-object p1, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen$4;->this$0:Lcom/texa/careapp/app/settings/user/SettingsUserScreen;

    invoke-static {p1}, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->access$300(Lcom/texa/careapp/app/settings/user/SettingsUserScreen;)Lcom/texa/careapp/model/UserModel;

    move-result-object p1

    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen$4;->this$0:Lcom/texa/careapp/app/settings/user/SettingsUserScreen;

    invoke-static {v0}, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->access$400(Lcom/texa/careapp/app/settings/user/SettingsUserScreen;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/texa/careapp/model/UserModel;->setLastName(Ljava/lang/String;)V

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
