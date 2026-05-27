.class Lcom/robotium/solo/Setter$2;
.super Ljava/lang/Object;
.source "Setter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/robotium/solo/Setter;->setTimePicker(Landroid/widget/TimePicker;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/robotium/solo/Setter;

.field final synthetic val$hour:I

.field final synthetic val$minute:I

.field final synthetic val$timePicker:Landroid/widget/TimePicker;


# direct methods
.method constructor <init>(Lcom/robotium/solo/Setter;Landroid/widget/TimePicker;II)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/robotium/solo/Setter$2;->this$0:Lcom/robotium/solo/Setter;

    iput-object p2, p0, Lcom/robotium/solo/Setter$2;->val$timePicker:Landroid/widget/TimePicker;

    iput p3, p0, Lcom/robotium/solo/Setter$2;->val$hour:I

    iput p4, p0, Lcom/robotium/solo/Setter$2;->val$minute:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/robotium/solo/Setter$2;->val$timePicker:Landroid/widget/TimePicker;

    iget v1, p0, Lcom/robotium/solo/Setter$2;->val$hour:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 90
    iget-object v0, p0, Lcom/robotium/solo/Setter$2;->val$timePicker:Landroid/widget/TimePicker;

    iget v1, p0, Lcom/robotium/solo/Setter$2;->val$minute:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
