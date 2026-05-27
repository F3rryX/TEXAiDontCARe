.class Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$1;
.super Ljava/lang/Object;
.source "SetInsuranceCompanyScreen.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->afterViewInjection(Landroid/view/View;)V
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

    .line 86
    iput-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$1;->this$0:Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 89
    iget-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$1;->this$0:Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;

    invoke-static {p1, p3}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;->access$000(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;I)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
