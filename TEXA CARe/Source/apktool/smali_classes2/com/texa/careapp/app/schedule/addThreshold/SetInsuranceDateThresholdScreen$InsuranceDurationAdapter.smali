.class Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen$InsuranceDurationAdapter;
.super Lcom/texa/careapp/utils/SimpleSpinnerAdapter;
.source "SetInsuranceDateThresholdScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InsuranceDurationAdapter"
.end annotation


# instance fields
.field private durationFlag:Landroid/widget/TextView;

.field durationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen$InsuranceInterval;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;


# direct methods
.method public constructor <init>(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen$InsuranceInterval;",
            ">;)V"
        }
    .end annotation

    .line 154
    iput-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen$InsuranceDurationAdapter;->this$0:Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;

    .line 155
    invoke-direct {p0, p3}, Lcom/texa/careapp/utils/SimpleSpinnerAdapter;-><init>(Ljava/util/List;)V

    .line 156
    iput-object p3, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen$InsuranceDurationAdapter;->durationList:Ljava/util/List;

    .line 157
    iput-object p2, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen$InsuranceDurationAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 163
    iget-object p2, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen$InsuranceDurationAdapter;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const v0, 0x7f0d00f6

    const/4 v1, 0x0

    .line 164
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f0a0466

    .line 166
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen$InsuranceDurationAdapter;->durationFlag:Landroid/widget/TextView;

    .line 167
    iget-object p3, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen$InsuranceDurationAdapter;->durationList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen$InsuranceInterval;

    invoke-virtual {p1}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen$InsuranceInterval;->getLabel()Ljava/lang/String;

    move-result-object p1

    .line 168
    iget-object p3, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen$InsuranceDurationAdapter;->durationFlag:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
