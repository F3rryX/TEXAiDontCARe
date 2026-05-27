.class Lcom/robotium/solo/Setter$3;
.super Ljava/lang/Object;
.source "Setter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/robotium/solo/Setter;->setProgressBar(Landroid/widget/ProgressBar;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/robotium/solo/Setter;

.field final synthetic val$progress:I

.field final synthetic val$progressBar:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Lcom/robotium/solo/Setter;Landroid/widget/ProgressBar;I)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/robotium/solo/Setter$3;->this$0:Lcom/robotium/solo/Setter;

    iput-object p2, p0, Lcom/robotium/solo/Setter$3;->val$progressBar:Landroid/widget/ProgressBar;

    iput p3, p0, Lcom/robotium/solo/Setter$3;->val$progress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/robotium/solo/Setter$3;->val$progressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/robotium/solo/Setter$3;->val$progress:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
