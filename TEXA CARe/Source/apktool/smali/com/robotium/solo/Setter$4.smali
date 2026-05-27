.class Lcom/robotium/solo/Setter$4;
.super Ljava/lang/Object;
.source "Setter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/robotium/solo/Setter;->setSlidingDrawer(Landroid/widget/SlidingDrawer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/robotium/solo/Setter;

.field final synthetic val$slidingDrawer:Landroid/widget/SlidingDrawer;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/robotium/solo/Setter;ILandroid/widget/SlidingDrawer;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/robotium/solo/Setter$4;->this$0:Lcom/robotium/solo/Setter;

    iput p2, p0, Lcom/robotium/solo/Setter$4;->val$status:I

    iput-object p3, p0, Lcom/robotium/solo/Setter$4;->val$slidingDrawer:Landroid/widget/SlidingDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 139
    :try_start_0
    iget v0, p0, Lcom/robotium/solo/Setter$4;->val$status:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Setter$4;->val$slidingDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->open()V

    goto :goto_0

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/robotium/solo/Setter$4;->val$slidingDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method
