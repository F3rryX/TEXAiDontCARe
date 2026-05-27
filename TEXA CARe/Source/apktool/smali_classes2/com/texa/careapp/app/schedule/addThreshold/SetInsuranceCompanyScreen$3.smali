.class Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$3;
.super Ljava/lang/Object;
.source "SetInsuranceCompanyScreen.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->setSearchWatcher()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$3;->this$0:Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;

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

    .line 186
    iget-object p2, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$3;->this$0:Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;

    invoke-static {p2}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->access$200(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;)Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    return-void
.end method
