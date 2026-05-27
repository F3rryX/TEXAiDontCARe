.class Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$2;
.super Landroid/content/BroadcastReceiver;
.source "ProblemResolutionScreen.java"


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

    .line 208
    iput-object p1, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$2;->this$0:Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 213
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 214
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/high16 p1, -0x80000000

    const-string v0, "android.bluetooth.adapter.extra.STATE"

    .line 215
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xa

    if-eq p1, p2, :cond_0

    const/16 p2, 0xd

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 221
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen$2;->this$0:Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;

    invoke-virtual {p1}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->startProcedure()V

    :cond_1
    :goto_0
    return-void
.end method
