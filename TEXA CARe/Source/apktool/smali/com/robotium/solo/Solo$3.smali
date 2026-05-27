.class Lcom/robotium/solo/Solo$3;
.super Ljava/lang/Object;
.source "Solo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/robotium/solo/Solo;->unlockScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/robotium/solo/Solo;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/robotium/solo/Solo;Landroid/app/Activity;)V
    .locals 0

    .line 3528
    iput-object p1, p0, Lcom/robotium/solo/Solo$3;->this$0:Lcom/robotium/solo/Solo;

    iput-object p2, p0, Lcom/robotium/solo/Solo$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 3531
    iget-object v0, p0, Lcom/robotium/solo/Solo$3;->val$activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 3532
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x400000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    return-void
.end method
