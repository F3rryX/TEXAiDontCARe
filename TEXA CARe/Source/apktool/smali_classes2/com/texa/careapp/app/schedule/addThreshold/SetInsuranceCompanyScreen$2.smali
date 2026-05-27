.class Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$2;
.super Ljava/lang/Object;
.source "SetInsuranceCompanyScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->openKeyboard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;Landroid/os/Handler;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$2;->this$0:Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;

    iput-object p2, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$2;->this$0:Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;

    invoke-static {v0}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->access$100(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$2;->this$0:Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;

    invoke-static {v0}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->access$100(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$2;->val$handler:Landroid/os/Handler;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
