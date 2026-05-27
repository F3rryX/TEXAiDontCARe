.class Lcom/texa/careapp/app/MainActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/MainActivity;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/MainActivity;)V
    .locals 0

    .line 689
    iput-object p1, p0, Lcom/texa/careapp/app/MainActivity$1;->this$0:Lcom/texa/careapp/app/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 693
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ACTION_CHECK_GPS_STATE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const-string v1, "EXTRA_GPS_STATE"

    .line 694
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 697
    iget-object p2, p0, Lcom/texa/careapp/app/MainActivity$1;->this$0:Lcom/texa/careapp/app/MainActivity;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/texa/careapp/app/MainActivity;->access$000(Lcom/texa/careapp/app/MainActivity;Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method
