.class Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen$1;
.super Ljava/lang/Object;
.source "SettingsVehicleScreen.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen$1;->this$0:Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 305
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen$1;->this$0:Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->access$002(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 306
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-gtz p1, :cond_0

    .line 307
    iget-object p1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen$1;->this$0:Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;

    invoke-static {p1}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->access$200(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen$1;->this$0:Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;

    invoke-static {v0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->access$100(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110ba1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 309
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen$1;->this$0:Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;

    invoke-static {p1}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->access$200(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

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
