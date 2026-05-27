.class Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$1;
.super Ljava/lang/Object;
.source "ProblemResolutionScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$1;->this$0:Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$1;->this$0:Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;

    invoke-virtual {v0}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->unRegisterListeners()V

    .line 197
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$1;->this$0:Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;

    invoke-static {v0}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->access$000(Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$1;->this$0:Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;

    invoke-static {v0}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->access$000(Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$1;->this$0:Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;

    invoke-static {v0}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->access$100(Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$1;->this$0:Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;

    invoke-static {v0}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->access$100(Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f080124

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$1;->this$0:Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->enableButton(Z)V

    return-void
.end method
