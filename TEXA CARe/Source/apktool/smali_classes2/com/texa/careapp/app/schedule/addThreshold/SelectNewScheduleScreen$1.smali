.class Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen$1;
.super Ljava/lang/Object;
.source "SelectNewScheduleScreen.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen$1;->this$0:Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;

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

    .line 80
    iget-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen$1;->this$0:Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;

    invoke-static {p1}, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->access$000(Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;)Landroid/widget/Spinner;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/texa/careapp/model/ThresholdModel;

    invoke-static {p1, p2}, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->access$100(Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;Lcom/texa/careapp/model/ThresholdModel;)V

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
